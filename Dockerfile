# Use the official python image from the Docker Hub
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip Install Flask

# Make port 5000 available to thr world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python","app.py"]
