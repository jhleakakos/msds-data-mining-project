/*
Domain: Institutional Characteristics

ICyyyy_PY: student charges by program
------------------------------------------------
UNITID: unique institutional identifier
PRGMOFR: number of programs offered at institution
CIPCODE1: CIP code of the largest program
CIPCODE2: CIP code of the second largest program
CIPCODE3: CIP code of the third largest program
CIPCODE4: CIP code of the fourth largest program
CIPCODE5: CIP code of the fifth largest program
CIPCODE6: CIP code of the sixth largest program
*/

select
    count(*)
    , count(distinct unitid)
    , count(unitid)
    -- *
from
    ic_py