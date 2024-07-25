# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the startup directory where commands will be executed
WORKDIR /root

# Copy all the files from the current directory to the /root directory
# COPY . .

# Install the necessary packages
RUN apt-get update && apt-get install -y \
    vim \
    inotify-tools \
    curl \
    git \
    && curl -sL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g nodemon \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set all scripts to be executable, TIP: || true is used to ignore errors
RUN chmod +x *.sh || true

# Set the default command to start a shell
CMD ["/bin/bash"]
