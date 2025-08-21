FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget unzip gnupg software-properties-common curl && \
    rm -rf /var/lib/apt/lists/*

# Install Terraform
ARG TERRAFORM_VERSION=1.8.5
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Verify installation
RUN terraform -version

ENTRYPOINT ["terraform"]
