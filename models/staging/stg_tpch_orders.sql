select 
    O_ORDERKEY as order_key,
	O_CUSTKEY as customer_key,
	O_ORDERSTATUS as status_code,
	O_TOTALPRICE as total_price,
	O_ORDERDATE as order_date,
	O_ORDERPRIORITY as order_priority,
	O_CLERK as clerk,
	O_SHIPPRIORITY as ship_priority,
	O_COMMENT as comment
from
    {{ source('tpch', 'orders') }}