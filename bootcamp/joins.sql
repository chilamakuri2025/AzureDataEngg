--finding employee first name and department name 
select e.employee_id, e.first_name, d.department_name
from hr.EMPLOYEES e
INNER JOIN hr.DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


--finding emp first name department name and without department also

select e.employee_id, e.first_name, d.department_name
from hr.EMPLOYEES e
LEFT join hr.DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--fetching empdept, empfirstname and department name without firstname and empid also
select e.employee_id, e.first_name, d.department_name
from hr.employees e
RIGHT JOIN hr.departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID

--fetching empid,empname and departmentname exculding common data

select e.employee_id, e.first_name, d.department_name
from hr.employees e
full outer JOIN hr.departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID

--finding empid,emp firstname where department name is null in deparments table
select e.employee_id, e.first_name, d.department_name
from hr.employees e
LEFT JOIN hr.departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID is null;

--finding empid,emp firstname where empfirst name is null in hr.employees table
select e.employee_id, e.first_name, d.department_name
from hr.employees e
LEFT JOIN hr.departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.employee_id is null;

--employee with job id 
SELECT e.employee_id, e.first_name, j.job_id
FROM hr.employees e
INNER JOIN hr.jobs j ON e.job_id = j.job_id;

--finding location and septname 

select e.employee_id, e.first_name, d.department_name, l.city
from hr.EMPLOYEES e
inner join hr.departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join hr.locations l on d.location_id = l.location_id;




