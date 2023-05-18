# Use a base image with Python and required dependencies
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files to the container
COPY . .

# Set environment variables, if needed
ENV VARIABLE_NAME=value

# Expose any necessary ports, if applicable
EXPOSE 8080

# Define the command to run when the container starts
CMD [ "python", "app.py" ]
