create or replace package body bbgm_package is
  active_day                CONSTANT number(1) := 3;
  max_save_date             CONSTANT number(2) := 30;
  online_max_date           CONSTANT number(1) := 3; -- 将在线三天，设置为下线
  Z_PURCHASE_POWER_ACTION   CONSTANT number(6) := 180007; -- 竞技场挑战action_type
  Z_CHALLENGE_ACTION        CONSTANT number(6) := 180001; -- 副本挑战action_type
  Z_MOP_UP_ACTION           CONSTANT number(6) := 180003; -- 副本扫荡action_type
  ARENA_CHALLENGE_ACTION    CONSTANT number(6) := 260009; -- 竞技场挑战action_type
  DAILY_EQUIP_DETAIL_TYPE   CONSTANT number(3) := 606; -- daily装备明细detail type
  EQUIP_UPGRADE_ACTION      CONSTANT number(6) := 210017; -- 装备强化action_type
  EQUIP_ALTAR_ACTION        CONSTANT number(6) := 210025; -- 祭坛action_type
  OTHER_GOODS_BUY_ACTION    CONSTANT number(6) := 210001; -- 购买物品action_type
  RANKLIST_REWARD_ACTION    CONSTANT number(6) := 280003; -- 领取排名奖励action_type
  TREASURE_PILLAGE_ACTION   CONSTANT number(6) := 270007; -- 宝藏掠夺次数
  TREASURE_DIG_ACTION       CONSTANT number(6) := 270005; -- 宝藏挖宝
  TREASURE_REFRESH_ACTION   CONSTANT number(6) := 270029; -- 宝藏刷新
  TREASURE_DONATION_ACTION  CONSTANT number(6) := 270017; -- 宝藏祝福
  TREASURE_EXCHANGE_ACTION  CONSTANT number(6) := 270019; -- 宝藏兑换
  HERO_UPGRADE_RANK_ACTION  CONSTANT number(6) := 200021; --  英雄进阶
  HERO_HONE_ACTION          CONSTANT number(6) := 200019; --  英雄修炼
  HERO_TRAINING_ACTION      CONSTANT number(6) := 200013; --  英雄训练
  ACTIVITY_FOODS_ACTION     CONSTANT number(6) := 290001; -- 吃面包活动action_type
  ACTIVITY_GOLD_PAY_ACTION  CONSTANT number(6) := 290003; -- 领军饷action_type
  ACTIVITY_RULE_DATA_ACTION CONSTANT number(6) := 290013; -- 领取常规活动action_type
  procedure daily_main_proce as
  begin
    main_proce(sysdate - 1);
  end daily_main_proce;

  procedure main_proce(exec_date Date) as
    rpt_date Date;
  begin
    rpt_date := trunc(exec_date);
    update_error_login_data(rpt_date);
    proce_user_translate(rpt_date);
    proce_online_daily(rpt_date);
    proce_save_data(rpt_date);
    proce_online(rpt_date);
    proce_login_daily(rpt_date);
    proce_active_user(rpt_date);
    proce_consume_daily(rpt_date);
    proce_purchase_power_daily(rpt_date);
    proce_zones_challenge_daily(rpt_date);
    proce_arena_daily(rpt_date);
    proce_zig_daily(rpt_date);
    proce_equip_daily(rpt_date);
    proce_treasure_daily(rpt_date);
    proce_hero_daily(rpt_date);
    proce_activity_daily(rpt_date);
    proce_other_daily(rpt_date);
    commit;
  end main_proce;

  procedure log_result(proc_name varchar2,
                       rpt_date  Date,
                       sql_code  varchar2,
                       sql_errm  varchar2,
                       error_msg varchar2) as
  begin
    insert into gm_proc_result
      (id, proc_name, rpt_Date, sql_code, sql_errm, error_msg)
    values
      (TMP_LOG_SEQUENCES.NEXTVAL,
       proc_name,
       rpt_date,
       sql_code,
       sql_errm,
       error_msg);
  end log_result;

  procedure delete_expires_data(table_name varchar2,
                                exec_date  Date,
                                updatetime timestamp) as
    del_sql        varchar2(200) := 'delete from ' || table_name ||
                                    ' where record_time >= :rpt_date and record_time < :rpt_date + 1 
                        and update_time < :updatetime';
    v_cursorid     number;
    rows_processed integer;
  begin
    v_cursorid := dbms_sql.open_cursor;
    dbms_sql.parse(v_cursorid, del_sql, dbms_sql.native);
    dbms_sql.bind_variable(v_cursorid, ':rpt_date', exec_date);
    dbms_sql.bind_variable(v_cursorid, ':updatetime', updatetime);
    rows_processed := dbms_sql.execute(v_cursorId);
    dbms_sql.close_cursor(v_cursorid);
  end delete_expires_data;

  procedure update_error_login_data(rpt_date Date) as
  begin
    -- update error login data(more than 3 days login without logout)
    update gm_tmp_login
       set login_type = 2, logout_time = rpt_date, update_time = sysdate
     where id in (select id
                    from gm_tmp_login l
                   where l.login_type = 1
                     and l.login_time < rpt_date - (online_max_date - 1)
                     and not exists
                   (select 1
                            from gm_tmp_login l1
                           where l1.login_type = 2
                             and l.id != l1.id
                             and l.login_time = l1.login_time));
  end update_error_login_data;

  -- 玩家当日在线记录
  procedure proce_online_daily(rpt_date Date) as
    cursor gm_tmp_login_cursor is
      select distinct provider_id, server_id, player_id
        from gm_tmp_login gtl
       where ((login_type = '2' and rpt_date >= trunc(login_time) and
             rpt_date < logout_time) or
             (login_type = '1' and trunc(login_time) = rpt_date) or
             (login_type = '1' and rpt_date >= login_time and not exists
              (select 1
                  from gm_tmp_login l1, gm_tmp_login l2
                 where l1.id = gtl.id
                   and l1.login_type = '1'
                   and l2.login_type = '2'
                   and l1.provider_id = l2.provider_id
                   and l1.server_id = l2.server_id
                   and l1.login_time = l2.login_time)));
    error_msg  varchar2(20000);
    cr         gm_tmp_login_cursor%ROWTYPE;
    error_flag number := 0;
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_login_cursor;
    loop
      fetch gm_tmp_login_cursor
        into cr;
      exit when gm_tmp_login_cursor% notfound;
      begin
      
        -- insert or update
        MERGE into gm_rpt_online_daily od
        using dual
        on (od.provider_id = cr.provider_id and od.server_id = cr.server_id and od.player_id = cr.player_id and od.record_time = rpt_date)
        WHEN MATCHED THEN
          UPDATE SET od.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (odl_id,
             provider_id,
             server_id,
             player_id,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.player_id,
             rpt_date,
             updatetime);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' || 'player_id:' ||
                        cr.player_id;
          log_result('gm_rpt_online_daily',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
    delete_expires_data('gm_rpt_online_daily', rpt_date, updatetime);
    if error_flag = 0 then
      log_result('proce_online_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_online_daily;

  procedure proce_save_data(rpt_date Date) as
    updatetime timestamp := sysdate;
    save_date  number;
    error_flag number := 0;
  
  begin
    for save_date in 0 .. (max_save_date - 1) loop
      proce_save_data(rpt_date, save_date, updatetime, error_flag);
    end loop;
  
    if error_flag = 0 then
      log_result('proce_save_data', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_save_data;

  procedure proce_save_data(rpt_date   Date,
                            save_date  number,
                            updatetime timestamp,
                            error_flag in out number) as
    cursor gm_rpt_save_data_cursor is
      select save_date + 1 save_date,
             count(1) save_amount,
             --od.player_id save_amount,
             od.server_id,
             od.provider_id,
             (select count(1)
                from gm_tmp_role
               where operation_type = 2
                 and record_time > rpt_date - save_date
                 and record_time <= rpt_date - save_date + 1) create_amount,
             rpt_date - save_date record_time
        from gm_rpt_online_daily od,
             (select server_id, provider_id, player_id
                from gm_tmp_role
               where operation_type = 2
                 and record_time > rpt_date - save_date
                 and record_time <= rpt_date - save_date + 1) r
       where od.record_time = rpt_date
         and r.player_id = od.player_id
         and r.server_id = od.server_id
         and r.provider_id = od.provider_id
       group by od.server_id, od.provider_id;
  
    error_msg varchar2(20000);
    cr        gm_rpt_save_data_cursor%ROWTYPE;
  begin
    open gm_rpt_save_data_cursor;
    loop
      fetch gm_rpt_save_data_cursor
        into cr;
      exit when gm_rpt_save_data_cursor% notfound;
      begin
      
        MERGE into gm_rpt_save_data sd
        using dual
        on (sd.provider_id = cr.provider_id and sd.server_id = cr.server_id and sd.save_date = cr.save_date and sd.record_time = cr.record_time)
        WHEN MATCHED THEN
          UPDATE
             SET sd.create_amount = cr.create_amount,
                 sd.save_amount   = cr.save_amount,
                 sd.update_time   = updatetime
        WHEN NOT MATCHED THEN
          insert
            (data_id,
             provider_id,
             server_id,
             save_date,
             create_amount,
             save_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.save_date,
             cr.create_amount,
             cr.save_amount,
             cr.record_time,
             updatetime);
      
        delete from gm_rpt_save_data
         where record_time = cr.record_time
           and save_date = cr.save_amount
           and update_time < updatetime;
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' || 'save_date:' ||
                        cr.save_date || ',' || 'create_amount:' ||
                        cr.create_amount || ',' || 'save_amount:' ||
                        cr.save_amount || ',' || 'rpt_date:' ||
                        cr.record_time;
          log_result('proce_save_data',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  end proce_save_data;

  --用户转换率
  procedure proce_user_translate(rpt_date Date) as
    cursor gm_tmp_role_cursor is
      select provider_id, server_id, operation_type, count(1) ct
        from gm_tmp_role r
       where r.record_time >= rpt_date
         and r.record_time < rpt_date + 1
         and (operation_type = 1 or
             (operation_type = 2 and exists
              (select 1
                  from gm_tmp_role r2
                 where r2.operation_type = 1
                   and r2.player_id = r.player_id
                   and r2.server_id = r.server_id
                   and r2.provider_id = r.provider_id
                   and trunc(r.record_time) = trunc(r2.record_time))))
       group by provider_id, server_id, operation_type;
  
    error_msg  varchar2(20000);
    cr         gm_tmp_role_cursor%ROWTYPE;
    error_flag number := 0;
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_role_cursor;
    loop
      fetch gm_tmp_role_cursor
        into cr;
      exit when gm_tmp_role_cursor% notfound;
      begin
      
        -- insert or update
        MERGE into gm_rpt_user_translate ut
        using dual
        on (ut.provider_id = cr.provider_id and ut.server_id = cr.server_id and ut.operation_type = cr.operation_type and ut.record_time = rpt_date)
        WHEN MATCHED THEN
          UPDATE SET ut.amount = cr.ct, ut.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (translate_id,
             provider_id,
             server_id,
             operation_type,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.operation_type,
             cr.ct,
             rpt_date,
             updatetime);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'operation_type:' || cr.operation_type || ',' ||
                        'amount:' || cr.ct;
          log_result('proce_user_translate',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
    delete_expires_data('gm_rpt_user_translate', rpt_date, updatetime);
    if error_flag = 0 then
      log_result('proce_user_translate', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_user_translate;

  procedure proce_online(rpt_date Date) as
    cursor gm_tmp_online_cursor is
      select server_id,
             provider_id,
             to_date(rt, 'yyyy-mm-dd HH24') record_hour,
             max(online_count) hour_online
        from (select server_id,
                     provider_id,
                     to_char(record_time, 'yyyy-mm-dd HH24') rt,
                     online_count
                from gm_tmp_server_status
               where record_time >= rpt_date
                 and record_time < rpt_date + 1)
       group by server_id, provider_id, rt;
    cr         gm_tmp_online_cursor%ROWTYPE;
    error_flag number := 0;
    error_msg  varchar2(20000);
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_online_cursor;
    loop
      fetch gm_tmp_online_cursor
        into cr;
      exit when gm_tmp_online_cursor% notfound;
      begin
      
        -- insert or update
        MERGE into gm_rpt_online_hourly oph
        using dual
        on (oph.server_id = cr.server_id and oph.provider_id = cr.provider_id and oph.record_time = cr.record_hour)
        WHEN MATCHED THEN
          UPDATE
             SET oph.hour_online = cr.hour_online, update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (oph_id,
             server_id,
             provider_id,
             hour_online,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.server_id,
             cr.provider_id,
             cr.hour_online,
             cr.record_hour,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'record_hour:' || cr.record_hour || ',' ||
                        'hour_online:' || cr.hour_online;
          log_result('proce_online', rpt_date, SQLCODE, SQLERRM, error_msg);
      end merge1;
    end loop;
  
    delete_expires_data('gm_rpt_online_hourly', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_online', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_online;

  procedure proce_login_daily(rpt_date Date) as
    cursor gm_tmp_login_cursor is
      select provider_id, server_id, freq, count(1) pq
        from (select provider_id, server_id, player_id, count(1) freq
                from gm_tmp_login
               where login_type = '1'
                 and login_time >= rpt_date
                 and login_time < rpt_date + 1
               group by provider_id, server_id, player_id)
       group by provider_id, server_id, freq;
    cr         gm_tmp_login_cursor%ROWTYPE;
    error_flag number := 0;
    error_msg  varchar2(20000);
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_login_cursor;
    loop
      fetch gm_tmp_login_cursor
        into cr;
      exit when gm_tmp_login_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_login_daily ldl
        using dual
        on (ldl.provider_id = cr.provider_id and ldl.server_id = cr.server_id and ldl.record_time = rpt_date and ldl.login_freq = cr.freq)
        WHEN MATCHED THEN
          UPDATE
             SET ldl.player_amount = cr.pq, ldl.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ldl_id,
             provider_id,
             server_id,
             login_freq,
             player_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.freq,
             cr.pq,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'login_freq:' || cr.freq || ',' || 'player_amount:' ||
                        cr.pq;
          log_result('proce_login_daily',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    delete_expires_data('gm_rpt_login_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_login_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_login_daily;

  procedure proce_active_user(rpt_date Date) as
    cursor gm_tmp_active_cursor is
      select provider_id, server_id, count(1) pq
        from (select provider_id, server_id, player_id
                from gm_tmp_login gtl
               where login_type = '1'
                 and login_time >= rpt_date
                 and login_time < rpt_date + active_day
               group by provider_id, server_id, player_id)
       group by provider_id, server_id;
    cr         gm_tmp_active_cursor%ROWTYPE;
    error_flag number := 0;
    error_msg  varchar2(20000);
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_active_cursor;
    loop
      fetch gm_tmp_active_cursor
        into cr;
      exit when gm_tmp_active_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_active_user act
        using dual
        on (act.provider_id = cr.provider_id and act.server_id = cr.server_id and act.record_time = rpt_date)
        WHEN MATCHED THEN
          UPDATE
             SET act.active_amount = cr.pq, act.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (act_id,
             provider_id,
             server_id,
             active_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.pq,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'active_amount:' || cr.pq;
          log_result('proce_active_user',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    delete_expires_data('gm_rpt_active_user', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_active_user', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_active_user;

  procedure proce_consume_by_type(rpt_date    Date,
                                  detail_type number,
                                  table_name  varchar2,
                                  updatetime  timestamp,
                                  error_flag  in out number,
                                  has_oid     number default 0,
                                  has_rank    number default 0) as
    merge_sql      varchar2(20000);
    v_cursorid     number;
    rows_processed integer;
    error_msg      varchar2(20000);
  begin
    merge_sql := 'MERGE into gm_rpt_consume_daily cd using (' ||
                 'select provider_id, server_id, action_type';
  
    if has_rank != 0 then
      merge_sql := merge_sql || ', rank';
    end if;
    if has_oid != 0 then
      merge_sql := merge_sql || ', oid';
    end if;
  
    merge_sql := merge_sql ||
                 ',sum(case when amount >= 0 then amount else 0 end) earning' ||
                 ',sum(case when amount < 0 then 0 - amount else 0 end) expense from ' ||
                 table_name ||
                 ' where record_time >= :rpt_date and record_time < :rpt_date + 1 ' ||
                 'group by provider_id, server_id, action_type';
    if has_rank != 0 then
      merge_sql := merge_sql || ', rank';
    end if;
    if has_oid != 0 then
      merge_sql := merge_sql || ', oid';
    end if;
  
    merge_sql := merge_sql ||
                 ') r  on (cd.server_id = r.server_id and cd.provider_id = r.provider_id ' ||
                 'and cd.record_time = :rpt_date and cd.action_type = r.action_type and cd.DETAIL_TYPE = :detailType ';
    if has_rank != 0 then
      merge_sql := merge_sql || 'and cd.rank = r.rank ';
    end if;
    if has_oid != 0 then
      merge_sql := merge_sql || 'and cd.oid = r.oid ';
    end if;
    merge_sql := merge_sql || ') WHEN MATCHED THEN ' ||
                 'Update set cd.earning = r.earning, cd.expense = r.expense, update_time = :updatetime ' ||
                 'WHEN NOT MATCHED THEN insert (' ||
                 'cd_id, provider_id, server_id, detail_type, action_type, earning, expense';
    if has_rank != 0 then
      merge_sql := merge_sql || ', rank';
    end if;
    if has_oid != 0 then
      merge_sql := merge_sql || ', oid';
    end if;
    merge_sql := merge_sql ||
                 ', record_time, update_time) values (REPORT_SEQUENCE.NEXTVAL, r.provider_id, r.server_id,' ||
                 detail_type || ',' ||
                 'r.action_type, r.earning, r.expense ';
    if has_rank != 0 then
      merge_sql := merge_sql || ', r.rank';
    end if;
    if has_oid != 0 then
      merge_sql := merge_sql || ', r.oid';
    end if;
    merge_sql := merge_sql || ', :rpt_date, :updatetime)';
  
    begin
      v_cursorid := dbms_sql.open_cursor;
      dbms_sql.parse(v_cursorid, merge_sql, dbms_sql.native);
      dbms_sql.bind_variable(v_cursorid, ':detailType', detail_type);
      dbms_sql.bind_variable(v_cursorid, ':rpt_date', rpt_date);
      dbms_sql.bind_variable(v_cursorid, ':updatetime', updatetime);
      rows_processed := dbms_sql.execute(v_cursorId);
      dbms_sql.close_cursor(v_cursorid);
    EXCEPTION
      WHEN OTHERS THEN
        error_flag := 1;
        error_msg  := merge_sql;
        log_result('proce_consume_by_type',
                   rpt_date,
                   SQLCODE,
                   SQLERRM,
                   error_msg);
    end merge1;
  end proce_consume_by_type;

  procedure proce_consume_daily(rpt_date Date) as
    error_flag number := 0;
    updatetime timestamp := sysdate;
  begin
    -- gold
    proce_consume_by_type(rpt_date,
                          1,
                          'GM_TMP_ATTR_Gold',
                          updatetime,
                          error_flag);
    -- gem
    proce_consume_by_type(rpt_date,
                          2,
                          'GM_RPT_GEM_CHANGE',
                          updatetime,
                          error_flag);
    -- item
    proce_consume_by_type(rpt_date,
                          602,
                          'GM_TMP_ATTR_ITEM',
                          updatetime,
                          error_flag,
                          1,
                          1);
    -- equip
    proce_consume_by_type(rpt_date,
                          601,
                          'GM_TMP_ATTR_EQUIP',
                          updatetime,
                          error_flag,
                          1,
                          1);
    -- hero
    proce_consume_by_type(rpt_date,
                          603,
                          'GM_TMP_ATTR_HERO',
                          updatetime,
                          error_flag,
                          1,
                          1);
    -- honor
    proce_consume_by_type(rpt_date,
                          5,
                          'GM_TMP_ATTR_HONOR',
                          updatetime,
                          error_flag,
                          0,
                          1);
  
    delete_expires_data('gm_rpt_consume_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('gm_rpt_consume_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_consume_daily;

  procedure proce_purchase_power_daily(rpt_date Date) as
    cursor gm_tmp_power_cursor is
      select provider_id, server_id, player_id, count(1) purchase_amount
        from gm_tmp_attr_power
       where action_type = Z_PURCHASE_POWER_ACTION
         and record_time >= rpt_date
         and record_time < rpt_date + 1
       group by provider_id, server_id, player_id;
  
    cr         gm_tmp_power_cursor%ROWTYPE;
    error_flag number := 0;
    error_msg  varchar2(20000);
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_power_cursor;
    loop
      fetch gm_tmp_power_cursor
        into cr;
      exit when gm_tmp_power_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_purchase_power_daily ppd
        using dual
        on (ppd.provider_id = cr.provider_id and ppd.server_id = cr.server_id and ppd.player_id = cr.player_id and ppd.record_time = rpt_date)
        WHEN MATCHED THEN
          UPDATE
             SET ppd.purchase_amount = cr.purchase_amount,
                 ppd.update_time     = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ppd_id,
             provider_id,
             server_id,
             player_id,
             purchase_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.player_id,
             cr.purchase_amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' || 'player_id:' ||
                        cr.player_id || ',' || 'purchase_amount:' ||
                        cr.purchase_amount;
          log_result('proce_purchase_power_daily',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    delete_expires_data('gm_rpt_purchase_power_daily',
                        rpt_date,
                        updatetime);
  
    if error_flag = 0 then
      log_result('proce_purchase_power_daily',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_purchase_power_daily;

  procedure proce_zones_challenge_daily(rpt_date Date) as
    cursor gm_tmp_zones_cursor is
      select provider_id, server_id, sum(challenge) challenge, sum(mop) mop
        from (SELECT provider_id,
                     server_id,
                     case
                       when action_type = Z_CHALLENGE_ACTION then
                        count(1)
                       else
                        0
                     end challenge,
                     case
                       when action_type = Z_MOP_UP_ACTION then
                        sum(result)
                       else
                        0
                     end mop
                FROM gm_tmp_zones_action
               where (action_type = Z_CHALLENGE_ACTION or
                     action_type = Z_MOP_UP_ACTION)
                 and result > 0
                 and record_time >= rpt_date
                 and record_time < rpt_date + 1
               group by provider_id, server_id, action_type)
       group by provider_id, server_id;
  
    cr         gm_tmp_zones_cursor%ROWTYPE;
    error_flag number := 0;
    error_msg  varchar2(20000);
    updatetime timestamp := sysdate;
  begin
    open gm_tmp_zones_cursor;
    loop
      fetch gm_tmp_zones_cursor
        into cr;
      exit when gm_tmp_zones_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_zones_challenge_daily zcd
        using dual
        on (zcd.provider_id = cr.provider_id and zcd.server_id = cr.server_id and zcd.record_time = rpt_date)
        WHEN MATCHED THEN
          UPDATE
             SET zcd.victories_amount = cr.challenge,
                 zcd.mop_amount       = cr.mop,
                 zcd.update_time      = updatetime
        WHEN NOT MATCHED THEN
          insert
            (zcd_id,
             provider_id,
             server_id,
             victories_amount,
             mop_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             cr.challenge,
             cr.mop,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'victories_amount:' || cr.challenge || ',' ||
                        'mop_amount:' || cr.challenge;
          log_result('proce_zones_challenge_daily',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    delete_expires_data('gm_rpt_zones_challenge_daily',
                        rpt_date,
                        updatetime);
  
    if error_flag = 0 then
      log_result('proce_zones_challenge_daily',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_zones_challenge_daily;

  procedure proce_arena_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
    error_flag number := 0;
  begin
    proce_arena_with_gem(rpt_date, updatetime);
    proce_arena_victory(rpt_date, updatetime);
    proce_arena_fail(rpt_date, updatetime);
  
    delete_expires_data('gm_rpt_arena_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_arena_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_arena_daily;

  procedure proce_arena_with_gem(rpt_date Date, updatetime timestamp) as
    cursor gm_rpt_gem_change_cursor is
      select provider_id, server_id, player_id, count(1) purchase_amount
        from gm_rpt_gem_change
       where action_type = ARENA_CHALLENGE_ACTION
         and amount < 0
         and record_time >= rpt_date
         and record_time < rpt_date + 1
       group by provider_id, server_id, player_id;
    cr         gm_rpt_gem_change_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_rpt_gem_change_cursor;
    loop
      fetch gm_rpt_gem_change_cursor
        into cr;
      exit when gm_rpt_gem_change_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_arena_daily ag
        using dual
        on (ag.provider_id = cr.provider_id and ag.server_id = cr.server_id and ag.player_id = cr.player_id and ag.record_time = rpt_date and ag.arena_type = '1')
        WHEN MATCHED THEN
          UPDATE
             SET ag.amount      = cr.purchase_amount,
                 ag.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ag_id,
             provider_id,
             server_id,
             arena_type,
             player_id,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '1',
             cr.player_id,
             cr.purchase_amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'arena_type:''1'',' || 'player_id:' || cr.player_id || ',' ||
                        'amount:' || cr.purchase_amount;
          log_result('proce_arena_with_gem',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_arena_with_gem', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_arena_with_gem;

  procedure proce_arena_victory(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_arena_cursor is
      select provider_id, server_id, player_id, count(1) amount
        from gm_tmp_arena_action
       where action_type = '260009'
         and result > 0
         and record_time >= rpt_date
         and record_time < rpt_date + 1
       group by provider_id, server_id, player_id;
    cr         gm_tmp_arena_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_arena_cursor;
    loop
      fetch gm_tmp_arena_cursor
        into cr;
      exit when gm_tmp_arena_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_arena_daily ag
        using dual
        on (ag.provider_id = cr.provider_id and ag.server_id = cr.server_id and ag.player_id = cr.player_id and ag.record_time = rpt_date and ag.arena_type = '2')
        WHEN MATCHED THEN
          UPDATE SET ag.amount = cr.amount, ag.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ag_id,
             provider_id,
             server_id,
             arena_type,
             player_id,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '2',
             cr.player_id,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'arena_type:''2'',' || 'player_id:' || cr.player_id || ',' ||
                        'amount:' || cr.amount;
          log_result('proce_arena_victory',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_arena_victory', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_arena_victory;

  procedure proce_arena_fail(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_arena_cursor is
      select provider_id, server_id, player_id, count(1) amount
        from gm_tmp_arena_action
       where action_type = '260009'
         and result = 0
         and record_time >= rpt_date
         and record_time < rpt_date + 1
       group by provider_id, server_id, player_id;
    cr         gm_tmp_arena_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_arena_cursor;
    loop
      fetch gm_tmp_arena_cursor
        into cr;
      exit when gm_tmp_arena_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_arena_daily ag
        using dual
        on (ag.provider_id = cr.provider_id and ag.server_id = cr.server_id and ag.player_id = cr.player_id and ag.record_time = rpt_date and ag.arena_type = '3')
        WHEN MATCHED THEN
          UPDATE SET ag.amount = cr.amount, ag.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ag_id,
             provider_id,
             server_id,
             arena_type,
             player_id,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '3',
             cr.player_id,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'arena_type:''3'',' || 'player_id:' || cr.player_id || ',' ||
                        'amount:' || cr.amount;
          log_result('proce_arena_fail',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_arena_fail', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_arena_fail;

  procedure proce_zig_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
    error_flag number := 0;
  begin
    proce_zig_floor(rpt_date, updatetime);
    proce_zig_score(rpt_date, updatetime);
  
    delete_expires_data('gm_rpt_zig_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_zig_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_zig_daily;

  procedure proce_zig_floor(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_zig_cursor is
      select server_id, provider_id, zig_floor, count(1) amount
        from (select server_id,
                     provider_id,
                     player_id,
                     max(zig_floor) zig_floor
                from gm_tmp_daily
               where trunc(record_time) >= rpt_date
                 and trunc(record_time) < rpt_date + 1
               group by server_id, provider_id, player_id)
       group by server_id, provider_id, zig_floor;
    cr         gm_tmp_zig_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_zig_cursor;
    loop
      fetch gm_tmp_zig_cursor
        into cr;
      exit when gm_tmp_zig_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_zig_daily zig
        using dual
        on (zig.provider_id = cr.provider_id and zig.server_id = cr.server_id and zig.frequency = cr.zig_floor and zig.record_time = rpt_date and zig.zig_type = '1')
        WHEN MATCHED THEN
          UPDATE SET zig.amount = cr.amount, zig.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (zig_id,
             provider_id,
             server_id,
             zig_type,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '1',
             cr.zig_floor,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'zig_type:''1'',' || 'frequency:' || cr.zig_floor || ',' ||
                        'amount:' || cr.amount;
          log_result('proce_zig_floor',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_zig_floor', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_zig_floor;

  procedure proce_zig_score(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_zig_cursor is
      select server_id, provider_id, zig_score, count(1) amount
        from (select server_id,
                     provider_id,
                     player_id,
                     max(zig_score) zig_score
                from gm_tmp_daily
               where trunc(record_time) >= rpt_date
                 and trunc(record_time) < rpt_date + 1
               group by server_id, provider_id, player_id)
       group by server_id, provider_id, zig_score;
    cr         gm_tmp_zig_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_zig_cursor;
    loop
      fetch gm_tmp_zig_cursor
        into cr;
      exit when gm_tmp_zig_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_zig_daily zig
        using dual
        on (zig.provider_id = cr.provider_id and zig.server_id = cr.server_id and zig.frequency = cr.zig_score and zig.record_time = rpt_date and zig.zig_type = '2')
        WHEN MATCHED THEN
          UPDATE SET zig.amount = cr.amount, zig.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (zig_id,
             provider_id,
             server_id,
             zig_type,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '2',
             cr.zig_score,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'zig_type:''2'',' || 'frequency:' || cr.zig_score || ',' ||
                        'amount:' || cr.amount;
          log_result('proce_zig_score',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_zig_score', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_zig_score;

  procedure proce_equip_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
    error_flag number := 0;
  begin
    proce_equip_rank(rpt_date, updatetime);
    proce_equip_item_level(rpt_date, updatetime);
    proce_equip_upgrade_amount(rpt_date, updatetime);
  
    delete_expires_data('gm_rpt_equip_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_equip_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
    proce_equip_altar_daily(rpt_date, updatetime);
  
  end proce_equip_daily;

  procedure proce_equip_rank(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_daily_info_cursor is
      select provider_id, server_id, rank, amount fr, count(1) amount
        from (select d.provider_id,
                     d.server_id,
                     d.player_id,
                     info.rank,
                     sum(info.amount) amount
                from gm_tmp_daily_info info, gm_tmp_daily d
               where info.daily_id = d.id
                 and info.type = DAILY_EQUIP_DETAIL_TYPE
                 and trunc(d.record_time) = rpt_date
               group by d.provider_id, d.server_id, d.player_id, info.rank) r
       group by provider_id, server_id, rank, amount;
    cr         gm_tmp_daily_info_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_daily_info_cursor;
    loop
      fetch gm_tmp_daily_info_cursor
        into cr;
      exit when gm_tmp_daily_info_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_equip_daily eqp
        using dual
        on (eqp.provider_id = cr.provider_id and eqp.server_id = cr.server_id and eqp.rank = cr.rank and eqp.frequency = cr.fr and eqp.record_time = rpt_date and eqp.equip_type = '1')
        WHEN MATCHED THEN
          UPDATE SET eqp.amount = cr.amount, eqp.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (eqp_id,
             provider_id,
             server_id,
             equip_type,
             rank,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '1',
             cr.rank,
             cr.fr,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'equip_type:''1'',' || 'rank:' || cr.rank ||
                        'frequency:' || cr.fr || ',' || 'amount:' ||
                        cr.amount;
          log_result('proce_equip_rank',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_equip_rank', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_equip_rank;

  procedure proce_equip_item_level(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_daily_info_cursor is
      select provider_id, server_id, rank, item_level fr, count(1) amount
        from (select d.provider_id,
                     d.server_id,
                     d.player_id,
                     info.rank,
                     info.item_level
                from gm_tmp_daily_info info, gm_tmp_daily d
               where info.daily_id = d.id
                 and info.type = DAILY_EQUIP_DETAIL_TYPE
                 and trunc(d.record_time) = rpt_date
               group by d.provider_id,
                        d.server_id,
                        d.player_id,
                        info.rank,
                        info.item_level)
       group by provider_id, server_id, rank, item_level;
    cr         gm_tmp_daily_info_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_daily_info_cursor;
    loop
      fetch gm_tmp_daily_info_cursor
        into cr;
      exit when gm_tmp_daily_info_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_equip_daily eqp
        using dual
        on (eqp.provider_id = cr.provider_id and eqp.server_id = cr.server_id and eqp.frequency = cr.fr and eqp.record_time = rpt_date and eqp.equip_type = '2')
        WHEN MATCHED THEN
          UPDATE SET eqp.amount = cr.amount, eqp.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (eqp_id,
             provider_id,
             server_id,
             equip_type,
             rank,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '2',
             cr.rank,
             cr.fr,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'equip_type:''2'',' || 'rank:' || cr.rank ||
                        'frequency:' || cr.fr || ',' || 'amount:' ||
                        cr.amount;
          log_result('proce_equip_item_level',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_equip_item_level',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  
  end proce_equip_item_level;

  procedure proce_equip_upgrade_amount(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_equip_cursor is
      select provider_id, server_id, rank, update_num, count(1) amount
        from (select provider_id,
                     server_id,
                     player_id,
                     rank,
                     count(1) update_num
                from GM_TMP_ATTR_EQUIP info
               where action_type = EQUIP_UPGRADE_ACTION
                 and trunc(record_time) = rpt_date
               group by provider_id, server_id, player_id, rank)
       group by provider_id, server_id, rank, update_num;
    cr         gm_tmp_equip_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_equip_cursor;
    loop
      fetch gm_tmp_equip_cursor
        into cr;
      exit when gm_tmp_equip_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_equip_daily eqp
        using dual
        on (eqp.provider_id = cr.provider_id and eqp.server_id = cr.server_id and eqp.rank = cr.rank and eqp.frequency = cr.update_num and eqp.record_time = rpt_date and eqp.equip_type = '3')
        WHEN MATCHED THEN
          UPDATE SET eqp.amount = cr.amount, eqp.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (eqp_id,
             provider_id,
             server_id,
             equip_type,
             rank,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '3',
             cr.rank,
             cr.update_num,
             cr.amount,
             rpt_date,
             updatetime);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'equip_type:''3'',' || 'rank:' || cr.rank || ',' ||
                        'frequency:' || cr.update_num || ',' || 'amount:' ||
                        cr.amount;
          log_result('proce_equip_upgrade_amount',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_equip_upgrade_amount',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  
  end proce_equip_upgrade_amount;

  procedure proce_equip_altar_daily(rpt_date Date, updatetime timestamp) as
    error_flag number := 0;
  begin
    proce_equip_altar_frequency(rpt_date,
                                updatetime,
                                'gm_tmp_attr_honor',
                                '1');
    proce_equip_altar_frequency(rpt_date,
                                updatetime,
                                'gm_tmp_attr_gold',
                                '2');
    proce_equip_altar_frequency(rpt_date,
                                updatetime,
                                'gm_rpt_gem_change',
                                '3');
  
    delete_expires_data('gm_rpt_altar_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_equip_altar_daily',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_equip_altar_daily;

  procedure proce_equip_altar_frequency(rpt_date   Date,
                                        updatetime timestamp,
                                        table_name varchar2,
                                        altar_type varchar2) as
    query_sql1     varchar(1000) := 'select server_id, provider_id, player_id, count(1) amount from ' ||
                                    table_name ||
                                    ' where action_type = :action_type and trunc(record_time) = :rpt_date ' ||
                                    'group by server_id, provider_id, player_id';
    sid            number(20);
    prid           number(20);
    pid            number(20);
    am             number(20);
    v_cursorid     number;
    rows_processed integer;
    error_msg      varchar2(20000);
    error_flag     number := 0;
  begin
    v_cursorid := dbms_sql.open_cursor;
    dbms_sql.parse(v_cursorid, query_sql1, dbms_sql.native);
    dbms_sql.bind_variable(v_cursorid, ':rpt_date', rpt_date);
    dbms_sql.bind_variable(v_cursorid, ':action_type', EQUIP_ALTAR_ACTION);
    dbms_sql.define_column(v_cursorid, 1, sid);
    dbms_sql.define_column(v_cursorid, 2, prid);
    dbms_sql.define_column(v_cursorid, 3, pid);
    dbms_sql.define_column(v_cursorid, 4, am);
    rows_processed := dbms_sql.execute(v_cursorId);
    LOOP
      IF dbms_sql.fetch_rows(v_cursorid) > 0 THEN
        dbms_sql.column_value(v_cursorid, 1, sid);
        dbms_sql.column_value(v_cursorid, 2, prid);
        dbms_sql.column_value(v_cursorid, 3, pid);
        dbms_sql.column_value(v_cursorid, 4, am);
        begin
          -- insert or update 
          MERGE into gm_rpt_altar_daily alt
          using dual
          on (alt.provider_id = prid and alt.server_id = sid and alt.player_id = pid and alt.record_time = rpt_date and alt.alt_type = altar_type)
          WHEN MATCHED THEN
            UPDATE SET alt.amount = am, alt.update_time = updatetime
          WHEN NOT MATCHED THEN
            insert
              (alt_id,
               provider_id,
               server_id,
               alt_type,
               player_id,
               amount,
               record_time,
               update_time)
            values
              (REPORT_SEQUENCE.NEXTVAL,
               prid,
               sid,
               altar_type,
               pid,
               am,
               rpt_date,
               updatetime);
        EXCEPTION
          WHEN OTHERS THEN
            error_flag := 1;
            error_msg  := 'provider_id:' || prid || ',' || 'server_id:' || sid || ',' ||
                          'altar_type:' || altar_type || ',' ||
                          'player_id:' || pid || ',' || 'amount:' || am;
            log_result('proce_equip_altar_frequency',
                       rpt_date,
                       SQLCODE,
                       SQLERRM,
                       error_msg);
        end merge1;
      ELSE
        EXIT;
      END IF;
    END LOOP;
  
    dbms_sql.close_cursor(v_cursorid);
  
    if error_flag = 0 then
      log_result('proce_equip_altar_frequency',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_equip_altar_frequency;

  procedure proce_treasure_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
    error_flag number := 0;
  begin
    -- 掠夺次数
    proce_treasure_frequency(rpt_date,
                             updatetime,
                             '1',
                             TREASURE_PILLAGE_ACTION);
  
    proce_treasure_level(rpt_date, updatetime);
  
    proce_treasure_frequency(rpt_date,
                             updatetime,
                             '3',
                             TREASURE_DIG_ACTION);
    -- 刷新次数
    proce_treasure_frequency(rpt_date,
                             updatetime,
                             '4',
                             TREASURE_REFRESH_ACTION);
    -- 祝福次数                         
    proce_treasure_frequency(rpt_date,
                             updatetime,
                             '5',
                             TREASURE_DONATION_ACTION);
    -- 胜利点 和 祝福数
    proce_treasure_victor_bless(rpt_date, updatetime);
  
    proce_treasure_exchange(rpt_date, updatetime);
  
    delete_expires_data('gm_rpt_treasure_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_treasure_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_treasure_daily;

  procedure proce_treasure_frequency(rpt_date              Date,
                                     updatetime            timestamp,
                                     treasure_type         varchar2,
                                     frequency_action_type varchar2) as
    cursor gm_tmp_treasure_cursor is
      select server_id, provider_id, frequency, count(1) amount
        from (select server_id, provider_id, player_id, count(1) frequency
                from GM_TMP_TREASURE_ACTION
               where action_type = frequency_action_type
                 and trunc(record_time) = rpt_date
               group by server_id, provider_id, player_id)
       group by server_id, provider_id, frequency;
    cr         gm_tmp_treasure_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  
    merge_sql      varchar2(20000) := 'MERGE into gm_rpt_treasure_daily td using dual ' ||
                                      'on (td.provider_id = :provider_id and td.server_id = :server_id and td.frequency = :frequency ' ||
                                      'and td.record_time = :rpt_date and td.treasure_type = :treasure_type) WHEN MATCHED THEN ' ||
                                      'UPDATE SET td.amount = :amount, td.update_time = :updatetime WHEN NOT MATCHED THEN ' ||
                                      'insert (td_id, provider_id, server_id, treasure_type, frequency, amount, record_time, update_time) ' ||
                                      'values (REPORT_SEQUENCE.NEXTVAL, :provider_id, :server_id, :treasure_type, :frequency, :amount, :rpt_date, :updatetime)';
    v_cursorid     number;
    rows_processed integer;
  begin
    open gm_tmp_treasure_cursor;
    loop
      fetch gm_tmp_treasure_cursor
        into cr;
      exit when gm_tmp_treasure_cursor% notfound;
      begin
        v_cursorid := dbms_sql.open_cursor;
        dbms_sql.parse(v_cursorid, merge_sql, dbms_sql.native);
        dbms_sql.bind_variable(v_cursorid, ':rpt_date', rpt_date);
        dbms_sql.bind_variable(v_cursorid, ':updatetime', updatetime);
        dbms_sql.bind_variable(v_cursorid, ':treasure_type', treasure_type);
        dbms_sql.bind_variable(v_cursorid, ':provider_id', cr.provider_id);
        dbms_sql.bind_variable(v_cursorid, ':server_id', cr.server_id);
        dbms_sql.bind_variable(v_cursorid, ':frequency', cr.frequency);
        dbms_sql.bind_variable(v_cursorid, ':amount', cr.amount);
        rows_processed := dbms_sql.execute(v_cursorId);
        dbms_sql.close_cursor(v_cursorid);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'treasure_type:''' || treasure_type || ''',' ||
                        'frequency:' || cr.frequency || ',' || 'amount:' ||
                        cr.amount;
          log_result('proce_treasure_frequency',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_treasure_frequency',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  
  end proce_treasure_frequency;

  procedure proce_treasure_level(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_treasure_cursor is
      select server_id, provider_id, frequency, rank, count(1) amount
        from (select server_id,
                     provider_id,
                     player_id,
                     rank,
                     count(1) frequency
                from GM_TMP_TREASURE_ACTION
               where action_type = TREASURE_DIG_ACTION
                 and trunc(record_time) = rpt_date
               group by server_id, provider_id, rank, player_id)
       group by server_id, provider_id, rank, frequency;
    cr         gm_tmp_treasure_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_treasure_cursor;
    loop
      fetch gm_tmp_treasure_cursor
        into cr;
      exit when gm_tmp_treasure_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_treasure_daily td
        using dual
        on (td.provider_id = cr.provider_id and td.server_id = cr.server_id and td.rank = cr.rank and td.frequency = cr.frequency and td.record_time = rpt_date and td.treasure_type = '2')
        WHEN MATCHED THEN
          UPDATE SET td.amount = cr.amount, td.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (td_id,
             provider_id,
             server_id,
             treasure_type,
             rank,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '2',
             cr.rank,
             cr.frequency,
             cr.amount,
             rpt_date,
             updatetime);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' || 'rank:' ||
                        cr.rank || ',' || 'treasure_type:''2'',' ||
                        'frequency:' || cr.frequency || ',' || 'amount:' ||
                        cr.amount;
          log_result('proce_treasure_level',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_treasure_level', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  
  end proce_treasure_level;

  procedure proce_treasure_victor_bless(rpt_date   Date,
                                        updatetime timestamp) as
    cursor gm_tmp_treasure_cursor is
      select provider_id,
             server_id,
             sum(av) av,
             sum(hv) hv,
             sum(ab) ab,
             sum(hb) hb
        from (select provider_id,
                     server_id,
                     case
                       when alliance_victories > horde_victories then
                        1
                       else
                        0
                     end av,
                     case
                       when horde_victories > alliance_victories then
                        1
                       else
                        0
                     end hv,
                     case
                       when alliance_blessings > horde_blessings then
                        1
                       else
                        0
                     end ab,
                     case
                       when horde_blessings > alliance_blessings then
                        1
                       else
                        0
                     end hb
                from gm_tmp_server_status
               where trunc(record_time) = rpt_date)
       group by provider_id, server_id;
    cr         gm_tmp_treasure_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_treasure_cursor;
    loop
      fetch gm_tmp_treasure_cursor
        into cr;
      exit when gm_tmp_treasure_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_treasure_daily td
        using dual
        on (td.provider_id = cr.provider_id and td.server_id = cr.server_id and td.record_time = rpt_date and td.treasure_type = '6')
        WHEN MATCHED THEN
          UPDATE
             SET td.alliance_amount = cr.av,
                 td.horde_amount    = cr.hv,
                 td.update_time     = updatetime
        WHEN NOT MATCHED THEN
          insert
            (td_id,
             provider_id,
             server_id,
             treasure_type,
             alliance_amount,
             horde_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '6',
             cr.av,
             cr.hv,
             rpt_date,
             updatetime);
      
        MERGE into gm_rpt_treasure_daily td
        using dual
        on (td.provider_id = cr.provider_id and td.server_id = cr.server_id and td.record_time = rpt_date and td.treasure_type = '7')
        WHEN MATCHED THEN
          UPDATE
             SET td.alliance_amount = cr.av,
                 td.horde_amount    = cr.hv,
                 td.update_time     = updatetime
        WHEN NOT MATCHED THEN
          insert
            (td_id,
             provider_id,
             server_id,
             treasure_type,
             alliance_amount,
             horde_amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '7',
             cr.ab,
             cr.hb,
             rpt_date,
             updatetime);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'treasure_type:''6&7'',' || 'alliance_victories:' ||
                        cr.av || ',' || 'horde_victories:' || cr.hv || ',' ||
                        'alliance_blessings:' || cr.ab || ',' ||
                        'horde_blessings:' || cr.hb;
          log_result('proce_treasure_victor_bless',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_treasure_victor_bless',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_treasure_victor_bless;

  procedure proce_treasure_exchange(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_treasure_cursor is
      select provider_id, server_id, sid, attr1 stype, count(1) amount
        from (select t.provider_id, t.server_id, t.sid, c.attr1
                from gm_tmp_treasure_action t, sys_code c
               where action_type = TREASURE_EXCHANGE_ACTION
                 and trunc(record_time) = rpt_date
                 and sid = c.code_value(+)
                 and (c.code_type = 'G_EXCHANGE_TYPE' or c.code_type is null))
       group by provider_id, server_id, sid, attr1;
    cr         gm_tmp_treasure_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_treasure_cursor;
    loop
      fetch gm_tmp_treasure_cursor
        into cr;
      exit when gm_tmp_treasure_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_treasure_daily td
        using dual
        on (td.provider_id = cr.provider_id and td.server_id = cr.server_id and td.exchange_id = cr.sid and td.exchange_sub_type = cr.stype and td.record_time = rpt_date and td.treasure_type = '8')
        WHEN MATCHED THEN
          UPDATE SET td.amount = cr.amount, td.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (td_id,
             provider_id,
             server_id,
             treasure_type,
             exchange_id,
             exchange_sub_type,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '8',
             cr.sid,
             cr.stype,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'treasure_type:''8'',' || 'exchange_id:' || cr.sid || ',' ||
                        'exchange_sub_type:' || cr.stype || ',' ||
                        'amount:' || cr.amount;
          log_result('proce_treasure_exchange',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_treasure_exchange',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_treasure_exchange;

  procedure proce_hero_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
  begin
    -- 进阶
    proce_hero_frequency(rpt_date,
                         updatetime,
                         '1',
                         HERO_UPGRADE_RANK_ACTION);
    -- 修炼
    proce_hero_frequency(rpt_date, updatetime, '2', HERO_HONE_ACTION);
  
    -- 训练
    proce_hero_frequency(rpt_date, updatetime, '3', HERO_TRAINING_ACTION);
  
    delete_expires_data('gm_rpt_hero_daily', rpt_date, updatetime);
    log_result('proce_hero_daily', rpt_date, SQLCODE, SQLERRM, null);
  end proce_hero_daily;

  procedure proce_hero_frequency(rpt_date              Date,
                                 updatetime            timestamp,
                                 hero_type         varchar2,
                                 frequency_action_type varchar2) as
    cursor gm_tmp_hero_cursor is
      select server_id, provider_id, player_id, sid, count(1) frequency
        from GM_TMP_HERO_ACTION
       where action_type = frequency_action_type
         and trunc(record_time) = rpt_date
       group by server_id, provider_id, player_id, sid;
    cr         gm_tmp_hero_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_hero_cursor;
    loop
      fetch gm_tmp_hero_cursor
        into cr;
      exit when gm_tmp_hero_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_hero_daily hd
        using dual
        on (hd.provider_id = cr.provider_id and hd.server_id = cr.server_id and hd.player_id = cr.player_id and hd.sid = cr.sid and hd.record_time = rpt_date and hd.hero_action_type = hero_type)
        WHEN MATCHED THEN
          UPDATE
             SET hd.frequency = cr.frequency, hd.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (hd_id,
             provider_id,
             server_id,
             hero_action_type,
             player_id,
             sid,
             frequency,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             hero_type,
             cr.player_id,
             cr.sid,
             cr.frequency,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'hero_action_type:''' || hero_type || ''',' ||
                        'player_id:' || cr.player_id || ',' || 'sid:' ||
                        cr.sid || ',' || 'frequency:' || cr.frequency;
          log_result('proce_hero_frequency',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_hero_frequency', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_hero_frequency;

  procedure proce_activity_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
    error_flag number := 0;
  begin
    -- 吃面包
    proce_activity_frequency(rpt_date,
                             updatetime,
                             '1',
                             ACTIVITY_FOODS_ACTION);
    -- 领军饷
    proce_activity_frequency(rpt_date,
                             updatetime,
                             '2',
                             ACTIVITY_GOLD_PAY_ACTION);
  
    -- 当天参与领军饷                         
    proce_activity_gold_pay_daily(rpt_date, updatetime);
  
    -- 指定活动id参与次数                   
    proce_activity_rule_data(rpt_date, updatetime);
  
    delete_expires_data('gm_rpt_activity_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_activity_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_activity_daily;

  procedure proce_activity_frequency(rpt_date              Date,
                                     updatetime            timestamp,
                                     activity_type         varchar2,
                                     frequency_action_type varchar2) as
    cursor gm_tmp_activity_cursor is
    
      select server_id, provider_id, frequency, count(1) amount
        from (select server_id, provider_id, player_id, count(1) frequency
                from GM_TMP_ACTIVITY_ACTION
               where action_type = frequency_action_type
                 and trunc(record_time) = rpt_date
               group by server_id, provider_id, player_id)
       group by server_id, provider_id, frequency;
  
    cr         gm_tmp_activity_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_activity_cursor;
    loop
      fetch gm_tmp_activity_cursor
        into cr;
      exit when gm_tmp_activity_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_activity_daily ad
        using dual
        on (ad.provider_id = cr.provider_id and ad.server_id = cr.server_id and ad.frequency = cr.frequency and ad.record_time = rpt_date and ad.act_type = activity_type)
        WHEN MATCHED THEN
          UPDATE SET ad.amount = cr.amount, ad.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ad_id,
             provider_id,
             server_id,
             act_type,
             frequency,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             activity_type,
             cr.frequency,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'act_type:''' || activity_type || ''',' ||
                        'frequency:' || cr.frequency || ',' || 'amount:' ||
                        cr.amount;
          log_result('proce_activity_frequency',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_activity_frequency',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_activity_frequency;

  procedure proce_activity_gold_pay_daily(rpt_date   Date,
                                          updatetime timestamp) as
    cursor gm_tmp_activity_cursor is
      select server_id, provider_id, player_id, count(1) frequency
        from gm_tmp_activity_action
       where action_type = ACTIVITY_GOLD_PAY_ACTION
         and trunc(record_time) = rpt_date
       group by server_id, provider_id, player_id;
    cr         gm_tmp_activity_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_activity_cursor;
    loop
      fetch gm_tmp_activity_cursor
        into cr;
      exit when gm_tmp_activity_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_activity_daily ad
        using dual
        on (ad.provider_id = cr.provider_id and ad.server_id = cr.server_id and ad.player_id = cr.player_id and ad.record_time = rpt_date and ad.act_type = '3')
        WHEN MATCHED THEN
          UPDATE
             SET ad.frequency = cr.frequency, ad.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ad_id,
             provider_id,
             server_id,
             act_type,
             player_id,
             frequency,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '3',
             cr.player_id,
             cr.frequency,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'act_type:''3'',' || 'player_id:''3'',' ||
                        'frequency:' || cr.frequency;
          log_result('proce_activity_gold_pay_daily',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_activity_gold_pay_daily',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_activity_gold_pay_daily;

  procedure proce_activity_rule_data(rpt_date Date, updatetime timestamp) as
    cursor gm_tmp_activity_cursor is
      select server_id, provider_id, sid, count(1) amount
        from GM_TMP_ACTIVITY_ACTION
       where action_type = ACTIVITY_RULE_DATA_ACTION
         and trunc(record_time) = rpt_date
       group by server_id, provider_id, sid;
    cr         gm_tmp_activity_cursor%ROWTYPE;
    error_msg  varchar2(20000);
    error_flag number := 0;
  begin
    open gm_tmp_activity_cursor;
    loop
      fetch gm_tmp_activity_cursor
        into cr;
      exit when gm_tmp_activity_cursor% notfound;
      begin
      
        -- insert or update 
        MERGE into gm_rpt_activity_daily ad
        using dual
        on (ad.provider_id = cr.provider_id and ad.server_id = cr.server_id and ad.sid = cr. sid and ad.record_time = rpt_date and ad.act_type = '4')
        WHEN MATCHED THEN
          UPDATE SET ad.amount = cr.amount, ad.update_time = updatetime
        WHEN NOT MATCHED THEN
          insert
            (ad_id,
             provider_id,
             server_id,
             act_type,
             sid,
             amount,
             record_time,
             update_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             cr.provider_id,
             cr.server_id,
             '4',
             cr.sid,
             cr.amount,
             rpt_date,
             updatetime);
      
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 1;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'act_type:''4'',' || 'amount:' || cr.amount;
          log_result('proce_activity_rule_data',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
  
    if error_flag = 0 then
      log_result('proce_activity_rule_data',
                 rpt_date,
                 SQLCODE,
                 SQLERRM,
                 null);
    end if;
  end proce_activity_rule_data;

  procedure proce_other_daily(rpt_date Date) as
    updatetime timestamp := sysdate;
    error_flag number := 0;
  begin
    -- 商店购买次数
    proce_other_frequency(rpt_date, updatetime, '1');
    -- 排名领奖次数
    proce_other_frequency(rpt_date, updatetime, '2');
    -- 背包格子数                    
    proce_other_frequency(rpt_date, updatetime, '3');
  
    delete_expires_data('gm_rpt_other_daily', rpt_date, updatetime);
  
    if error_flag = 0 then
      log_result('proce_other_daily', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_other_daily;

  procedure proce_other_frequency(rpt_date   Date,
                                  updatetime timestamp,
                                  other_type varchar2) as
    query_sql1     varchar(1000);
    sid            number(20);
    prid           number(20);
    o_id            number(20);
    am             number(20);
    pa             number(20);
    v_cursorid     number;
    rows_processed integer;
    error_msg      varchar2(20000);
    error_flag     number := 0;
  begin
    query_sql1 := 'select server_id , provider_id, count(1) amount';
    if other_type = '1' then
      query_sql1 := query_sql1 ||
                    ',oid, null from GM_TMP_ITEM_ACTION where action_type = ''' ||
                    OTHER_GOODS_BUY_ACTION || ''' ';
    elsif other_type = '2' then
      query_sql1 := query_sql1 ||
                    ',rank, null from GM_TMP_RANKING_ACTION where action_type = ''' ||
                    RANKLIST_REWARD_ACTION || ''' ';
    elsif other_type = '3' then
      query_sql1 := query_sql1 ||
                    ',null, package_amount from gm_tmp_daily where 1 = 1 ';
    end if;
    query_sql1 := query_sql1 ||
                  'and trunc(record_time) = :rpt_date group by server_id , provider_id';
    if other_type = '1' then
      query_sql1 := query_sql1 || ', oid';
    elsif other_type = '2' then
      query_sql1 := query_sql1 || ', rank';
    elsif other_type = '3' then
      query_sql1 := query_sql1 || ', package_amount';
    end if;
    v_cursorid := dbms_sql.open_cursor;
    dbms_sql.parse(v_cursorid, query_sql1, dbms_sql.native);
    dbms_sql.bind_variable(v_cursorid, ':rpt_date', rpt_date);
    dbms_sql.define_column(v_cursorid, 1, sid);
    dbms_sql.define_column(v_cursorid, 2, prid);
    dbms_sql.define_column(v_cursorid, 3, am);
    dbms_sql.define_column(v_cursorid, 4, o_id);
    dbms_sql.define_column(v_cursorid, 5, pa);
    rows_processed := dbms_sql.execute(v_cursorId);
    LOOP
      IF dbms_sql.fetch_rows(v_cursorid) > 0 THEN
        dbms_sql.column_value(v_cursorid, 1, sid);
        dbms_sql.column_value(v_cursorid, 2, prid);
        dbms_sql.column_value(v_cursorid, 3, am);
        dbms_sql.column_value(v_cursorid, 4, o_id);
        dbms_sql.column_value(v_cursorid, 5, pa);
        begin
          -- insert or update 
          MERGE into gm_rpt_other_daily ot
          using dual
          on (ot.provider_id = prid and ot.server_id = sid and ot.frequency = pa and ot.record_time = rpt_date and ot.ot_type = other_type and ot.oid = oid)
          WHEN MATCHED THEN
            UPDATE SET ot.amount = am, ot.update_time = updatetime
          WHEN NOT MATCHED THEN
            insert
              (ot_id,
               provider_id,
               server_id,
               ot_type,
               oid,
               frequency,
               amount,
               record_time,
               update_time)
            values
              (REPORT_SEQUENCE.NEXTVAL,
               prid,
               sid,
               other_type,
               o_id,
               pa,
               am,
               rpt_date,
               updatetime);
        EXCEPTION
          WHEN OTHERS THEN
            error_flag := 1;
            error_msg  := 'provider_id:' || prid || ',' || 'server_id:' || sid || ',' ||
                          'other_type:' || other_type || ',' ||
                          'oid:' || o_id || ',' ||
                          'frequency:' || pa || ',' || 'amount:' || am;
            log_result('proce_other_frequency',
                       rpt_date,
                       SQLCODE,
                       SQLERRM,
                       error_msg);
        end merge1;
      ELSE
        EXIT;
      END IF;
    END LOOP;
  
    dbms_sql.close_cursor(v_cursorid);
  
    if error_flag = 0 then
      log_result('proce_other_frequency', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_other_frequency;

end;
/
