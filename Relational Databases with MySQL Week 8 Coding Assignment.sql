use employees ;
desc employees ;
desc titles;

select t.title, count(*) from employees e 
inner join titles t on e.emp_no = t.emp_no where e.birth_date > '1965-01-01'
group by t.title ; 

desc titles ;
desc salaries ;

 select t.title, avg(s.salary) from employees e 
 inner join titles t on e.emp_no = t.emp_no
 inner join salaries s on t.emp_no = s.emp_no
 group by t.title  ;
 
 desc dept_emp ;
desc departments ;
select * from departments ;

select  d.dept_no, d.dept_name, sum(salary) from salaries s 
inner join dept_emp de on s.emp_no = de.emp_no
inner join departments d on d.dept_no = de.dept_no
where dept_name = 'Marketing' 
and year(s.from_date) >= 1990 and year(s.to_date) <= 1992;