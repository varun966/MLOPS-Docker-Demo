# Use an official python runtime as a parent image 
FROM python:3.8-slim

# Set the working directory in the container 
WORKDIR /app 

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in the requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt 

# Make port 5000 available to thr world outside this container 
EXPOSE 5000 

# Define Environment variable
ENV FLASK_APP=app.py 

# Run the Flask App
CMD ["flask","run","--host=0.0.0.0"]