PL/SQL Developer Test script 3.0
37
-- Created on 2014/4/7 by HUANGKING 
declare
  -- Local variables here
  idx      integer;
  rpt_date date;
begin
  -- Test statements here
  for idx in 0 .. 100 loop
    --dbms_output.put_line(idx);
    rpt_date := trunc(sysdate - idx);
    --rpt_date := to_date('20140312','YYYYMMdd');
    --dbms_output.put_line(rpt_date);
    -- ����
    --bbgm_package.proce_purchase_power_daily(rpt_date);
    -- ������ս
    --bbgm_package.proce_zones_challenge_daily(rpt_date);
    -- ������
    --bbgm_package.proce_arena_daily(rpt_date);
    -- ͨ����
    --bbgm_package.proce_zig_daily(rpt_date);
    --װ��
--    bbgm_package.proce_equip_daily(rpt_date);
    --����
    --bbgm_package.proce_treasure_daily(rpt_date);
    --Ӣ��
    
    --bbgm_package.proce_hero_daily(rpt_date);
    -- �
    --bbgm_package.proce_activity_daily(rpt_date);
    
    --bbgm_package.proce_equip_altar_daily(rpt_date, sysdate);
    --other
    bbgm_package.proce_other_daily(rpt_date);

  end loop;
  commit;
end;
0
0
