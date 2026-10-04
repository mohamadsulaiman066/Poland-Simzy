{{ config(materialized='incremental', unique_key='TransactionId' ) }}

SELECT 
    *
FROM 
    {{ ref('bronze_edr') }}