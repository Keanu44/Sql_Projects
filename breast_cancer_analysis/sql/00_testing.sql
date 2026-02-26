CREATE TABLE breast_cancer_raw AS
SELECT *
FROM breast_cancer;

CREATE TABLE breast_cancer_clean AS
SELECT
    TRY_CAST(age AS INTEGER) AS age,
    race,
    marital_status,
    t_stage,
    n_stage,
    _6th_stage,
    differentiate,
    grade,
    a_stage,
    TRY_CAST(tumor_size AS INTEGER) AS tumor_size,
    estrogen_status,
    progesterone_status,
    TRY_CAST(regional_node_examined AS INTEGER) AS regional_node_examined,
    TRY_CAST(regional_node_positive AS INTEGER) AS regional_node_positive,
    TRY_CAST(survival_months AS INTEGER) AS survival_months,
    status
FROM breast_cancer_raw;