# Datasources

## Motivation

The goal of this exercise is get familiar with Spark SQL and its features.
Also we'll take a look at the `Delta Lake` format which supports data migrations

## Preparation

Open the notebook:

1. Clean up the previously started container: `docker compose rm pyspark -f`
1. Change the pemissions for postgres to get initialiazed: `chmod -R 777 ./postgres`
1. Start the containers (feel free to use the detached mode `-d`): `docker compose up`
1. Wait for the containers to start
1. Check if the database got initialized correctly: `docker compose exec -it postgres psql -U docker -d spark -c 'select count(*) from employees'`
   - If the output is greater than zero, then you're golden
   - If the output is zero or there is an error you need to reinitialize the container. See troubleshooting below
1. Retrieve the jupyter: url `bash ./guess_jupyter_url`
1. Open the url in a web browser
1. Navigate to the file browser panel. Press `CTRL + SHIFT + F` if it's not visible
1. Double click on `notebooks/spark-SQL.ipynb`

## Troubleshooting

### The database is empty or the database's container doesn't start

Make sure you changed the permissions from the first step.

1. Stop the containers: `docker compose stop`
1. Change the pemissions for postgres to get initialiazed: `chmod -R 777 ./postgres`
1. Get the container id: `CONTAINER_ID=$(docker container ls -a | grep postgres | awk '{print $1}')`
1. Remove the container by id: `[ -n "${CONTAINER_ID}" ] && docker rm ${CONTAINER_ID} || echo 'Nothing to remove'`
1. Start the containers: `docker compose up` and proceed with the preparation instructions
