FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=1234

COPY ./runcrew.sql /docker-entrypoint-initdb.d/
