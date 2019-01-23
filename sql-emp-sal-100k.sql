select *
from Job j
join Employee e
on e.JobId = j.Id
where j.Salary >= 100000
--order by j.Salary