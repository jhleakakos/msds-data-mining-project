/*
Domain: Completions

CyyyyDEP: number of programs offered by type of program, award level, and distance education status
------------------------------------------------
UNITID: unique institutional identifier
CIPCODE: six-digit CIP code
PTOTAL: number of programs offered across all award levels
PTOTALDE: number of programs that can be completed entirely online across all award levels
PASSOC: number of programs offered at associate''s degree level
PBACHL: number of programs offered at bachelor''s degree level
PMASTR: number of programs offered at master''s degree level
PDOCRS: number of programs offered at doctor''s research/scholarship degree level
PDOCPP: number of programs offered at doctor''s professional practice degree level
PDOCOT: number of programs offered at doctor''s other degree level
PCERT1A: number of programs offered at certificate level of less than 300 clock hours, 9 semester/trimester credit hours, or 13 quarter credit hours
PCERT1B: number of programs offered at certificate level of 300-800 clock hours, 9-29 semester/trimester credit hours, or 13-44 quarter credit hours
PCERT2: number of programs offered at certificate level of one year but less than two years
PCERT4: number of programs offered at certificate level of two years but less than four years
PPBACC: number of programs offered at postbaccalaureate certificate level
PPMAST: number of programs offered at post-master''s certificate level
*/

select
    *
from
    cdep