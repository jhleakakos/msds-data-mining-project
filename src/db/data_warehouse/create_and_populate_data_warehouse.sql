-- Fact tables

drop table if exists data_warehouse.fct_enrollment;
create table data_warehouse.fct_enrollment
(
    year int
    , institution_id int
    , enrollment int not null
    -- , enrollment_for_credit int not null
    -- , enrollment_only_distance_education int not null
    -- , enrollment_some_but_not_exclusively_distance_education int not null
    -- , enrollment_no_distance_education int not null
    -- , enrollment_dual_credit int not null
    , primary key (year, institution_id)
);
insert into data_warehouse.fct_enrollment
(
    year
    , institution_id
    , enrollment
    -- , enrollment_for_credit
    -- , enrollment_only_distance_education
    -- , enrollment_some_but_not_exclusively_distance_education
    -- , enrollment_no_distance_education
    -- , enrollment_dual_credit
)
select
    di.year
    , di.institution_id
    , coalesce(effy.efytotlt, 0) enrollment
    -- , sum(coalesce(effy.efytotlt, 0)) enrollment
    -- , sum(coalesce(effy_dist.efydetot, 0)) enrollment_for_credit
    -- , sum(coalesce(effy_dist.efydeexc, 0)) enrollment_only_distance_education
    -- , sum(coalesce(effy_dist.efydesom, 0)) enrollment_some_but_not_exclusively_distance_education
    -- , sum(coalesce(effy_dist.efydenon, 0)) enrollment_no_distance_education
    -- , sum(coalesce(effy_hs.efytotlt, 0)) enrollment_dual_credit
from
    data_warehouse.dim_institution di
    left outer join data_lake.effy
        on di.year = effy.year
        and di.unitid = effy.unitid
    -- left outer join data_lake.effy_dist
    --     on di.year = effy_dist.year
    --     and di.unitid = effy_dist.unitid
    -- left outer join data_lake.effy_hs
    --     on di.year = effy_hs.year
    --     and di.unitid = effy_hs.unitid
where
    effy.effylev = ' 1'
-- group by
--     di.year
--     , di.institution_id
;

drop table if exists data_warehouse.fct_fte;
create table data_warehouse.fct_fte
(
    year int
    , institution_id int
    , fte_estimated_undergrad int not null
    , fte_estimated_grad int not null
    , fte_reported_undergrad int not null
    , fte_reported_grad int not null
    , fte_reported_doctor_professional_practice int not null
    , primary key (year, institution_id)
);
insert into data_warehouse.fct_fte
(
    year
    , institution_id
    , fte_estimated_undergrad
    , fte_estimated_grad
    , fte_reported_undergrad
    , fte_reported_grad
    , fte_reported_doctor_professional_practice
)
select
    di.year
    , di.institution_id
    , sum(coalesce(efia.efteug, 0)) fte_estimated_undergrad
    , sum(coalesce(efia.eftegd, 0)) fte_estimated_grad
    , sum(coalesce(efia.fteug, 0)) fte_reported_undergrad
    , sum(coalesce(efia.ftegd, 0)) fte_reported_grad
    , sum(coalesce(efia.ftedpp, 0)) fte_reported_doctor_professional_practice
from
    data_warehouse.dim_institution di
    left outer join data_lake.efia
        on di.year = efia.year
        and di.unitid = efia.unitid
group by
    di.year
    , di.institution_id
;

drop table if exists data_warehouse.fct_completion;
create table data_warehouse.fct_completion
(
    year int
    , institution_id int
    , completions_number_students int not null
    , primary key (year, institution_id)
);
insert into data_warehouse.fct_completion
(
    year
    , institution_id
    , completions_number_students
)
select
    di.year
    , di.institution_id
    , sum(coalesce(c_b.cstotlt, 0)) completions_number_students
from
    data_warehouse.dim_institution di
    left outer join data_lake.c_b
        on di.year = c_b.year
        and di.unitid = c_b.unitid
group by
    di.year
    , di.institution_id
;


-- Dimension tables

-- My assumption is that institution characteristics don't change often, so we'll model this as a type 2 slowly changing dimension
drop table if exists data_warehouse.dim_institution;
create table data_warehouse.dim_institution
(
    institution_id serial primary key
    , year int not null
    , unitid varchar(6) not null
    , institution_name varchar(120) not null
    , state_abbr char(2) not null
    , bea_region varchar not null
    , highest_level varchar not null
    , is_degree_offering char(1) not null
    , is_hbcu char(1) not null
    , is_tribal_institution char(1) not null
    , geographic_status varchar not null
    , date_closed date null
    , is_active_current_year char(1) not null
    , institutional_category varchar not null
    , core_based_statistical_area char(5) not null
    , control_affiliation varchar not null
    , start_date date not null
    , end_date date null
);
insert into data_warehouse.dim_institution
(
    year
    , unitid
    , institution_name
    , state_abbr
    , bea_region
    , highest_level
    , is_degree_offering
    , is_hbcu
    , is_tribal_institution
    , geographic_status
    , date_closed
    , is_active_current_year
    , institutional_category
    , core_based_statistical_area
    , control_affiliation
    , start_date
)
select
    hd.year
    , hd.unitid
    , hd.instnm
    , hd.stabbr
    -- , hd.obereg
    , lbr.description
    -- , hd.hloffer
    , lhl.description
    , case hd.deggrant
        when '1' then 'y'
        when '2' then 'n'
      end
    , case hd.hbcu
        when '1' then 'y'
        when '2' then 'n'
      end
    , case hd.tribal
        when '1' then 'y'
        when '2' then 'n'
      end
    -- , hd.locale
    , lgs.description
    , case
        when hd.closedat = '-2' then null
        when hd.closedat = '00/00/0000' then null
        else cast(hd.closedat as date)
      end
    , case hd.cyactive 
        when '1' then 'y'
        when '3' then 'n'
      end
    -- , hd.instcat 
    , lic.description
    , hd.cbsa 
    -- , ic.cntlaffi 
    , lca.description
    , current_date
from 
    data_lake.hd
    left outer join data_lake.ic
        on hd.year = ic.year
        and hd.unitid = ic.unitid
    left outer join data_lake.lkup_bea_region lbr
        on trim(hd.obereg) = lbr.value
    left outer join data_lake.lkup_highest_level lhl
        on trim(hd.hloffer) = lhl.value
    left outer join data_lake.lkup_geographic_status lgs
        on trim(hd.locale) = lgs.value
    left outer join data_lake.lkup_institutional_category lic
        on trim(hd.instcat) = lic.value
    left outer join data_lake.lkup_control_affiliation lca
        on trim(ic.cntlaffi) = lca.value
where
    lgs.description is not null
    and lic.description is not null
    and hd.cbsa <> '-2'
;