create table gm_tmp_import(  -- 导入总表
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  RECORD_TIME timestamp,
  ALL_PASS char(1) default 1, -- 1 : all import pass, 0; all import fail; 2: some of import fail
  PASS_NUM number(10),
  EXEC_TIME number(20),
  server_ip   varchar(20),
  Remote_addr varchar(200),
  UPDATE_TIME timestamp default sysdate
);

alter table gm_tmp_import
  add primary key (import_id);
  


create table gm_import_error( -- 导入出错表
  ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  RECORD_TIME timestamp,
  ERROR_MSG   CLOB,
  IMPORT_DATA CLOB,
  UPDATE_TIME TIMESTAMP(6) default sysdate
);

alter table gm_import_error
  add primary key (id);  

--  server option

create table gm_tmp_server_status( -- 服务器状态表
       id number(20) not null,
       import_id number(20),
       provider_id number(10),
       server_id number(10),
       record_time timestamp,
       online_count number(10),
       register_count number(10),
       last_receive_request_time timestamp,
       sum_receive_request_count number(20),
       receive_request_incremental number(20),
       data_persistence_count number(20),
       alliance_Victories number(10),
       horde_Victories number(10),
       alliance_Blessings number(10),
       horde_Blessings number(10),
       last_persistence_time timestamp,
       update_time timestamp default sysdate
);
alter table gm_tmp_server_status
  add primary key (id);
  
  create table gm_tmp_role(  -- 注册、创建角色表
           id number(20) not null,
           import_id number(20),
           ud_id varchar2(64),
           mac varchar2(20),
           vendor_id varchar2(64),
           player_id number(20),
           player_name varchar2(50),
           ip varchar2(20),
           provider_id number(10),
           server_id number(10),
           operation_type char(1), -- 1: regist, 2 create role, 3 import...
           record_time timestamp,
           update_time timestamp default sysdate
    );

    alter table gm_tmp_role
      add primary key (id);
      

--  daily option

create table gm_tmp_daily( -- daily导入记录表
       id number(20),
       IMPORT_ID number(20),
       SERVER_ID number(20),
       PROVIDER_ID number(20),
       PLAYER_ID number(20),
       Player_name varchar2(200),
       PLAYER_LEVEL number(10),
       player_exp number(20),
       Player_prepay number(20,2),
       player_gem number(10),
       player_gold number(20),
       PLAYER_GAME_POINT number(20),
       zig_floor number(10),
       zig_score number(10),
       PACKAGE_AMOUNT number(10),         
       Consecutive_victories number(10),
       Victory_score number(10),
       RECORD_TIME timestamp,
       UPDATE_TIME timestamp default sysdate
);

alter table gm_tmp_daily
  add primary key (id);
  
  
  create table gm_tmp_daily_info( -- daily 明细表
       id number(20),
       daily_ID number(20),
       type number(10),
       rank number(10),
       item_level number(10),
       amount number(20),
       UPDATE_TIME timestamp default sysdate
);

alter table gm_tmp_daily_info
  add primary key (id);

-- user option

create table gm_rpt_prepay( -- 玩家充值表
       prepay_id number(20) not null,
       import_id number(20),
       player_id number(20),
       player_name varchar2(200),
       player_level number(4),
       prepay_gem number(10),
       prepay_type varchar2(3),
       prepay_cash number(20,2),
       provider_id number(10),
       server_id number(10),
       record_time timestamp,
       first_charge char(1) default '0', -- 1: first charge
       relative_date number(10) default '0', -- 充值相对开服日期差
       update_time timestamp default sysdate
);

alter table gm_rpt_prepay
  add primary key (prepay_id);


create table gm_tmp_login( -- 玩家登陆表
       id number(20) not null,
       import_id number(20),
       ud_id varchar2(64),
       mac varchar2(20),
       vendor_id varchar2(64),
       player_id number(20),
       player_name varchar2(50),
       player_level number(10),
       ip varchar2(20),
       provider_id number(10),
       server_id number(10),
       login_type char(1), -- 1: login ; 2; logout
       login_time timestamp,
       logout_time timestamp,
       update_time timestamp default sysdate
);

alter table gm_tmp_login
  add primary key (id);


-- user action

create table GM_TMP_USER_ACTION( -- 玩家action汇总表
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_USER_ACTION
  add primary key (action_id);
  
      
create table GM_TMP_HERO_ACTION( -- 英雄action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  SID number(20),
  OID number(20),
  rank number(10),
  hero_level number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_HERO_ACTION
  add primary key (action_id);
  
 create table GM_TMP_ITEM_ACTION( -- 物品action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  oid number(20), 
  PACKAGE_AMOUNT number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ITEM_ACTION
  add primary key (action_id);
  
  
  create table GM_TMP_ZONES_ACTION( -- 副本action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  zone_id number(10),
  score number(10), 			-- 失败 or 星数
  frequency number(10),			-- 扫荡次数
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ZONES_ACTION
  add primary key (action_id);
  
  
  create table GM_TMP_PREPAY_ACTION( -- 充值action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_PREPAY_ACTION
  add primary key (action_id);
  
  
  create table GM_TMP_RANKING_ACTION( -- 排名action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  rank     number(10),		-- 排行类型， 0：竞技场 1：通灵塔 2：宝藏
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_RANKING_ACTION
  add primary key (action_id);
  
create table GM_TMP_ACTIVITY_ACTION( -- 活动action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  sid      number(20),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  rank     number(10),		-- 活动子类型
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ACTIVITY_ACTION
  add primary key (action_id);
  
  create table GM_TMP_TREASURE_ACTION( -- 宝藏action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  rank     number(4),		-- 品质
  sid      number(20),		-- 宝藏id
  score    number(4),		--	成败
  opponent_id number(20),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_TREASURE_ACTION
  add primary key (action_id);
  
  
  create table GM_TMP_ZIG_ACTION( -- 通灵塔action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  Floor      number(4),	-- 层数
  rank     number(4),		-- 星数
  score    number(4),		-- 成败
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ZIG_ACTION
  add primary key (action_id);
  
  create table GM_TMP_ARENA_ACTION( -- 竞技场action
  action_id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_type number(10),
  sub_type number(4),
  score    number(4),
  player_id number(20),
  player_name varchar2(50),
  player_level number(10),
  result varchar2(200),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ARENA_ACTION
  add primary key (action_id);
  
  -- action detail
  create table GM_TMP_ATTR_OTHER_DETAIL( -- 其他action明细
	id number(20),
	IMPORT_ID number(20),
    SERVER_ID number(20),
    PROVIDER_ID number(20),
    action_id number(20),
 	action_type number(10),
	player_id number(20),
	type number(10),
    rank number(10),
    item_level number(10),
 	amount number(20),
 	oid number(20),
 	sid number(20),
 	daily_id number(20),
 	attribution varchar2(200),
 	RECORD_TIME timestamp,
 	UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_OTHER_DETAIL
  add primary key (id);
  
  
create table GM_TMP_ATTR_GOld( -- 金币变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  amount number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_GOld
  add primary key (id);
  
create table gm_rpt_gem_change( -- 钻石变化明细
         change_id number(20) not null,
         import_id number(20),
         action_id number(20),
         provider_id number(10),
         server_id number(10),
         player_id number(20),
         action_type number(10),
         amount number(20),
         record_time timestamp,
         update_time timestamp default sysdate
  );

  alter table gm_rpt_gem_change
    add primary key (change_id);
    
  create table GM_TMP_ATTR_POWER( -- 体力变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  amount number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_POWER
  add primary key (id);
  
create table GM_TMP_ATTR_ITEM( -- 物品变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  rank number(10),
  amount number(20),
  oid number(20),
  sid number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_ITEM
  add primary key (id);
  
create table GM_TMP_ATTR_EQUIP( -- 装备变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  rank number(10),
  item_level number(10),
  amount number(20),
  oid number(20),
  sid number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_EQUIP
  add primary key (id);
  
create table GM_TMP_ATTR_HERO( -- 英雄变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  --type number(10),
  rank number(10),
  item_level number(10),
  amount number(20),
  oid number(20),
  sid number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_HERO
  add primary key (id);
  
create table GM_TMP_ATTR_HONOR( -- 荣誉变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  rank number(10),
  amount number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_HONOR
  add primary key (id);
  
create table GM_TMP_ATTR_EXP( -- 经验变化明细
  id number(20),
  IMPORT_ID number(20),
  SERVER_ID number(20),
  PROVIDER_ID number(20),
  action_id number(20),
  action_type number(10),
  player_id number(20),
  amount number(20),
  RECORD_TIME timestamp,
  UPDATE_TIME timestamp default sysdate
 );
 
 alter table GM_TMP_ATTR_EXP
  add primary key (id);