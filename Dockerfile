# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the startup directory where commands will be executed
WORKDIR /root

# Copy all the files from the current directory to the /root directory
# COPY . .

# Update the package list and install vi, fswatch, curl
RUN apt-get update && apt-get install -y \
    vim \
    inotify-tools \
    curl \
    git \
    && apt-get clean # Clean up the apt cache

# Set all scripts to be executable, TIP: || true is used to ignore errors
RUN chmod +x *.sh || true

# Set the default command to start a shell
CMD ["/bin/bash"]
