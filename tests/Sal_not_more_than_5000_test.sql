select * from {{ ref ('emp_details')}}
where sal > 500000