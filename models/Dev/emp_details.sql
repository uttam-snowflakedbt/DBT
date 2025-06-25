{{
  config(
    materialized='incremental',
    unique_key='empno'
    
  )
}}

select empno,
       ename,
       sal,
       dept,
       Received_dt 
       from {{ source('DevProject', 'emp') }}

{% if is_incremental() %}

        where Received_dt > (select max(IFNULL(Received_dt,'1990-01-01')) from {{ this }})

{% endif %}       
