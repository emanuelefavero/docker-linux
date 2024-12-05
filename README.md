# Docker Linux

This is a custom Docker image based on Ubuntu. It a good starting point for testing Linux in a containerized environment.

## Installation

- Clone the repository
- Build the Docker image: `docker build -t ubuntu-custom .`
- Create a volume for persistent storage: `docker volume create ubuntu-root-volume`
- Run the Docker container with the volume: `docker run -it -v ubuntu-root-volume:/root ubuntu-custom`
- Test your Linux application: (e.g. by creating a file in the `/root` directory)

> Tip: All files in the `/root` directory will be saved in the volume for persistent storage
>
> Note: Make sure you have Docker installed on your machine
>
> TIP: When saving files in the container, they will be lost when the container is stopped. To save files, use a volume or copy them to the Dockerfile directory so they are copied to the container during the next build

## Usage

- Run the Docker container: `docker run -it --rm -v ubuntu-root-volume:/root ubuntu-custom`
- Test your Linux application: (e.g. by creating a file in the `/root` directory)

> Tip: You could create an alias for the above docker command in your `.bashrc` or `.zshrc` file (e.g. `alias ubuntu='docker run -it --rm -v ubuntu-root-volume:/root ubuntu-custom'`)
> Tip: the `--rm` flag will automatically remove the container when it is stopped
> To delete a volume, use the command: `docker volume rm ubuntu-root-volume`

## License

- [MIT](LICENSE.md)
