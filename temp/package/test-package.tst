PL/SQL Developer Test script 3.0
33
-- Created on 2014/1/5 by HUANGKING 
--set serveroutput on;
declare 
  -- Local variables here
  idx integer;
  --v_t varchar2(30);
  --v_t2 varchar2(30);
begin
  -- Test statements here
--  dbms_output.put_line(test_package.test());
--    v_t := test_package.append_fun();
--      v_t := exec test_package.append_fun(sysdate);
      --v_t := 'fff';
      
      --for idx in 15 .. 25 loop
      idx := 18;
      dbms_output.put_line(idx);
          bbgm_package.main_proce(sysdate-idx);
      --end loop;
      
      --bbgm_package.main_proce(sysdate-5);
      
      
      
      
      --execute immediate 'update tmp_abc set b = 4 where a = :1 and a = :1'
    --using 1,1;
      --dbms_output.put_line(v_t2);
      --dbms_output.put_line(last_date(sysdate));

    --dbms_output.put_line(sysdate);

end;
0
0
