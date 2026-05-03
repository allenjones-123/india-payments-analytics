SELECT
    LOWER(
        TRIM(
            REGEXP_REPLACE(application_name, '[^a-zA-Z0-9 ]', '')
        )
    ) AS application_name,

    CAST(volume_mn AS FLOAT) AS volume_mn,
    CAST(value_cr AS FLOAT) AS value_cr,

    -- robust date parsing (same as RBI)
    COALESCE(
        TRY_TO_DATE(month, 'DD-MM-YYYY'),
        TRY_TO_DATE('01-' || month, 'DD-MON-YY')
    ) AS month

FROM {{ source('raw_payments', 'upi_apps') }}