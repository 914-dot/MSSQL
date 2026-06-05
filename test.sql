select tel, count(*), avg(fee), sum(fee), max(fee), min(fee)
from Bill
group by tel
