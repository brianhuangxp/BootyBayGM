create table sys_code_type
(
  code_type_id           number(10) not null,
  code_type varchar2(32),
  code_label  varchar2(32),
  disable char(1) default '0',
  description varchar2(255)
);

alter table sys_code_type
  add primary key (code_type_id);


create table sys_code
(
  code_id  number(10) not null,
  code_type varchar2(32),
  parent_code_id  number(10),
  code_value  varchar2(32),
  code_label  varchar2(32),
  attr1 varchar2(32),
  disable char(1) default '0',
  display char(1) default '1',
  description varchar2(255)
);

alter table sys_code
add primary key (code_id);

create table sys_gm_role
(
  role_id   number(10) not null,
  role_name varchar2(32),
  role_type  char(1),
  provider_id  number(10),
  disable char(1) default '0',
  description varchar2(255)
);

alter table sys_gm_role
  add primary key (role_id);

create table sys_gm_route
(
  route_id    number(10) not null,
  route_path  varchar2(255),
  module_path  varchar2(255),
  module_name varchar2(200),
  load_css      CHAR(1) default '0',
  disable char(1) default '0',
  description varchar2(255)
);

alter table sys_gm_route
  add primary key (route_id);


create table sys_gm_menu
(
  menu_id    varchar2(8) not null,
  route_id number(10),
  parent_ID  number(10),
  menu_name  varchar2(200),
  menu_url   varchar2(255),
  disable      CHAR(1) default '0',
  description varchar2(255)
);

alter table sys_gm_menu
  add primary key (menu_id);
  
  
create table sys_gm_menu_re_role  
(
  menu_role_id  number(10) not null,
  menu_id    varchar2(8) not null,
  role_id    number(10) not null
);
  
alter table sys_gm_menu_re_role
  add primary key (menu_role_id);
  
  
create table sys_gm_job  
(
  job_id  number(10) not null,
  job_grade    VARCHAR2(32) not null,
  job_name    varchar2(200) not null
);
  
alter table sys_gm_job
  add primary key (job_id);
  
  
create table sys_gm_user  
(
  user_id  number(20) not null,
  user_name    VARCHAR2(32) not null,
  nick_name    VARCHAR2(200) not null,
  user_pwd    varchar2(32) not null,
  disable      CHAR(1) default '0',
  job_id      number(10)
);
  
alter table sys_gm_user
  add primary key (user_id);  
  
  
  create table sys_gm_user_re_role  
(
  user_role_id  number(10) not null,
  user_id    number(20) not null,
  role_id    number(10) not null
);
  
alter table sys_gm_user_re_role
  add primary key (user_role_id);
  

  create table sys_gm_provider  
(
  provider_id  number(10) not null,
  provider_name    VARCHAR2(200) not null,
  disable      CHAR(1) default '0',
  description varchar2(255)
);
  
alter table sys_gm_provider
  add primary key (provider_id);  

  create table sys_gm_server  
(
  server_id  number(10) not null,
  server_name    VARCHAR2(200) not null,
  disable      CHAR(1) default '0',
  start_server_date timestamp,
  connect_site varchar(500) not null,
  description varchar2(255)
);
  
alter table sys_gm_server
  add primary key (server_id);  



create table sys_gm_provider_re_server(
provider_server_id number(10) not null,
server_id  number(10) not null,
provider_id  number(10) not null
);

alter table sys_gm_provider_re_server
  add primary key (provider_server_id); 
  
alter table sys_gm_provider_re_server 
  add constraint FK_PROVIDER_RE_SERVER foreign key (server_id)  
  	references sys_gm_server (server_id); 
      
alter table sys_gm_provider_re_server 
   add constraint FK_SERVER_RE_PROVIDER foreign key (provider_id)  
      references sys_gm_provider (provider_id); 
      
      





---- audit 

create table gm_audit_player_intervene(
  pi_id number(20) not null, 
  server_id number(10),
  provider_id number(10),
  player_id number(20),
  player_name varchar2(50),
  intervene_type char(1), -- 1: 封号； 2： 解封
  reason varchar2(2000),
  opt_user_id number(20),
  opt_user_name varchar2(50),
  auto_dispel_Date timestamp,
  disable CHAR(1) default '0', -- 0: 使用； 1：停用
  UPDATE_TIME timestamp default sysdate
);


alter table gm_audit_player_intervene
  add primary key (pi_id);
  
  
create table gm_audit_apply(
  aa_id number(20) not null, 
  server_id number(10),
  provider_id number(10),
  opt_type varchar(2), -- 1: 奖励发放
  opt_user_id number(20),
  opt_user_name varchar2(50),
  opt_time timestamp,
  opt_status char(1), -- 1: 发起申请，2：审批通过；3：审批拒绝
  approve_user_id number(20),
  approve_user_name varchar2(50),
  approve_time timestamp,
  json_data CLOB,
  send_result char(1), -- 0: 发送失败； 1：发送成功
  disable CHAR(1) default '0', -- 0: 使用； 1：停用
  UPDATE_TIME timestamp default sysdate
);


alter table gm_audit_apply
  add primary key (aa_id);