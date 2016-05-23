FROM nmaas87/rpi-openwrt:15.05.1_rpi
#FROM nmaas87/docker-openwrt:15.05.1_x86

# Update opkg Package List, Install python 2.7, pip, Flask and create directories
RUN opkg update && \
    opkg install wget ca-certificates libffi libopenssl python-openssl python && \
    cd /tmp && \ 
    wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && \
    pip install --no-cache-dir Flask && \
    mkdir /app/ /app/templates

# copy files required for the app to run
COPY app.py /app/
COPY templates/index.html /app/templates/

# tell the port number the container should expose
EXPOSE 80

# run the application
#CMD /sbin/init
CMD ["python", "/app/app.py"]

