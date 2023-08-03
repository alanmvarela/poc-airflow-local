
# Poc Nestjs Primsa Postgre

A poc of local Airflow using docker and docker compose. The poc includes a simple DAG that can be run from the local instance of Airflow.
Additional a basch cli has been put in place to run the poc more easily,

## Tech Stack

**Client:** Airflow, Postgre, Redis, Docker, Bash

## Features

- Custom DAG
- Dockerized Airflow
- Dockerized Postgre
- Dockerized Redis
- Bash cli

## Prerequrements

- docker
- docker compose


## Run Locally

Clone the project

```bash
  git clone TBD
```

Go to the project directory

```bash
  cd TBD
```

TBD

## Running Tests

TBD


## Project Structure

```bash
.
├── airflow.Dockerfile
├── airflow.sh
├── cli
│   ├── cli
│   ├── commands
│   │   ├── cleanup
│   │   ├── startdb
│   │   ├── startdev
│   │   └── stopdb
│   └── common
├── config
├── dags
│   ├── __pycache__
│   │   └── test_dag.cpython-37.pyc
│   └── test_dag.py
├── docker-compose.yaml
├── plugins
└── README.md
```

## Lessons Learned

TBD

## Roadmap

- TBD

## Authors

- [@alanmvarela](https://www.github.com/alanmvarela)
