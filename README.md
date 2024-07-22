# Docker Linux

This is a custom Docker image based on Ubuntu. It a good starting point for testing Linux applications in a containerized environment.

## Features

- Ubuntu 20.04
- Automatically copies files from the Dockerfile directory to the container during build

## Usage

1. Clone the repository
2. Build the Docker image: `docker build -t ubuntu-custom .`
3. Run the Docker container: `docker run -it ubuntu-custom`
4. Test your Linux application: (e.g. `./script.sh`)

> Note: Make sure you have Docker installed on your machine

## License

- [MIT](LICENSE.md)
