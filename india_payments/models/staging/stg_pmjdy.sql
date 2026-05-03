SELECT
    LOWER(TRIM(state)) AS state,
    CAST(pmjdy_accounts AS FLOAT) AS pmjdy_accounts

FROM {{ source('raw_payments', 'pmjdy') }}
WHERE LOWER(TRIM(state)) != 'total'



