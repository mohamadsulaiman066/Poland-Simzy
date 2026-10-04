{{
    config(
        materialized='incremental',
        unique_key='BOOKING_ID'
    )
}}


SELECT 
    *
FROM 
    {{ ref('bronze_topup') }}

    