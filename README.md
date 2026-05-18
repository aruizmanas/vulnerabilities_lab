# Injection Vulnerabilities

This repository contains examples and demonstrations of various injection vulnerabilities, for educational and security research purposes.

## Modules

### SQL Injection

The `sql_injection` module demonstrates a classic SQL injection vulnerability in a web application.

#### What was performed:
- **Vulnerable Web Server**: A Node.js application using `express` and `pg` (PostgreSQL client). It contains a `/login` endpoint that directly interpolates user input into a SQL query, making it susceptible to injection.
- **Database Initialization**: A PostgreSQL database setup with a `users` table and several pre-populated accounts to test against.
- **Dockerized Environment**: The entire setup is containerized using Docker and Docker Compose, allowing for a quick and isolated deployment of the web app and the database.
- **Exploit Demonstration**: A Python script (`exploit_demo.py`) that automates the process of identifying and exploiting the SQL injection vulnerability to bypass authentication.

#### How to run:
Refer to the instructions within the `sql_injection` directory for specific setup and execution details.
