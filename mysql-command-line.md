# Mysql command line.

1. Create database charset utf8.

```
CREATE DATABASE mydatabase CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

2. Export (dump) database.

- Windows.
  - Use cmd administrator.
  - Cd to folder mysql example:

```
C:\Program Files\MySQL\MySQL Server 8.0\bin
```

```
prompt @$f
```

- Note: Mac or Linux use only line

```
mysqldump -u root -p dbname > name.sql;
```

3. Import (backup) database.

- Windows.

```
mysql -p -u [user] [database] < backup-file.sql (use location file).
```

4. Restore database from file backup (Docker compose)

- Create file backup in folder
- Create file Dockerfile

```
FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=1234

COPY ./database-name.sql /docker-entrypoint-initdb.d/
```

- Build

```
docker build -t [tag name] .
```

- Run

```
docker run -e -d [port] [tag name]
```

5. Export (dump) database mysql container docker.

- Dump database with mysql

```
mysqldump -u root -p [database name] > [file name].sql
```

- Note: dump file will copy to location current terminal.
