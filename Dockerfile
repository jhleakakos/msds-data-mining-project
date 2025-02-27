FROM postgres:latest

EXPOSE 5432
WORKDIR /usr/src/data

ADD ./data/institutional_characteristics .
ADD ./data/enrollments .
ADD ./data/completions .
