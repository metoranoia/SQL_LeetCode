select id
from Weather A
where temperature > (select temperature from Weather where recordDate = date_add(A.recordDate, interval -1 day))
