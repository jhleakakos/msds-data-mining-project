drop table if exists data_lake.lkup_bea_region;
create table data_lake.lkup_bea_region
(
    value varchar(2) primary key
    , description varchar
);
insert into data_lake.lkup_bea_region (value, description)
values
    ('0', 'US Service schools')
    , ('1', 'New England CT ME MA NH RI VT')
    , ('2', 'Mid East DE DC MD NJ NY PA')
    , ('3', 'Great Lakes IL IN MI OH WI')
    , ('4', 'Plains IA KS MN MO NE ND SD')
    , ('5', 'Southeast AL AR FL GA KY LA MS NC SC TN VA WV')
    , ('6', 'Southwest AZ NM OK TX')
    , ('7', 'Rocky Mountains CO ID MT UT WY')
    , ('8', 'Far West AK CA HI NV OR WA')
    , ('9', 'Outlying areas AS FM GU MH MP PR PW VI')
--     -3: Not available
    , ('-3', null)
;

drop table if exists data_lake.lkup_highest_level;
create table data_lake.lkup_highest_level
(
    value varchar(2) primary key
    , description varchar
);
insert into data_lake.lkup_highest_level (value, description)
values
    ('0', 'Other')
    , ('1', 'Postsecondary award, certificate or diploma of less than one academic year')
    , ('2', 'Postsecondary award, certificate or diploma of at least one but less than two academic years')
    , ('3', 'Associate''s degree')
    , ('4', 'Postsecondary award, certificate or diploma of at least two but less than four academic years')
    , ('5', 'Bachelor''s degree')
    , ('6', 'Postbaccalaureate certificate')
    , ('7', 'Master''s degree')
    , ('8', 'Post-master''s certificate')
    , ('9', 'Doctor''s degree')
    , ('b', 'None of the above or no answer')
--     -2: Not applicable, first-professional only
--     -3: Not Available
    , ('-2', null)
    , ('-3', null)
;

drop table if exists data_lake.lkup_geographic_status;
create table data_lake.lkup_geographic_status
(
    value varchar(2) primary key
    , description varchar
);
insert into data_lake.lkup_geographic_status (value, description)
values
    ('11', 'City: Large: Territory inside an urbanized area and inside a principal city with population of 250,000 or more.')
    , ('12', 'City: Midsize: Territory inside an urbanized area and inside a principal city with population less than 250,000 and greater than or equal to 100,000.')
    , ('13', 'City: Small: Territory inside an urbanized area and inside a principal city with population less than 100,000.')
    , ('21', 'Suburb: Large: Territory outside a principal city and inside an urbanized area with population of 250,000 or more.')
    , ('22', 'Suburb: Midsize: Territory outside a principal city and inside an urbanized area with population less than 250,000 and greater than or equal to 100,000.')
    , ('23', 'Suburb: Small: Territory outside a principal city and inside an urbanized area with population less than 100,000.')
    , ('31', 'Town: Fringe: Territory inside an urban cluster that is less than or equal to 10 miles from an urbanized area.')
    , ('32', 'Town: Distant: Territory inside an urban cluster that is more than 10 miles and less than or equal to 35 miles from an urbanized area.')
    , ('33', 'Town: Remote: Territory inside an urban cluster that is more than 35 miles of an urbanized area.')
    , ('41', 'Rural: Fringe: Census-defined rural territory that is less than or equal to 5 miles from an urbanized area, as well as rural territory that is less than or equal to 2.5 miles from an urban cluster.')
    , ('42', 'Rural: Distant: Census-defined rural territory that is more than 5 miles but less than or equal to 25 miles from an urbanized area, as well as rural territory that is more than 2.5 miles but less than or equal to 10 miles from an urban cluster.')
    , ('43', 'Rural: Remote: Census-defined rural territory that is more than 25 miles from an urbanized area and is also more than 10 miles from an urban cluster.')
    , ('-3', null)
;

drop table if exists data_lake.lkup_institutional_category;
create table data_lake.lkup_institutional_category
(
    value varchar(2) primary key
    , description varchar
);
insert into data_lake.lkup_institutional_category (value, description)
values
    ('1', 'Degree-granting, graduate with no undergraduate degrees - These institutions offer a Master''s degree, Doctor''s degree  or a First-professional degree and do not offer a Bachelor''s degree or an Associate''s degree.')
    , ('2', 'Degree-granting, primarily baccalaureate or above - These institutions offer a Bachelor''s degree, Master''s degree,Doctor''s degree or a First-professional degree.  Also, the total number of degrees/certificates at or above the bachelor''s level awarded divided by the total number of degrees/certificates awarded is greater than 50 percent.')
    , ('3', 'Degree-granting, not primarily baccalaureate or above - These institutions offer a Bachelor''s degree, Master''s degree, Doctor''s degree,or a First-professional degree.  Also, the total number of degrees/certificates at or above the bachelor''s level awarded divided by the total number of degrees/certificates awarded must be less than or equal to 50 percent.')
    , ('4', 'Degree-granting, Associate''s and certificates - Institutions offer an Associate''s degree and may offer other postsecondary certificates, awards or diplomas of less than one academic year; at least one but less-than two academic years; at least two but less-than four academic years. This category also includes institutions that offer a postbaccalaureate certificate, Post-master''s certificate or a First-professional certificate and the highest degree offered is an Associate''s degree.')
    , ('5', 'Nondegree-granting, above the baccalaureate - Institutions do not offer Associate''s, Bachelor''s, Master''s, Doctor''s or First-professional degrees, but offer either Postbaccaulaureate, Post-master''s or First-professional certificates.')
    , ('6', 'Nondegree-granting, sub-baccalaureate - Institutions do not offer Associate''s, Bachelor''s , Master''s, Doctor''s, or First-professional degrees, or certificates above the baccalaureate level. They do offer postsecondary certificates, awards or diplomas of less than one academic year; at least one but less than two academic years; or at least two but less than four academic years.')
    , ('-2', null)
    , ('-1', null)
;

drop table if exists data_lake.lkup_control_affiliation;
create table data_lake.lkup_control_affiliation
(
    value varchar(2) primary key
    , description varchar
);
insert into data_lake.lkup_control_affiliation (value, description)
values
    ('1', 'Public')
    , ('2', 'Private for-profit')
    , ('3', 'Private not-for-profit independent (no religious affiliation)')
    , ('4', 'Private not-for-profit religious affiliation - Specify ')
;