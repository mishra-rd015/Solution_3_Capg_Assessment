# Base image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application code
COPY app.py .

# Expose port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
