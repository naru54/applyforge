# Entity Relationship Diagram (ERD)


                                   +------------------+
                                   |      User        |
                                   +------------------+
                                   | PK id            |
                                   | name             |
                                   | email            |
                                   | phoneNumber      |
                                   | password         |
                                   | createdAt        |
                                   | updatedAt        |
                                   +------------------+
                                      |           |
                                    1 |           | 1
                                      |           |
                                    N |           | N
                                      |           |
                     +----------------+           +----------------------+
                     |                                           |
             +------------------+                      +----------------------+
             |     Resume       |                      |   JobApplication     |
             +------------------+                      +----------------------+
             | PK id            |                      | PK id               |
             | FK userId        |                      | FK userId           |
             | fileName         |                      | FK jobId            |
             | fileType         |                      | FK resumeId         |
             | filePath         |                      | status              |
             | uploadedAt       |                      | appliedDate         |
             | isActive         |                      | lastUpdatedAt       |
             +------------------+                      | notes               |
                |    |    |    |                       +----------------------+
              1 | 1  | 1  | 1  | N                               ^
                |    |    |    |                                 |
              N | N  | N  | N  |                                 | N
                |    |    |    |                                 |
      +---------+    |    |    +-----------+              +------------------+
      |              |    |                |              |       Job        |
+-------------+ +--------------+ +---------------+        +------------------+
|    Skill    | | Experience   | |   Education   |        | PK id            |
+-------------+ +--------------+ +---------------+        | jobTitle         |
| PK id       | | PK id        | | PK id         |        | companyName      |
| FK resumeId | | FK resumeId  | | FK resumeId   |        | location         |
| skillName   | | companyName  | | collegeName   |        | employmentType   |
+-------------+ | jobTitle     | | degree        |        | experienceReq.   |
                | startDate    | | fieldOfStudy  |        | jobDescription   |
                | endDate      | | cgpa          |        | jobUrl           |
                | description  | | graduationYear|        | source           |
                +--------------+ +---------------+        | postedDate       |
                                                          +------------------+
                                                                  |
                                                                1 |
                                                                  |
                                                                N |
                                                          +------------------+
                                                          |    JobMatch      |
                                                          +------------------+
                                                          | PK id            |
                                                          | FK resumeId      |
                                                          | FK jobId         |
                                                          | matchPercentage  |
                                                          | matchingSkills   |
                                                          | missingSkills    |
                                                          | analysisDate     |
                                                          +------------------+
```
