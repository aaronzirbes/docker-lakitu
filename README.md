Lakitu Docker Container
=======================

A docker image for [Lakitu](https://github.com/mnclimbingcoop/night-watchman/tree/master/lakitu)

Base Docker Image
-----------------

* [dockerfile/java:oracle-java8](https://registry.hub.docker.com/u/dockerfile/java)

Environment Variables
---------------------

* `LKT_API_KEY` default: "open", any other value will require an API key
* `LKT_AWS_SQS_PUSH` default: mncc-commands
* `LKT_AWS_SQS_PULL` default: mncc-state
* `LKT_BINTRAY_REPO` default: *mnclimbingcoop/maven*
* `LKT_VERSION` default: *0.2.0*

Running
-------

    docker run -it --rm  -p 8080:8080 aaronzirbes/lakitu

The config dir is located at `/usr/local/lakitu/application.properties`, so you can override locally via:

    docker run [...] -v /your/local/app.properties:/usr/local/lakitu/application.properties [...]
