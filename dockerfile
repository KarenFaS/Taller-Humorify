# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /Humorify

# Copy the current directory contents into the container at /app
COPY . /Humorify

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]

#To create the image use <docker build -t my-flask-app .>
#To run the container use <docker run -p 4000:5000 my-flask-app>
