# Use the official Python image from the Docker Hub
FROM python:latest
# install mysql dependencies
RUN apt-get update
RUN apt-get install gcc default-libmysqlclient-dev -y

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
#CMD ["python", "app.py"]
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8000"]
CMD ["flask", "--app", "app", "run", "--debug"  ]
