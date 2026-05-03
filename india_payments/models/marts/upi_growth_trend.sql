WITH base AS (
    SELECT
        month,
        volume,
        value,

        LAG(volume) OVER (ORDER BY month) AS prev_volume
    FROM {{ ref('stg_rbi_data') }}
)

SELECT
    month,
    volume,
    value,
    prev_volume,

    ROUND(
        (volume - prev_volume) / NULLIF(prev_volume, 0) * 100,
        2
    ) AS volume_growth_pct

FROM base


