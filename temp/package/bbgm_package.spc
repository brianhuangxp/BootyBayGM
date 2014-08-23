create or replace package bbgm_package is

  procedure daily_main_proce;

  procedure main_proce(exec_date Date);

  procedure update_error_login_data(rpt_date Date);

  procedure proce_online_daily(rpt_date Date);

  procedure proce_save_data(rpt_date Date);

  procedure proce_save_data(rpt_date   Date,
                            save_date  number,
                            updatetime timestamp,
                            error_flag in out number);

  procedure proce_user_translate(rpt_date Date);

  procedure proce_online(rpt_date Date);

  procedure proce_login_daily(rpt_date Date);

  procedure proce_active_user(rpt_date Date);

  procedure proce_consume_by_type(rpt_date    Date,
                                  detail_type number,
                                  table_name  varchar2,
                                  updatetime  timestamp,
                                  error_flag  in out number,
                                  has_oid     number default 0,
                                  has_rank    number default 0);

  procedure proce_consume_daily(rpt_date Date);

  procedure proce_purchase_power_daily(rpt_date Date);

  procedure proce_zones_challenge_daily(rpt_date Date);

  procedure proce_arena_daily(rpt_date Date);

  procedure proce_arena_with_gem(rpt_date Date, updatetime timestamp);

  procedure proce_arena_victory(rpt_date Date, updatetime timestamp);

  procedure proce_arena_fail(rpt_date Date, updatetime timestamp);

  procedure proce_zig_daily(rpt_date Date);

  procedure proce_zig_floor(rpt_date Date, updatetime timestamp);

  procedure proce_zig_score(rpt_date Date, updatetime timestamp);

  procedure proce_equip_daily(rpt_date Date);

  procedure proce_equip_rank(rpt_date Date, updatetime timestamp);

  procedure proce_equip_item_level(rpt_date Date, updatetime timestamp);

  procedure proce_equip_upgrade_amount(rpt_date Date, updatetime timestamp);

  procedure proce_equip_altar_daily(rpt_date Date, updatetime timestamp);

  procedure proce_equip_altar_frequency(rpt_date   Date,
                                        updatetime timestamp,
                                        table_name varchar2,
                                        altar_type varchar2);

  procedure proce_treasure_daily(rpt_date Date);

  procedure proce_treasure_frequency(rpt_date              Date,
                                     updatetime            timestamp,
                                     treasure_type         varchar2,
                                     frequency_action_type varchar2);

  procedure proce_treasure_level(rpt_date Date, updatetime timestamp);

  procedure proce_treasure_victor_bless(rpt_date   Date,
                                        updatetime timestamp);

  procedure proce_treasure_exchange(rpt_date Date, updatetime timestamp);

  procedure proce_hero_daily(rpt_date Date);
  
  procedure proce_hero_frequency(rpt_date              Date,
                                     updatetime            timestamp,
                                     hero_type           varchar2,
                                     frequency_action_type varchar2);

  procedure proce_activity_daily(rpt_date Date);

  procedure proce_activity_frequency(rpt_date              Date,
                                     updatetime            timestamp,
                                     activity_type           varchar2,
                                     frequency_action_type varchar2);

  procedure proce_activity_gold_pay_daily(rpt_date   Date,
                                          updatetime timestamp);

  procedure proce_activity_rule_data(rpt_date Date, updatetime timestamp);

  procedure proce_other_daily(rpt_date Date);

  procedure proce_other_frequency(rpt_date   Date,
                                  updatetime timestamp,
                                  other_type varchar2);
  procedure log_result(proc_name varchar2,
                       rpt_date  Date,
                       sql_code  varchar2,
                       sql_errm  varchar2,
                       error_msg varchar2);

  procedure delete_expires_data(table_name varchar2,
                                exec_date  Date,
                                updatetime timestamp);

end;
/
