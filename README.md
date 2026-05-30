# Vulnerability Reproductions

This repository contains reproductions and demonstrations of various security vulnerabilities for educational and study purposes. Each module focuses on a specific type of vulnerability, providing a controlled environment to understand and test exploitation techniques.

## Modules

### SQL Injection

The `sql_injection` module demonstrates a classic SQL injection vulnerability in a web application.

- **Vulnerable Web Server**: Node.js app using `express` and `pg`.
- **Exploit**: Python script bypassing login.
- **Run**: See `sql_injection/` for details.

### Reflected XSS

The `reflected_xss` module demonstrates a reflected Cross-Site Scripting (XSS) vulnerability in a Flask web application.

- **Vulnerable Web Server**: Flask application reflecting unsanitized input.
- **Exploit**: Injecting `<script>alert('XSS')</script>` via query parameters.
- **Run**: See `reflected_xss/` for details.
