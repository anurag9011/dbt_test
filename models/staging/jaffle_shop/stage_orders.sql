WITH ORDERS AS (

    SELECT ID AS ORDER_ID ,
           USER_ID AS CUSTOMER_ID ,
           ORDER_DATE AS ORDER_DATE ,
           STATUS AS ORDER_STATUS 
    FROM {{source('jaffle_shop','orders')}}
    
)

SELECT * FROM ORDERS 