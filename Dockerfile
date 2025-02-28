FROM postgres:latest

EXPOSE 5432
WORKDIR /usr/src/data

ADD ./data/institutional_characteristics ./institutional_characteristics
ADD ./data/enrollments ./enrollments
ADD ./data/completions ./completions
