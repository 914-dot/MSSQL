select Bill.tel, address, count(*), avg(fee), sum(fee), max(fee), min(fee)
from Bill, Phone, House
where Bill.tel = Phone.tel and Phone.hid = House.hid
group by Bill.tel, address
