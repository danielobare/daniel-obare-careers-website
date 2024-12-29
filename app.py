from flask import Flask, jsonify, render_template, request
from sqlalchemy import text
from database import engine

app = Flask(__name__)


def load_jobs_from_db():
    with engine.connect() as conn:
        result = conn.execute(text("SELECT * FROM jobs"))
        jobs = [dict(row) for row in result]  # Convert rows to dictionaries
        return jobs


@app.route("/")
def home():
    jobs = load_jobs_from_db()
    return render_template('home.html', jobs=jobs, company_name='danielobare')


@app.route("/api/jobs")
def list_jobs():
    return jsonify(load_jobs_from_db())


@app.route("/apply/<int:job_id>", methods=["GET", "POST"])
def apply_to_job(job_id):
    with engine.connect() as conn:
        job = conn.execute(text("SELECT * FROM jobs WHERE id = :job_id"), {'job_id': job_id}).fetchone()

    if not job:
        return "Job not found", 404

    job_title = job['title']

    if request.method == "POST":
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        address = request.form.get('address')
        linkedin_profile = request.form.get('linkedin')
        portfolio_link = request.form.get('portfolio')
        cover_letter = request.form.get('cover_letter')
        resume_file = request.files['resume']

        resume_data = resume_file.read()

        with engine.connect() as conn:
            conn.execute(text("""
                INSERT INTO applications (job_id, name, email, phone, address, linkedin_profile, portfolio_link, cover_letter, resume)
                VALUES (:job_id, :name, :email, :phone, :address, :linkedin_profile, :portfolio_link, :cover_letter, :resume)
            """), {
                'job_id': job_id,
                'name': name,
                'email': email,
                'phone': phone,
                'address': address,
                'linkedin_profile': linkedin_profile,
                'portfolio_link': portfolio_link,
                'cover_letter': cover_letter,
                'resume': resume_data,
            })

        return render_template('thank_you.html', name=name)

    return render_template('apply.html', job_id=job_id, job_title=job_title)


if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)