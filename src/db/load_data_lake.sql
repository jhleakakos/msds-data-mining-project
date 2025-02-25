set client_encoding = 'latin1';


-- Institutional Characteristics

create table hd2023
(
    unitid varchar
    , instnm varchar
    , ialias varchar
    , addr varchar
    , city varchar
    , stabbr varchar
    , zip varchar
    , fips varchar
    , obereg varchar
    , chfnm varchar
    , chftitle varchar
    , gentele varchar
    , ein varchar
    , ueis varchar
    , opeid varchar
    , opeflag varchar
    , webaddr varchar
    , adminurl varchar
    , faidurl varchar
    , applurl varchar
    , npricurl varchar
    , veturl varchar
    , athurl varchar
    , disaurl varchar
    , sector varchar
    , iclevel varchar
    , control varchar
    , hloffer varchar
    , ugoffer varchar
    , groffer varchar
    , hdegofr1 varchar
    , deggrant varchar
    , hbcu varchar
    , hospital varchar
    , medical varchar
    , tribal varchar
    , locale varchar
    , openpubl varchar
    , act varchar
    , newid varchar
    , deathyr varchar
    , closedat varchar
    , cyactive varchar
    , postsec varchar
    , pseflag varchar
    , pset4flg varchar
    , rptmth varchar
    , instcat varchar
    , c21basic varchar
    , c21ipug varchar
    , c21ipgrd varchar
    , c21ugprf varchar
    , c21enprf varchar
    , c21szset varchar
    , c18basic varchar
    , c15basic varchar
    , ccbasic varchar
    , carnegie varchar
    , landgrnt varchar
    , instsize varchar
    , f1systyp varchar
    , f1sysnam varchar
    , f1syscod varchar
    , cbsa varchar
    , cbsatype varchar
    , csa varchar
    , countycd varchar
    , countynm varchar
    , cngdstcd varchar
    , longitud varchar
    , latitude varchar
    , dfrcgid varchar
    , dfrcuscg varchar
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







set client_encoding = default;