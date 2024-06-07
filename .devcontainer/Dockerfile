# Use a base image with Node.js
FROM node:16.14.0

# Install Docker
RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker's official GPG key
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add Docker's APT repository
RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list

# Install Docker
RUN apt-get update && \
    apt-get install -y docker-ce=5:20.10.12~3-0~debian-bullseye docker-ce-cli=5:20.10.12~3-0~debian-bullseye containerd.io

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.23.4/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

# Install Skaffold
RUN curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/v1.36.0/skaffold-linux-amd64 && \
    chmod +x skaffold && \
    mv skaffold /usr/local/bin/

# Add Docker group to non-root user (VSCode runs as a non-root user)
ARG USERNAME=vscode
RUN groupadd docker \
    && usermod -aG docker $USERNAME \
    && newgrp docker

# Set the default user
USER $USERNAME
