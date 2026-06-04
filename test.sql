select UserInfo.uid, cname, address
from UserInfo, Live, House
where UserInfo.uid = Live.uid
    and Live.hid = House.hid
    and address like '台中市%'