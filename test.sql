select (
    select count(*)
from House left join Live on House.hid = Live.hid
where uid is Null
) / cast((
        select count(*) from House
 ) as float)
-- 計算空屋率

select count(*) from House

select count(*)
from House left join Live on House.hid = Live.hid
where uid is Null