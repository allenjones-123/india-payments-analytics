SELECT
    state,
    pmjdy_accounts,

    RANK() OVER (ORDER BY pmjdy_accounts DESC) AS rank_by_accounts,

    ROUND(
        pmjdy_accounts * 100.0 / SUM(pmjdy_accounts) OVER (),
        2
    ) AS contribution_pct

FROM {{ ref('stg_pmjdy') }}



