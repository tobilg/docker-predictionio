# PredictionIO as a Docker container

> [PredictionIO](https://prediction.io) is an open-source Machine Learning
server for developers and data scientists to build and deploy predictive
applications in a fraction of the time.

## Contents
As of 2016-02-09 this container has the following applications installed:
* PredictionIO 0.9.5
* Spark 1.6.0
* Elasticsearch 1.7.5
* HBase 1.0.3

## Running

### Basic
To run the basic container, without a template yet deployed:
```Bash
$ docker run -d -p 7070:7070 -p 8000:8000 tobilg/predictionio
```
This starts the event server and the PredictionIO engine and webservice. To deploy an engine while running, open a Bash shell via

```Bash
$ docker exec -it <containerid> bash
```

Then, follow the steps after step 2 in the [quickstart tutorial](https://docs.prediction.io/templates/recommendation/quickstart/#2.-create-a-new-engine-from-an-engine-template)

### Use preconfigured engine with basic container
To use the basic container with a preconfigured custom engine, map the engine's directory to the containers `/CustomEngine` folder, and run the `./deploy_engine.sh` script.

So, if your engine resides in the `~/engines/myCustomEngine` folder, you can use

```Bash
$ docker run -d -p 7070:7070 -p 8000:8000 -v ~/engines/myCustomEngine:/CustomEngine tobilg/predictionio
```
to map it in the container. Please don't forget to run `./deploy_engine.sh` script after connecting into the running container (see *Basic*).

### Own Docker container with custom engine
You can create a custom Dockerfile if you want to include and deploy you custom engine with the container itself. If your custom engine resides in `~/engines/myCustomEngine`, create the following Dockerfile in the same folder:

```Dockerfile
FROM tobilg/predictionio

ADD . /CustomEngine

RUN ./deploy_engine.sh

EXPOSE 7070 8000

ENTRYPOINT ["/PredictionIO-0.9.5/bin/pio-start-all"]
```