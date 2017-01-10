# base image to use, in this case is the latest verson of the alpine linux container
FROM alpine:latest

#Install python and pip
RUN apk add --update py2-pip

# Install required python modules for the flask app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# Update pip
RUN pip install --upgrade pip

# copy files needed for the app to run
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

# port number that the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/usr/src/app/app.py"]
