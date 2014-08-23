select distinct m.* from sys_gm_menu m, sys_gm_menu_re_role mr where m.menu_id = mr.menu_id and m.enable = '1' and mr.role_id in (
select ur.role_id from sys_gm_user u, sys_gm_user_re_role ur where u.user_id = ur.user_id and u.user_id = '1'
) order by m.menu_id;

-- 4.1.1	转换率
select record_time,
       case
         when operat_type = 1 then
          sum(quantity)
         else
          0
       end q1,
       case
         when operat_type = 2 then
          sum(quantity)
         else
          0
       end q2,
       case
         when operat_type = 3 then
          sum(quantity)
         else
          0
       end q3
  from gm_rpt_user_translate
-- where...
 group by record_time, operat_type
 order by record_time desc;


-- 4.2.1.1	充值总金额分布
select cash frequency, count(1) quantity
  from (select player_id, sum(prepay_cash) cash
          from gm_rpt_prepay
         where 1 = 1
           --and record_time between to_date(?, 'yyyy-MM-dd') and
           --    to_date(?, 'yyyy-MM-dd')
           
group by player_id) group by cash;

-- 4.2.1.2	单笔充值金额分布

select grp.prepay_cash frequency, count(1) quantity
  from gm_rpt_prepay grp
 where 1 = 1 
 -- condition: time, provider, server and so on.
 group by grp.prepay_cash;


-- 更新玩家首次标记

update gm_rpt_prepay grp set first_charge ='1' where prepay_id in(
select min(prepay_id) prepay_id from gm_rpt_prepay grp ,
(select player_id,min(player_level) pl from gm_rpt_prepay group by player_id ) t where
grp.player_id = t.player_id and grp.player_level = t.pl
group by t.player_id,t.pl
)
;

-- 4.2.2	首充等级分布
select player_level, count(1) from gm_rpt_prepay where first_charge ='1' --
group by player_level;



update gm_rpt_prepay grp
   set relative_date = (select ceil(To_date(to_char(grp.record_time,
                                                    'yyyy-MM-dd hh24'),
                                            'yyyy-MM-dd hh24') -
                                    To_date(to_char(sgs.start_servier_date,
                                                    'yyyy-MM-dd hh24'),
                                            'yyyy-MM-dd hh24'))
                          from sys_gm_server sgs
                         where grp.server_id = sgs.server_id );
                         
-- 4.2.3	首充天数分布
select prepay_id,
       ceil(To_date(to_char(grp.record_time, 'yyyy-MM-dd hh24'),
                    'yyyy-MM-dd hh24') -
            To_date(to_char(sgs.start_server_date, 'yyyy-MM-dd hh24'),
                    'yyyy-MM-dd hh24'))
  from gm_rpt_prepay grp, sys_gm_server sgs;
  
  
   update gm_rpt_prepay g1
    set relative_date = (select rd
                           from (select prepay_id,
                                        ceil(To_date(to_char(grp.record_time,
                                                             'yyyy-MM-dd hh24'),
                                                     'yyyy-MM-dd hh24') -
                                             To_date(to_char(sgs.start_server_date,
                                                             'yyyy-MM-dd hh24'),
                                                     'yyyy-MM-dd hh24')) rd
                                   from gm_rpt_prepay grp, sys_gm_server sgs
                                  where grp.server_id = sgs.server_id) t
                          where t.prepay_id = g1.prepay_id)
  where 1 = 1

  
  

select g.relative_date, count(1)
  from gm_rpt_prepay g
 where g.first_charge = '1'
 -- and 1 = 1
 group by g.relative_date;


-- 4.2.4	充值次数分布
select prepay_num, count(1) player_num
  from (select g.player_id, count(1) prepay_num
          from gm_rpt_prepay g
         where 1 = 1 --
         group by g.player_id) t
 group by t.prepay_num;
 
 -- 4.2.5	充值率及APU值
 
 -- has some issue.
 
 select t1.dt, t1.pnum pre_num, t2.uq create_num, t1.cash
  from (select dt, count(1) pnum, sum(cash) cash
          from (select to_char(grp.record_time, 'yyyy-mm-dd') dt,
                       grp.player_id pid, -- count(1) pnum, 
                       sum(grp.prepay_cash) cash
                  from gm_rpt_prepay grp
                 where 1 = 1 --
                --having ceil
                 group by to_char(grp.record_time, 'yyyy-mm-dd'),
                          grp.player_id)
         group by dt) t1,
       
       (select to_char(rut.record_time, 'yyyy-mm-dd') dt,
               sum(rut.quantity) uq
          from gm_rpt_user_translate rut
         where rut.operat_type = '2'
        --
         group by to_char(rut.record_time, 'yyyy-mm-dd')) t2
 where t1.dt(+) = t2.dt;
 
 
 
 -- 当日创建玩家已充值的玩家数
select tr.provider_id, tr.server_id, trunc(tr.record_time), count(1)
  from gm_tmp_role tr, gm_rpt_prepay grp
 where tr.server_id = grp.server_id
   and tr.player_id = grp.player_id
   and tr.provider_id = grp.provider_id
   and trunc(tr.record_time) = trunc(grp.record_time)
   and tr.operat_type = '2'
 group by tr.provider_id, tr.server_id, trunc(tr.record_time);

select tr.provider_id,
               tr.server_id,
               trunc(tr.record_time) record_time,
               count(1) quantity
          from gm_tmp_role tr, gm_rpt_prepay grp
         where tr.server_id = grp.server_id
           and tr.player_id = grp.player_id
           and tr.provider_id = grp.provider_id
           and trunc(tr.record_time) = trunc(grp.record_time)
           and tr.operat_type = '2'
           and tr.record_time >= to_date('2014/01/4', 'yyyy/mm/dd')
           and tr.record_time < to_date('2014/01/4', 'yyyy/mm/dd') + 1
         group by tr.provider_id, tr.server_id, trunc(tr.record_time)
 
           
-- 当日创建玩家数
select trunc(record_time) record_time,
               provider_id,
               server_id,
               quantity
          from gm_rpt_user_translate
         where operat_type = '2'
           and record_time >= to_date('2014/01/4', 'yyyy/mm/dd')
           and record_time < to_date('2014/01/4', 'yyyy/mm/dd') + 1;
 
-- 当日充值总额/当日充值玩家数
select provider_id,
               server_id,
               record_time,
               count(1) quantity,
               sum(prepay_cash) prepay_cash
          from (select provider_id,
                       server_id,
                       trunc(record_time) record_time,
                       player_id,
                       sum(prepay_cash) prepay_cash
                  from gm_rpt_prepay
                 where 1 = 1
                      -- 
                   and record_time >= to_date('2014/01/4', 'yyyy/mm/dd')
                   and record_time < to_date('2014/01/4', 'yyyy/mm/dd') + 1
                 group by provider_id,
                          server_id,
                          trunc(record_time),
                          player_id)
         group by provider_id, server_id, record_time;
 
 -- 4.2.6	充值记录 
 
 select grp.player_name,
       sgs.server_name,
       grp.player_level,
       grp.record_time,
       grp.prepay_cash
  from gm_rpt_prepay grp, sys_gm_server sgs
 where grp.server_id = sgs.server_id
 --
 
 -- 4.1.4	每天登录次数
 -- temp data
 insert into gm_tmp_login
  (id, player_id, provider_id, server_id, login_type, login_time)
  (select tmp_log_sequences.nextval,
          abs(mod(dbms_random.random, 200)),
          l.provider_id,
          l.server_id,
          abs(mod(dbms_random.random, 2)),
          to_date('2014-01-' || (abs(mod(dbms_random.random, 10)) + 1),
                  'yyyy-mm-dd')
     from gm_tmp_login l);

 
 select pnum, count(1)
  from (select to_char(l.login_time, 'yyyy-mm-dd') dt,
               player_id pid,
               count(1) pnum
          from gm_tmp_login l
         where l.login_type = '1'
        -- 
         group by to_char(l.login_time, 'yyyy-mm-dd'), player_id) t
 group by t.pnum;

 
 
 
 
 -- 存储过程 insert housely table

select server_id,to_date(rt,'yyyy-mm-dd HH24'),max(online_count) h_online from
(select server_id,to_char(record_time,'yyyy-mm-dd HH24') rt,online_count from gm_tmp_server_status
where 1= 1
--
) group by server_id,rt;


-- 4.1.5.1	小时在线峰值

select record_time, max(hour_online) from gm_rpt_online_perhour where 1 = 1 
--
group by record_time
order by record_time;

-- 4.1.5.2	天在线峰值
select to_char(record_time,'yyyy-mm-dd'), max(hour_online) from gm_rpt_online_perhour where 1 = 1 
--
group by to_char(record_time,'yyyy-mm-dd')
order by to_char(record_time,'yyyy-mm-dd');


-- 4.1.4	每天登录次数

 select to_date('2014-01-07', 'yyyy-mm-dd'), server_id, ct, count(1)
   from (select server_id, player_id, count(1) ct
           from gm_tmp_login gtl
          where login_type = '1'
            and ceil(to_date('2014-01-07', 'yyyy-mm-dd') -
                     trunc(gtl.login_time)) = 0
          group by server_id, player_id)
  group by server_id, ct;