select t.title ,
AVG(s.salary) as 'Average Salary'
from employees e join
titles t on 
	e.emp_no = t.emp_no join 
salaries s  on
	e.emp_no = s.emp_no 
GROUP BY t.title ;