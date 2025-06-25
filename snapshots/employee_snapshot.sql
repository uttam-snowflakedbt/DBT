{% snapshot employee_snapshot %}

    {{
        config(
          target_schema='dbtSchema',
          strategy='timestamp',
          unique_key='empno',
          updated_at='received_dt'
        )
    }}

    select * from {{ source('DevProject', 'emp') }}

{% endsnapshot %}