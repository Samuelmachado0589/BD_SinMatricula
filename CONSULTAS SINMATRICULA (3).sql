--PUNTO1-- --select count(*) as Total_Employee from EMPLOYEE--

--PUNTO2-- --select Fname,Lname from EMPLOYEE where Salary = (select max(Salary)from EMPLOYEE);--

--PUNTO3-- --select count (*) as Total_Departments from DEPARTMENT--

--PUNTO4-- --select Pname from PROJECT where Plocation ='Houston'--

--PUNTO5-- --select Relationship from DEPENCDENCIA where Essn = '333445555'--

--PUNTO6-- --select Dlocation from DEPT_LOCATIONS where Dnumber = 5 --

--PUNTO7-- --select avg(Salary) as Salario_Promedio from EMPLOYEE--

--punto8-- --select DEPARTMENT.Dname, count(*) as Total_Proyectos from DEPARTMENT join PROJECT  on DEPARTMENT.Dnumber = PROJECT.Dnum group by DEPARTMENT.Dname;--

--punto9-- --select Pname, sum(Hours) as Total_Horas_Trabajadas from PROJECT join WORKS_ON on PROJECT.Pnumber = WORKS_ON.Pno group by Pname;  --

--PUNTO10-- --select sum(Salary) as Salario_Total from EMPLOYEE--

--PUNTO11-- --select DEPARTMENT.Dname, max(EMPLOYEE.Salary) as SalarioMaximo, min(EMPLOYEE.Salary) as SalarioMinimo from DEPARTMENT  join EMPLOYEE  on DEPARTMENT.Dnumber = EMPLOYEE.Dno group by DEPARTMENT.Dname;--

--punto12-- --select Essn, Relationship from DEPENDENT;  --