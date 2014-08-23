dbms_scheduler.drop_job(job_name => 'bbgm_daily_job');

dbms_scheduler.create_job(job_name   => 'bbgm_daily_job',
                     job_type        => 'STORED_PROCEDURE',
                     job_action      => 'bbgm_package.daily_main_proce',
                     start_date      => '',
                     repeat_interval => 'FREQ=DAILY; BYHOUR=3; BYMINUTE=0',
                     enabled         => TRUE,
                     comments        => 'bbgm daily job');