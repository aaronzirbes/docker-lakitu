Lakitu Docker Container
=======================

A docker image for [Lakitu](https://github.com/mnclimbingcoop/night-watchman/tree/master/lakitu)

Base Docker Image
-----------------

* [dockerfile/java:oracle-java8](https://registry.hub.docker.com/u/dockerfile/java)

Environment Variables
---------------------

* `LKT_ORG` default: *com/mnclimbingcoop*
* `LKT_BINTRAY_REPO` default: *mnclimbingcoop/maven*
* `LKT_VERSION` default: *0.8.8*

Running
-------

    docker run -it --rm  -p 8080:8080 aaronzirbes/lakitu

The config dir is located at `/usr/local/lakitu/config/application.properties`, so you can override locally via:

    docker run [...] -v /your/local:/usr/local/lakitu/config [...]

If you need to map AWS creds (such as when not running in AWS) mount the .aws folder

    -v /Users/yourusername/.aws:/root/.aws

Building Locally
----------------

    docker build -t aaronzirbes/lakitu:latest .

Example Running
---------------

    docker run -it \
      --rm \
      -p 8080:8080 \
      -p 8181:8181 \
      -v /etc/lakitu:/usr/local/lakitu/config \
      --name lakitu \
      aaronzirbes/lakitu:latest

Burning an AMI?
---------------

See: https://github.com/aaronzirbes/packer-lakitu
