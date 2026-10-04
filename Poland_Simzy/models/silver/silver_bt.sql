{{ config(materialized='incremental', unique_key='LISTING_ID') }}

SELECT 
    *
FROM 
    {{ ref('bronze_bt') }}

    