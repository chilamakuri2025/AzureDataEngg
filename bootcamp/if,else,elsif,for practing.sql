-- DECLARE
-- variable1  NUMBER := 10;
-- BEGIN
--     if variable1>15 then
--     dbms_output.put_line('number is greater than 5');
--     end if;
--     end;


-- DECLARE
-- v_score NUMBER := 40;
-- BEGIN
--     IF v_score >= 50 THEN
--     DBMS_OUTPUT.PUT_LINE('Pass');
--     ELSE
--     dbms_output.PUT_LINE('Fail');
--     end if;
--     end;

-- DECLARE
--  v_marks NUMBER := 85;
-- BEGIN
--     IF v_marks >= 90 THEN
--     DBMS_OUTPUT.PUT_LINE('Grade: A');
--     ELSIF v_marks >= 75 THEN
--      DBMS_OUTPUT.PUT_LINE('Grade: B');
--      ELSE
--       DBMS_OUTPUT.PUT_LINE('Grade: C');
--       end if;
--     END;

-- DECLARE
-- emp_name VARCHAR2(20);
-- emp_salary NUMBER;
-- grade_value VARCHAR2(20);
-- BEGIN
--     SELECT first_name,salary into emp_name, emp_salary from hr.EMPLOYEES where EMPLOYEE_ID= 101;
--     if emp_salary >= 30000 THEN
--     grade_value:='grade: High';
--     ELSIF emp_salary >= 20000 THEN
--     grade_value:='grade: medium';
--     ELSE
--     grade_value:='grade: low';
--     END IF;
--     dbms_output.PUT_LINE(emp_name || emp_salary || grade_value);
--     END;

-- DECLARE
-- emp_name VARCHAR2(20):=20000;
-- emp_salary NUMBER;
-- grade_value varchar2(20);
-- BEGIN
--     IF emp_salary >= 30000 THEN
--     grade_value := 'Grade: High';
--     IF emp_salary < 70000 THEN
--     grade_value := 'Very High';
--     else
--     grade_value := 'high salary';
--     end if;
--     ELSE
--     grade_value:='grade: Low';
--     END IF;
--     dbms_output.put_line(emp_name || emp_salary || grade_value);
--     end;


-- DECLARE
-- v_counter NUMBER := 1;
-- BEGIN
--     LOOP
--         DBMS_OUTPUT.PUT_LINE(v_counter);
--         v_counter := v_counter+1;
--         exit when v_counter=5;
--         END LOOP;
--         END; 

-- DECLARE
-- v_counter NUMBER := 0;
-- BEGIN
--     LOOP
--         dbms_output.PUT_LINE(v_counter);
--         v_counter := v_counter+4;
--         exit when v_counter>100;
--         end loop;
--         END;


-- BEGIN
--     for i in 1..5 loop
--     DBMS_OUTPUT.PUT_LINE('itteration' || i);
--     END LOOP;
--     END;

-- BEGIN
--     for i in reverse 1..5 loop
--     DBMS_OUTPUT.PUT_LINE('itteration' || i);
--     END LOOP;
--     END;

-- BEGIN
--     for i in REVERSE 1..10 LOOP
--     IF MOD(i,2)=1 then
--     DBMS_OUTPUT.PUT_LINE(i);
--     END if;
--     END loop;
--     end;

-- BEGIN
--     for i in reverse 1..10 LOOP
--     DBMS_OUTPUT.PUT_LINE(i || ' ' || i*i);
--     END LOOP;
--     END;

-- DECLARE
-- a NUMBER:=0;
-- b NUMBER:=1;
-- c NUMBER;
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE(a);
--     DBMS_OUTPUT.PUT_LINE(b);
--     for i in 1..10 loop
--     c:=a+b;
--     DBMS_OUTPUT.PUT_LINE(c);
--     a:=b;
--     b:=c;
--     end loop;
--     END;

DECLARE
table1 number:=2;
BEGIN
    for num in 1..5 LOOP
    dbms_output.put_line('mutiplication table of num'||num);
    for i in 1..10 loop
    dbms_output.put_line(num || '*' || i ||':' || i*num);
    END LOOP;
    end LOOP;
    end;

