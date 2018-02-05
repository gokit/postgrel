# Postgrel
Postgres docker image built on top of Alpine Linux. Built for the purpose to allow users to either run postgres either has a processor or main execution command.

## Build
To build just run the following:

```go
make build
```

You can set version of build by setting `VERSION` environment variable to set custom version. It defaults to `0.0.1`.

```go
VERSION=0.1.0 make build
```

## Push
To push just run the following after ensuring docker credentials for 
docker repository is set:

```go
make push
```

## Run

To run the docker image built using the docker file:

- To run as a non-deamon:

```bash
docker run -it ${image_name} /bin/pglunch
```

## Environment Varialbes

You can set values which the db uses to start off: 


- `PGDATA`

Set directory path to be used for potgres database files.
Usually this should be exposed through the `Volume` directive for docker to allow mounting of external volumes in directory of started container.

- `POSTGRES_DB`

Set db name to be created when initializing postgres database.

- `POSTGRES_USER`

Set username for admin/superuser to be used for db wide authentication in setup for security.

- `POSTGRES_PASSWORD`

Set password for admin/superuser to be used for db wide authentication in setup for security.

- `POSTGRES_INITDB_WALDIR`

This optional environment variable can be used to define another location for the Postgres transaction log. By default the transaction log is stored in a subdirectory of the main Postgres data folder (PGDATA). Sometimes it can be desireable to store the transaction log in a different directory which may be backed by storage with different performance or reliability characteristics.

- `POSTGRES_INITDB_ARGS`

This optional environment variable can be used to send arguments to postgres initdb. The value is a space separated string of arguments as postgres initdb would expect them. This is useful for adding functionality like data page checksums: -e POSTGRES_INITDB_ARGS="--data-checksums".