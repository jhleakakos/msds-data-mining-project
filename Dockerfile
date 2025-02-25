FROM postgres:latest

EXPOSE 5432
WORKDIR /usr/src/data
ADD ../data/ .