# Use a lightweight Python base image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file first for efficient caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app
COPY hello.py .

# Expose Flask port
EXPOSE 5000

# Command to run the app
CMD ["python", "hello.py"]
