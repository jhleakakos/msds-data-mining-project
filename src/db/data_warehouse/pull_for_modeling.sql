select
    fct_e.year
    , fct_e.institution_id
    , di.institution_name
    , di.state_abbr
    , di.bea_region
    , di.highest_level
    , di.is_degree_offering
    , di.is_hbcu
    , di.is_tribal_institution
    , di.geographic_status
    , di.date_closed
    -- , di.is_active_current_year
    , di.institutional_category
    , di.core_based_statistical_area
    , di.control_affiliation
    , fct_e.enrollment
    , fct_c.completions_number_students
from
    data_warehouse.fct_enrollment fct_e
    left outer join data_warehouse.dim_institution di
        on fct_e.year = di.year
        and fct_e.institution_id = di.institution_id
    left outer join data_warehouse.fct_completion fct_c
        on fct_e.year = fct_c.year
        and fct_e.institution_id = fct_c.institution_id
where
    di.end_date is null
    -- and date_closed is not null