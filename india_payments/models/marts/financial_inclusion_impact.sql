WITH rbi AS (
    SELECT
        month,
        volume,
        value
    FROM {{ ref('stg_rbi_data') }}
),

pmjdy AS (
    SELECT
        SUM(pmjdy_accounts) AS total_accounts
    FROM {{ ref('stg_pmjdy') }}
)

SELECT
    r.month,
    r.volume,
    r.value,
    p.total_accounts

FROM rbi r
CROSS JOIN pmjdy p

