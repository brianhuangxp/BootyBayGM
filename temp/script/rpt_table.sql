create table gm_proc_result(  -- 调研存储过程方法
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

create table gm_rpt_user_translate(  -- 用户转化率
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
 
 
  create table gm_rpt_save_data( -- 留存数据
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
create table gm_rpt_online_hourly(  -- 小时在线峰值
       oph_id number(20) not null, -- online perhour id
       server_id number(10),
       provider_id number(10),
       hour_online number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_online_hourly
  add primary key (oph_id);


create table gm_rpt_login_daily( -- 天在线峰值
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



create table gm_rpt_active_user( -- 活跃用户数
       act_id number(20) not null, -- active user id
       provider_id number(10),
       server_id number(10),
       active_amount number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_active_user
  add primary key (act_id);

create table gm_rpt_online_daily( -- 玩家每天在线表
       odl_id number(20) not null, -- online dayly id
       provider_id number(10),
       server_id number(10),
       player_id number(20),
       record_time timestamp,
       update_time timestamp default sysdate
);
       
alter table gm_rpt_online_daily
  add primary key (odl_id);
  
  
create table gm_rpt_consume_daily( -- 每天资源消耗统计表
  cd_id number(20) not null,
  provider_id number(10),
  server_id number(10),
  detail_type number(10), -- 1: 金币；2：钻石；602： 道具； 601：装备；603：英雄；5：声望
  action_type number(10),
  earning number(20), -- 收入
  expense number(20), --支出
  rank number(10),
  oid number(20),
  record_time timestamp,
  update_time timestamp default sysdate
);

 alter table gm_rpt_consume_daily
  add primary key (cd_id);
  
create table gm_rpt_purchase_power_daily(  -- 每天玩家体力购买统计表
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
  
create table gm_rpt_zones_challenge_daily(  -- 每天副本挑战表
zcd_id number(20) not null,
provider_id number(10),
server_id number(10),
victories_amount number(10), -- 成功挑战总次数
mop_amount number(10), -- 扫荡总次数
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_zones_challenge_daily
  add primary key (zcd_id);
  

create table gm_rpt_arena_daily(  -- 每天竞技场统计表
ag_id number(20) not null,
provider_id number(10),
server_id number(10),
arena_type char(1), -- 1：竞技场购买统计；2：竞技场胜利统计；3：竞技场失败统计;4：竞技场连胜统计；
player_id number(20),
amount number(10),
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_arena_daily
  add primary key (ag_id);
  
create table gm_rpt_zig_daily(  -- 每天通灵塔统计表
zig_id number(20) not null,
provider_id number(10),
server_id number(10),
zig_type char(1), -- 1：挑战总层数；2：挑战总星数
frequency number(20), -- 层数或星数
amount number(10), -- 玩家数
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_zig_daily
  add primary key (zig_id);
  
create table gm_rpt_equip_daily(  -- 每天装备统计表
eqp_id number(20) not null,
provider_id number(10),
server_id number(10),
equip_type char(1), -- 1：装备品质；2：强化级别数 3：当日强化次数;4:金币祭坛；5：声望祭坛；6：钻石祭坛
rank number(10),
frequency number(20), -- 装备品质件数，强化级别数，当日强化次数
amount number(10), -- 玩家数，参与祭坛数
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_equip_daily
  add primary key (eqp_id);
  
create table gm_rpt_treasure_daily(  -- 每天宝藏统计表
td_id number(20) not null,
provider_id number(10),
server_id number(10),
treasure_type char(1), -- 1：掠夺次数; 2:宝藏级别；3：挖宝次数；4：刷新次数；5：祝福时间；6：阵营胜利时间；7：祝福时间； 8：兑换
rank number(10), -- 品质
frequency number(20), -- 次数
amount number(10), -- 玩家数，宝藏个数
alliance_amount number(10), -- 联盟时间（胜利点，祝福）
horde_amount number(10), -- 部落时间（胜利点，祝福）
exchange_id number(10), -- 兑换id
exchange_sub_type number(10), -- 1:金币; 2:钻石;3:体力;4:经验;5:声望;601:装备;602:道具;603:英雄
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_treasure_daily
  add primary key (td_id);
  
  
  

create table gm_rpt_activity_daily(  -- 每天活动统计表
ad_id number(20) not null,
provider_id number(10),
server_id number(10),
act_type char(1), -- 1：吃面包活动；2：统计领军饷总数；3：统计当天领军饷玩家；4：指定活动参与统计
player_id number(20),
sid number(20),
frequency number(20), -- 次数，当日领军饷数量
amount number(10), -- 玩家数
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_activity_daily
  add primary key (ad_id);
  
create table gm_rpt_altar_daily(  -- 每天祭坛统计表
alt_id number(20) not null,
provider_id number(10),
server_id number(10),
alt_type char(1), -- 1：声望， 2： 金币； 3：钻石
player_id number(20),
amount number(10), -- 玩家数
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_altar_daily
  add primary key (alt_id);
  
create table gm_rpt_hero_daily(  -- 每天英雄统计表
hd_id number(20) not null,
provider_id number(10),
server_id number(10),
player_id number(20), -- 玩家id
sid number(20), -- 英雄实例id
hero_action_type char(1), -- 1：进阶，2：修炼 3：训练
frequency number(20), -- 次数，
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_hero_daily
  add primary key (hd_id);
  
  
create table gm_rpt_other_daily(  -- 每天英雄统计表
ot_id number(20) not null,
provider_id number(10),
server_id number(10),
ot_type char(1), -- 1：商店购买次数; 2: 排名领奖次数; 3: 背包格子数
oid number(20), -- 商品oid，排名类型：0 竞技场 1 通灵塔 2 宝藏
frequency number(20), -- 次数，格子数
amount number(10), -- 玩家数
record_time timestamp,
update_time timestamp default sysdate
);

 alter table gm_rpt_other_daily
  add primary key (ot_id);