
select * from UserInfo, Live where UserInfo.uid = Live.uid and cname = '王大明'
-- 看王大明住在哪間屋子

select UserInfo.uid, cname
from UserInfo, Live
where  UserInfo.uid = Live.uid and
    hid in (
        select hid from UserInfo, Live where UserInfo.uid = Live.uid and cname = '王大明'
    )
-- ↑跟王大明住在同一間屋子的人
    and cname <> '王大明'
-- 跟王大明住在同一間屋子的人有誰(and<>不包含王大明)