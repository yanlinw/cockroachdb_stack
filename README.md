# CockroachDB Stack

This is a simple cockroachDB development stack. It is composed by 3 cockroachDB nodes cluster and a web sql interface.

All the development data will be persisted in the working directory ./cdb_data. 
### Overview
The development stack is composed by the single docker-compose.yaml with following components:

+ 3 node cockroachdb cluster. The data volumns are located in ./cdb_data folder
+ Web SQL interface
### Usage

When the development stack is running, it is exposed as a postgres instance @ postgres://root@localhost:26257/defaultdb?sslmode=disable 
#### Start the stack
The stack is a persistent, recoverable development env, you can start it at anytime:

1. install docker/docker compose
2. run ``docker-compose up`` to start the stack
3. The cockroachDB cluster management UI: http://localhost:8080
4. The SQL web interface: http://localhost:8081
   
#### Stop the stack
run ``docker-compose down`` to stop the stack

#### Start the stack from scratch 

1. run ``docker-compose rm`` 
2. remove the ./cdb_data directory
3. run ``docker-compose up`` to start the stack
   