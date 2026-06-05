-- ============== 電話帳單金額總和的極端直查詢　===============
select *
from (
    SELECT
        tel,
        SUM(fee) AS total_fee
    FROM Bill
    GROUP BY tel
) as x
where total_fee = (
    select max(total_fee) as min_total_fee
    from (
        SELECT
            SUM(fee) AS total_fee
        FROM Bill
        GROUP BY tel
    ) as x
)
