set client_encoding = 'latin1';


-- Institutional Characteristics

create table hd2023
(
    UNITID varchar,INSTNM varchar,IALIAS varchar,ADDR varchar,CITY varchar,STABBR varchar,ZIP varchar,FIPS varchar,OBEREG varchar,CHFNM varchar,CHFTITLE varchar,GENTELE varchar,EIN varchar,UEIS varchar,OPEID varchar,OPEFLAG varchar,WEBADDR varchar,ADMINURL varchar,FAIDURL varchar,APPLURL varchar,NPRICURL varchar,VETURL varchar,ATHURL varchar,DISAURL varchar,SECTOR varchar,ICLEVEL varchar,CONTROL varchar,HLOFFER varchar,UGOFFER varchar,GROFFER varchar,HDEGOFR1 varchar,DEGGRANT varchar,HBCU varchar,HOSPITAL varchar,MEDICAL varchar,TRIBAL varchar,LOCALE varchar,OPENPUBL varchar,ACT varchar,NEWID varchar,DEATHYR varchar,CLOSEDAT varchar,CYACTIVE varchar,POSTSEC varchar,PSEFLAG varchar,PSET4FLG varchar,RPTMTH varchar,INSTCAT varchar,C21BASIC varchar,C21IPUG varchar,C21IPGRD varchar,C21UGPRF varchar,C21ENPRF varchar,C21SZSET varchar,C18BASIC varchar,C15BASIC varchar,CCBASIC varchar,CARNEGIE varchar,LANDGRNT varchar,INSTSIZE varchar,F1SYSTYP varchar,F1SYSNAM varchar,F1SYSCOD varchar,CBSA varchar,CBSATYPE varchar,CSA varchar,COUNTYCD varchar,COUNTYNM varchar,CNGDSTCD varchar,LONGITUD varchar,LATITUDE varchar,DFRCGID varchar,DFRCUSCG varchar
);
copy hd2023 from '/usr/src/data/institutional_characteristics/hd2023.csv' delimiter ',' csv header;
insert into hd
(
    year
    , unitid
    , instnm
    , stabbr
    , obereg
    , hloffer
    , deggrant
    , hbcu
    , tribal
    , locale
    , closedat
    , cyactive
    , instcat
    , c21basic
    , instsize
    , cbsa
)
select
    2023
    , unitid
    , instnm
    , stabbr
    , obereg
    , hloffer
    , deggrant
    , hbcu
    , tribal
    , locale
    , closedat
    , cyactive
    , instcat
    , c21basic
    , instsize
    , cbsa
from 
    hd2023;
drop table hd2023;

create table ic2023
(
    UNITID varchar,PEO1ISTR varchar,PEO2ISTR varchar,PEO3ISTR varchar,PEO4ISTR varchar,PEO5ISTR varchar,PEO6ISTR varchar,PEO7ISTR varchar,CNTLAFFI varchar,PUBPRIME varchar,PUBSECON varchar,RELAFFIL varchar,LEVEL1 varchar,LEVEL1A varchar,LEVEL1B varchar,LEVEL2 varchar,LEVEL3 varchar,LEVEL4 varchar,LEVEL5 varchar,LEVEL6 varchar,LEVEL7 varchar,LEVEL8 varchar,LEVEL12 varchar,LEVEL17 varchar,LEVEL18 varchar,LEVEL19 varchar,CALSYS varchar,FT_UG varchar,FT_FTUG varchar,FTGDNIDP varchar,PT_UG varchar,PT_FTUG varchar,PTGDNIDP varchar,DOCPP varchar,DOCPPSP varchar,OPENADMP varchar,NONCRDT1 varchar,NONCRDT2 varchar,NONCRDT3 varchar,NONCRDT4 varchar,NONCRDT5 varchar,NONCRDT6 varchar,NONCRDT7 varchar,NONCRDT8 varchar,NONCRDT9 varchar,ENRHSST varchar,ENRHSST1 varchar,ENRHSST2 varchar,VET1 varchar,VET2 varchar,VET3 varchar,VET4 varchar,VET5 varchar,VET9 varchar,CREDITS2 varchar,CREDITS3 varchar,CREDITS4 varchar,SLO5 varchar,SLO51 varchar,SLO52 varchar,SLO521 varchar,SLO53 varchar,SLO6 varchar,SLO7 varchar,SLO8 varchar,SLO81 varchar,SLO82 varchar,SLO83 varchar,SLO9 varchar,SLOA varchar,SLOB varchar,YRSCOLL varchar,STUSRV2 varchar,STUSRV3 varchar,STUSRV4 varchar,STUSRV8 varchar,STUSRV9 varchar,LIBRES1 varchar,LIBRES2 varchar,LIBRES3 varchar,LIBRES4 varchar,LIBRES5 varchar,LIBRES6 varchar,LIBRES9 varchar,TUITPL varchar,TUITPL1 varchar,TUITPL2 varchar,TUITPL3 varchar,TUITPL4 varchar,PRMPGM varchar,DSTNUGC varchar,DSTNUGP varchar,DSTNUGN varchar,DSTNGC varchar,DSTNGP varchar,DSTNGN varchar,DISTCRS varchar,DISTPGS varchar,DSTNCED1 varchar,DSTNCED2 varchar,DSTNCED3 varchar,DISTNCED varchar,DISAB varchar,XDISABPC varchar,DISABPCT varchar,ALLONCAM varchar,TUITVARY varchar,ROOM varchar,XROOMCAP varchar,ROOMCAP varchar,BOARD varchar,XMEALSWK varchar,MEALSWK varchar,XROOMAMT varchar,ROOMAMT varchar,XBORDAMT varchar,BOARDAMT varchar,XRMBDAMT varchar,RMBRDAMT varchar,XAPPFEEU varchar,APPLFEEU varchar,XAPPFEEG varchar,APPLFEEG varchar,ATHASSOC varchar,ASSOC1 varchar,ASSOC2 varchar,ASSOC3 varchar,ASSOC4 varchar,ASSOC5 varchar,ASSOC6 varchar,SPORT1 varchar,CONFNO1 varchar,SPORT2 varchar,CONFNO2 varchar,SPORT3 varchar,CONFNO3 varchar,SPORT4 varchar,CONFNO4 varchar
);
copy ic2023 from '/usr/src/data/institutional_characteristics/ic2023.csv' delimiter ',' csv header;
insert into ic
(
    year
    , unitid
    , cntlaffi
    , openadmp
)
select
    2023
    , unitid
    , cntlaffi
    , openadmp
from 
    ic2023;
drop table ic2023;


-- original file has an extra field at the end
create table ic2023_py
(
    UNITID varchar,PRGMOFR varchar,CIPCODE1 varchar,XCIPTUI1 varchar,CIPTUIT1 varchar,XCIPSUP1 varchar,CIPSUPP1 varchar,XCIPLGT1 varchar,CIPLGTH1 varchar,PRGMSR1 varchar,XMTHCMP1 varchar,MTHCMP1 varchar,XWKCMP1 varchar,WKCMP1 varchar,XLNAYHR1 varchar,LNAYHR1 varchar,XLNAYWK1 varchar,LNAYWK1 varchar,XCHG1PY0 varchar,CHG1PY0 varchar,XCHG1PY1 varchar,CHG1PY1 varchar,XCHG1PY2 varchar,CHG1PY2 varchar,XCHG1PY3 varchar,CHG1PY3 varchar,XCHG4PY0 varchar,CHG4PY0 varchar,XCHG4PY1 varchar,CHG4PY1 varchar,XCHG4PY2 varchar,CHG4PY2 varchar,XCHG4PY3 varchar,CHG4PY3 varchar,XCHG5PY0 varchar,CHG5PY0 varchar,XCHG5PY1 varchar,CHG5PY1 varchar,XCHG5PY2 varchar,CHG5PY2 varchar,XCHG5PY3 varchar,CHG5PY3 varchar,XCHG6PY0 varchar,CHG6PY0 varchar,XCHG6PY1 varchar,CHG6PY1 varchar,XCHG6PY2 varchar,CHG6PY2 varchar,XCHG6PY3 varchar,CHG6PY3 varchar,XCHG7PY0 varchar,CHG7PY0 varchar,XCHG7PY1 varchar,CHG7PY1 varchar,XCHG7PY2 varchar,CHG7PY2 varchar,XCHG7PY3 varchar,CHG7PY3 varchar,XCHG8PY0 varchar,CHG8PY0 varchar,XCHG8PY1 varchar,CHG8PY1 varchar,XCHG8PY2 varchar,CHG8PY2 varchar,XCHG8PY3 varchar,CHG8PY3 varchar,XCHG9PY0 varchar,CHG9PY0 varchar,XCHG9PY1 varchar,CHG9PY1 varchar,XCHG9PY2 varchar,CHG9PY2 varchar,XCHG9PY3 varchar,CHG9PY3 varchar,CIPCODE2 varchar,XCIPTUI2 varchar,CIPTUIT2 varchar,XCIPSUP2 varchar,CIPSUPP2 varchar,XCIPLGT2 varchar,CIPLGTH2 varchar,PRGMSR2 varchar,XMTHCMP2 varchar,MTHCMP2 varchar,CIPCODE3 varchar,XCIPTUI3 varchar,CIPTUIT3 varchar,XCIPSUP3 varchar,CIPSUPP3 varchar,XCIPLGT3 varchar,CIPLGTH3 varchar,PRGMSR3 varchar,XMTHCMP3 varchar,MTHCMP3 varchar,CIPCODE4 varchar,XCIPTUI4 varchar,CIPTUIT4 varchar,XCIPSUP4 varchar,CIPSUPP4 varchar,XCIPLGT4 varchar,CIPLGTH4 varchar,PRGMSR4 varchar,XMTHCMP4 varchar,MTHCMP4 varchar,CIPCODE5 varchar,XCIPTUI5 varchar,CIPTUIT5 varchar,XCIPSUP5 varchar,CIPSUPP5 varchar,XCIPLGT5 varchar,CIPLGTH5 varchar,PRGMSR5 varchar,XMTHCMP5 varchar,MTHCMP5 varchar,CIPCODE6 varchar,XCIPTUI6 varchar,CIPTUIT6 varchar,XCIPSUP6 varchar,CIPSUPP6 varchar,XCIPLGT6 varchar,CIPLGTH6 varchar,PRGMSR6 varchar,XMTHCMP6 varchar,MTHCMP6 varchar,junk varchar
);
copy ic2023_py from '/usr/src/data/institutional_characteristics/ic2023_py.csv' delimiter ',' csv header;
insert into ic_py
(
    year
    , unitid
    , prgmofr
    , cipcode1
    , cipcode2
    , cipcode3
    , cipcode4
    , cipcode5
    , cipcode6
)
select
    2023
    , unitid
    , cast(prgmofr as int)
    , cipcode1
    , cipcode2
    , cipcode3
    , cipcode4
    , cipcode5
    , cipcode6
from 
    ic2023_py;
drop table ic2023_py;


-- Enrollments

create table effy2023
(
    UNITID varchar,EFFYALEV varchar,EFFYLEV varchar,LSTUDY varchar,XEYTOTLT varchar,EFYTOTLT varchar,XEYTOTLM varchar,EFYTOTLM varchar,XEYTOTLW varchar,EFYTOTLW varchar,XEFYAIAT varchar,EFYAIANT varchar,XEFYAIAM varchar,EFYAIANM varchar,XEFYAIAW varchar,EFYAIANW varchar,XEFYASIT varchar,EFYASIAT varchar,XEFYASIM varchar,EFYASIAM varchar,XEFYASIW varchar,EFYASIAW varchar,XEFYBKAT varchar,EFYBKAAT varchar,XEFYBKAM varchar,EFYBKAAM varchar,XEFYBKAW varchar,EFYBKAAW varchar,XEFYHIST varchar,EFYHISPT varchar,XEFYHISM varchar,EFYHISPM varchar,XEFYHISW varchar,EFYHISPW varchar,XEFYNHPT varchar,EFYNHPIT varchar,XEFYNHPM varchar,EFYNHPIM varchar,XEFYNHPW varchar,EFYNHPIW varchar,XEFYWHIT varchar,EFYWHITT varchar,XEFYWHIM varchar,EFYWHITM varchar,XEFYWHIW varchar,EFYWHITW varchar,XEFY2MOT varchar,EFY2MORT varchar,XEFY2MOM varchar,EFY2MORM varchar,XEFY2MOW varchar,EFY2MORW varchar,XEYUNKNT varchar,EFYUNKNT varchar,XEYUNKNM varchar,EFYUNKNM varchar,XEYUNKNW varchar,EFYUNKNW varchar,XEYNRALT varchar,EFYNRALT varchar,XEYNRALM varchar,EFYNRALM varchar,XEYNRALW varchar,EFYNRALW varchar,XEFYGUUN varchar,EFYGUUN varchar,XEFYGUAN varchar,EFYGUAN varchar,XEFYGUTO varchar,EFYGUTOT varchar,XEFYGUKN varchar,EFYGUKN varchar
);
copy effy2023 from '/usr/src/data/enrollments/effy2023.csv' delimiter ',' csv header;
insert into effy
(
    year
    , unitid
    , effyalev
    , effylev
    , efytotlt
)
select
    2023
    , unitid
    , effyalev
    , effylev
    , cast(efytotlt as int)
from 
    effy2023;
drop table effy2023;

create table effy2023_dist
(
    UNITID varchar,EFFYDLEV varchar,XEYDETOT varchar,EFYDETOT varchar,XEYDEEXC varchar,EFYDEEXC varchar,XEYDESOM varchar,EFYDESOM varchar,XEYDENON varchar,EFYDENON varchar
);
copy effy2023_dist from '/usr/src/data/enrollments/effy2023_dist.csv' delimiter ',' csv header;
insert into effy_dist
(
    year
    , unitid
    , effydlev
    , efydetot
    , efydeexc
    , efydesom
    , efydenon
)
select
    2023
    , unitid
    , effydlev
    , cast(efydetot as int)
    , cast(efydeexc as int)
    , cast(efydesom as int)
    , cast(efydenon as int)
from 
    effy2023_dist;
drop table effy2023_dist;

create table effy2023_hs
(
    UNITID varchar,XEYTOTLT varchar,EFYTOTLT varchar,XEYTOTLM varchar,EFYTOTLM varchar,XEYTOTLW varchar,EFYTOTLW varchar,XEFYAIAT varchar,EFYAIANT varchar,XEFYAIAM varchar,EFYAIANM varchar,XEFYAIAW varchar,EFYAIANW varchar,XEFYASIT varchar,EFYASIAT varchar,XEFYASIM varchar,EFYASIAM varchar,XEFYASIW varchar,EFYASIAW varchar,XEFYBKAT varchar,EFYBKAAT varchar,XEFYBKAM varchar,EFYBKAAM varchar,XEFYBKAW varchar,EFYBKAAW varchar,XEFYHIST varchar,EFYHISPT varchar,XEFYHISM varchar,EFYHISPM varchar,XEFYHISW varchar,EFYHISPW varchar,XEFYNHPT varchar,EFYNHPIT varchar,XEFYNHPM varchar,EFYNHPIM varchar,XEFYNHPW varchar,EFYNHPIW varchar,XEFYWHIT varchar,EFYWHITT varchar,XEFYWHIM varchar,EFYWHITM varchar,XEFYWHIW varchar,EFYWHITW varchar,XEFY2MOT varchar,EFY2MORT varchar,XEFY2MOM varchar,EFY2MORM varchar,XEFY2MOW varchar,EFY2MORW varchar,XEYUNKNT varchar,EFYUNKNT varchar,XEYUNKNM varchar,EFYUNKNM varchar,XEYUNKNW varchar,EFYUNKNW varchar,XEYNRALT varchar,EFYNRALT varchar,XEYNRALM varchar,EFYNRALM varchar,XEYNRALW varchar,EFYNRALW varchar
);
copy effy2023_hs from '/usr/src/data/enrollments/effy2023_hs.csv' delimiter ',' csv header;
insert into effy_hs
(
    year
    , unitid
    , efytotlt
)
select
    2023
    , unitid
    , cast(efytotlt as int)
from 
    effy2023_hs;
drop table effy2023_hs;

create table efia2023
(
    UNITID varchar,XCDACTUA varchar,CDACTUA varchar,XCNACTUA varchar,CNACTUA varchar,XCDACTGA varchar,CDACTGA varchar,XEFTEUG varchar,EFTEUG varchar,XEFTEGD varchar,EFTEGD varchar,XFTEUG varchar,FTEUG varchar,XFTEGD varchar,FTEGD varchar,XFTEDPP varchar,FTEDPP varchar,ACTTYPE varchar
);
copy efia2023 from '/usr/src/data/enrollments/efia2023.csv' delimiter ',' csv header;
insert into efia
(
    year
    , unitid
    , efteug
    , eftegd
    , fteug
    , ftegd
    , ftedpp
)
select
    2023
    , unitid
    , cast(efteug as int)
    , cast(eftegd as int)
    , cast(fteug as int)
    , cast(ftegd as int)
    , cast(ftedpp as int)
from 
    efia2023;
drop table efia2023;


-- Completions

create table c2023_a
(
    UNITID varchar,CIPCODE varchar,MAJORNUM varchar,AWLEVEL varchar,XCTOTALT varchar,CTOTALT varchar,XCTOTALM varchar,CTOTALM varchar,XCTOTALW varchar,CTOTALW varchar,XCAIANT varchar,CAIANT varchar,XCAIANM varchar,CAIANM varchar,XCAIANW varchar,CAIANW varchar,XCASIAT varchar,CASIAT varchar,XCASIAM varchar,CASIAM varchar,XCASIAW varchar,CASIAW varchar,XCBKAAT varchar,CBKAAT varchar,XCBKAAM varchar,CBKAAM varchar,XCBKAAW varchar,CBKAAW varchar,XCHISPT varchar,CHISPT varchar,XCHISPM varchar,CHISPM varchar,XCHISPW varchar,CHISPW varchar,XCNHPIT varchar,CNHPIT varchar,XCNHPIM varchar,CNHPIM varchar,XCNHPIW varchar,CNHPIW varchar,XCWHITT varchar,CWHITT varchar,XCWHITM varchar,CWHITM varchar,XCWHITW varchar,CWHITW varchar,XC2MORT varchar,C2MORT varchar,XC2MORM varchar,C2MORM varchar,XC2MORW varchar,C2MORW varchar,XCUNKNT varchar,CUNKNT varchar,XCUNKNM varchar,CUNKNM varchar,XCUNKNW varchar,CUNKNW varchar,XCNRALT varchar,CNRALT varchar,XCNRALM varchar,CNRALM varchar,XCNRALW varchar,CNRALW varchar
);
copy c2023_a from '/usr/src/data/completions/c2023_a.csv' delimiter ',' csv header;
insert into c_a
(
    year
    , unitid
    , cipcode
    , majornum
    , awlevel
    , ctotalt
)
select
    2023
    , unitid
    , cipcode
    , majornum
    , awlevel
    , cast(ctotalt as int)
from 
    c2023_a;
drop table c2023_a;

create table c2023_b
(
    UNITID varchar,XCSTOTLT varchar,CSTOTLT varchar,XCSTOTLM varchar,CSTOTLM varchar,XCSTOTLW varchar,CSTOTLW varchar,XCSAIANT varchar,CSAIANT varchar,XCSAIANM varchar,CSAIANM varchar,XCSAIANW varchar,CSAIANW varchar,XCSASIAT varchar,CSASIAT varchar,XCSASIAM varchar,CSASIAM varchar,XCSASIAW varchar,CSASIAW varchar,XCSBKAAT varchar,CSBKAAT varchar,XCSBKAAM varchar,CSBKAAM varchar,XCSBKAAW varchar,CSBKAAW varchar,XCSHISPT varchar,CSHISPT varchar,XCSHISPM varchar,CSHISPM varchar,XCSHISPW varchar,CSHISPW varchar,XCSNHPIT varchar,CSNHPIT varchar,XCSNHPIM varchar,CSNHPIM varchar,XCSNHPIW varchar,CSNHPIW varchar,XCSWHITT varchar,CSWHITT varchar,XCSWHITM varchar,CSWHITM varchar,XCSWHITW varchar,CSWHITW varchar,XCS2MORT varchar,CS2MORT varchar,XCS2MORM varchar,CS2MORM varchar,XCS2MORW varchar,CS2MORW varchar,XCSUNKNT varchar,CSUNKNT varchar,XCSUNKNM varchar,CSUNKNM varchar,XCSUNKNW varchar,CSUNKNW varchar,XCSNRALT varchar,CSNRALT varchar,XCSNRALM varchar,CSNRALM varchar,XCSNRALW varchar,CSNRALW varchar,XCSGUUGU varchar,CSGUUGUN varchar,XCSGUUGA varchar,CSGUUGAG varchar,XCSGUUGT varchar,CSGUUGTT varchar,XCSGUGUN varchar,CSGUGUN varchar,XCSGUGAG varchar,CSGUGAG varchar,XCSGUGTT varchar,CSGUGTOT varchar,XCSGUTTUN varchar,CSGUTOTUN varchar,XCSGUTTAG varchar,CSGUTOTAG varchar,XCSGUTOT varchar,CSGUTOT varchar,XCSGUKN varchar,CSGUKN varchar
);
copy c2023_b from '/usr/src/data/completions/c2023_b.csv' delimiter ',' csv header;
insert into c_b
(
    year
    , unitid
    , cstotlt
)
select
    2023
    , unitid
    , cast(cstotlt as int)
from 
    c2023_b;
drop table c2023_b;

create table c2023_c
(
    UNITID varchar,AWLEVELC varchar,XCSTOTLT varchar,CSTOTLT varchar,XCSTOTLM varchar,CSTOTLM varchar,XCSTOTLW varchar,CSTOTLW varchar,XCSAIANT varchar,CSAIANT varchar,XCSASIAT varchar,CSASIAT varchar,XCSBKAAT varchar,CSBKAAT varchar,XCSHISPT varchar,CSHISPT varchar,XCSNHPIT varchar,CSNHPIT varchar,XCSWHITT varchar,CSWHITT varchar,XCS2MORT varchar,CS2MORT varchar,XCSUNKNT varchar,CSUNKNT varchar,XCSNRALT varchar,CSNRALT varchar,XCSUND18 varchar,CSUND18 varchar,XCS18_24 varchar,CS18_24 varchar,XCS25_39 varchar,CS25_39 varchar,XCSABV40 varchar,CSABV40 varchar,XCSUNKN varchar,CSUNKN varchar
);
copy c2023_c from '/usr/src/data/completions/c2023_c.csv' delimiter ',' csv header;
insert into c_c
(
    year
    , unitid
    , awlevelc
    , cstotlt
)
select
    2023
    , unitid
    , awlevelc
    , cast(cstotlt as int)
from 
    c2023_c;
drop table c2023_c;

create table c2023dep
(
    UNITID varchar,CIPCODE varchar,PTOTAL varchar,PTOTALDE varchar,PTOTALDES varchar,PASSOC varchar,PASSOCDE varchar,PASSOCDES varchar,PBACHL varchar,PBACHLDE varchar,PBACHLDES varchar,PMASTR varchar,PMASTRDE varchar,PMASTRDES varchar,PDOCRS varchar,PDOCRSDE varchar,PDOCRSDES varchar,PDOCPP varchar,PDOCPPDE varchar,PDOCPPDES varchar,PDOCOT varchar,PDOCOTDE varchar,PDOCOTDES varchar,PCERT1A varchar,PCERT1ADE varchar,PCERT1ADES varchar,PCERT1B varchar,PCERT1BDE varchar,PCERT1BDES varchar,PCERT2 varchar,PCERT2DE varchar,PCERT2DES varchar,PCERT4 varchar,PCERT4DE varchar,PCERT4DES varchar,PPBACC varchar,PPBACCDE varchar,PPBACCDES varchar,PPMAST varchar,PPMASTDE varchar,PPMASTDES varchar
);
copy c2023dep from '/usr/src/data/completions/c2023dep.csv' delimiter ',' csv header;
insert into cdep
(
    year
    , unitid
    , cipcode
    , ptotal
    , ptotalde
    , passoc
    , pbachl
    , pmastr
    , pdocrs
    , pdocpp
    , pdocot
    , pcert1a
    , pcert1b
    , pcert2
    , pcert4
    , ppbacc
    , ppmast
)
select
    2023
    , unitid
    , cipcode
    , cast(ptotal as int)
    , cast(ptotalde as int)
    , cast(passoc as int)
    , cast(pbachl as int)
    , cast(pmastr as int)
    , cast(pdocrs as int)
    , cast(pdocpp as int)
    , cast(pdocot as int)
    , cast(pcert1a as int)
    , cast(pcert1b as int)
    , cast(pcert2 as int)
    , cast(pcert4 as int)
    , cast(ppbacc as int)
    , cast(ppmast as int)
from 
    c2023dep;
drop table c2023dep;




set client_encoding = default;