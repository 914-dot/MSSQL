select distinct year(dd) from Bill
-- 查詢資料年份

select *, concat(
    '中華民國',
    year(dd) - 1911,
    format(dd, '年M月d日')
)
from Bill
-- 轉換中華民國