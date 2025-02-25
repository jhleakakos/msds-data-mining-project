-- The SQL here is a subset of the tables and columns from data_notes.md.
-- We will treat the first layer of loading data in as a data lake and worry about preprocessing after.


-- Institutional Characteristics

drop table if exists hd;
create table hd
(
    year int
    , unitid varchar(6)
    , instnm varchar(120)
    , stabbr varchar(2)
    , obereg varchar(2)
    , hloffer varchar(2)
    , deggrant varchar(2)
    , hbcu varchar(2)
    , tribal varchar(2)
    , locale varchar(2)
    , closedat varchar(10)
    , cyactive varchar(1)
    , instcat varchar(2)
    , c21basic varchar(2)
    , instsize varchar(2)
    , cbsa varchar(5)
    , primary key (year, unitid)
);

drop table if exists ic;
create table ic
(
    year int
    , unitid varchar(6)
    , cntlaffi varchar(2)
    , openadmp varchar(2)
    , primary key (year, unitid)
);

drop table if exists ic_py;
create table ic_py
(
    year int
    , unitid varchar(6)
    , prgmofr int
    , cipcode1 varchar(7)
    , cipcode2 varchar(7)
    , cipcode3 varchar(7)
    , cipcode4 varchar(7)
    , cipcode5 varchar(7)
    , cipcode6 varchar(7)
    , primary key (year, unitid)
);

-- need to find ipeds cip lookup
-- drop table if exists cip;
-- create table cip
-- (
--
-- );

-- Enrollments

drop table if exists effy;
create table effy
(
    year int
    , unitid varchar(6)
    , effyalev varchar(2)
    , effylev varchar(2)
    , efytotlt int
    , primary key (year, unitid, effyalev)
);

drop table if exists effy_dist;
create table effy_dist
(
    year int
    , unitid varchar(6)
    , effydlev varchar(2)
    , efydetot int
    , efydeexc int
    , efydesom int
    , efydenon int
    , primary key (year, unitid, effydlev)
);

drop table if exists effy_hs;
create table effy_hs
(
    year int
    , unitid varchar(6)
    , efytotlt int
    , primary key (year, unitid)
);

drop table if exists efia;
create table efia
(
    year int
    , unitid varchar(6)
    , efteug int
    , eftegd int
    , fteug int
    , ftegd int
    , ftedpp int
    , primary key (year, unitid)
);

-- Completions

drop table if exists c_a;
create table c_a
(
    year int
    , unitid varchar(6)
    , cipcode varchar(7)
    , majornum varchar(1)
    , awlevel varchar(2)
    , ctotalt int
    , primary key (year, unitid, cipcode, majornum, awlevel, ctotalt)
);

drop table if exists c_b;
create table c_b
(
    year int
    , unitid varchar(6)
    , cstotlt int
    , primary key (year, unitid)
);

drop table if exists c_c;
create table c_c
(
    year int
    , unitid varchar(6)
    , awlevelc varchar(2)
    , cstotlt int
    , primary key (year, unitid, awlevelc)
);

drop table if exists cdep;
create table cdep
(
    year int
    , unitid varchar(6)
    , cipcode varchar(7)
    , ptotal int
    , ptotalde int
    , passoc int
    , pbachl int
    , pmastr int
    , pdocrs int
    , pdocpp int
    , pdocot int
    , pcert1a int
    , pcert1b int
    , pcert2 int
    , pcert4 int
    , ppbacc int
    , ppmast int
    , primary key (year, unitid, cipcode)
);