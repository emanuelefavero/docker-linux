# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install vi
RUN apt-get update && apt-get install -y vim-tiny

# Copy the .vimrc file to the home directory of the root user
COPY .vimrc /root/.vimrc

# Set the default command to run when the container starts
CMD ["/bin/bash"]
