FROM nmaas87/docker-openwrt:15.05.1_rpi

# Update opkg Package List
RUN opkg update  

# Install python 2.7
RUN opkg install wget ca-certificates && opkg install libffi && opkg install libopenssl && opkg install python-openssl &&  opkg install python

# Install pip
RUN cd /tmp && wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py

# Install flask
RUN pip install --no-cache-dir Flask

# Create src dir
RUN mkdir /app/ /app/templates

# copy files required for the app to run
COPY app.py /app/
COPY templates/index.html /app/templates/

# tell the port number the container should expose
EXPOSE 80

# run the application
CMD ["python", "/app/app.py"]








# Base Docker Image from Docker Hub: https://registry.hub.docker.com/u/key3/rpi-raspbian-python2.7-dev/
#FROM key3/rpi-raspbian-python2.7-dev
#ADD hello.py /
# Display version of Python and start the project
#RUN echo 'python2.7 -V && python2.7 hello.py' >/start
#RUN chmod +x /start

# our base image
#FROM alpine:latest
#COPY repositories.txt /etc/apk/repositories

# Install python and pip
#RUN apk add --update py-pip

# upgrade pip
#RUN pip install --upgrade pip

# install Python modules needed by the Python app
#COPY requirements.txt /usr/src/app/
#RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# copy files required for the app to run
#COPY app.py /usr/src/app/
#COPY templates/index.html /usr/src/app/templates/

# tell the port number the container should expose
#EXPOSE 5000

# run the application
#CMD ["python", "/usr/src/app/app.py"]
