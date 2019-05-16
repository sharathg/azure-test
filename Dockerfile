FROM ubuntu:18.04
MAINTAINER Sharath G Pai <sharath.g.pai@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

# Install Packages
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    gnupg \
    language-pack-en \
    openjdk-8-jdk \
    python-dev \
    python3-dev \
    python-pip \
    python3-pip \
    python-virtualenv \
    sqlite3 \
    unzip \
    wget  \
    zip

# Set the locale
RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

# Define Environment Variables
ENV SHELL=/bin/bash
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Add user to Group
RUN getent group 1000 || groupadd autobots --gid 1000 && \
    useradd --create-home --shell /bin/bash autobots --uid 1000 --gid 1000

# Change User
USER autobots
SHELL ["/bin/bash", "-l", "-c"]
