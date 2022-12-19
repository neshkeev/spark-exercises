# Datasources

## Motivation

The goal of this exercise is to learn how to work with data sources.
We'll take a look at different file formats and Spark's means to work with them

## Preparation

Open the notebook:

1. Change the pemissions for postgres to get initialiazed: `chmod -R 777 ./postgres`
1. Start the containers (feel free to use the detached mode `-d`): `docker compose up`
1. Wait for the containers to start
1. Check if the database got initialized correctly: `docker compose exec -it postgres psql -U docker -d spark -c 'select count(*) from employees'`
   - If the output is greater than zero, then you're golden
   - If the output is zero or there is an error you need to reinitialize the container. See troubleshooting below
1. Create a kafka topic: `docker compose exec -it kafka kafka-topics.sh --bootstrap-server localhost:9092 --topic my-pyspark-topic --delete --partitions 3 --replication-factor 1`
1. Retrieve the jupyter: url `bash ./guess_jupyter_url`
1. Open the url in a web browser
1. Navigate to the file browser panel. Press `CTRL + SHIFT + F` if it's not visible
1. Double click on `notebooks/datasources.ipynb`

## Kafka

1. Enter the kafka container: `docker compose exec -it kafka bash`
1. Produce a number of messages: `kafka-console-producer.sh --bootstrap-server localhost:9092 --topic my-pyspark-topic <<<$(yes 'Hello, World!' | head -n 20)`
1. Check if messages are in the topic: `kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic my-pyspark-topic --from-beginning`
1. Exit the consumer: Press `CTRL + C`

## Troubleshooting

### The database is empty or the database's container doesn't start

Make sure you changed the permissions from the first step.

1. Stop the containers: `docker compose stop`
1. Change the pemissions for postgres to get initialiazed: `chmod -R 777 ./postgres`
1. Get the container id: `CONTAINER_ID=$(docker container ls -a | grep postgres | awk '{print $1}')`
1. Remove the container by id: `[ -n "${CONTAINER_ID}" ] && docker rm ${CONTAINER_ID} || echo 'Nothing to remove'`
1. Start the containers: `docker compose up` and proceed with the preparation instructions
