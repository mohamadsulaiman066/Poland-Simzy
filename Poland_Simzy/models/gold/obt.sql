{% set congigs = [
    {
        "table" : "pol_lyca.SILVER.SILVER_topup",
        "columns" : "SILVER_topup.*",
        "alias" : "SILVER_topup"
    },
    { 
        "table" : "pol_lyca.SILVER.SILVER_bt",
        "columns" : "SILVER_bt.*",
        "alias" : "SILVER_bt",
        "join_condition" : "SILVER_topup.MSISDN = SILVER_bt.MSISDN"
    },
    {
        "table" : "pol_lyca.SILVER.SILVER_edr",
        "columns" : "SILVER_edr.*",
        "alias" : "SILVER_hosts",
        "join_condition" : "SILVER_bt.Account_ID = SILVER_edr.Account_ID"
    }
] %}



SELECT 
    {% for config in congigs %}
        {{ config['columns'] }}{% if not loop.last %},{% endif %}
    {% endfor %}
FROM
    {% for config in congigs %}
    {% if loop.first %}
      {{ config['table'] }} AS {{ config['alias'] }}
    {% else %}
        LEFT JOIN {{ config['table'] }} AS {{ config['alias'] }}
        ON {{ config['join_condition'] }}
        {% endif %}
        {% endfor %}
