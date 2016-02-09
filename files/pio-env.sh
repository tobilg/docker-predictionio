#!/bin/bash

PIO_FS_BASEDIR=${HOME}/.pio_store
PIO_FS_ENGINESDIR=${PIO_FS_BASEDIR}/engines
PIO_FS_TMPDIR=${PIO_FS_BASEDIR}/tmp

SPARK_HOME=${PIO_HOME}/vendors/spark-${SPARK_VERSION}-bin-hadoop2.6

HBASE_CONF_DIR=${PIO_HOME}/vendors/hbase-${HBASE_VERSION}/conf

PIO_STORAGE_REPOSITORIES_METADATA_NAME=pio_meta
PIO_STORAGE_REPOSITORIES_METADATA_SOURCE=ELASTICSEARCH
PIO_STORAGE_REPOSITORIES_EVENTDATA_NAME=pio_event
PIO_STORAGE_REPOSITORIES_EVENTDATA_SOURCE=HBASE
PIO_STORAGE_REPOSITORIES_MODELDATA_NAME=pio_model
PIO_STORAGE_REPOSITORIES_MODELDATA_SOURCE=LOCALFS

PIO_STORAGE_SOURCES_ELASTICSEARCH_TYPE=elasticsearch
PIO_STORAGE_SOURCES_ELASTICSEARCH_CLUSTERNAME=predictionio
PIO_STORAGE_SOURCES_ELASTICSEARCH_HOSTS=localhost
PIO_STORAGE_SOURCES_ELASTICSEARCH_PORTS=9300
PIO_STORAGE_SOURCES_ELASTICSEARCH_HOME=${PIO_HOME}/vendors/elasticsearch-${ELASTICSEARCH_VERSION}
PIO_STORAGE_SOURCES_LOCALFS_TYPE=localfs
PIO_STORAGE_SOURCES_LOCALFS_PATH=${PIO_FS_BASEDIR}/models
PIO_STORAGE_SOURCES_HBASE_TYPE=hbase
PIO_STORAGE_SOURCES_HBASE_HOME=${PIO_HOME}/vendors/hbase-${HBASE_VERSION}