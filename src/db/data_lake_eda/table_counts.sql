select 
    t.table
    , t.count
from
    (
        -- Institutional Characteristics
        select 'hd' table, count(*) from hd
        union select 'ic', count(*) from ic
        union select 'ic_py', count(*) from ic_py

        -- Enrollments

        union select 'effy', count(*) from effy
        union select 'effy_dist', count(*) from effy_dist
        union select 'effy_hs', count(*) from effy_hs
        union select 'efia', count(*) from efia

        -- Completions

        union select 'c_a', count(*) from c_a
        union select 'c_b', count(*) from c_b
        union select 'c_c', count(*) from c_c
        union select 'cdep', count(*) from cdep
    ) t
order by
    case
        when t.table = 'hd' then 0
        when t.table = 'ic' then 1
        when t.table = 'ic_py' then 2
        when t.table = 'effy' then 3
        when t.table = 'effy_dist' then 4
        when t.table = 'effy_hs' then 5
        when t.table = 'efia' then 6
        when t.table = 'c_a' then 7
        when t.table = 'c_b' then 8
        when t.table = 'c_c' then 9
        when t.table = 'cdep' then 10
        else 11
    end