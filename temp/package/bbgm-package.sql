create or replace package bbgm_package is

  function get_current_date(exec_date Date) return Date;

  procedure main_proce(exec_date Date);

  procedure proce_user_translate(rpt_date Date);

  procedure log_result(proc_name varchar2,
                       rpt_date  Date,
                       sql_code  varchar2,
                       sql_errm  varchar2,
                       error_msg varchar2);

end;






create or replace package body bbgm_package is

  procedure main_proce(exec_date Date) as
    rpt_date Date;
  begin
    rpt_date := get_current_date(exec_date);
    proce_user_translate(rpt_date);
    commit;
  end main_proce;

  function get_current_date(exec_date Date) return Date is
  begin
    return round(exec_date - 0.5);
  end;

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

  procedure proce_user_translate(rpt_date Date) as
    cursor gm_tmp_role_cursor is
      select provider_id, server_id, operat_type, count(1) ct
        from gm_tmp_role r
       where r.record_time >= rpt_date
         and r.record_time < rpt_date + 1
       group by provider_id, server_id, operat_type;
    cr         gm_tmp_role_cursor%ROWTYPE;
    error_flag number;
    error_msg  varchar2(20000);
  begin
    open gm_tmp_role_cursor;
    loop
      fetch gm_tmp_role_cursor
        into cr;
      exit when gm_tmp_role_cursor% notfound;
      error_flag := 1;
      begin
        -- insert or update
        MERGE into gm_rpt_user_translate ut
        using (select cr.provider_id pid,
                      cr.server_id   sid,
                      cr.operat_type ot,
                      cr.ct          ct
                 from dual) tt
        on (ut.provider_id = tt.pid and ut.server_id = tt.sid and ut.operat_type = tt.ot and ut.record_time = rpt_date)
        WHEN MATCHED THEN
          UPDATE SET ut.quantity = tt.ct
        WHEN NOT MATCHED THEN
          insert
            (translate_id,
             provider_id,
             server_id,
             operat_type,
             quantity,
             record_time)
          values
            (REPORT_SEQUENCE.NEXTVAL,
             tt.pid,
             tt.sid,
             tt.ot,
             tt.ct,
             rpt_date);
      EXCEPTION
        WHEN OTHERS THEN
          error_flag := 0;
          error_msg  := 'provider_id:' || cr.provider_id || ',' ||
                        'server_id:' || cr.server_id || ',' ||
                        'operat_type:' || cr.operat_type || ',' ||
                        'quantity:' || cr.ct;
          log_result('proce_user_translate',
                     rpt_date,
                     SQLCODE,
                     SQLERRM,
                     error_msg);
      end merge1;
    end loop;
    if error_flag = 1 then
      log_result('proce_user_translate', rpt_date, SQLCODE, SQLERRM, null);
    end if;
  end proce_user_translate;

end;
