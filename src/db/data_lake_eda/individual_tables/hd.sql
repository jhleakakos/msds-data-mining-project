/*
Domain: Institutional Characteristics

HDyyyy: directory information for institutions
------------------------------------------------
UNITID: unique institutional identifier
INSTNM: institution name
STABBR: state abbreviation
OBEREG: Bureau of Economic Analysis regions, grouped by homogeneity of states based on economic, demographic, social, and cultural characteristics
HLOFFER: highest level of credential offered
DEGGRANT: does the institution offer degrees (as compared to non-degree credentials)
HBCU: is the institution an HBCU
TRIBAL: is this a tribal institution
LOCALE: geographic status of school
CLOSEDAT: date institution closed
CYACTIVE: is institution active in current year
INSTCAT: category of institution regarding credentials offered
C21BASIC: alternative to Carnegie Classification and last updated in 2021
INSTSIZE: enrollment size in 2019
CBSA: core based statistical area
*/

select
    count(*) -- 6,163
    , count(distinct unitid) -- 6,163
    , count(unitid) -- 6,163

    -- count(distinct instnm) -- 6,055
    -- instnm
    -- , count(instnm) -- 6,055
from
    data_lake.hd
-- group by
    -- instnm
-- having
    -- count(instnm) > 1