select *
from Live right outer join UserInfo
        on UserInfo.uid = Live.uid
    left outer join House
        on Live.hid = House.hid
WHERE
    -- UserInfo.uid = 'B01'
    UserInfo.uid = 'A04'