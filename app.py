from flask import Flask, jsonify, render_template, request
from sqlalchemy import text
from database import engine

app = Flask(__name__)


def load_jobs_from_db():
    with engine.connect() as conn:
        result = conn.execute(text("SELECT * FROM jobs"))
        jobs = result.all()
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
    if request.method == "POST":
        # Process the application form data here
        applicant_name = request.form.get('name')
        applicant_email = request.form.get('email')
        resume = request.form.get('resume')  # Example field

        print(f"Application received for Job ID {job_id}:")
        print(f"Name: {applicant_name}, Email: {applicant_email}, Resume: {resume}")

        return render_template('thank_you.html', name=applicant_name)

    return render_template('apply.html', job_id=job_id)


if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)