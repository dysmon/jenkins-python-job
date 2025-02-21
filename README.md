# Jenkins in Docker with Python Integration

This project sets up a Jenkins container with Python installed, allowing Python scripts to run within Jenkins jobs.

## Project Structure

- **Dockerfile**: Builds a custom Jenkins image with Python 3 installed.
- **Makefile**: Simplifies container management with commands for setup, running, stopping, and logging.
- **Python Script**: A simple script that takes a message as an argument and prints it.

## Prerequisites

- Docker installed on your system.

## Setup

Before running the container, build the custom Jenkins image with:

```sh
make setup
```

## Running the Jenkins Container

To start the Jenkins container:

```sh
make run
```

Jenkins will be accessible at `http://localhost:8080`.

## Stopping and Removing the Container

To stop the running container:

```sh
make stop
```

To remove the container:

```sh
make remove
```

## Running the Python Script

Inside the Jenkins container, you can run the Python script by passing a message:

```sh
python3 script.py "MODERN TECHNIQUES OF SOFTWARE DEVELOPMENT"
```

## Viewing Logs

To see Jenkins logs in real time:

```sh
make logs
```
