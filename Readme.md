# Dockerized Infrastructure - README

Welcome to the Dockerized Infrastructure project! In this project, we have successfully set up a small infrastructure composed of different services within a virtual machine using Docker and Docker Compose. This README provides an overview of the project and instructions for running and managing the infrastructure.

## Project Overview

The goal of this project was to create a virtualized infrastructure using Docker containers, each serving a specific purpose. We've ensured that each service runs in a dedicated container, and the containers are built from either the penultimate stable version of Alpine or Debian. The following services are included in our infrastructure:

1. **NGINX Container**: This container hosts NGINX and supports only TLSv1.2 or TLSv1.3 for secure connections.

2. **WordPress Container**: In this container, we've installed and configured WordPress along with php-fpm. Please note that there is no NGINX in this container.

3. **MariaDB Container**: This container hosts MariaDB for our WordPress database.

We've also set up two volumes:

- **WordPress Database Volume**: This volume stores the data related to our WordPress database.

- **WordPress Website Files Volume**: This volume contains the WordPress website files.

Additionally, we've established a Docker network to facilitate communication between these containers, and we've ensured that the containers automatically restart in case of a crash.

## Running the Infrastructure

To run the infrastructure, please follow these steps:

1. Clone this repository to your local machine or virtual machine:

   ```
   git clone git@github.com:Exerath-42/Dockerized-Infrastructure
   ```

2. Navigate to the project directory:

   ```
   cd dockerized-infrastructure
   ```

3. Build and start the Docker containers using the provided `Makefile`:

   ```
   make up
   ```

   This command will use Docker Compose to build and start the containers based on the configuration in `docker-compose.yml`.

4. Access the services:

   - **NGINX**: You can access the NGINX service at [https://your-domain-name](https://your-domain-name), where `your-domain-name` should be configured to point to your local IP address.

   - **WordPress**: Access the WordPress site at [https://your-domain-name/wordpress](https://your-domain-name/wordpress).

   - **MariaDB**: The MariaDB container is used internally by WordPress and should not be accessed directly.

## Configuration

Before running the infrastructure, please make sure to configure your domain name to point to your local IP address. The domain name should be in the format `login.42.fr`, with `login` replaced by your own login.

Additionally, sensitive information like passwords and API keys should be stored in a `.env` file located at the root of the `srcs` directory. Be sure to keep this file secure and do not include it in your version control system.

## Directory Structure

Here's an example directory structure for this project:

```
dockerized-infrastructure/
│
├── Makefile
├── docker-compose.yml
└── srcs/
    ├── .env
    └── requirements/
        ├── mariadb/
        ├── nginx/
        └── wordpress/
```

## Conclusion

Congratulations! You have successfully set up a Dockerized Infrastructure with NGINX, WordPress, and MariaDB. Enjoy exploring and managing your virtualized services.

If you have any questions or encounter any issues, feel free to reach out for assistance. Happy virtualization!