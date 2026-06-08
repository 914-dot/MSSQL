select datediff(s, '1970/1/1', getutcdate())

select dateadd(s, 1780883980, '1970/1/1') + 8 / 24.0
-- Epoch Time 以 1970/1/1 0:0:0 為基準到現在經過了多少秒，並且為 UTC 時間