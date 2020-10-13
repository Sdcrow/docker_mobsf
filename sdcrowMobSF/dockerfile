# Base Image
FROM ubuntu:rolling

# Build args
ARG DEBIAN_FRONTEND=noninteractive

# Set working dir
WORKDIR /opt/mobSF

# Install packages
RUN apt-get update \
    && apt-get install -y git python3.8 python3-dev python3-venv python3-pip build-essential libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev wkhtmltopdf

# Install java 
RUN apt-get install -y openjdk-8-jdk

# Clean-up
RUN apt-get -y autoclean \
    && apt-get -y autoremove

# Add MobSF
RUN git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git

# Update working dir
WORKDIR /opt/mobSF/Mobile-Security-Framework-MobSF

# Install MobSF
RUN ./setup.sh

# Ports 
EXPOSE 8000

# Command
CMD ./run.sh