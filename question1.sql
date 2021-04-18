SELECT t.title,
count(e.emp_no) as 'Number of Employees'
from employees e join
titles t on
	e.emp_no = t.emp_no
WHERE e.birth_date > '1965-01-01'
group by t.title;
