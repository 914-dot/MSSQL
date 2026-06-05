select distinct left(cname, 1) as lastname
-- 取姓氏(取左邊第一個字)
from UserInfo
where cname is not null and cname <> ''