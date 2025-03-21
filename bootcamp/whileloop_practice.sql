-- DECLARE
-- counter NUMBER := 1;
-- BEGIN
--     WHILE counter <= 5 LOOP
--        DBMS_OUTPUT.PUT_LINE('counter value ' || counter);
--           counter := counter + 1 ;
--     END LOOP;
--     END;

-- DECLARE
-- counter NUMBER :=1;
-- BEGIN
--     WHILE counter <=10 LOOP
--     DBMS_OUTPUT.PUT_LINE('counter value' || counter);
--     counter :=counter+2;
--     END LOOP;
--     END;

-- DECLARE
-- counter number :=10;
-- BEGIN
--     WHILE counter >=1 LOOP
--     DBMS_OUTPUT.PUT_LINE('counter value' || counter);
--     counter :=counter-1;
--     END LOOP;
--     END;

-- DECLARE
--   i NUMBER := 1;
-- BEGIN
--     WHILE i <= 5 LOOP
--     if i = 3 THEN
--     i := i + 1;
--     continue;
--     END IF;

--     dbms_output.put_line('Number: ' || i);
--      i := i + 1;
--     END LOOP;
--     END;

-- DECLARE
--     i NUMBER := 1;
-- BEGIN
--     WHILE i <= 5 LOOP
--     if i = 3 THEN
--     i := i + 1;
--      EXIT;
--     END IF;
--     DBMS_OUTPUT.put_line('Number: ' || i);
--      i := i + 1;
--      END LOOP;
--     END;

-- DECLARE
-- i NUMBER := 2;
-- BEGIN
--     WHILE i <= 10 LOOP
--     IF MOD(i, 2) = 1 THEN
--     EXIT;
--     END IF;
--     dbms_output.put_line('Even: ' || i);
--     i := i + 1;
--     END LOOP;
--     END;

-- DECLARE
-- i NUMBER := 1;
-- BEGIN
--     WHILE i <= 6 LOOP
--     IF MOD(i, 3) = 0 THEN
--     i := i + 1;
--     CONTINUE;
--     end if;
--     DBMS_OUTPUT.PUT_LINE('not divisiable by 3: ' || i);
--     i := i + 1;
--     end LOOP;
--     END;


-- declare
-- i NUMBER := 1;
-- sum NUMBER := 0;
-- BEGIN
--      WHILE i <= 10 LOOP
--      sum := sum + i;
--      if SUM > 10 THEN
--      EXIT;
--      END IF;
--      DBMS_OUTPUT.PUT_LINE('sum: ' || sum);
--      i := i + 1;
--      END LOOP;
--      END;

DECLARE
i NUMBER := 1;
BEGIN
    WHILE i <= 5 LOOP
    IF i in (2, 4) THEN
     i := i+1;
      CONTINUE;
    END IF;
    DBMS_OUTPUT.PUT_LINE('i: ' || i);
    i := i + 1;
    END LOOP;
    END;
