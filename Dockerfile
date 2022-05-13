FROM postgres:14.2-bullseye

COPY initdb.sql /docker-entrypoint-initdb.d/
