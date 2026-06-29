# Product Requirements Document (PRD)

## Project Name

**ApplyForge**

## Problem Statement

Job seekers spend a significant amount of time searching multiple job portals, reading job descriptions, comparing them with their resumes, and repeatedly filling out job applications. This process is repetitive, time-consuming, and often results in missed opportunities.

ApplyForge aims to simplify this process by helping users identify relevant job opportunities based on their resume and assisting them throughout the job application journey.

## Product Goal

The goal of ApplyForge is to reduce the time and effort required during the job search process by:

* Analyzing the user's resume.
* Identifying relevant job opportunities.
* Ranking jobs based on resume-job compatibility.
* Assisting users in managing and completing job applications efficiently.

## Version 1 Scope

The first version of ApplyForge will allow users to:

* Register and log in.
* Upload their resume.
* Extract skills and experience from the resume.
* Search or import job postings.
* Compare the resume with job descriptions.
* Display a match score for each job.
* Save interesting jobs.
* Track applied jobs.

## Out of Scope (Version 1)

The following features are intentionally excluded from the first version of ApplyForge:

* Automatic job application submission.
* AI-generated resume rewriting.
* AI-generated cover letters.
* AI interview preparation.
* Browser extension.
* Mobile application.
* Multi-user collaboration.
* Recruiter and company portal.

## User Journey

A typical user journey in ApplyForge is:

1. The user registers and logs into the application.
2. The user uploads their resume.
3. The system extracts the user's skills, experience, and education.
4. The user searches for jobs or imports job postings.
5. The system compares the resume with each job description.
6. The system calculates and displays a match score.
7. The user reviews the recommended jobs.
8. The user saves or applies to suitable jobs.
9. The user tracks the status of each application.

## Functional Requirements

### FR-1 User Authentication

* Users can register an account.
* Users can log in securely.
* Users can log out.

### FR-2 Resume Management

* Users can upload their resume (PDF/DOCX).
* Users can replace their existing resume.
* Users can delete their resume.

### FR-3 Resume Analysis

* The system extracts:

  * Personal information
  * Skills
  * Experience
  * Education
  * Projects

### FR-4 Job Management

* Users can search or import job postings.
* The system stores job details.
* Users can view job descriptions.

### FR-5 Job Matching

* The system compares the resume with the job description.
* The system displays a match percentage.
* The system highlights matching and missing skills.

### FR-6 Application Tracking

* Users can save jobs.
* Users can mark jobs as Applied.
* Users can update the application status.

## Non-Functional Requirements

### Performance

* Resume analysis should complete within a few seconds.
* Job matching results should be displayed quickly.

### Security

* User passwords must be encrypted.
* Authentication should use JWT.
* Users can only access their own data.

### Reliability

* User data should not be lost.
* The application should handle unexpected failures gracefully.

### Scalability

* The application should be designed so that new features can be added without major changes.

### Usability

* The interface should be simple and easy to use.
* Users should be able to complete common tasks with minimal clicks.



