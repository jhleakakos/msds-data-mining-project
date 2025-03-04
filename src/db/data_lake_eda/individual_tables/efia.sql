/*
Domain: Enrollments

EFIAyyyy: instructional activity measured in total credit and/or contact hours delivered by institutions in 12-month period, used to derive 12-month full time equivalent (FTE) enrollments
------------------------------------------------
UNITID: unique institutional identifier
EFTEUG: estimated FTE undergraduate enrollment
EFTEGD: estimated FTE graduate enrollment
FTEUG: reported FTE undergraduate enrollment
FTEGD: reported FTE graduate enrollment
FTEDPP: doctor''s-professional practice FTE
*/

select
    count(*)
    , count(unitid)
    , count(distinct unitid)
    -- *
from
    efia