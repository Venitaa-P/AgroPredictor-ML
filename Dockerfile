# Use a Python base image that is compatible with TensorFlow 2.16.1
# Python 3.10 is a good stable choice.
FROM python:3.10-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy your requirements.txt file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Command to run your application
# Adjust 'python app.py' if your main file or start command is different
CMD ["python", "app.py"]
