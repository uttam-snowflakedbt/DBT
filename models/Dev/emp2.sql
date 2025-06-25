select dept,sum(sal) as deptwisesal
from {{ ref('emp_details')}}
group by dept