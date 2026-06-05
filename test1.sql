insert into UserInfo values ('B01', 'David', Null, Null)

select *
from UserInfo

insert into UserInfo (uid, cname) values ('B02', 'Betty')

insert into House (address) values ('花蓮市月眉路1號')

select *
from House

update UserInfo set
password = '5678',
birthday = '2000/1/1'
where uid = 'B01'

insert into UserInfo (uid, password, birthday) values ('B03','0007', '2000/7/7')
-- where uid = 'B02'

delete from UserInfo where uid = 'B03'