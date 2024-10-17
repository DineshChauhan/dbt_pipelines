{% macro discounted_amount(extended_price,discounted_amount, scale=2) %}
    ({{ extended_price }} * {{discounted_amount}} )::numeric(16, {{ scale }})
{% endmacro %}