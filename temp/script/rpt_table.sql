create table gm_proc_result(  -- ���д洢���̷���
     id number(20),
     proc_name varchar2(200),
     rpt_Date date,
     SQL_CODE    VARCHAR2(20),
     SQL_ERRM    VARCHAR2(2000),
     ERROR_MSG   CLOB,
     UPDATE_TIME TIMESTAMP(6) default sysdate
);


alter table gm_proc_result
  add primary key (id);  

create table gm_rpt_user_translate(  -- �û�ת����
       translate_id number(20),
       provider_id number(10),
       server_id number(10),
       operation_type char(1), -- 1: regist, 2 create role, 3 import...
       amount number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);

alter table gm_rpt_user_translate
  add primary key (translate_id);
 
 
  create table gm_rpt_save_data( -- ��������
       data_id number(20),
       provider_id number(10),
       server_id number(10),
       save_date number(10), -- 1 - 30
       create_amount number(20),
       save_amount number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);

    alter table gm_rpt_save_data
      add primary key (data_id);
  
---- new  
create table gm_rpt_online_hourly(  -- Сʱ���߷�ֵ
       oph_id number(20) not null, -- online perhour id
       server_id number(10),
       provider_id number(10),
       hour_online number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_online_hourly
  add primary key (oph_id);


create table gm_rpt_login_daily( -- �����߷�ֵ
       ldl_id number(20) not null, -- login dayly id
       provider_id number(10),
       server_id number(10),
       login_freq number(20),
       player_amount number(20), -- todo remove
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_login_daily
  add primary key (ldl_id);



create table gm_rpt_active_user( -- ��Ծ�û���
       act_id number(20) not null, -- active user id
       provider_id number(10),
       server_id number(10),
       active_amount number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_active_user
  add primary key (act_id);

create table gm_rpt_online_daily( -- ���ÿ�����߱�
       odl_id number(20) not null, -- online dayly id
       provider_id number(10),
       server_id number(10),
       player_id number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_online_daily
  add primary key (odl_id);
  
  
create table gm_rpt_consume_daily( -- ÿ����Դ����ͳ�Ʊ�
  cd_id number(20) not null,
  provider_id number(10),
  server_id number(10),
  detail_type number(10), -- 1: ��ң�2����ʯ��602�� ���ߣ� 601��װ����603��Ӣ�ۣ�5������
  action_type number(10),
  earning number(20), -- ����
  expense number(20), --֧��
  rank number(10),
  oid number(20),
  record_time timestamp,
  update_time timestamp default sysdate
);

 alter table gm_rpt_consume_daily
  add primary key (cd_id);
  
create table gm_rpt_purchase_power_daily(  -- ÿ�������������ͳ�Ʊ�
ppd_id number(20) not null,
provider_id number(10),
server_id number(10),
player_id number(20),
purchase_amount number(10),
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_purchase_power_daily
  add primary key (ppd_id);
  
create table gm_rpt_zones_challenge_daily(  -- ÿ�츱����ս��
zcd_id number(20) not null,
provider_id number(10),
server_id number(10),
victories_amount number(10), -- �ɹ���ս�ܴ���
mop_amount number(10), -- ɨ���ܴ���
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_zones_challenge_daily
  add primary key (zcd_id);
  

create table gm_rpt_arena_daily(  -- ÿ�쾺����ͳ�Ʊ�
ag_id number(20) not null,
provider_id number(10),
server_id number(10),
arena_type char(1), -- 1������������ͳ�ƣ�2��������ʤ��ͳ�ƣ�3��������ʧ��ͳ��;4����������ʤͳ�ƣ�
player_id number(20),
amount number(10),
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_arena_daily
  add primary key (ag_id);
  
create table gm_rpt_zig_daily(  -- ÿ��ͨ����ͳ�Ʊ�
zig_id number(20) not null,
provider_id number(10),
server_id number(10),
zig_type char(1), -- 1����ս�ܲ�����2����ս������
frequency number(20), -- ����������
amount number(10), -- �����
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_zig_daily
  add primary key (zig_id);
  
create table gm_rpt_equip_daily(  -- ÿ��װ��ͳ�Ʊ�
eqp_id number(20) not null,
provider_id number(10),
server_id number(10),
equip_type char(1), -- 1��װ��Ʒ�ʣ�2��ǿ�������� 3������ǿ������;4:��Ҽ�̳��5��������̳��6����ʯ��̳
rank number(10),
frequency number(20), -- װ��Ʒ�ʼ�����ǿ��������������ǿ������
amount number(10), -- ������������̳��
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_equip_daily
  add primary key (eqp_id);
  
create table gm_rpt_treasure_daily(  -- ÿ�챦��ͳ�Ʊ�
td_id number(20) not null,
provider_id number(10),
server_id number(10),
treasure_type char(1), -- 1���Ӷ����; 2:���ؼ���3���ڱ�������4��ˢ�´�����5��ף��ʱ�䣻6����Ӫʤ��ʱ�䣻7��ף��ʱ�䣻 8���һ�
rank number(10), -- Ʒ��
frequency number(20), -- ����
amount number(10), -- ����������ظ���
alliance_amount number(10), -- ����ʱ�䣨ʤ���㣬ף����
horde_amount number(10), -- ����ʱ�䣨ʤ���㣬ף����
exchange_id number(10), -- �һ�id
exchange_sub_type number(10), -- 1:���; 2:��ʯ;3:����;4:����;5:����;601:װ��;602:����;603:Ӣ��
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_treasure_daily
  add primary key (td_id);
  
  
  

create table gm_rpt_activity_daily(  -- ÿ��ͳ�Ʊ�
ad_id number(20) not null,
provider_id number(10),
server_id number(10),
act_type char(1), -- 1����������2��ͳ�������������3��ͳ�Ƶ����������ң�4��ָ�������ͳ��
player_id number(20),
sid number(20),
frequency number(20), -- �������������������
amount number(10), -- �����
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_activity_daily
  add primary key (ad_id);
  
create table gm_rpt_altar_daily(  -- ÿ���̳ͳ�Ʊ�
alt_id number(20) not null,
provider_id number(10),
server_id number(10),
alt_type char(1), -- 1�������� 2�� ��ң� 3����ʯ
player_id number(20),
amount number(10), -- �����
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_altar_daily
  add primary key (alt_id);
  
create table gm_rpt_hero_daily(  -- ÿ��Ӣ��ͳ�Ʊ�
hd_id number(20) not null,
provider_id number(10),
server_id number(10),
player_id number(20), -- ���id
sid number(20), -- Ӣ��ʵ��id
hero_action_type char(1), -- 1�����ף�2������ 3��ѵ��
frequency number(20), -- ������
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_hero_daily
  add primary key (hd_id);
  
  
create table gm_rpt_other_daily(  -- ÿ��Ӣ��ͳ�Ʊ�
ot_id number(20) not null,
provider_id number(10),
server_id number(10),
ot_type char(1), -- 1���̵깺�����; 2: �����콱����; 3: ����������
oid number(20), -- ��Ʒoid���������ͣ�0 ������ 1 ͨ���� 2 ����
frequency number(20), -- ������������
amount number(10), -- �����
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_other_daily
  add primary key (ot_id);