# Specify base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Expose application port
EXPOSE 5000

# Define command to run app
CMD ["python3", "app.py"]