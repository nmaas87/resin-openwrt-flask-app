## resin-openwrt-flask-app

Simple Flask App with OpenWRT 15.05.1 (RPi) from [nmaas87/rpi-openwrt][nmaas87/rpi-openwrt] and Flask

This is a simple skeleton Flask server project that works RPi devices.

This project simply serves up `"Hello World!"` on port `:80` of your RPi device.

To get this project up and running, you will need to signup for a resin.io account [here][signup-page] and set up a device, have a look at our [Getting Started tutorial][gettingStarted-link]. Once you are set up with resin.io, you will need to clone this repo locally:
```
$ git clone git@github.com:nmaas87/resin-openwrt-flask-app.git
```
Then add your resin.io application's remote repository to your local repository:
```
$ git remote add resin username@git.resin.io:username/myapp.git
```
and push the code to the newly added remote:
```
$ git push resin master
```
It should take a few minutes for the code to push. While you wait, lets enable device URLs so we can see the server outside of our local network. This option can be found in the `Actions` tab in your device dashboard.

Once the device is updated, you should see "* Running on http://127.0.0.1:80/" in the device log.

Then in your browser you should be able to open the device URL and see the message "Hello World!".


Basic Readme taken from: https://github.com/resin-io-projects/simple-server-node
Flask Example taken from: https://github.com/docker/docker-birthday-3


[nmaas87/rpi-openwrt]:https://hub.docker.com/r/nmaas87/rpi-openwrt/
[resin-link]:https://resin.io/
[signup-page]:https://dashboard.resin.io/signup
[gettingStarted-link]:http://docs.resin.io/#/pages/installing/gettingStarted.md
