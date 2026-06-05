select 3 / 5.0

select count(*) from House

select count(*)
from House left join Live on House.hid = Live.hid
where uid is Null
