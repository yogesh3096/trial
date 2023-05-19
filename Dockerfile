
# Use a base image with the required environment
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Specify the command to run the application
CMD ["python", "app.py"]
