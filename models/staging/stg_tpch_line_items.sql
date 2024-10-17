select 
    {{ 
        dbt_utils.generate_surrogate_key([
            'l_orderkey',
            'l_linenumber'])
        }} as order_item_key,
    L_ORDERKEY as order_key,
	L_PARTKEY as part_key,
	L_linenumber as line_number,
	l_quantity as quantity,
    l_extendedprice as extended_price,
    l_discount as discount_percentage,
    l_tax as tax_rate
from
    {{ source('tpch', 'lineitem') }}