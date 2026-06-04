select *, 
    case
        when fee > 500 then fee * 0.8
        when fee > 300 then fee *0.9
        else fee
    end as discount
from Bill
--where fee >= 300 and fee <= 500
--where fee between 300 and 500
--where fee not between 300 and 500
where fee < 300 or fee > 500
order by fee, hid

select cname
from UserInfo
where cname <> ''and cname is not null
order by cname