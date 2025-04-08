# Use official Python image
FROM python:3.11-alpine3.21

# Set working directory
WORKDIR /app

# Install system dependencies required for psycopg2
RUN apk add --no-cache \
    postgresql-dev \
    gcc \
    musl-dev \
    libffi-dev \
    python3-dev

# Copy requirements.txt
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .
