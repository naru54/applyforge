# Database Design

## Entities

### User

* id
* name
* email
* password
* createdAt
* updatedAt

### Resume

* id
* userId
* fileName
* fileType
* uploadedAt

### Skill

* id
* resumeId
* skillName

### Job

* id
* title
* company
* location
* jobUrl
* description

### JobMatch

* id
* resumeId
* jobId
* matchPercentage
* matchingSkills
* missingSkills

### JobApplication

* id
* userId
* jobId
* status
* appliedDate

