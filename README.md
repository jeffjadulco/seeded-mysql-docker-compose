# Seeded MySQL DB using Docker Compose

Template for a seeded dockerized MySQL database using Docker Compose

Main goal of this template is to provide an easy way to setup a seeded database from an existing database for local testing and development.

See: https://github.com/docker-library/docs/tree/master/mysql#initializing-a-fresh-instance

## Usage

> Make sure you have Docker Desktop and Docker Compose installed.

To create and start the container:

```
docker-compose up
```

To start in detached mode:

```
docker-compose up -d
```

> Since this uses the `MYSQL_RANDOM_ROOT_PASSWORD` env variable, you can get the generated password by searching `GENERATED ROOT PASSWORD` in the logs. If detached mode is used, you can use Docker Desktop to view the logs of the created container.

To stop:

```
docker-compose down
```

## Config

### Seed

Place your database dump inside the `init/` folder.

> Use [`mysqldump`](https://simplebackups.io/blog/the-complete-mysqldump-guide-with-examples/) to generate a database dump file, or if you're using Workbench, you can use the [`Data Export`](https://dev.mysql.com/doc/workbench/en/wb-admin-export-import-management.html) tool in `Administration`.

### Image

This config uses the `mysql:latest` image, but you can change it. See the supported tags [here](https://github.com/docker-library/docs/tree/master/mysql#supported-tags-and-respective-dockerfile-links).

### Ports

This config uses the default port of `3306` but you can change the `XXXX` in `XXXX:3306` with whatever you want. You might want to provide a different port if there's already a running MySQL Server instance on your machine.

### Environment Variables

This config only uses the `MYSQL_RANDOM_ROOT_PASSWORD`, but if you want to specify your own password, replace it with `MYSQL_ROOT_PASSWORD=yourpassword`.

> Other environment variables can be found [here](https://github.com/docker-library/docs/tree/master/mysql#environment-variables). `MYSQL_DATABASE`, `MYSQL_USER`, and `MYSQL_PASSWORD` will conflict with this seeded database setup.
