
# LAMP Development Stack

A Docker-based LAMP development environment for running PHP applications locally.

The stack uses an Ubuntu container configured with Apache, MySQL, and PHP. Application code is kept separate from the development stack and mounted into the container at `/var/www/html`.

## Stack

- Ubuntu 24.04
- Apache
- MySQL 8
- PHP 8.3
- Docker Compose

## Project Structure

```text
lamp/
├── Dockerfile
├── compose.yaml
└── www/              # Project-specific web content
```

The `www/` directory is intentionally excluded from this repository. This allows the LAMP stack to be reused with different projects while keeping application code in its own repository.

## Getting Started

Clone the repository:

```bash
git clone <repository-url>
cd lamp
```

Create a `www` directory for the application:

```bash
mkdir www
```

Build and start the container:

```bash
docker compose up -d --build
```

The application will be available at:

```text
http://localhost/
```

## Database

MySQL is available locally on port `3306` and can be accessed by applications running in the container or by database clients such as DBeaver.

Default development credentials:

```text
Database: testdb
Username: student
Password: student
```

MySQL data is stored in a Docker named volume so that database contents persist when the container is recreated.

## Development

Files placed in `www/` are bind-mounted to:

```text
/var/www/html
```

Changes made to application files on the host are therefore immediately available to Apache inside the container.

To open a shell inside the running container:

```bash
docker exec -it textbook-lamp bash
```

To stop the stack:

```bash
docker compose down
```

Do not use `docker compose down -v` unless you intentionally want to delete the MySQL data volume.

## Purpose

This repository contains only the reusable development environment. Application-specific source code belongs in `www/` and can be managed as a separate Git repository.
