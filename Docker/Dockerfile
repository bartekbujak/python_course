# Use the official Python image from the Docker Hub
FROM python:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8000

#CMD ["python", "manage.py", "runserver"]
#CMD ["tail", "-f", "/dev/null"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]