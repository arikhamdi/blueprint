# pull official base image
FROM python:3.8

# accept arguments
ARG PIP_REQUIREMENTS=production.txt

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip setuptools

# create user for the Django project
RUN useradd -ms /bin/bash blueprint

# set current user
USER blueprint

# set work directory
WORKDIR /home/blueprint

# create and activate virtual environment
RUN python3 -m venv env

# copy and install pip requirements
COPY --chown=blueprint ./src/requirements /home/blueprint/requirements/
RUN ./env/bin/pip3 install -r /home/blueprint/requirements/${PIP_REQUIREMENTS}

# copy Django project files
COPY --chown=blueprint ./src/ /home/blueprint/