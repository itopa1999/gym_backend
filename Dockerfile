# Base images

FROM python:3.10

# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV DJANGO_SETTINGS_MODULE backend.settings

# Set working directory

WORKDIR /app

# Copy files to container

COPY . /app

# Install dependencies

RUN pip3 install -r requirements.txt

# Specify port

EXPOSE 8050

# Start the server

CMD ["python", "manage.py", "runserver", "0.0.0.0:8050"]
