PL/SQL Developer Test script 3.0
26

declare

begin
  dbms_scheduler.drop_job(job_name => 'bbgm_job_daily');
  dbms_scheduler.drop_schedule(schedule_name =>'bbgm_SCHEDULE_daily');
  
  dbms_scheduler.drop_program(program_name => 'bbgm_program_daily');

  dbms_scheduler.create_program(program_name   => 'bbgm_program_daily',
                                program_type   => 'stored_procedure', 
                                program_action => 'bbgm_package.daily_main_proce',
                                enabled        => false
                                );
  dbms_scheduler.create_schedule(schedule_name   => 'bbgm_SCHEDULE_daily',
                                 repeat_interval => 'FREQ=DAILY;INTERVAL=3',
                                 comments        => 'every daily');

  dbms_scheduler.create_job(job_name      => 'bbgm_job_daily',
                            program_name  => 'bbgm_program_daily',
                            schedule_name => 'bbgm_SCHEDULE_daily',
                            enabled       => false);
                            


end;
0
0
