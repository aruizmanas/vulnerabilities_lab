# Reflected XSS (Cross-Site Scripting)

This module demonstrates a Reflected XSS vulnerability in a simple Flask web application.

## Vulnerability Description

Reflected XSS occurs when an application receives data in an HTTP request and includes that data within the immediate response in an unsafe way.

In this demo, the Flask application takes a `name` parameter from the URL query string and reflects it back into the page. The template uses the `| safe` filter, which explicitly tells the Jinja2 engine not to escape the content, allowing HTML/JavaScript injection.

## Setup and Running

1. **Start the vulnerable server:**
   ```bash
   make up
   ```
   This will build and start the Flask application in a Docker container, listening on port 5000.

2. **Access the application:**
   Open your browser and go to `http://localhost:5000`.

3. **Test manually:**
   Enter a name in the form and see it reflected. Try entering a payload like:
   ```html
   <script>alert('XSS')</script>
   ```

4. **Run the exploit script:**
   Ensure you have `requests` installed (`pip install requests`) and run:
   ```bash
   make exploit
   ```

## Cleanup

To stop and remove the containers:
```bash
make down
```
