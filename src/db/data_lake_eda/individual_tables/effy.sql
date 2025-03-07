/*
Domain: Enrollments

EFFYyyyy: unduplicated 12-month enrollment headcount
------------------------------------------------
UNITID: unique institutional identifier
EFFYALEV: level, full- and part-time status, degree- or nondegree-seeking status, and year of study of student enrolled for credit
EFFYLEV: level of study
EFYTOTLT: total students enrolled for credit
*/


-- we need to group by unitid and effyalev to get per-unitid rows

select
    -- count(*)
    -- , count(unitid)
    -- , count(distinct unitid)
    -- , count(effyalev)
    -- , count(distinct effyalev)

    -- unitid
    -- , effyalev
    -- , count(*)

    *
from
    data_lake.effy
-- group by
    -- unitid
--     , effyalev
-- having
--     count(*) > 1