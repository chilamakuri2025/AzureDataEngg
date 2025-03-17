---analytical functions
--ranking based on salry
select department_id, employee_id, salary,
RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as salary_rank
from hr.EMPLOYEES;

--top 3 highest salaries based on deptid

select department_id, employee_id, salary
from (
    select department_id, employee_id, salary,
RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as salary_rank
from hr.EMPLOYEES
) where salary_rank <= 3;



select department_id, employee_id, salary
from (
    select department_id, employee_id, salary,
     DENSE_RANK() OVER (PARTITION BY department_id order by salary DESC) as salary_rank
     from hr.EMPLOYEES
)where salary_rank = 2;

--employee salary as cumulative salary order by hire_date

select employee_id, hire_date, salary,
  sum(salary) OVER (order by hire_date) as cumulative_salary
from hr.EMPLOYEES;

--assigning row num by each employee in each dept

select department_id, employee_id,
   ROW_NUMBER() over (PARTITION by department_id order by employee_id) as row_num
   from hr.EMPLOYEES;

--finding lead salary and salary difference b/w highest
   select employee_id, salary,
   LEAD(salary) over (ORDER BY salary DESC) - salary as salary_diff
   from hr.EMPLOYEES;

--previous salary by employeeid order by hiredate
select employee_id, salary, hire_date,
   LAG(salary) over (PARTITION BY employee_id order by hire_date) as prev_salary
   from hr.EMPLOYEES;

---comparining employee previous salary and current salary 
   select employee_id, hire_date, salary,
   LAG(salary) OVER (PARTITION BY employee_id order by hire_date) as prev_salary,
   case when salary > LAG(salary) over (PARTITION by employee_id order by hire_date)
   then 'increased' else 'decreased' end as salary_trend
   from hr.EMPLOYEES;
--fecting hiring year and avg salary
   select EXTRACT(year from hire_date) as hire_year, avg(salary) as avg_salary
   from hr.EMPLOYEES
   group by extract(year from HIRE_DATE)
   order by hire_year;