/*
Domain: Enrollments

EFFYyyyy_DIST: unduplicated 12-month enrollment headcount by distance education status and level of student
------------------------------------------------
UNITID: unique institutional identifier
EFFYDLEV: level and degree- or nondegree-seeking status of students enrolled for credit
EFYDETOT: all students enrolled for credit (sum of next three columns)
EFYDEEXC: students enrolled only in distance education courses
EFYDESOM: students enrolled in at least one distance education course but not enrolled exclusively in distance education courses
EFYDENON: students not enrolled in any distance education courses
*/

select
    -- count(*)
    -- , count(unitid)
    -- , count(distinct unitid)
    -- , count(effydlev)
    -- , count(distinct effydlev)

    unitid
    , effydlev
    , count(*)
from
    data_lake.effy_dist
group by
    unitid
    , effydlev
having
    count(*) > 1