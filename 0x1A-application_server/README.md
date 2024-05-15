# 0x1A. Application Server

## Background Context
In your web infrastructure, Nginx is already serving web pages. However, to handle dynamic content, we need an application server. This project focuses on integrating an application server into your existing setup, connecting it with Nginx, and configuring it to serve your Airbnb clone project.

## Concepts
- Web Server
- Server
- Web Stack Debugging

## Resources
Read or watch:
- [Application server vs web server](https://www.nginx.com/resources/glossary/application-server-vs-web-server/)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04)
  (Note: Install Gunicorn globally, avoid virtualenv)
- [Running Gunicorn](https://docs.gunicorn.org/en/stable/run.html)
- Be cautious with Flask's handling of slashes in routes - `strict_slashes`
- [Upstart documentation](http://upstart.ubuntu.com/cookbook/)

## Requirements
### General
- Mandatory README.md file at the project root folder.
- Utilize Python 3 for all Python-related tasks.
- All configuration files must include comments.
  
### Bash Scripts
- Execute all files on Ubuntu 16.04 LTS.
- Ensure all files end with a new line.
- All Bash scripts must be executable.
- Bash scripts must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error.
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all Bash scripts should be a comment explaining the script's purpose.

## Timeline
- Project starts: May 13, 2024, 4:00 AM
- Project ends: May 17, 2024, 4:00 AM
- Checker released: May 15, 2024, 6:24 PM
- Auto review will be launched at the deadline

## Dependencies
- Understanding of web server concepts.
- Proficiency in server management.
- Familiarity with web stack debugging techniques.
- Knowledge of Python and Bash scripting.

## Submission Guidelines
- Ensure compliance with all specified requirements.
- Include a README.md file providing an overview and necessary instructions.
- Submit all files before the project deadline.

## Project Weight
- 1

## Additional Notes
- Collaboration and sharing of knowledge are encouraged.
- Utilize available resources and documentation effectively to complete the project successfully.

Let's enhance our web infrastructure with an application server!
