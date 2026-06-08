select getdate()
-- select sysdatetimeoffset()
select getutcdate()

select dateadd(day, 3, getdate())

select getdate() +5 / 24.0

select datediff(day, '2026/1/1', getdate())
-- 看從2026/1/1到今天是幾天

select datepart(quarter, getdate())


-- Q1:2019年每季帳單金額總和

select q, sum(sum_fee) as sum_fee from (
    select datepart(quarter, dd) as q, sum(fee) as sum_fee
    from Bill
    where dd between '2019/1/1' and '2019/12/31 23:59:59.999'
    group by datepart(quarter, dd)
    union all select 1, 0
    union all select 2, 0
    union all select 3, 0
    union all select 4, 0
) as tmp
group by q

-- Q2:2019年上半年和下半年帳單金額總和

select q, sum(sum_fee) as sum_fee from (
    select datepart(quarter, dd) as q, sum(fee) as sum_fee
    from Bill
    where dd between '2019/1/1' and '2019/12/31 23:59:59.999'
    group by datepart(quarter, dd)
    union all select 1, 0
    union all select 2, 0
    union all select 3, 0
    union all select 4, 0
) as tmp
group by q