{{ config(materialized='incremental') }}


SELECT * FROM  {{ source('simzy', 'topup') }}

{% if is_incremental() %}
    WHERE CDR_Time_Stamp > (SELECT COALESCE(MAX(CDR_Time_Stamp), '19000101000000') FROM {{ this }})
{% endif %}