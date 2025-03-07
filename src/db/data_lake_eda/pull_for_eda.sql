-- The SQL here is a subset of the tables and columns from data_notes.md.
-- We will treat the first layer of loading data in as a data lake and worry about preprocessing after.
-- This list is a subset of the original subset that we pulled files for, further narrowing the scope for data that we will actually work with.
-- Output is data/raw_combined.sql

select
    hd.year
    , hd.unitid unit_id
    , hd.instnm institution_name
    , hd.stabbr state_abbr
    , hd.obereg bea_region
    , hd.hloffer highest_level
    , hd.deggrant is_degree_offering
    , hd.hbcu is_hbcu
    , hd.tribal is_tribal_institution
    , hd.locale geographic_status
    , hd.closedat date_closed
    , hd.cyactive is_active_current_year
    , hd.instcat institutional_category
    , hd.c21basic carnegie_classification
    , hd.instsize institution_size_category
    , hd.cbsa core_based_statistical_area
    , ic.cntlaffi control_affiliation
    , ic.openadmp open_admission_policy
    , ic_py.prgmofr number_programs_offered
    , ic_py.cipcode1 cip_code_largest_program
    , ic_py.cipcode2 cip_code_second_largest_program
    , ic_py.cipcode3 cip_code_third_largest_program
    , ic_py.cipcode4 cip_code_fourth_largest_program
    , ic_py.cipcode5 cip_code_fifth_largest_program
    , ic_py.cipcode6 cip_code_sixth_largest_program
    , sum(coalesce(effy.efytotlt, 0)) enrollment
    , sum(coalesce(effy_dist.efydetot, 0)) enrollment_for_credit
    , sum(coalesce(effy_dist.efydeexc, 0)) enrollment_only_distance_education
    , sum(coalesce(effy_dist.efydesom, 0)) enrollment_some_but_not_exclusively_distance_education
    , sum(coalesce(effy_dist.efydenon, 0)) enrollment_no_distance_education
    , sum(coalesce(effy_hs.efytotlt, 0)) enrollment_dual_credit
    , sum(coalesce(efia.efteug, 0)) fte_estimated_undergrad
    , sum(coalesce(efia.eftegd, 0)) fte_estimated_grad
    , sum(coalesce(efia.fteug, 0)) fte_reported_undergrad
    , sum(coalesce(efia.ftegd, 0)) fte_reported_grad
    , sum(coalesce(efia.ftedpp, 0)) fte_reported_doctor_professional_practice
    , sum(coalesce(c_b.cstotlt, 0)) completions_number_students
from
    hd
    left outer join data_lake.ic
        on hd.year = ic.year
        and hd.unitid = ic.unitid
    left outer join data_lake.ic_py
        on hd.year = ic_py.year
        and hd.unitid = ic_py.unitid
    left outer join data_lake.effy
        on hd.year = effy.year
        and hd.unitid = effy.unitid
    left outer join data_lake.effy_dist
        on hd.year = effy_dist.year
        and hd.unitid = effy_dist.unitid
    left outer join data_lake.effy_hs
        on hd.year = effy_hs.year
        and hd.unitid = effy_hs.unitid
    left outer join data_lake.efia
        on hd.year = efia.year
        and hd.unitid = efia.unitid
    left outer join data_lake.c_b
        on hd.year = c_b.year
        and hd.unitid = c_b.unitid
where
    hd.year = 2023
group by
    hd.year
    , hd.unitid
    , hd.instnm
    , hd.stabbr
    , hd.obereg
    , hd.hloffer
    , hd.deggrant
    , hd.hbcu
    , hd.tribal
    , hd.locale
    , hd.closedat
    , hd.cyactive
    , hd.instcat
    , hd.c21basic
    , hd.instsize
    , hd.cbsa
    , ic.cntlaffi
    , ic.openadmp
    , ic_py.prgmofr
    , ic_py.cipcode1
    , ic_py.cipcode2
    , ic_py.cipcode3
    , ic_py.cipcode4
    , ic_py.cipcode5
    , ic_py.cipcode6