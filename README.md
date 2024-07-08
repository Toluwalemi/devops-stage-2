# Full-Stack FastAPI and React Template

Welcome to the Full-Stack FastAPI and React template repository. This repository serves as a demo application for interns, showcasing how to set up and run a full-stack application with a FastAPI backend and a ReactJS frontend using ChakraUI.

## Project Structure

The repository is organized into two main directories:

- **frontend**: Contains the ReactJS application.
- **backend**: Contains the FastAPI application and PostgreSQL database integration.

Each directory has its own README file with detailed instructions specific to that part of the application.

## Getting Started

To get started with this template, please follow the instructions in the respective directories:

- [Frontend README](./frontend/README.md)
- [Backend README](./backend/README.md)

# How to run the project with docker-compose

To run this project locally, kindly follow these steps:

1. Clone the repository:
   ```bash
   git clone git@github.com:Toluwalemi/devops-stage-2.git
   cd git@github.com:Toluwalemi/hng-devops-stage-zero-task.git

2. Run docker-compose command
    ```bash
   docker-compose -f docker-compose.production.uml build
   docker-compose -f docker-compose.production.uml up

3. Access the landing page and docs
    - http://localhost/login - This is the landing page. Use these details to login (email: devops@hng.tech password: devops12345)
    - http://localhost/docs - This is the landing page. Use these details to login (email: devops@hng.tech password: devops12345)

4. To access adminer and proxy manager, visit
    - http://db.toluwalemi.com.ng/ - Adminer 
    - http://proxy.toluwalemi.com.ng/ - Proxy Manager

5. If you want to access the above locally, kindly change the `server_name` in the `nginx.conf` to:
   - db.localhost - Adminer
   - proxy.localhost - Proxy Manager