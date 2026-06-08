drop trigger if exists inster_userinfo

go

create trigger insert_userinfo
on UserInfo
after insert
as
begin
    declare @uid nvarchar(20)
    declare @cname nvarchar(50)

    select @uid = uid, 
    @cname = isnull(cname, '')
    from inserted

    insert into Log (body) values (
        concat(
            '將 uid=',@uid+', cname=',@cname' 插入到UserInfo資料表'
        )    
    )
end