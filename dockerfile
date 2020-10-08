# Base Image
FROM ubuntu:rolling

# Build args
ARG DEBIAN_FRONTEND=noninteractive

# Working dir
WORKDIR /opt/mobSF

# Install packages
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3.8
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-venv
RUN apt-get install -y python3-pip
RUN apt-get install -y build-essential
RUN apt-get install -y libffi-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libxslt1-dev
RUN apt-get install -y libjpeg8-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y wkhtmltopdf
RUN apt-get install -y openjdk-8-jdk

# Clean-up
RUN apt-get -y autoclean
RUN apt-get -y autoremove

# Add MobSF
RUN git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git

# Install MobSF
RUN cd Mobile-Security-Framework-MobSF \
    && ./setup.sh

# Ports
EXPOSE 8000

# Command
CMD Mobile-Security-Framework-MobSF/run.sh