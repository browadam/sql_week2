SELECT d2.dept_name as 'Department' ,
sum(salary) as 'Total Salary'
from salaries s join
dept_emp de  on 
	de.emp_no = s.emp_no join 
departments d2 on
	d2.dept_no = de.dept_no 
where d2.dept_name LIKE 'marketing' and s.from_date > '1989-12-31' and s.to_date < '1993-01-01'
group by 1;