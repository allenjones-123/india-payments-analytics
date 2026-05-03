SELECT
    month,
    application_name,
    volume_mn,
    value_cr,

    -- Market share %
    ROUND(
        volume_mn / SUM(volume_mn) OVER (PARTITION BY month) * 100,
        2
    ) AS volume_market_share_pct,

    ROUND(
        value_cr / SUM(value_cr) OVER (PARTITION BY month) * 100,
        2
    ) AS value_market_share_pct,

    -- Rank apps by volume
    DENSE_RANK() OVER (
        PARTITION BY month 
        ORDER BY volume_mn DESC
    ) AS app_rank

FROM {{ ref('stg_upi_apps') }}


