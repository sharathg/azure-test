FROM ubuntu:18.04
MAINTAINER Sharath G Pai <sharath.g.pai@gmail.com>
ENV DEBIAN_FRONTEND interactive

# Install Packages
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    gnupg \
    python-dev \
    python3-dev \
    python-pip \
    python3-pip \
    sqlite3 \
    unzip \
    wget  \
    zip

# Define Environment Variables
ENV SHELL=/bin/bash

# Add user to Group
RUN getent group 1000 || groupadd autobots --gid 1000 && \
    useradd --create-home --shell /bin/bash autobots --uid 1000 --gid 1000
