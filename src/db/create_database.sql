drop database if exists higher_ed_synthesized;
create database higher_ed_synthesized;

-- Manually adjust postgres connection to new database before running schema commands

drop schema if exists data_lake;
create schema data_lake;

drop schema if exists data_warehouse;
create schema data_warehouse;