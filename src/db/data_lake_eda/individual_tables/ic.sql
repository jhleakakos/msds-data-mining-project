/*
Domain: Institutional Characteristics

ICyyyy: program and award level offerings, control, and affiliation of institutions
------------------------------------------------
UNITID: unique institutional identifier
CNTLAFFI: institution control or affiliation (public, private non-profit, etc)
OPENADMP: open admission policy
*/

select
    count(*)
    , count(distinct unitid)
    , count(unitid)
    -- *
from
    data_lake.ic