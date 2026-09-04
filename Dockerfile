# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy application
COPY app.py .

# Expose port
EXPOSE 5001

# Run app
CMD ["python", "app.py"]
