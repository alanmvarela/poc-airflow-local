
# Poc Airflow Local

A poc of local Airflow using docker and docker compose. The poc includes a simple DAG that can be run from the local instance of Airflow.
Additional a basch cli has been put in place to run the poc more easily,
The entire build was based on below documens:
- [How to run Airflow in docker-compose](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html)
- [Airflow Custom Docker Image](https://airflow.apache.org/docs/docker-stack/build.html)
- [Airflow UI documentation](https://airflow.apache.org/docs/apache-airflow/stable/ui.html)

## Tech Stack

**Client:** Airflow, Postgre, Redis, Docker, Bash

## Features

- Custom DAG
- Dockerized Airflow with custom image
- Dockerized Postgre
- Dockerized Redis
- Bash cli to easily handle the local set up and cleanup

## Prerequrements

- docker
- docker compose


## Run Locally

Clone the project

```bash
  git clone git@github.com:alanmvarela/poc-airflow-local.git
```

Go to the project directory

```bash
  cd poc-airflow-local
```

Go to the airflow directory

```bash
  cd airflow
```

Create the .env file and adjust if necesary

```bash
  cp .env.example .env
```

Go to the cli directory

```bash
  cd ../cli
```

Run the startdev command to start running airflow locally

```bash
  ./cli.sh startdev
```

Validate that all docker containers are running without issues

```bash
  docker ps
```

Access the airflow [local webserver](http://localhost:8080) using user and pass 'airflow'.

Run commands in the webserver using airflow.sh located in airflow directory, for e.g:
```bash
  ./airflow.sh bash
```

Run the cleanup command to remove all containers and volumes created with the local install

```bash
  ./cli.sh cleanup
```


## Running Tests

TBD


## Project Structure

```bash
.
├── airflow
│   ├── airflow.Dockerfile
│   ├── airflow.sh
│   ├── config
│   ├── dags
│   │   ├── __pycache__
│   │   │   └── test_dag.cpython-37.pyc
│   │   └── test_dag.py
│   ├── docker-compose.yaml
│   └── plugins
├── cli
│   ├── cli.sh
│   ├── commands
│   │   ├── cleanup.sh
│   │   ├── startdb.sh
│   │   ├── startdev.sh
│   │   └── stopdb.sh
│   └── utils
│       └── common.sh
└── README.md
```

## Lessons Learned

Whiel building this poc I learned:
- How to run airflow locally for development purposes.
- When to customize the airflow docker image.
- How to create a custom airflow image that allows to customize and extend airflow functionality.
- How to create a DAGs, schedule and run them manually.
- How to navigate airflow UI and access the different data displays for users and DAGs.
- How to access airflow logs.

## Roadmap

- Test Dag using [tetsing documentation][https://airflow.apache.org/docs/apache-airflow/stable/core-concepts/executor/debug.html]

## Authors

- [@alanmvarela](https://www.github.com/alanmvarela)
