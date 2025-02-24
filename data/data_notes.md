This file holds notes while looking through all the data files loaded in load_data.py. This info comes from the IPEDS data dictionaries.

## All Survey Components

### Flags2023

Response status information for all institutions in the IPEDS universe in 2023-24, including ones that did not respond

- UNITID: unique institutional identifier

## Institutional Characteristics

### HD2023

Directory information for institutions

- UNITID: unique institutional identifier
- INSTNM: institution name
- STABBR: state abbreviation
- ZIP: zip code
- FIPS: FIPS state code
- OBEREG: Bureau of Economic Analysis regions, grouped by homogeneity of states based on economic, demographic, social, and cultural characteristics
- HLOFFER: highest level of credential offered
- DEGGRANT: does the institution offer degrees (as compared to non-degree credentials)
- HBCU: is the institution an HBCU
- TRIBAL: is this a tribal institution
- LOCALE: geographic status of school
- CLOSEDAT: date institution closed
- CYACTIVE: is institution active in current year
- INSTCAT: category of institution regarding credentials offered
- C21BASIC: alternative to Carnegie Classification and last updated in 2021
- INSTSIZE: enrollment size in 2019
- CBSA: core based statistical area
- CNGDSTCD: congressional district code based on school location

### IC2023

Program and award level offerings, control, and affiliation of institutions. This would be a good file to return to if we need to dig into specific offerings at institutions.

- UNITID: unique institutional identifier
- CNTLAFFI: institution control or affiliation (public, private non-profit, etc)
- OPENADMP: open admission policy

Thoughts:
- Maybe include LEVEL through LEVEL19 for different credential levels offered at institution
- Similar set of features for if the institution enrolls these different levels of students
- List of noncredit programs offered at institution

### IC2023_AY

Student charges for full academic year

- Could be interesting to see how fees correlate with other features
- Could be interesting to look at changes in fees over time

### IC2023_CAMPUSES

Information on branch campuses

### IC2023_PY

Student charges by program

- UNITID: unique institutional identifier
- PRGMOFR: number of programs offered at institution
- CIPCODE1: CIP code of the largest program
- CIPCODE2: CIP code of the second largest program
- CIPCODE3: CIP code of the third largest program
- CIPCODE4: CIP code of the fourth largest program
- CIPCODE5: CIP code of the fifth largest program
- CIPCODE6: CIP code of the sixth largest program

## Enrollments

### EFFY2023

Unduplicated 12-month enrollment headcount. Each record is uniquely defined by UNITID and EFFYALEV.

Overall Totals
- UNITID: unique institutional identifier
- EFFYALEV: level, full- and part-time status, degree- or nondegree-seeking status, and year of study of student enrolled for credit. Not quite sure how to parse these values, but we should be able to combine by UNITID to get totals per institution
- EFFYLEV: level of study
- EFYTOTLT: men and women enrolled for credit (maybe grand total for everyone)

Race/Ethnicity
- EFYAIANT: American Indian or Alaskan Native men and women enrolled for credit
- EFYASIAT: Asian men and women enrolled for credit
- EFYBKAAT: Black or African American men and women enrolled for credit
- EFYHISPT: Hispanic or Latino men and women enrolled for credit
- EFYNHPIT: Native Hawaiian or Other Pacific Islanders men and women enrolled for credit
- EFYWHITT: White men and women enrolled for credit
- EFY2MORT: men and women of two or more races enrolled for credit
- EFYUNKNT: race/ethnicity unknown men and women enrolled for credit
- EFYNRALT: U.S. nonresident men and women enrolled for credit

Gender
- EFYTOTLM: men enrolled for credit
- EFYTOTLW: women enrolled for credit
- EFYGUUN: gender unknown students enrolled for credit
- EFYGUAN: students identified as another gender enrolled for credit
- EFYGUTOT: gender unknown students and students identified as another gender enrolled for credit (composite of EFYGUUN and EFYGUAN)
- EFYGUKN: gender known and falls into men or women students enrolled for credit (composite of EFYTOTLM and EFYTOTLW)

### EFFY2023_DIST

Unduplicated 12-month enrollment headcount by distance education status and level of student. Each record is uniquely defined by UNITID and EFFYDLEV.

- UNITID: unique institutional identifier
- EFFYDLEV: level and degree- or nondegree-seeking status of students enrolled for credit. We should be able to group by UNITID and EFFYDLEV to get totals per institution.
- EFYDETOT: all students enrolled for credit (sum of next three columns)
- EFYDEEXC: students enrolled only in distance education courses
- EFYDESOM: students enrolled in at least one distance education course but not enrolled exclusively in distance education courses
- EFYDENON: students not enrolled in any distance education courses

### EFFY2023_HS

Unduplicated 12-month enrollment headcount of dual credit students, high school students enrolled in college courses for credit. Subset of the nondegree and non-certificate-seeking students from EFFY2023. Each record is uniquely defined by UNITID.

Overall Totals
- UNITID: unique institutional identifier
- EFYTOTLT: total dual credit students

Gender
- EFYTOTLM: men dual credit students
- EFYTOTLW: women dual credit students
 
Race/Ethnicity
- EFYAIANT: American Indian or Alaskan Native men and women dual credit students
- EFYASIAT: Asian men and women dual credit students
- EFYBKAAT: Black or African American men and women dual credit students
- EFYHISPT: Hispanic or Latino men and women dual credit students
- EFYNHPIT: Native Hawaiian or Other Pacific Islanders men and women dual credit students
- EFYWHITT: White men and women dual credit students
- EFY2MORT: men and women of two or more races dual credit students
- EFYUNKNT: race/ethnicity unknown men and women dual credit students
- EFYNRALT: U.S. nonresident men and women dual credit students

### EFIA2023

Instructional activity measured in total credit and/or contact hours delivered by institutions in 12-month period. These are used to derive 12-month full time equivalent (FTE) enrollments.

- UNITID: unique institutional identifier
- EFTEUG: estimated FTE undergraduate enrollment
- EFTEGD: estimated FTE graduate enrollment
- FTEUG: reported FTE undergraduate enrollment
- FTEGD: reported FTE graduate enrollment
- FTEDPP: doctor's-professional practice FTE

## Completions

### C2023_A

Number of awards by type of program, level of award (degree or certificate), first or second major, by race/ethnicity, and by gender. Each record is uniquely defined by UNITID, CIPCODE, MAJORNUM, and AWLEVEL.

- UNITID: unique institutional identifier
- CIPCODE: CIP code
- MAJORNUM: first or second major -- we may need to adjust for this
- AWLEVEL: award level code
- CTOTALT: awards/degrees conferred to all recipients

Gender
- CTOTALM: awards/degrees conferred to men
- CTOTALW: awards/degrees conferred to women

Race/Ethnicity
- CAIANT: awards/degrees conferred to American Indian or Alaskan Native men and women
- CASIAT: awards/degrees conferred to Asian men and women
- CBKAAT: awards/degrees conferred to Black or African American men and women
- CHISPT: awards/degrees conferred to Hispanic or Latino men and women
- CNHPIT: awards/degrees conferred to Native Hawaiian or Other Pacific Islanders men and women
- CWHITT: awards/degrees conferred to White men and women
- C2MORT: awards/degrees conferred to men and women of two or more races
- CUNKNT: awards/degrees conferred to race/ethnicity unknown men and women
- CNRALT: awards/degrees conferred to U.S. nonresident men and women

### C2023_B

Number of students who completed any degree or certificate by race/ethnicity and gender. Each record is uniquely identified by UNITID.

- UNITID: unique institutional identifier
- CSTOTLT: number of students receiving awards/degrees

Race/Ethnicity
- CSAIANT: number of American Indian or Alaskan Native men and women receiving awards/degrees
- CSASIAT: number of Asian men and women receiving awards/degrees
- CSBKAAT: number of Black or African American men and women receiving awards/degrees
- CSHISPT: number of Hispanic or Latino men and women receiving awards/degrees
- CSNHPIT: number of Native Hawaiian or Other Pacific Islanders men and women receiving awards/degrees
- CSWHITT: number of White men and women receiving awards/degrees
- CS2MORT: number of men and women of two or more races receiving awards/degrees
- CSUNKNT: number of race/ethnicity unknown men and women receiving awards/degrees
- CSNRALT: number of U.S. nonresident men and women receiving awards/degrees

Gender
- CTOTLM: number of men receiving awards/degrees
- CTOTLW: number of men receiving awards/degrees
- CSGUTOTUN: number of gender unknown students receiving awards/degrees
- CSGUTOTAG: number of students identified as another gender receiving awards/degrees
- CSGUTOT: number of gender unknown or students identified as another gender receiving awards/degrees
 
- CSGUUGUN: number of gender unknown students receiving undergraduate awards/degrees
- CSGUUGAG: number of students identified as another gender receiving undergraduate awards/degrees
- CSGUUGTT: number of gender unknown and students identified as another gender receiving undergraduate awards/degrees
- CSGUGUN: number of gender unknown students receiving graduate awards/degrees
- CSGUGAG: number of students identified as another gender receiving graduate awards/degrees
- CSGUGTOT: number of gender unknown and students identified as another gender receiving graduate awards/degrees
- CSGUKN: number of students for whom gender is known and falls into men or women receiving awards

### C2023_C

Number of students receiving a degree or certificate by level of award and race/ethnicity, gender, and age. Each record is uniquely defined by UNITID and AWLEVELC.

- UNITID: unique institutional identifier
- AWLEVELC: award level
- CSTOTLT: number of students receiving awards/degrees
 
Gender
- CSTOTLM: number of men receiving awards/degrees
- CSTOTLW: number of women receiving awards/degrees
 
Race/Ethnicity
- CSAIANT: number of American Indian or Alaskan Native men and women receiving awards/degrees
- CSASIAT: number of Asian men and women receiving awards/degrees
- CSBKAAT: number of Black or African American men and women receiving awards/degrees
- CSHISPT: number of Hispanic or Latino men and women receiving awards/degrees
- CSNHPIT: number of Native Hawaiian or Other Pacific Islanders men and women receiving awards/degrees
- CSWHITT: number of White men and women receiving awards/degrees
- CS2MORT: number of men and women of two or more races receiving awards/degrees
- CSUNKNT: number of race/ethnicity unknown men and women receiving awards/degrees
- CSNRALT: number of U.S. nonresident men and women receiving awards/degrees

Age
- CSUND18: number of students under the age of 18 receiving awards/degrees
- CS18_24: number of students between the ages of 18 and 24 receiving awards/degrees
- CS25_39: number of students between the ages of 25 and 39 receiving awards/degrees
- CSABV40: number of students age 40 and above receiving awards/degrees
- CSUNKN: number of students with age unknown receiving awards/degrees

### C2023DEP

Number of programs offered by type of program, award level, and distance education status. Each record is uniquely defined by UNITID and CIPCODE.

- UNITID: unique institutional identifier
- CIPCODE: six-digit CIP code
- PTOTAL: number of programs offered across all award levels
- PTOTALDE: number of programs that can be completed entirely online across all award levels
- PASSOC: number of programs offered at associate's degree level
- PBACHL: number of programs offered at bachelor's degree level
- PMASTR: number of programs offered at master's degree level
- PDOCRS: number of programs offered at doctor's research/scholarship degree level
- PDOCPP: number of programs offered at doctor's professional practice degree level
- PDOCOT: number of programs offered at doctor's other degree level
- PCERT1A: number of programs offered at certificate level of less than 300 clock hours, 9 semester/trimester credit hours, or 13 quarter credit hours
- PCERT1B: number of programs offered at certificate level of 300-800 clock hours, 9-29 semester/trimester credit hours, or 13-44 quarter credit hours
- PCERT2: number of programs offered at certificate level of one year but less than two years
- PCERT4: number of programs offered at certificate level of two years but less than four years
- PPBACC: number of programs offered at postbaccalaureate certificate level
- PPMAST: number of programs offered at post-master's certificate level
