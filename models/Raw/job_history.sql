{{
    config(
        materialized = 'table',
        database = 'HR',
        unique_key = 'employee_id',
        on_schema_change = 'append_new_columns'
    )
}}

select 
EMPLOYEE_ID,
START_DATE,
END_DATE,
JOB_ID,
DEPARTMENT_ID
 from {{ source('Arun', 'job_history') }}