-- ApplyForge Database Schema
-- Database: PostgreSQL
-- Version: 1.0


-- =====================================================
-- USERS
-- =====================================================

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- RESUMES
-- =====================================================

CREATE TABLE resumes (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    file_type VARCHAR(20) NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    uploaded_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_resume_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);

-- =====================================================
-- SKILLS
-- =====================================================

CREATE TABLE skills (
    id BIGSERIAL PRIMARY KEY,
    resume_id BIGINT NOT NULL,
    skill_name VARCHAR(100) NOT NULL,

    CONSTRAINT fk_skill_resume
        FOREIGN KEY (resume_id)
        REFERENCES resumes(id)
        ON DELETE CASCADE
);

-- =====================================================
-- EXPERIENCES
-- =====================================================

CREATE TABLE experiences (
    id BIGSERIAL PRIMARY KEY,
    resume_id BIGINT NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    description TEXT,

    CONSTRAINT fk_experience_resume
        FOREIGN KEY (resume_id)
        REFERENCES resumes(id)
        ON DELETE CASCADE
);

-- =====================================================
-- EDUCATION
-- =====================================================

CREATE TABLE education (
    id BIGSERIAL PRIMARY KEY,
    resume_id BIGINT NOT NULL,
    college_name VARCHAR(255) NOT NULL,
    degree VARCHAR(100) NOT NULL,
    field_of_study VARCHAR(100) NOT NULL,
    cgpa DECIMAL(3,2),
    graduation_year SMALLINT NOT NULL,

    CONSTRAINT fk_education_resume
        FOREIGN KEY (resume_id)
        REFERENCES resumes(id)
        ON DELETE CASCADE
);

-- =====================================================
-- PROJECTS
-- =====================================================

CREATE TABLE projects (
    id BIGSERIAL PRIMARY KEY,
    resume_id BIGINT NOT NULL,
    project_name VARCHAR(255) NOT NULL,
    description TEXT,
    github_url VARCHAR(500),
    start_date DATE,
    end_date DATE,

    CONSTRAINT fk_project_resume
        FOREIGN KEY (resume_id)
        REFERENCES resumes(id)
        ON DELETE CASCADE
);

-- =====================================================
-- JOBS
-- =====================================================

CREATE TABLE jobs (
    id BIGSERIAL PRIMARY KEY,
    job_title VARCHAR(255) NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    employment_type VARCHAR(100),
    experience_required VARCHAR(100),
    job_description TEXT NOT NULL,
    job_url VARCHAR(1000) UNIQUE NOT NULL,
    source VARCHAR(100),
    posted_date DATE,
    salary VARCHAR(100)
);

-- =====================================================
-- JOB MATCHES
-- =====================================================

CREATE TABLE job_matches (
    id BIGSERIAL PRIMARY KEY,
    resume_id BIGINT NOT NULL,
    job_id BIGINT NOT NULL,
    match_percentage DECIMAL(5,2) NOT NULL,
    matching_skills TEXT,
    missing_skills TEXT,
    analysis_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_jobmatch_resume
        FOREIGN KEY (resume_id)
        REFERENCES resumes(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_jobmatch_job
        FOREIGN KEY (job_id)
        REFERENCES jobs(id)
        ON DELETE CASCADE,

    CONSTRAINT uk_resume_job UNIQUE (resume_id, job_id)
);

-- =====================================================
-- JOB APPLICATIONS
-- =====================================================

CREATE TABLE job_applications (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    resume_id BIGINT NOT NULL,
    job_id BIGINT NOT NULL,
    status VARCHAR(50) NOT NULL,
    applied_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    notes TEXT,

    CONSTRAINT fk_application_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_application_resume
        FOREIGN KEY (resume_id)
        REFERENCES resumes(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_application_job
        FOREIGN KEY (job_id)
        REFERENCES jobs(id)
        ON DELETE CASCADE
);