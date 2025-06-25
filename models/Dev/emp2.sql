select deptno,sum(sal) as deptwisesal
from {{ ref('emp_details')}}
group by deptno