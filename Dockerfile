FROM jenkins/jenkins:latest

USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg \
        lsb-release \
        software-properties-common \
        awscli \
        python3 \
        python3-pip \
        python3-venv

# Install Docker using Docker convenience script
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh

# Add Jenkins user to Docker group
RUN usermod -aG docker jenkins

# Install Docker Compose
ENV DOCKER_COMPOSE_VERSION=1.29.0
RUN curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Install Terraform
ENV TERRAFORM_VERSION=1.8.1
ENV ARCHITECTURE=arm64
RUN curl -fsSL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_${ARCHITECTURE}.zip -o terraform.zip && \
    unzip terraform.zip -d /usr/local/bin && \
    rm terraform.zip

# Create and activate a virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install required Python libraries
RUN pip install --no-cache-dir requests boto3

USER root
