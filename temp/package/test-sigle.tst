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
    -- 体力
    --bbgm_package.proce_purchase_power_daily(rpt_date);
    -- 副本挑战
    --bbgm_package.proce_zones_challenge_daily(rpt_date);
    -- 竞技场
    --bbgm_package.proce_arena_daily(rpt_date);
    -- 通灵塔
    --bbgm_package.proce_zig_daily(rpt_date);
    --装备
--    bbgm_package.proce_equip_daily(rpt_date);
    --宝藏
    --bbgm_package.proce_treasure_daily(rpt_date);
    --英雄
    
    --bbgm_package.proce_hero_daily(rpt_date);
    -- 活动
    --bbgm_package.proce_activity_daily(rpt_date);
    
    --bbgm_package.proce_equip_altar_daily(rpt_date, sysdate);
    --other
    bbgm_package.proce_other_daily(rpt_date);

  end loop;
  commit;
end;
0
0
