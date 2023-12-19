# Django Docker Deployment

## Overview

This project demonstrates the deployment of a Django application using Docker. It includes the integration of ASGI using Django Channels and Daphne, Celery (partially tested), PostgreSQL, and Redis. The goal is to deploy and manage a scalable and efficient Django application environment.

## Features

- **ASGI Integration:** Django Channels and Daphne have been integrated to handle asynchronous communication.

- **Celery Support:** Celery is integrated (partially tested) for handling asynchronous tasks.

- **Database:** PostgreSQL is used as the database, with support for both local and production Docker containers.

- **Message Broker:** Redis server is integrated as the message broker for Celery, available in local and production Docker containers.

## Next Steps

The following integrations are planned for future updates:

1. **Nginx Integration:**

   - Nginx will be included inside the Docker container to serve the Django application.

2. **Celery Monitoring with Flower:**
   - Integration of [Flower](https://github.com/mher/flower) (version 2.0.1), an open-source web application for monitoring and managing Celery clusters. It provides real-time information about the status of Celery workers and tasks.

## Getting Started

To run the project locally, follow these steps:

1. Clone the repository:

## Getting Started

To run the project locally, follow these steps:

1. Clone the repository:

```bash
   git clone https://github.com/mwangihub/django-docker.git .

```

2. Build and run the Docker containers:

```bash

docker compose up --build

```

3. Access the Django application in your web browser:

```bash

http://localhost:8050

```

## Contributing

If you would like to contribute to this project or report issues, please check the [contributing guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).
