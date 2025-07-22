{% snapshot mock_orders %}   -- defines a snapshot nameed mock_order 

{% set new_schema = target.schema + '_snapshot' %}  -- create a new schema in snowflake by ur target_schema_name + _snapshot 
                                                    -- ex: DBT_ANURAG9011_SNAPSHOT.mock_orders
    {{
        config(
            target_schema=new_schema,    
            target_database='pc_dbt_db',
            unique_key='order_id',
            strategy='timestamp',
            updated_at='updated_at'
        )
    }}

select * from {{source('mock_orders_source','mock_orders')}}    

{% endsnapshot %}

