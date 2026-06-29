# API Design

## Authentication

### POST /api/auth/register

Register a new user.

### POST /api/auth/login

Authenticate a user and return a JWT.

---

## Resume

### POST /api/resumes

Upload a resume.

### GET /api/resumes/{id}

Get resume details.

### DELETE /api/resumes/{id}

Delete a resume.

---

## Jobs

### POST /api/jobs

Import a job using a job URL.

### GET /api/jobs

Get all imported jobs.

### GET /api/jobs/{id}

Get job details.

---

## Job Matching

### POST /api/job-matches

Generate a match between a resume and a job.

### GET /api/job-matches/{id}

View the match result.

---

## Job Applications

### POST /api/job-applications

Create a job application record.

### PATCH /api/job-applications/{id}

Update the application status.

### GET /api/job-applications

View all application records.
