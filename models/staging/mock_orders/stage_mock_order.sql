with mock_order as (
    select * from {{source("mock_orders_source",'mock_orders')}}
)

select * from mock_order