SELECT
    COALESCE(
        TRY_TO_DATE(month, 'DD-MM-YYYY'),
        TRY_TO_DATE('01-' || month, 'DD-MON-YY')
    ) AS month,

    CAST(volume AS FLOAT) AS volume,
    CAST(value AS FLOAT) AS value

FROM {{ source('raw_payments', 'rbi_data') }}