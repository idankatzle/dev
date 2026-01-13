# Base image with Python 3.9 pre-installed
FROM registry.access.redhat.com/ubi9/python-39:latest

# Set working directory inside the container
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY src/requirements.txt .

# Install dependencies (Flask, PyMySQL, etc.)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY src/ .

# Set permissions for OpenShift non-root user
USER 1001

# Expose the Flask port
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
