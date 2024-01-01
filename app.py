from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

JOBS = [{
    'id': 1,
    'title': 'Python Developer',
    'location': 'New York',
    'salary': 50000
}, {
    'id': 2,
    'title': 'Front Developer',
    'location': 'Nairobi',
    'salary': 40000
}, {
    'id': 3,
    'title': 'Backend Engineer',
    'location': 'Capetown',
    'salary': 150000
}, {
    'id': 4,
    'title': 'Java Developer',
    'location': 'San Fransisco',
    'salary': 250000
}]


@app.route("/")
def hello_world():
  return render_template('home.html', jobs=JOBS, company_name='danielobare')


@app.route("/api/jobs")
def list_jobs():
  return jsonify(JOBS)


if __name__ == "__main__":
  app.run(host='0.0.0.0', debug=True)
