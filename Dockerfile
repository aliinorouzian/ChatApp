# Pull base image
FROM python:3.10-alpine
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /code
# Install dependencies
COPY requirements.txt /code/
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev libc-dev libffi-dev g++ make openssl-dev rust cargo && pip install virtualenv && virtualenv venv && source venv/bin/activate && pip install -r requirements.txt
# Copy project
COPY . /code/