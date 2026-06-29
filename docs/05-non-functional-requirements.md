# Non-Functional Requirements

## Performance

* Resume analysis should complete within 5 seconds.
* Job matching should complete within 3 seconds.
* The dashboard should load within 2 seconds.

## Security

* Passwords must be encrypted using BCrypt.
* Authentication must use JWT.
* Users can only access their own data.

## Reliability

* User data should not be lost.
* The application should handle failures gracefully.

## Scalability

* The architecture should support adding new modules without major changes.
* AI features should be pluggable in the future.

## Usability

* The application should have a simple and intuitive interface.
* Common tasks should require minimal user interaction.

## Availability

* The application should be available whenever the user needs it.
