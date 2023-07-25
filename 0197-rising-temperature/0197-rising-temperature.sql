select B.id
from weather A
inner join weather B
on  A.recordDate  = Date_add(B.recordDate, interval - 1 day)
and B.temperature > A.temperature