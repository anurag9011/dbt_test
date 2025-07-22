with orders as (
    select * from {{ref('stage_orders')}}
),

payments as (
    select * from {{ref('stage_payments')}}
),

fact_order as (
    select o.order_id,
           p.payment_id,
           p.amount 
    from orders o 
    left join payments p 
    on o.order_id = p.order_id
)

select * from fact_order