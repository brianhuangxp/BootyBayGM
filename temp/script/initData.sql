--sys_code_type
insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (1, 'BASIC_ROLE', '基本权限', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (2, 'ADVANCED_ROLE', '高级权限', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (3, 'SERVER_ROLE', '服务器权限', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (4, 'G_BASIC_TYPE', '游戏基础类型', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (5, 'ACTION_TYPE', 'action类型', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (6, 'G_ITEM_RANK_TYPE', '物品品质', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (7, 'G_ITEM_TYPE', '物品配置', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (8, 'G_EQUIP_RANK_TYPE', '装备品质', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (9, 'G_EQUIP_TYPE', '装备类型', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (10, 'G_HERO_RANK_TYPE', '英雄品质', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (11, 'G_HERO_TYPE', '英雄配置', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (12, 'G_HONOR_TYPE', '荣誉类型', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (13, 'G_TREASURE_RANK_TYPE', '宝藏品质', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (14, 'G_EXCHANGE_TYPE', '宝藏兑换ID', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (15, 'G_ACTIVITY_SPECIFIC_TYPE', '特定活动ID', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (16, 'G_PET_TYPE', '宠物类型', '0', null);

--sys_code
insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (1, 'ROLE_TYPE', null, '1', '服务器权限', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2, 'ROLE_TYPE', null, '2', '基本权限', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3, 'ROLE_TYPE', null, '3', '高级权限', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4, 'BASIC_ROLE', 2, '1', '后台记录查询', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (5, 'BASIC_ROLE', 2, '2', '奖励发放', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (6, 'BASIC_ROLE', 2, '3', '内部账户管理', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (7, 'BASIC_ROLE', 2, '4', '封号处理', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (8, 'BASIC_ROLE', 2, '5', '账户查询', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (9, 'BASIC_ROLE', 2, '6', '登录留存数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10, 'BASIC_ROLE', 2, '7', '充值数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11, 'BASIC_ROLE', 2, '8', '排行数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (12, 'BASIC_ROLE', 2, '9', '资源产量数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (13, 'BASIC_ROLE', 2, '10', '模块参与数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (14, 'ADVANCED_ROLE', 3, '11', '职位管理', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (15, 'ADVANCED_ROLE', 3, '12', '账号建立', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (16, 'ADVANCED_ROLE', 3, '13', '账户修改删除', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (17, 'ADVANCED_ROLE', 3, '14', '账户权限配置', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (18, 'ADVANCED_ROLE', 3, '15', '调数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (19, 'ADVANCED_ROLE', 3, '16', '审核发放', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (20, 'ADVANCED_ROLE', 3, '17', '后台记录查询', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (101, 'G_BASIC_TYPE', null, '1', '金币', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (102, 'G_BASIC_TYPE', null, '2', '钻石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (103, 'G_BASIC_TYPE', null, '3', '体力', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (104, 'G_BASIC_TYPE', null, '4', '经验', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (105, 'G_BASIC_TYPE', null, '5', '声望', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (106, 'G_BASIC_TYPE', null, '601', '装备', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (107, 'G_BASIC_TYPE', null, '602', '道具', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (108, 'G_BASIC_TYPE', null, '603', '英雄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (109, 'G_BASIC_TYPE', null, '604', '装备品质', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (110, 'G_BASIC_TYPE', null, '605', '装备强化等级', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (151, 'G_HONOR_TYPE', 105, '1', '竞技点', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (152, 'G_HONOR_TYPE', 105, '2', '荣誉点', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (153, 'G_HONOR_TYPE', 105, '10', '祭祀点', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (161, 'G_CONDITION_TYPE', null, '1', '等级', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (162, 'G_CONDITION_TYPE', null, '2', '累计充值', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (163, 'G_CONDITION_TYPE', null, '3', '竞技积分', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (164, 'G_CONDITION_TYPE', null, '4', '消费钻石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (165, 'G_CONDITION_TYPE', null, '5', '登陆次数', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (166, 'G_CONDITION_TYPE', null, '6', '副本关数', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (167, 'G_CONDITION_TYPE', null, '7', '竞技胜利场次', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (168, 'G_CONDITION_TYPE', null, '8', '掠夺成功次数', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (169, 'G_CONDITION_TYPE', null, '9', '内部玩家等级', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (201, 'G_EQUIP_RANK_TYPE', 106, '0', '白', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (202, 'G_EQUIP_RANK_TYPE', 106, '1', '绿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (203, 'G_EQUIP_RANK_TYPE', 106, '2', '蓝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (204, 'G_EQUIP_RANK_TYPE', 106, '3', '紫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (205, 'G_EQUIP_RANK_TYPE', 106, '4', '橙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (211, 'G_ITEM_RANK_TYPE', 107, '0', '白', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (212, 'G_ITEM_RANK_TYPE', 107, '1', '绿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (213, 'G_ITEM_RANK_TYPE', 107, '2', '蓝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (214, 'G_ITEM_RANK_TYPE', 107, '3', '紫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (215, 'G_ITEM_RANK_TYPE', 107, '4', '橙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (221, 'G_HERO_RANK_TYPE', 108, '0', '白', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (222, 'G_HERO_RANK_TYPE', 108, '1', '绿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (223, 'G_HERO_RANK_TYPE', 108, '2', '蓝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (224, 'G_HERO_RANK_TYPE', 108, '3', '紫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (225, 'G_HERO_RANK_TYPE', 108, '4', '橙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (231, 'G_TREASURE_RANK_TYPE', null, '0', '白', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (232, 'G_TREASURE_RANK_TYPE', null, '1', '绿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (233, 'G_TREASURE_RANK_TYPE', null, '2', '蓝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (234, 'G_TREASURE_RANK_TYPE', null, '3', '紫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (235, 'G_TREASURE_RANK_TYPE', null, '4', '橙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (301, 'ACTION_TYPE', null, '200001', '角色模块-', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (302, 'ACTION_TYPE', null, '200003', '角色模块-解雇英雄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (303, 'ACTION_TYPE', null, '200013', '角色模块-训练英雄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (304, 'ACTION_TYPE', null, '200017', '角色模块-英雄训练经验', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (305, 'ACTION_TYPE', null, '200019', '角色模块-英雄修炼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (306, 'ACTION_TYPE', null, '200021', '角色模块-英雄进阶', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (307, 'ACTION_TYPE', null, '200033', '角色模块-英雄招募', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (308, 'ACTION_TYPE', null, '210001', '物品模块-购买', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (309, 'ACTION_TYPE', null, '210005', '物品模块-移动', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (310, 'ACTION_TYPE', null, '210007', '物品模块-开背包格', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (311, 'ACTION_TYPE', null, '210009', '物品模块-进入商店', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (312, 'ACTION_TYPE', null, '210011', '物品模块-装备分解', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (313, 'ACTION_TYPE', null, '210013', '物品模块-出售物品', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (314, 'ACTION_TYPE', null, '210017', '物品模块-装备强化', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (315, 'ACTION_TYPE', null, '210021', '物品模块-使用物品', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (316, 'ACTION_TYPE', null, '210023', '物品模块-整理背包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (317, 'ACTION_TYPE', null, '210025', '物品模块-祭祀', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (318, 'ACTION_TYPE', null, '180001', '副本-打普通副本', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (319, 'ACTION_TYPE', null, '180003', '副本-扫荡', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (320, 'ACTION_TYPE', null, '180007', '副本-购买体力值', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (321, 'ACTION_TYPE', null, '180013', '副本-领取奖励', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (322, 'ACTION_TYPE', null, '180015', '迷宫进入', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (323, 'ACTION_TYPE', null, '180017', '迷宫事件', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (324, 'ACTION_TYPE', null, '170001', '通灵塔-挑战', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (325, 'ACTION_TYPE', null, '170003', '通灵塔-自动挑战', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (326, 'ACTION_TYPE', null, '170005', '通灵塔-重置', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (327, 'ACTION_TYPE', null, '170007', '通灵塔-购买挑战次数', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (328, 'ACTION_TYPE', null, '220001', '战斗模块', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (329, 'ACTION_TYPE', null, '220003', '战斗请求数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (330, 'ACTION_TYPE', null, '260001', '竞技场-进入', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (331, 'ACTION_TYPE', null, '260003', '竞技场-刷新', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (332, 'ACTION_TYPE', null, '260009', '竞技场-挑战', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (333, 'ACTION_TYPE', null, '270001', '宝藏-进入', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (334, 'ACTION_TYPE', null, '270005', '宝藏-挖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (335, 'ACTION_TYPE', null, '270007', '宝藏-掠夺', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (336, 'ACTION_TYPE', null, '270009', '宝藏-收宝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (337, 'ACTION_TYPE', null, '270015', '宝藏-复仇', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (338, 'ACTION_TYPE', null, '270017', '宝藏-祝福', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (339, 'ACTION_TYPE', null, '270019', '宝藏-兑换', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (340, 'ACTION_TYPE', null, '270025', '宝藏-寻宝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (341, 'ACTION_TYPE', null, '270029', '宝藏-刷新宝藏', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (342, 'ACTION_TYPE', null, '270031', '宝藏-抓捕', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (343, 'ACTION_TYPE', null, '270033', '宝藏-求救', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (344, 'ACTION_TYPE', null, '270035', '宝藏-解救', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (345, 'ACTION_TYPE', null, '270037', '宝藏-反抗', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (346, 'ACTION_TYPE', null, '270039', '宝藏-释放', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (347, 'ACTION_TYPE', null, '310001', '充值-充值', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (348, 'ACTION_TYPE', null, '310003', '充值-领取充值礼包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (349, 'ACTION_TYPE', null, '310005', '充值-领取特权', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (350, 'ACTION_TYPE', null, '280001', '排行-进入', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (351, 'ACTION_TYPE', null, '280003', '排行-领取奖励', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (352, 'ACTION_TYPE', null, '290001', '活动-吃面包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (353, 'ACTION_TYPE', null, '290003', '活动-领取军响', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (354, 'ACTION_TYPE', null, '290005', '活动-请求主菜单', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (355, 'ACTION_TYPE', null, '290007', '活动-历史抽奖记录', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (356, 'ACTION_TYPE', null, '290009', '活动-抽奖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (357, 'ACTION_TYPE', null, '290011', '活动-请常规活动数据', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (358, 'ACTION_TYPE', null, '290013', '活动-领取常规活动奖励', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (359, 'ACTION_TYPE', null, '190003', '任务', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (360, 'ACTION_TYPE', null, '320001', '好友-请求', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (361, 'ACTION_TYPE', null, '320003', '好友-处理请求', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (362, 'ACTION_TYPE', null, '320005', '好友-刷新', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (363, 'ACTION_TYPE', null, '320007', '好友-删除', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (364, 'ACTION_TYPE', null, '320011', '好友-查询', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (365, 'ACTION_TYPE', null, '330009', '邮件-进入', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (366, 'ACTION_TYPE', null, '330011', '邮件-领取领取GM奖励', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (367, 'ACTION_TYPE', null, '330013', '邮件-已读', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (368, 'ACTION_TYPE', null, '330015', '邮件-删除', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (369, 'ACTION_TYPE', null, '340001', '聊天模块', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (370, 'ACTION_TYPE', null, '350001', '小助手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (371, 'ACTION_TYPE', null, '360001', '登陆礼包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (372, 'ACTION_TYPE', null, '1000001', 'GM-添加', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (373, 'ACTION_TYPE', null, '330023', '邮件-领取活动奖励', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (501, 'G_EQUIP_TYPE', 201, '1011011', '血蹄头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (502, 'G_EQUIP_TYPE', 201, '1011012', '雄鹰肩铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (503, 'G_EQUIP_TYPE', 201, '1011013', '铁制护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (504, 'G_EQUIP_TYPE', 201, '1011014', '血鳞胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (505, 'G_EQUIP_TYPE', 201, '1011015', '钢铸护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (506, 'G_EQUIP_TYPE', 201, '1011016', '嗜杀战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (507, 'G_EQUIP_TYPE', 201, '1011017', '切石钝斧', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (508, 'G_EQUIP_TYPE', 201, '1011018', '二手长剑', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (509, 'G_EQUIP_TYPE', 201, '1011019', '生锈短刃', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (510, 'G_EQUIP_TYPE', 201, '1012021', '破坏头冠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (511, 'G_EQUIP_TYPE', 201, '1012022', '变节肩铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (512, 'G_EQUIP_TYPE', 201, '1012023', '强制肩甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (513, 'G_EQUIP_TYPE', 201, '1012024', '食人链甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (514, 'G_EQUIP_TYPE', 201, '1012025', '劫掠护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (515, 'G_EQUIP_TYPE', 201, '1012026', '践踏之靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (516, 'G_EQUIP_TYPE', 201, '1012027', '走火长枪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (517, 'G_EQUIP_TYPE', 201, '1012028', '碾肉臭锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (518, 'G_EQUIP_TYPE', 201, '1013031', '炙热头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (519, 'G_EQUIP_TYPE', 201, '1013032', '刺杀护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (520, 'G_EQUIP_TYPE', 201, '1013033', '卫兵护腕', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (521, 'G_EQUIP_TYPE', 201, '1013034', '恐惧皮衣', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (522, 'G_EQUIP_TYPE', 201, '1013035', '暗月护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (523, 'G_EQUIP_TYPE', 201, '1013036', '无风长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (524, 'G_EQUIP_TYPE', 201, '1013037', '断木粗斧', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (525, 'G_EQUIP_TYPE', 201, '1013038', '小剖鱼刀', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (526, 'G_EQUIP_TYPE', 201, '1013039', '外婆钉锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (527, 'G_EQUIP_TYPE', 201, '1014041', '元素头巾', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (528, 'G_EQUIP_TYPE', 201, '1014042', '先知衬肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (529, 'G_EQUIP_TYPE', 201, '1014043', '贤能手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (530, 'G_EQUIP_TYPE', 201, '1014044', '血色长袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (531, 'G_EQUIP_TYPE', 201, '1014045', '信使短裤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (532, 'G_EQUIP_TYPE', 201, '1014046', '祭祀便鞋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (533, 'G_EQUIP_TYPE', 201, '1014047', '腐木之杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (534, 'G_EQUIP_TYPE', 201, '1014048', '流木法枝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (535, 'G_EQUIP_TYPE', 201, '1014049', '生命绿枝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (536, 'G_EQUIP_TYPE', 202, '1111051', '突围者巨盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (537, 'G_EQUIP_TYPE', 202, '1111052', '突围者肩铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (538, 'G_EQUIP_TYPE', 202, '1111053', '突围者手甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (539, 'G_EQUIP_TYPE', 202, '1111054', '突围者胸铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (540, 'G_EQUIP_TYPE', 202, '1111055', '突围者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (541, 'G_EQUIP_TYPE', 202, '1111056', '突围者战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (542, 'G_EQUIP_TYPE', 202, '1111057', '食人魔战斧', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (543, 'G_EQUIP_TYPE', 202, '1111058', '偷来的刺刀', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (544, 'G_EQUIP_TYPE', 202, '1111059', '黑暗符文剑', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (545, 'G_EQUIP_TYPE', 202, '1112061', '追猎者头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (546, 'G_EQUIP_TYPE', 202, '1112062', '追猎者护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (547, 'G_EQUIP_TYPE', 202, '1112063', '追猎者手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (548, 'G_EQUIP_TYPE', 202, '1112064', '追猎者护胸', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (549, 'G_EQUIP_TYPE', 202, '1112065', '追猎者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (550, 'G_EQUIP_TYPE', 202, '1112066', '追猎者短靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (551, 'G_EQUIP_TYPE', 202, '1112067', '砰砰砰火枪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (552, 'G_EQUIP_TYPE', 202, '1112068', '时间扭曲槌', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (553, 'G_EQUIP_TYPE', 202, '1113071', '刺杀者头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (554, 'G_EQUIP_TYPE', 202, '1113072', '刺杀者护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (555, 'G_EQUIP_TYPE', 202, '1113073', '刺杀者护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (556, 'G_EQUIP_TYPE', 202, '1113074', '刺杀者胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (557, 'G_EQUIP_TYPE', 202, '1113075', '刺杀者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (558, 'G_EQUIP_TYPE', 202, '1113076', '刺杀者皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (559, 'G_EQUIP_TYPE', 202, '1113077', '小鸡终结者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (560, 'G_EQUIP_TYPE', 202, '1113078', '灰尘使命者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (561, 'G_EQUIP_TYPE', 202, '1113079', '唤地者之锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (562, 'G_EQUIP_TYPE', 202, '1114081', '狗男女头冠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (563, 'G_EQUIP_TYPE', 202, '1114082', '狗男女衬肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (564, 'G_EQUIP_TYPE', 202, '1114083', '狗男女护腕', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (565, 'G_EQUIP_TYPE', 202, '1114084', '狗男女长袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (566, 'G_EQUIP_TYPE', 202, '1114085', '狗男女护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (567, 'G_EQUIP_TYPE', 202, '1114086', '狗男女便鞋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (568, 'G_EQUIP_TYPE', 202, '1114087', '恐魂着之杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (569, 'G_EQUIP_TYPE', 202, '1114088', '月影者法杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (570, 'G_EQUIP_TYPE', 202, '1114089', '狗男女羽杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (571, 'G_EQUIP_TYPE', 203, '1211091', '熔火冲锋战盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (572, 'G_EQUIP_TYPE', 203, '1211092', '熔火冲锋肩铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (573, 'G_EQUIP_TYPE', 203, '1211093', '熔火冲锋手铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (574, 'G_EQUIP_TYPE', 203, '1211094', '熔火冲锋胸铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (575, 'G_EQUIP_TYPE', 203, '1211095', '熔火冲锋腿铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (576, 'G_EQUIP_TYPE', 203, '1211096', '熔火冲锋战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (577, 'G_EQUIP_TYPE', 203, '1211097', '恐怖的复仇者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (578, 'G_EQUIP_TYPE', 203, '1211098', '唬人的审问者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (579, 'G_EQUIP_TYPE', 203, '1211099', '山寨的霜之殇', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (580, 'G_EQUIP_TYPE', 203, '1212101', '飓风霜巫头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (581, 'G_EQUIP_TYPE', 203, '1212102', '飓风霜巫肩垫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (582, 'G_EQUIP_TYPE', 203, '1212103', '飓风霜巫手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (583, 'G_EQUIP_TYPE', 203, '1212104', '飓风霜巫锁甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (584, 'G_EQUIP_TYPE', 203, '1212105', '飓风霜巫腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (585, 'G_EQUIP_TYPE', 203, '1212106', '飓风霜巫短靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (586, 'G_EQUIP_TYPE', 203, '1212107', '高仿龙之怒火', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (587, 'G_EQUIP_TYPE', 203, '1212108', '仿制风暴之锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (588, 'G_EQUIP_TYPE', 203, '1213111', '黑暗凤舞头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (589, 'G_EQUIP_TYPE', 203, '1213112', '黑暗凤舞肩饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (590, 'G_EQUIP_TYPE', 203, '1213113', '黑暗凤舞手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (591, 'G_EQUIP_TYPE', 203, '1213114', '黑暗凤舞短袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (592, 'G_EQUIP_TYPE', 203, '1213115', '黑暗凤舞护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (593, 'G_EQUIP_TYPE', 203, '1213116', '黑暗凤舞皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (594, 'G_EQUIP_TYPE', 203, '1213117', '正品审判之斧', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (595, 'G_EQUIP_TYPE', 203, '1213118', '烈焰之心魔刃', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (596, 'G_EQUIP_TYPE', 203, '1213119', '精灵小龙之力', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (597, 'G_EQUIP_TYPE', 203, '1214121', '血法元素兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (598, 'G_EQUIP_TYPE', 203, '1214122', '血法元素肩饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (599, 'G_EQUIP_TYPE', 203, '1214123', '血法元素裹手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (600, 'G_EQUIP_TYPE', 203, '1214124', '血法元素长袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (601, 'G_EQUIP_TYPE', 203, '1214125', '血法元素裹腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (602, 'G_EQUIP_TYPE', 203, '1214126', '血法元素长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (603, 'G_EQUIP_TYPE', 203, '1214127', '灵魂吞噬之杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (604, 'G_EQUIP_TYPE', 203, '1214128', '火焰风暴之杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (605, 'G_EQUIP_TYPE', 203, '1214129', '时光治愈之杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (606, 'G_EQUIP_TYPE', 204, '1300131', '巨龙角斗士头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (607, 'G_EQUIP_TYPE', 204, '1300132', '巨龙角斗士护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (608, 'G_EQUIP_TYPE', 204, '1300133', '巨龙角斗士护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (609, 'G_EQUIP_TYPE', 204, '1300134', '巨龙角斗士胸铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (610, 'G_EQUIP_TYPE', 204, '1300135', '巨龙角斗士护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (611, 'G_EQUIP_TYPE', 204, '1300136', '巨龙角斗士战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (612, 'G_EQUIP_TYPE', 204, '1300137', '巨龙角斗士斩首斧', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (613, 'G_EQUIP_TYPE', 204, '1301141', '永恒审判者战盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (614, 'G_EQUIP_TYPE', 204, '1301142', '永恒审判者肩铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (615, 'G_EQUIP_TYPE', 204, '1301143', '永恒审判者手甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (616, 'G_EQUIP_TYPE', 204, '1301144', '永恒审判者战甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (617, 'G_EQUIP_TYPE', 204, '1301145', '永恒审判者腿铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (618, 'G_EQUIP_TYPE', 204, '1301146', '永恒审判者战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (619, 'G_EQUIP_TYPE', 204, '1301147', '永恒的光芒卫士', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (620, 'G_EQUIP_TYPE', 204, '1302151', '冰封的死灵战盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (621, 'G_EQUIP_TYPE', 204, '1302152', '冰封的死灵肩胄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (622, 'G_EQUIP_TYPE', 204, '1302153', '冰封的死灵手甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (623, 'G_EQUIP_TYPE', 204, '1302154', '冰封的死灵胸铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (624, 'G_EQUIP_TYPE', 204, '1302155', '冰封的死灵护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (625, 'G_EQUIP_TYPE', 204, '1302156', '冰封的死灵战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (626, 'G_EQUIP_TYPE', 204, '1302157', '冰封的死灵重剑', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (627, 'G_EQUIP_TYPE', 204, '1303161', '魁麟猎血者头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (628, 'G_EQUIP_TYPE', 204, '1303162', '魁麟猎血者护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (629, 'G_EQUIP_TYPE', 204, '1303163', '魁麟猎血者护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (630, 'G_EQUIP_TYPE', 204, '1303164', '魁麟猎血者外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (631, 'G_EQUIP_TYPE', 204, '1303165', '魁麟猎血者腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (632, 'G_EQUIP_TYPE', 204, '1303166', '魁麟猎血者短靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (633, 'G_EQUIP_TYPE', 204, '1303167', '魁麟猎血者之吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (634, 'G_EQUIP_TYPE', 204, '1304171', '灵魂织战者头饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (635, 'G_EQUIP_TYPE', 204, '1304172', '灵魂织战者肩饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (636, 'G_EQUIP_TYPE', 204, '1304173', '灵魂织战者手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (637, 'G_EQUIP_TYPE', 204, '1304174', '灵魂织战者锁甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (638, 'G_EQUIP_TYPE', 204, '1304175', '灵魂织战者绑腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (639, 'G_EQUIP_TYPE', 204, '1304176', '灵魂织战者短靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (640, 'G_EQUIP_TYPE', 204, '1304177', '灵魂织战者之锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (641, 'G_EQUIP_TYPE', 204, '1305181', '影踪颠覆者头饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (642, 'G_EQUIP_TYPE', 204, '1305182', '影踪颠覆者肩垫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (643, 'G_EQUIP_TYPE', 204, '1305183', '影踪颠覆者之握', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (644, 'G_EQUIP_TYPE', 204, '1305184', '影踪颠覆者外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (645, 'G_EQUIP_TYPE', 204, '1305185', '影踪颠覆者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (646, 'G_EQUIP_TYPE', 204, '1305186', '影踪颠覆者皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (647, 'G_EQUIP_TYPE', 204, '1305187', '影踪酒仙召唤者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (648, 'G_EQUIP_TYPE', 204, '1306191', '血牙裂魂者头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (649, 'G_EQUIP_TYPE', 204, '1306192', '血牙裂魂者肩甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (650, 'G_EQUIP_TYPE', 204, '1306193', '血牙裂魂者手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (651, 'G_EQUIP_TYPE', 204, '1306194', '血牙裂魂者外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (652, 'G_EQUIP_TYPE', 204, '1306195', '血牙裂魂者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (653, 'G_EQUIP_TYPE', 204, '1306196', '血牙裂魂者皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (654, 'G_EQUIP_TYPE', 204, '1306197', '恐怖血牙裂魂者 ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (655, 'G_EQUIP_TYPE', 204, '1307201', '怒风梦游者头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (656, 'G_EQUIP_TYPE', 204, '1307202', '怒风梦游者肩饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (657, 'G_EQUIP_TYPE', 204, '1307203', '怒风梦游者裹手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (658, 'G_EQUIP_TYPE', 204, '1307204', '怒风梦游者长袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (659, 'G_EQUIP_TYPE', 204, '1307205', '怒风梦游者绑腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (660, 'G_EQUIP_TYPE', 204, '1307206', '怒风梦游者皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (661, 'G_EQUIP_TYPE', 204, '1307207', '怒风梦游者之锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (662, 'G_EQUIP_TYPE', 204, '1308211', '无面湮灭者兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (663, 'G_EQUIP_TYPE', 204, '1308212', '无面湮灭者护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (664, 'G_EQUIP_TYPE', 204, '1308213', '无面湮灭者手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (665, 'G_EQUIP_TYPE', 204, '1308214', '无面湮灭者长袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (666, 'G_EQUIP_TYPE', 204, '1308215', '无面湮灭者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (667, 'G_EQUIP_TYPE', 204, '1308216', '无面湮灭者长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (668, 'G_EQUIP_TYPE', 204, '1308217', '无面湮灭者之杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (669, 'G_EQUIP_TYPE', 204, '1309221', '时光守护者兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (670, 'G_EQUIP_TYPE', 204, '1309222', '时光守护者护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (671, 'G_EQUIP_TYPE', 204, '1309223', '时光守护者手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (672, 'G_EQUIP_TYPE', 204, '1309224', '时光守护者长袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (673, 'G_EQUIP_TYPE', 204, '1309225', '时光守护者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (674, 'G_EQUIP_TYPE', 204, '1309226', '时光守护者长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (675, 'G_EQUIP_TYPE', 204, '1309227', '时光守护者法杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (676, 'G_EQUIP_TYPE', 204, '1310231', '纯洁治愈者兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (677, 'G_EQUIP_TYPE', 204, '1310232', '纯洁治愈者护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (678, 'G_EQUIP_TYPE', 204, '1310233', '纯洁治愈者手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (679, 'G_EQUIP_TYPE', 204, '1310234', '纯洁治愈者法袍', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (680, 'G_EQUIP_TYPE', 204, '1310235', '纯洁治愈者护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (681, 'G_EQUIP_TYPE', 204, '1310236', '纯洁治愈者长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (682, 'G_EQUIP_TYPE', 204, '1310237', '纯洁治愈者羽杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (683, 'G_EQUIP_TYPE', 205, '1400241', '暮光青龙熔火头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (684, 'G_EQUIP_TYPE', 205, '1400242', '暮光青龙熔火护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (685, 'G_EQUIP_TYPE', 205, '1400243', '暮光青龙熔火护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (686, 'G_EQUIP_TYPE', 205, '1400244', '暮光青龙熔火护胸', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (687, 'G_EQUIP_TYPE', 205, '1400245', '暮光青龙熔火护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (688, 'G_EQUIP_TYPE', 205, '1400246', '暮光青龙熔火战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (689, 'G_EQUIP_TYPE', 205, '1400247', '传奇的橙斧影之殇', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (690, 'G_EQUIP_TYPE', 205, '1401251', '神圣白虎光誓面甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (691, 'G_EQUIP_TYPE', 205, '1401252', '神圣白虎光誓肩胄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (692, 'G_EQUIP_TYPE', 205, '1401253', '神圣白虎光誓护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (693, 'G_EQUIP_TYPE', 205, '1401254', '神圣白虎光誓护胸', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (694, 'G_EQUIP_TYPE', 205, '1401255', '神圣白虎光誓护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (695, 'G_EQUIP_TYPE', 205, '1401256', '神圣白虎光誓战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (696, 'G_EQUIP_TYPE', 205, '1401257', '传奇神器灰烬行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (697, 'G_EQUIP_TYPE', 205, '1402261', '堕落天灾领主战盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (698, 'G_EQUIP_TYPE', 205, '1402262', '堕落天灾领主肩胄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (699, 'G_EQUIP_TYPE', 205, '1402263', '堕落天灾领主手甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (700, 'G_EQUIP_TYPE', 205, '1402264', '堕落天灾领主战铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (701, 'G_EQUIP_TYPE', 205, '1402265', '堕落天灾领主腿铠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (702, 'G_EQUIP_TYPE', 205, '1402266', '堕落天灾领主战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (703, 'G_EQUIP_TYPE', 205, '1402267', '传奇的巨剑霜之殇', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (704, 'G_EQUIP_TYPE', 205, '1403271', '龙眠追猎者的头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (705, 'G_EQUIP_TYPE', 205, '1403272', '龙眠追猎者的护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (706, 'G_EQUIP_TYPE', 205, '1403273', '龙眠追猎者的手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (707, 'G_EQUIP_TYPE', 205, '1403274', '龙眠追猎者的外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (708, 'G_EQUIP_TYPE', 205, '1403275', '龙眠追猎者的护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (709, 'G_EQUIP_TYPE', 205, '1403276', '龙眠追猎者的短靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (710, 'G_EQUIP_TYPE', 205, '1403277', '龙眠追猎者的火枪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (711, 'G_EQUIP_TYPE', 205, '1404281', '狂暴灵魂行者战盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (712, 'G_EQUIP_TYPE', 205, '1404282', '狂暴灵魂行者肩胄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (713, 'G_EQUIP_TYPE', 205, '1404283', '狂暴灵魂行者之握', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (714, 'G_EQUIP_TYPE', 205, '1404284', '狂暴灵魂行者胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (715, 'G_EQUIP_TYPE', 205, '1404285', '狂暴灵魂行者护胫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (716, 'G_EQUIP_TYPE', 205, '1404286', '狂暴灵魂行者短靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (717, 'G_EQUIP_TYPE', 205, '1404287', '狂暴灵魂行者之锤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (718, 'G_EQUIP_TYPE', 205, '1405291', '朱鹤之羽迅捷头饰', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (719, 'G_EQUIP_TYPE', 205, '1405292', '朱鹤之羽迅捷护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (720, 'G_EQUIP_TYPE', 205, '1405293', '朱鹤之羽迅捷之握', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (721, 'G_EQUIP_TYPE', 205, '1405294', '朱鹤之羽迅捷外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (722, 'G_EQUIP_TYPE', 205, '1405295', '朱鹤之羽迅捷护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (723, 'G_EQUIP_TYPE', 205, '1405296', '朱鹤之羽迅捷皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (724, 'G_EQUIP_TYPE', 205, '1405297', '神圣风暴传说利斧', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (725, 'G_EQUIP_TYPE', 205, '1406301', '残酷的角斗士头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (726, 'G_EQUIP_TYPE', 205, '1406302', '残酷的角斗士肩甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (727, 'G_EQUIP_TYPE', 205, '1406303', '残酷的角斗士手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (728, 'G_EQUIP_TYPE', 205, '1406304', '残酷的角斗士外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (729, 'G_EQUIP_TYPE', 205, '1406305', '残酷的角斗士护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (730, 'G_EQUIP_TYPE', 205, '1406306', '残酷的角斗士皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (731, 'G_EQUIP_TYPE', 205, '1406307', '梦寐以求的那蛋刀', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (732, 'G_EQUIP_TYPE', 205, '1407311', '神游者的征服兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (733, 'G_EQUIP_TYPE', 205, '1407312', '神游者的征服肩垫', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (734, 'G_EQUIP_TYPE', 205, '1407313', '神游者的征服手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (735, 'G_EQUIP_TYPE', 205, '1407314', '神游者的征服外衣', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (736, 'G_EQUIP_TYPE', 205, '1407315', '神游者的征服长裤', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (737, 'G_EQUIP_TYPE', 205, '1407316', '神游者的征服皮靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (738, 'G_EQUIP_TYPE', 205, '1407317', '炎魔大螺丝之手锤 ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (739, 'G_EQUIP_TYPE', 205, '1408321', '邪恶之煞灵魂兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (740, 'G_EQUIP_TYPE', 205, '1408322', '邪恶之煞灵魂护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (741, 'G_EQUIP_TYPE', 205, '1408323', '邪恶之煞灵魂手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (742, 'G_EQUIP_TYPE', 205, '1408324', '邪恶之煞灵魂外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (743, 'G_EQUIP_TYPE', 205, '1408325', '邪恶之煞灵魂护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (744, 'G_EQUIP_TYPE', 205, '1408326', '邪恶之煞灵魂长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (745, 'G_EQUIP_TYPE', 205, '1408327', '邪恶之煞灵魂魔杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (746, 'G_EQUIP_TYPE', 205, '1409331', '神圣星界守护兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (747, 'G_EQUIP_TYPE', 205, '1409332', '神圣星界守护护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (748, 'G_EQUIP_TYPE', 205, '1409333', '神圣星界守护手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (749, 'G_EQUIP_TYPE', 205, '1409334', '神圣星界守护外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (750, 'G_EQUIP_TYPE', 205, '1409335', '神圣星界守护护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (751, 'G_EQUIP_TYPE', 205, '1409336', '神圣星界守护长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (752, 'G_EQUIP_TYPE', 205, '1409337', '神圣星界守护法杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (753, 'G_EQUIP_TYPE', 205, '1410341', '净化纯心之羽兜帽', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (754, 'G_EQUIP_TYPE', 205, '1410342', '净化纯心之羽护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (755, 'G_EQUIP_TYPE', 205, '1410343', '净化纯心之羽手套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (756, 'G_EQUIP_TYPE', 205, '1410344', '净化纯心之羽外套', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (757, 'G_EQUIP_TYPE', 205, '1410345', '净化纯心之羽护腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (758, 'G_EQUIP_TYPE', 205, '1410346', '净化纯心之羽长靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (759, 'G_EQUIP_TYPE', 205, '1410347', '净化纯心之羽法杖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (760, 'G_EQUIP_TYPE', 201, '1500001', '普通头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (761, 'G_EQUIP_TYPE', 201, '1500007', '普通武器', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (762, 'G_EQUIP_TYPE', 201, '1500002', '普通护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (763, 'G_EQUIP_TYPE', 201, '1500005', '普通护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (764, 'G_EQUIP_TYPE', 201, '1500003', '普通胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (765, 'G_EQUIP_TYPE', 201, '1500004', '普通腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (766, 'G_EQUIP_TYPE', 201, '1500006', '普通战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (767, 'G_EQUIP_TYPE', 202, '1500101', '优秀头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (768, 'G_EQUIP_TYPE', 202, '1500107', '优秀武器', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (769, 'G_EQUIP_TYPE', 202, '1500102', '优秀护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (770, 'G_EQUIP_TYPE', 202, '1500105', '优秀护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (771, 'G_EQUIP_TYPE', 202, '1500103', '优秀胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (772, 'G_EQUIP_TYPE', 202, '1500104', '优秀腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (773, 'G_EQUIP_TYPE', 202, '1500106', '优秀战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (774, 'G_EQUIP_TYPE', 203, '1500201', '精良头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (775, 'G_EQUIP_TYPE', 203, '1500207', '精良武器', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (776, 'G_EQUIP_TYPE', 203, '1500202', '精良护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (777, 'G_EQUIP_TYPE', 203, '1500205', '精良护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (778, 'G_EQUIP_TYPE', 203, '1500203', '精良胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (779, 'G_EQUIP_TYPE', 203, '1500204', '精良腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (780, 'G_EQUIP_TYPE', 203, '1500206', '精良战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (781, 'G_EQUIP_TYPE', 204, '1500301', '史诗头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (782, 'G_EQUIP_TYPE', 204, '1500307', '史诗武器', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (783, 'G_EQUIP_TYPE', 204, '1500302', '史诗护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (784, 'G_EQUIP_TYPE', 204, '1500305', '史诗护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (785, 'G_EQUIP_TYPE', 204, '1500303', '史诗胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (786, 'G_EQUIP_TYPE', 204, '1500304', '史诗腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (787, 'G_EQUIP_TYPE', 204, '1500306', '史诗战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (788, 'G_EQUIP_TYPE', 205, '1500401', '传说头盔', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (789, 'G_EQUIP_TYPE', 205, '1500407', '传说武器', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (790, 'G_EQUIP_TYPE', 205, '1500402', '传说护肩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (791, 'G_EQUIP_TYPE', 205, '1500405', '传说护手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (792, 'G_EQUIP_TYPE', 205, '1500403', '传说胸甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (793, 'G_EQUIP_TYPE', 205, '1500404', '传说腿甲', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (794, 'G_EQUIP_TYPE', 205, '1500406', '传说战靴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2001, 'G_ITEM_TYPE', 211, '1026', '1级强化石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2002, 'G_ITEM_TYPE', 211, '2001', '[普通]魔法之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2003, 'G_ITEM_TYPE', 211, '2002', '[普通]集火之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2004, 'G_ITEM_TYPE', 211, '2003', '[普通]神秘精华', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2005, 'G_ITEM_TYPE', 211, '2004', '[普通]羊皮卷轴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2006, 'G_ITEM_TYPE', 211, '2005', '[普通]神秘宝珠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2007, 'G_ITEM_TYPE', 211, '2006', '[普通]狂怒之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2008, 'G_ITEM_TYPE', 211, '2007', '[普通]翔龙之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2009, 'G_ITEM_TYPE', 211, '2008', '[普通]幸运卡片', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2010, 'G_ITEM_TYPE', 211, '2009', '[普通]泰坦钢锭', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2011, 'G_ITEM_TYPE', 211, '2010', '[普通]氪金矿石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2012, 'G_ITEM_TYPE', 211, '2011', '[普通]极地龙鳞', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2013, 'G_ITEM_TYPE', 211, '2012', '[普通]灵纹布', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2014, 'G_ITEM_TYPE', 211, '2064', '1级强化石袋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2015, 'G_ITEM_TYPE', 211, '2069', '[普通]进阶材料包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2016, 'G_ITEM_TYPE', 212, '1001', '初级体力药水', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2017, 'G_ITEM_TYPE', 212, '1005', '小袋钻石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2018, 'G_ITEM_TYPE', 212, '1009', '小袋金币', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2019, 'G_ITEM_TYPE', 212, '1017', '初级竞技勋章', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2020, 'G_ITEM_TYPE', 212, '1020', '初级祭祀石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2021, 'G_ITEM_TYPE', 212, '1023', '初级荣誉石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2022, 'G_ITEM_TYPE', 212, '1027', '2级强化石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2023, 'G_ITEM_TYPE', 212, '1184', '青铜装备宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2024, 'G_ITEM_TYPE', 212, '1201', '25活跃宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2025, 'G_ITEM_TYPE', 212, '2013', '[优秀]魔法之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2026, 'G_ITEM_TYPE', 212, '2014', '[优秀]集火之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2027, 'G_ITEM_TYPE', 212, '2015', '[优秀]神秘精华', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2028, 'G_ITEM_TYPE', 212, '2016', '[优秀]羊皮卷轴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2029, 'G_ITEM_TYPE', 212, '2017', '[优秀]神秘宝珠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2030, 'G_ITEM_TYPE', 212, '2018', '[优秀]狂怒之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2031, 'G_ITEM_TYPE', 212, '2019', '[优秀]翔龙之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2032, 'G_ITEM_TYPE', 212, '2020', '[优秀]幸运卡片', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2033, 'G_ITEM_TYPE', 212, '2021', '[优秀]泰坦钢锭', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2034, 'G_ITEM_TYPE', 212, '2022', '[优秀]氪金矿石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2035, 'G_ITEM_TYPE', 212, '2023', '[优秀]极地龙鳞', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2036, 'G_ITEM_TYPE', 212, '2024', '[优秀]灵纹布', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2037, 'G_ITEM_TYPE', 212, '2065', '2级强化石袋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2038, 'G_ITEM_TYPE', 212, '2070', '[优秀]进阶材料包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2039, 'G_ITEM_TYPE', 213, '1002', '中级体力药水', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2040, 'G_ITEM_TYPE', 213, '1006', '中袋钻石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2041, 'G_ITEM_TYPE', 213, '1010', '中袋金币', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2042, 'G_ITEM_TYPE', 213, '1018', '中级竞技勋章', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2043, 'G_ITEM_TYPE', 213, '1021', '中级祭祀石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2044, 'G_ITEM_TYPE', 213, '1024', '中级荣誉石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2045, 'G_ITEM_TYPE', 213, '1028', '3级强化石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2046, 'G_ITEM_TYPE', 213, '1185', '白银装备宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2047, 'G_ITEM_TYPE', 213, '1202', '50活跃宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2048, 'G_ITEM_TYPE', 213, '2025', '[精良]魔法之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2049, 'G_ITEM_TYPE', 213, '2026', '[精良]集火之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2050, 'G_ITEM_TYPE', 213, '2027', '[精良]神秘精华', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2051, 'G_ITEM_TYPE', 213, '2028', '[精良]羊皮卷轴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2052, 'G_ITEM_TYPE', 213, '2029', '[精良]神秘宝珠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2053, 'G_ITEM_TYPE', 213, '2030', '[精良]狂怒之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2054, 'G_ITEM_TYPE', 213, '2031', '[精良]翔龙之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2055, 'G_ITEM_TYPE', 213, '2032', '[精良]幸运卡片', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2056, 'G_ITEM_TYPE', 213, '2033', '[精良]泰坦钢锭', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2057, 'G_ITEM_TYPE', 213, '2034', '[精良]氪金矿石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2058, 'G_ITEM_TYPE', 213, '2035', '[精良]极地龙鳞', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2059, 'G_ITEM_TYPE', 213, '2036', '[精良]灵纹布', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2060, 'G_ITEM_TYPE', 213, '2061', '迷宫铜宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2061, 'G_ITEM_TYPE', 213, '2066', '3级强化石袋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2062, 'G_ITEM_TYPE', 213, '2071', '[精良]进阶材料包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2063, 'G_ITEM_TYPE', 214, '1003', '高级体力药水', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2064, 'G_ITEM_TYPE', 214, '1007', '大袋钻石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2065, 'G_ITEM_TYPE', 214, '1011', '大袋金币', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2066, 'G_ITEM_TYPE', 214, '1016', '神秘宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2067, 'G_ITEM_TYPE', 214, '1019', '高级竞技勋章', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2068, 'G_ITEM_TYPE', 214, '1022', '高级祭祀石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2069, 'G_ITEM_TYPE', 214, '1025', '高级荣誉石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2070, 'G_ITEM_TYPE', 214, '1029', '4级强化石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2071, 'G_ITEM_TYPE', 214, '1186', '黄金装备宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2072, 'G_ITEM_TYPE', 214, '1203', '75活跃宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2073, 'G_ITEM_TYPE', 214, '2037', '[史诗]魔法之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2074, 'G_ITEM_TYPE', 214, '2038', '[史诗]集火之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2075, 'G_ITEM_TYPE', 214, '2039', '[史诗]神秘精华', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2076, 'G_ITEM_TYPE', 214, '2040', '[史诗]羊皮卷轴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2077, 'G_ITEM_TYPE', 214, '2041', '[史诗]神秘宝珠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2078, 'G_ITEM_TYPE', 214, '2042', '[史诗]狂怒之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2079, 'G_ITEM_TYPE', 214, '2043', '[史诗]翔龙之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2080, 'G_ITEM_TYPE', 214, '2044', '[史诗]幸运卡片', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2081, 'G_ITEM_TYPE', 214, '2045', '[史诗]泰坦钢锭', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2082, 'G_ITEM_TYPE', 214, '2046', '[史诗]氪金矿石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2083, 'G_ITEM_TYPE', 214, '2047', '[史诗]极地龙鳞', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2084, 'G_ITEM_TYPE', 214, '2048', '[史诗]灵纹布', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2085, 'G_ITEM_TYPE', 214, '2062', '迷宫银宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2086, 'G_ITEM_TYPE', 214, '2067', '4级强化石袋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2087, 'G_ITEM_TYPE', 214, '2072', '[史诗]进阶材料包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2088, 'G_ITEM_TYPE', 215, '1004', '特级体力药水', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2089, 'G_ITEM_TYPE', 215, '1008', '特大袋钻石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2090, 'G_ITEM_TYPE', 215, '1012', '特大袋金币', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2091, 'G_ITEM_TYPE', 215, '1013', '特级竞技勋章', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2092, 'G_ITEM_TYPE', 215, '1014', '特级祭祀石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2093, 'G_ITEM_TYPE', 215, '1015', '特级荣誉石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2094, 'G_ITEM_TYPE', 215, '1030', '5级强化石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2095, 'G_ITEM_TYPE', 215, '1187', '巨龙装备宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2096, 'G_ITEM_TYPE', 215, '1204', '100活跃宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2097, 'G_ITEM_TYPE', 215, '2049', '[传说]魔法之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2098, 'G_ITEM_TYPE', 215, '2050', '[传说]集火之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2099, 'G_ITEM_TYPE', 215, '2051', '[传说]神秘精华', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2100, 'G_ITEM_TYPE', 215, '2052', '[传说]羊皮卷轴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2101, 'G_ITEM_TYPE', 215, '2053', '[传说]神秘宝珠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2102, 'G_ITEM_TYPE', 215, '2054', '[传说]狂怒之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2103, 'G_ITEM_TYPE', 215, '2055', '[传说]翔龙之符', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2104, 'G_ITEM_TYPE', 215, '2056', '[传说]幸运卡片', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2105, 'G_ITEM_TYPE', 215, '2057', '[传说]泰坦钢锭', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2106, 'G_ITEM_TYPE', 215, '2058', '[传说]氪金矿石', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2107, 'G_ITEM_TYPE', 215, '2059', '[传说]极地龙鳞', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2108, 'G_ITEM_TYPE', 215, '2060', '[传说]灵纹布', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2109, 'G_ITEM_TYPE', 215, '2063', '迷宫金宝箱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2110, 'G_ITEM_TYPE', 215, '2068', '5级强化石袋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2111, 'G_ITEM_TYPE', 215, '2073', '[传说]进阶材料包', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2112, 'G_ITEM_TYPE', 211, '2074', '[普通]精灵之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2113, 'G_ITEM_TYPE', 211, '2075', '[普通]嗜血之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2114, 'G_ITEM_TYPE', 211, '2076', '[普通]先知之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2115, 'G_ITEM_TYPE', 211, '2077', '[普通]大地之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2116, 'G_ITEM_TYPE', 211, '2078', '[普通]暴风之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2117, 'G_ITEM_TYPE', 211, '2079', '[普通]工程之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2118, 'G_ITEM_TYPE', 211, '2080', '[普通]迷踪之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2119, 'G_ITEM_TYPE', 212, '2081', '[优秀]精灵之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2120, 'G_ITEM_TYPE', 212, '2082', '[优秀]嗜血之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2121, 'G_ITEM_TYPE', 212, '2083', '[优秀]先知之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2122, 'G_ITEM_TYPE', 212, '2084', '[优秀]大地之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2123, 'G_ITEM_TYPE', 212, '2085', '[优秀]暴风之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2124, 'G_ITEM_TYPE', 212, '2086', '[优秀]工程之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2125, 'G_ITEM_TYPE', 212, '2087', '[优秀]迷踪之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2126, 'G_ITEM_TYPE', 213, '2088', '[精良]精灵之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2127, 'G_ITEM_TYPE', 213, '2089', '[精良]嗜血之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2128, 'G_ITEM_TYPE', 213, '2090', '[精良]先知之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2129, 'G_ITEM_TYPE', 213, '2091', '[精良]大地之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2130, 'G_ITEM_TYPE', 213, '2092', '[精良]暴风之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2131, 'G_ITEM_TYPE', 213, '2093', '[精良]工程之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2132, 'G_ITEM_TYPE', 213, '2094', '[精良]迷踪之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2133, 'G_ITEM_TYPE', 214, '2095', '[史诗]精灵之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2134, 'G_ITEM_TYPE', 214, '2096', '[史诗]嗜血之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2135, 'G_ITEM_TYPE', 214, '2097', '[史诗]先知之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2136, 'G_ITEM_TYPE', 214, '2098', '[史诗]大地之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2137, 'G_ITEM_TYPE', 214, '2099', '[史诗]暴风之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2138, 'G_ITEM_TYPE', 214, '2100', '[史诗]工程之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2139, 'G_ITEM_TYPE', 214, '2101', '[史诗]迷踪之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2140, 'G_ITEM_TYPE', 215, '2102', '[传说]精灵之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2141, 'G_ITEM_TYPE', 215, '2103', '[传说]嗜血之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2142, 'G_ITEM_TYPE', 215, '2104', '[传说]先知之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2143, 'G_ITEM_TYPE', 215, '2105', '[传说]大地之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2144, 'G_ITEM_TYPE', 215, '2106', '[传说]暴风之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2145, 'G_ITEM_TYPE', 215, '2107', '[传说]工程之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2146, 'G_ITEM_TYPE', 215, '2108', '[传说]迷踪之魂', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2147, 'G_ITEM_TYPE', 211, '3001', '八爪鱼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2148, 'G_ITEM_TYPE', 212, '3002', '血虾', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2149, 'G_ITEM_TYPE', 213, '3003', '北风水母', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2150, 'G_ITEM_TYPE', 214, '3004', '大鼠尾鱼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2151, 'G_ITEM_TYPE', 215, '3005', '帝王鳐', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2152, 'G_ITEM_TYPE', 215, '3006', '帝王虾', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2153, 'G_ITEM_TYPE', 211, '3007', '黏糊的蜘蛛腿', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2154, 'G_ITEM_TYPE', 212, '3008', '西冷牛排', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2155, 'G_ITEM_TYPE', 213, '3009', '蜥蜴肝', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2156, 'G_ITEM_TYPE', 214, '3010', '犀牛舌', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2157, 'G_ITEM_TYPE', 215, '3011', '迁跃兽骨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2158, 'G_ITEM_TYPE', 215, '3012', '猛犸肉', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2159, 'G_ITEM_TYPE', 211, '3013', '美味鸟翅膀', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2160, 'G_ITEM_TYPE', 212, '3014', '秃鹰肉', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2161, 'G_ITEM_TYPE', 213, '3015', '巨蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2162, 'G_ITEM_TYPE', 214, '3016', '沙地海燕', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2163, 'G_ITEM_TYPE', 215, '3017', '小黑龙眼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2164, 'G_ITEM_TYPE', 215, '3018', '龙肋排', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3001, 'G_PET_TYPE', null, '1000001', '萌小Q', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3002, 'G_PET_TYPE', null, '1000002', '小山猪', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3003, 'G_PET_TYPE', null, '1000003', '小红龙', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3004, 'G_PET_TYPE', null, '1000004', '白鳍企鹅', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3005, 'G_PET_TYPE', null, '1000005', '小豪猪', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3006, 'G_PET_TYPE', null, '1000006', '小黑龙', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3007, 'G_PET_TYPE', null, '1000007', '黄眼企鹅', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3008, 'G_PET_TYPE', null, '1000008', '萨丁野猪', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3009, 'G_PET_TYPE', null, '1000009', '小蓝龙', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3010, 'G_PET_TYPE', null, '1000010', '王企鹅', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3011, 'G_PET_TYPE', null, '1000011', '里海野猪', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3012, 'G_PET_TYPE', null, '1000012', '小绿龙', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3013, 'G_PET_TYPE', null, '1000013', '帝企鹅', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3014, 'G_PET_TYPE', null, '1000014', '加索野猪', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3015, 'G_PET_TYPE', null, '1000015', '小神龙', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4001, 'G_EXCHANGE_TYPE', null, '1', '1', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4002, 'G_EXCHANGE_TYPE', null, '2', '2', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4003, 'G_EXCHANGE_TYPE', null, '3', '3', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4004, 'G_EXCHANGE_TYPE', null, '4', '4', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4005, 'G_EXCHANGE_TYPE', null, '5', '5', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4006, 'G_EXCHANGE_TYPE', null, '6', '6', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4007, 'G_EXCHANGE_TYPE', null, '7', '7', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4008, 'G_EXCHANGE_TYPE', null, '8', '8', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4009, 'G_EXCHANGE_TYPE', null, '9', '9', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4010, 'G_EXCHANGE_TYPE', null, '10', '10', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4011, 'G_EXCHANGE_TYPE', null, '11', '11', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4012, 'G_EXCHANGE_TYPE', null, '12', '12', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4013, 'G_EXCHANGE_TYPE', null, '13', '13', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4014, 'G_EXCHANGE_TYPE', null, '14', '14', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4015, 'G_EXCHANGE_TYPE', null, '15', '15', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4016, 'G_EXCHANGE_TYPE', null, '16', '16', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4017, 'G_EXCHANGE_TYPE', null, '17', '17', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4018, 'G_EXCHANGE_TYPE', null, '18', '18', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4019, 'G_EXCHANGE_TYPE', null, '19', '19', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4020, 'G_EXCHANGE_TYPE', null, '20', '20', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4021, 'G_EXCHANGE_TYPE', null, '21', '21', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4022, 'G_EXCHANGE_TYPE', null, '22', '22', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4023, 'G_EXCHANGE_TYPE', null, '23', '23', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4024, 'G_EXCHANGE_TYPE', null, '24', '24', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4025, 'G_EXCHANGE_TYPE', null, '25', '25', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4026, 'G_EXCHANGE_TYPE', null, '26', '26', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4027, 'G_EXCHANGE_TYPE', null, '27', '27', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4028, 'G_EXCHANGE_TYPE', null, '28', '28', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4029, 'G_EXCHANGE_TYPE', null, '29', '29', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4030, 'G_EXCHANGE_TYPE', null, '30', '30', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4031, 'G_EXCHANGE_TYPE', null, '31', '31', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4032, 'G_EXCHANGE_TYPE', null, '32', '32', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4033, 'G_EXCHANGE_TYPE', null, '33', '33', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4034, 'G_EXCHANGE_TYPE', null, '34', '34', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4035, 'G_EXCHANGE_TYPE', null, '35', '35', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4036, 'G_EXCHANGE_TYPE', null, '36', '36', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4037, 'G_EXCHANGE_TYPE', null, '37', '37', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4038, 'G_EXCHANGE_TYPE', null, '38', '38', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4039, 'G_EXCHANGE_TYPE', null, '39', '39', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4040, 'G_EXCHANGE_TYPE', null, '40', '40', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4041, 'G_EXCHANGE_TYPE', null, '41', '41', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4042, 'G_EXCHANGE_TYPE', null, '42', '42', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4043, 'G_EXCHANGE_TYPE', null, '43', '43', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4044, 'G_EXCHANGE_TYPE', null, '44', '44', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4045, 'G_EXCHANGE_TYPE', null, '45', '45', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4046, 'G_EXCHANGE_TYPE', null, '46', '46', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4047, 'G_EXCHANGE_TYPE', null, '47', '47', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4048, 'G_EXCHANGE_TYPE', null, '48', '48', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4049, 'G_EXCHANGE_TYPE', null, '49', '49', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4050, 'G_EXCHANGE_TYPE', null, '50', '50', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4051, 'G_EXCHANGE_TYPE', null, '51', '51', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4052, 'G_EXCHANGE_TYPE', null, '52', '52', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4053, 'G_EXCHANGE_TYPE', null, '53', '53', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4054, 'G_EXCHANGE_TYPE', null, '54', '54', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4055, 'G_EXCHANGE_TYPE', null, '55', '55', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4056, 'G_EXCHANGE_TYPE', null, '56', '56', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4057, 'G_EXCHANGE_TYPE', null, '57', '57', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4058, 'G_EXCHANGE_TYPE', null, '58', '58', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4059, 'G_EXCHANGE_TYPE', null, '59', '59', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4060, 'G_EXCHANGE_TYPE', null, '60', '60', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4061, 'G_EXCHANGE_TYPE', null, '61', '61', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4062, 'G_EXCHANGE_TYPE', null, '62', '62', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4063, 'G_EXCHANGE_TYPE', null, '63', '63', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4064, 'G_EXCHANGE_TYPE', null, '64', '64', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4065, 'G_EXCHANGE_TYPE', null, '65', '65', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4066, 'G_EXCHANGE_TYPE', null, '66', '66', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4067, 'G_EXCHANGE_TYPE', null, '67', '67', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4068, 'G_EXCHANGE_TYPE', null, '68', '68', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4069, 'G_EXCHANGE_TYPE', null, '69', '69', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4070, 'G_EXCHANGE_TYPE', null, '70', '70', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4071, 'G_EXCHANGE_TYPE', null, '71', '71', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4072, 'G_EXCHANGE_TYPE', null, '72', '72', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4073, 'G_EXCHANGE_TYPE', null, '73', '73', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4074, 'G_EXCHANGE_TYPE', null, '74', '74', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4075, 'G_EXCHANGE_TYPE', null, '75', '75', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4076, 'G_EXCHANGE_TYPE', null, '76', '76', '602', '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4501, 'G_ACTIVITY_SPECIFIC_TYPE', null, '101001', '101001', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10001, 'G_HERO_TYPE', 221, '21201', '大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10002, 'G_HERO_TYPE', 221, '10002', '熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10003, 'G_HERO_TYPE', 221, '10003', '小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10004, 'G_HERO_TYPE', 221, '10004', '河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10005, 'G_HERO_TYPE', 221, '10005', '黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10006, 'G_HERO_TYPE', 221, '10006', '利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10007, 'G_HERO_TYPE', 221, '10007', '血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10008, 'G_HERO_TYPE', 221, '10008', '光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10009, 'G_HERO_TYPE', 222, '10009', '黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10010, 'G_HERO_TYPE', 222, '10010', '银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10011, 'G_HERO_TYPE', 222, '10011', '法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10012, 'G_HERO_TYPE', 222, '10012', '飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10013, 'G_HERO_TYPE', 222, '10013', '尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10014, 'G_HERO_TYPE', 222, '10014', '美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10015, 'G_HERO_TYPE', 222, '10015', '巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10016, 'G_HERO_TYPE', 223, '10016', '血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10017, 'G_HERO_TYPE', 223, '10017', '大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10018, 'G_HERO_TYPE', 223, '10018', '影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10019, 'G_HERO_TYPE', 223, '10019', '摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10020, 'G_HERO_TYPE', 223, '10020', '巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10021, 'G_HERO_TYPE', 223, '10021', '梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10022, 'G_HERO_TYPE', 223, '10022', '星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10023, 'G_HERO_TYPE', 223, '10023', '山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10024, 'G_HERO_TYPE', 224, '10024', '白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10025, 'G_HERO_TYPE', 224, '10025', '逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10026, 'G_HERO_TYPE', 224, '10026', '大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10027, 'G_HERO_TYPE', 224, '10027', '血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10028, 'G_HERO_TYPE', 224, '10028', '传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10029, 'G_HERO_TYPE', 224, '10029', '熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10030, 'G_HERO_TYPE', 224, '10030', '脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10031, 'G_HERO_TYPE', 225, '10031', '蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10032, 'G_HERO_TYPE', 225, '10032', '燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10033, 'G_HERO_TYPE', 225, '10033', '风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10034, 'G_HERO_TYPE', 225, '10034', '神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10035, 'G_HERO_TYPE', 225, '10035', '英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10036, 'G_HERO_TYPE', 225, '10036', '月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10037, 'G_HERO_TYPE', 225, '10037', '小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10038, 'G_HERO_TYPE', 221, '21301', '[1星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10039, 'G_HERO_TYPE', 221, '10102', '[1星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10040, 'G_HERO_TYPE', 221, '10103', '[1星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10041, 'G_HERO_TYPE', 221, '10104', '[1星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10042, 'G_HERO_TYPE', 221, '10105', '[1星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10043, 'G_HERO_TYPE', 221, '10106', '[1星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10044, 'G_HERO_TYPE', 221, '10107', '[1星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10045, 'G_HERO_TYPE', 221, '10108', '[1星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10046, 'G_HERO_TYPE', 222, '10109', '[1星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10047, 'G_HERO_TYPE', 222, '10110', '[1星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10048, 'G_HERO_TYPE', 222, '10111', '[1星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10049, 'G_HERO_TYPE', 222, '10112', '[1星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10050, 'G_HERO_TYPE', 222, '10113', '[1星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10051, 'G_HERO_TYPE', 222, '10114', '[1星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10052, 'G_HERO_TYPE', 222, '10115', '[1星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10053, 'G_HERO_TYPE', 223, '10116', '[1星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10054, 'G_HERO_TYPE', 223, '10117', '[1星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10055, 'G_HERO_TYPE', 225, '10118', '[1星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10056, 'G_HERO_TYPE', 223, '10119', '[1星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10057, 'G_HERO_TYPE', 223, '10120', '[1星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10058, 'G_HERO_TYPE', 223, '10121', '[1星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10059, 'G_HERO_TYPE', 223, '10122', '[1星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10060, 'G_HERO_TYPE', 223, '10123', '[1星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10061, 'G_HERO_TYPE', 224, '10124', '[1星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10062, 'G_HERO_TYPE', 224, '10125', '[1星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10063, 'G_HERO_TYPE', 224, '10126', '[1星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10064, 'G_HERO_TYPE', 224, '10127', '[1星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10065, 'G_HERO_TYPE', 224, '10128', '[1星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10066, 'G_HERO_TYPE', 224, '10129', '[1星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10067, 'G_HERO_TYPE', 224, '10130', '[1星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10068, 'G_HERO_TYPE', 225, '10131', '[1星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10069, 'G_HERO_TYPE', 225, '10132', '[1星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10070, 'G_HERO_TYPE', 225, '10133', '[1星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10071, 'G_HERO_TYPE', 225, '10134', '[1星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10072, 'G_HERO_TYPE', 225, '10135', '[1星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10073, 'G_HERO_TYPE', 225, '10136', '[1星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10074, 'G_HERO_TYPE', 225, '10137', '[1星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10075, 'G_HERO_TYPE', 222, '21401', '[2星]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10076, 'G_HERO_TYPE', 221, '10202', '[2星]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10077, 'G_HERO_TYPE', 221, '10203', '[2星]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10078, 'G_HERO_TYPE', 221, '10204', '[2星]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10079, 'G_HERO_TYPE', 221, '10205', '[2星]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10080, 'G_HERO_TYPE', 221, '10206', '[2星]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10081, 'G_HERO_TYPE', 221, '10207', '[2星]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10082, 'G_HERO_TYPE', 221, '10208', '[2星]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10083, 'G_HERO_TYPE', 222, '10209', '[2星]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10084, 'G_HERO_TYPE', 222, '10210', '[2星]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10085, 'G_HERO_TYPE', 222, '10211', '[2星]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10086, 'G_HERO_TYPE', 222, '10212', '[2星]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10087, 'G_HERO_TYPE', 222, '10213', '[2星]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10088, 'G_HERO_TYPE', 222, '10214', '[2星]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10089, 'G_HERO_TYPE', 222, '10215', '[2星]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10090, 'G_HERO_TYPE', 223, '10216', '[2星]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10091, 'G_HERO_TYPE', 223, '10217', '[2星]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10092, 'G_HERO_TYPE', 225, '10218', '[2星]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10093, 'G_HERO_TYPE', 223, '10219', '[2星]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10094, 'G_HERO_TYPE', 223, '10220', '[2星]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10095, 'G_HERO_TYPE', 223, '10221', '[2星]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10096, 'G_HERO_TYPE', 223, '10222', '[2星]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10097, 'G_HERO_TYPE', 223, '10223', '[2星]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10098, 'G_HERO_TYPE', 224, '10224', '[2星]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10099, 'G_HERO_TYPE', 224, '10225', '[2星]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10100, 'G_HERO_TYPE', 224, '10226', '[2星]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10101, 'G_HERO_TYPE', 224, '10227', '[2星]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10102, 'G_HERO_TYPE', 224, '10228', '[2星]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10103, 'G_HERO_TYPE', 224, '10229', '[2星]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10104, 'G_HERO_TYPE', 224, '10230', '[2星]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10105, 'G_HERO_TYPE', 225, '10231', '[2星]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10106, 'G_HERO_TYPE', 225, '10232', '[2星]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10107, 'G_HERO_TYPE', 225, '10233', '[2星]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10108, 'G_HERO_TYPE', 225, '10234', '[2星]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10109, 'G_HERO_TYPE', 225, '10235', '[2星]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10110, 'G_HERO_TYPE', 225, '10236', '[2星]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10111, 'G_HERO_TYPE', 225, '10237', '[2星]小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10112, 'G_HERO_TYPE', 222, '21501', '[2星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10113, 'G_HERO_TYPE', 221, '10302', '[2星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10114, 'G_HERO_TYPE', 221, '10303', '[2星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10115, 'G_HERO_TYPE', 221, '10304', '[2星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10116, 'G_HERO_TYPE', 221, '10305', '[2星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10117, 'G_HERO_TYPE', 221, '10306', '[2星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10118, 'G_HERO_TYPE', 221, '10307', '[2星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10119, 'G_HERO_TYPE', 221, '10308', '[2星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10120, 'G_HERO_TYPE', 222, '10309', '[2星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10121, 'G_HERO_TYPE', 222, '10310', '[2星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10122, 'G_HERO_TYPE', 222, '10311', '[2星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10123, 'G_HERO_TYPE', 222, '10312', '[2星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10124, 'G_HERO_TYPE', 222, '10313', '[2星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10125, 'G_HERO_TYPE', 222, '10314', '[2星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10126, 'G_HERO_TYPE', 222, '10315', '[2星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10127, 'G_HERO_TYPE', 223, '10316', '[2星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10128, 'G_HERO_TYPE', 223, '10317', '[2星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10129, 'G_HERO_TYPE', 225, '10318', '[2星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10130, 'G_HERO_TYPE', 223, '10319', '[2星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10131, 'G_HERO_TYPE', 223, '10320', '[2星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10132, 'G_HERO_TYPE', 223, '10321', '[2星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10133, 'G_HERO_TYPE', 223, '10322', '[2星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10134, 'G_HERO_TYPE', 223, '10323', '[2星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10135, 'G_HERO_TYPE', 224, '10324', '[2星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10136, 'G_HERO_TYPE', 224, '10325', '[2星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10137, 'G_HERO_TYPE', 224, '10326', '[2星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10138, 'G_HERO_TYPE', 224, '10327', '[2星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10139, 'G_HERO_TYPE', 224, '10328', '[2星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10140, 'G_HERO_TYPE', 224, '10329', '[2星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10141, 'G_HERO_TYPE', 224, '10330', '[2星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10142, 'G_HERO_TYPE', 225, '10331', '[2星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10143, 'G_HERO_TYPE', 225, '10332', '[2星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10144, 'G_HERO_TYPE', 225, '10333', '[2星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10145, 'G_HERO_TYPE', 225, '10334', '[2星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10146, 'G_HERO_TYPE', 225, '10335', '[2星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10147, 'G_HERO_TYPE', 225, '10336', '[2星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10148, 'G_HERO_TYPE', 225, '10337', '[2星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10149, 'G_HERO_TYPE', 222, '21601', '[2星]大法师珍娜+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10150, 'G_HERO_TYPE', 221, '10402', '[2星]熊喵阿肚+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10151, 'G_HERO_TYPE', 221, '10403', '[2星]小牛血蹄+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10152, 'G_HERO_TYPE', 221, '10404', '[2星]河爪首领+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10153, 'G_HERO_TYPE', 221, '10405', '[2星]黑暗邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10154, 'G_HERO_TYPE', 221, '10406', '[2星]利爪小德+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10155, 'G_HERO_TYPE', 221, '10407', '[2星]血帆猎手+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10156, 'G_HERO_TYPE', 221, '10408', '[2星]光明邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10157, 'G_HERO_TYPE', 222, '10409', '[2星]黑金团长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10158, 'G_HERO_TYPE', 222, '10410', '[2星]银色神官+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10159, 'G_HERO_TYPE', 222, '10411', '[2星]法力风暴+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10160, 'G_HERO_TYPE', 222, '10412', '[2星]飞刀战将+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10161, 'G_HERO_TYPE', 222, '10413', '[2星]尖牙王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10162, 'G_HERO_TYPE', 222, '10414', '[2星]美艳妖后+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10163, 'G_HERO_TYPE', 222, '10415', '[2星]巨魔导师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10164, 'G_HERO_TYPE', 223, '10416', '[2星]血狼王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10165, 'G_HERO_TYPE', 223, '10417', '[2星]大星术师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10166, 'G_HERO_TYPE', 225, '10418', '[2星]影踪掌门+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10167, 'G_HERO_TYPE', 223, '10419', '[2星]摄政阿强+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10168, 'G_HERO_TYPE', 223, '10420', '[2星]巨魔酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10169, 'G_HERO_TYPE', 223, '10421', '[2星]梅大工匠+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10170, 'G_HERO_TYPE', 223, '10422', '[2星]星界守护者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10171, 'G_HERO_TYPE', 223, '10423', '[2星]山丘之王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10172, 'G_HERO_TYPE', 224, '10424', '[2星]白银领袖+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10173, 'G_HERO_TYPE', 224, '10425', '[2星]逐日者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10174, 'G_HERO_TYPE', 224, '10426', '[2星]大先知+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10175, 'G_HERO_TYPE', 224, '10427', '[2星]血蹄酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10176, 'G_HERO_TYPE', 224, '10428', '[2星]传奇猎神+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10177, 'G_HERO_TYPE', 224, '10429', '[2星]熊喵酒仙+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10178, 'G_HERO_TYPE', 224, '10430', '[2星]脑残吼+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10179, 'G_HERO_TYPE', 225, '10431', '[2星]蛋刀男+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10180, 'G_HERO_TYPE', 225, '10432', '[2星]燃烧的鸡蛋+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10181, 'G_HERO_TYPE', 225, '10433', '[2星]风行者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10182, 'G_HERO_TYPE', 225, '10434', '[2星]神眠者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10183, 'G_HERO_TYPE', 225, '10435', '[2星]英雄萨+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10184, 'G_HERO_TYPE', 225, '10436', '[2星]月之女+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10185, 'G_HERO_TYPE', 225, '10437', '[2星]小阿王子+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10186, 'G_HERO_TYPE', 223, '21701', '[3星]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10187, 'G_HERO_TYPE', 221, '10502', '[3星]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10188, 'G_HERO_TYPE', 221, '10503', '[3星]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10189, 'G_HERO_TYPE', 221, '10504', '[3星]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10190, 'G_HERO_TYPE', 221, '10505', '[3星]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10191, 'G_HERO_TYPE', 221, '10506', '[3星]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10192, 'G_HERO_TYPE', 221, '10507', '[3星]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10193, 'G_HERO_TYPE', 221, '10508', '[3星]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10194, 'G_HERO_TYPE', 222, '10509', '[3星]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10195, 'G_HERO_TYPE', 222, '10510', '[3星]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10196, 'G_HERO_TYPE', 222, '10511', '[3星]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10197, 'G_HERO_TYPE', 222, '10512', '[3星]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10198, 'G_HERO_TYPE', 222, '10513', '[3星]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10199, 'G_HERO_TYPE', 222, '10514', '[3星]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10200, 'G_HERO_TYPE', 222, '10515', '[3星]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10201, 'G_HERO_TYPE', 223, '10516', '[3星]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10202, 'G_HERO_TYPE', 223, '10517', '[3星]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10203, 'G_HERO_TYPE', 225, '10518', '[3星]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10204, 'G_HERO_TYPE', 223, '10519', '[3星]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10205, 'G_HERO_TYPE', 223, '10520', '[3星]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10206, 'G_HERO_TYPE', 223, '10521', '[3星]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10207, 'G_HERO_TYPE', 223, '10522', '[3星]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10208, 'G_HERO_TYPE', 223, '10523', '[3星]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10209, 'G_HERO_TYPE', 224, '10524', '[3星]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10210, 'G_HERO_TYPE', 224, '10525', '[3星]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10211, 'G_HERO_TYPE', 224, '10526', '[3星]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10212, 'G_HERO_TYPE', 224, '10527', '[3星]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10213, 'G_HERO_TYPE', 224, '10528', '[3星]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10214, 'G_HERO_TYPE', 224, '10529', '[3星]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10215, 'G_HERO_TYPE', 224, '10530', '[3星]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10216, 'G_HERO_TYPE', 225, '10531', '[3星]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10217, 'G_HERO_TYPE', 225, '10532', '[3星]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10218, 'G_HERO_TYPE', 225, '10533', '[3星]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10219, 'G_HERO_TYPE', 225, '10534', '[3星]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10220, 'G_HERO_TYPE', 225, '10535', '[3星]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10221, 'G_HERO_TYPE', 225, '10536', '[3星]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10222, 'G_HERO_TYPE', 225, '10537', '[3星]小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10223, 'G_HERO_TYPE', 223, '21801', '[3星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10224, 'G_HERO_TYPE', 221, '10602', '[3星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10225, 'G_HERO_TYPE', 221, '10603', '[3星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10226, 'G_HERO_TYPE', 221, '10604', '[3星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10227, 'G_HERO_TYPE', 221, '10605', '[3星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10228, 'G_HERO_TYPE', 221, '10606', '[3星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10229, 'G_HERO_TYPE', 221, '10607', '[3星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10230, 'G_HERO_TYPE', 221, '10608', '[3星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10231, 'G_HERO_TYPE', 222, '10609', '[3星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10232, 'G_HERO_TYPE', 222, '10610', '[3星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10233, 'G_HERO_TYPE', 222, '10611', '[3星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10234, 'G_HERO_TYPE', 222, '10612', '[3星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10235, 'G_HERO_TYPE', 222, '10613', '[3星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10236, 'G_HERO_TYPE', 222, '10614', '[3星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10237, 'G_HERO_TYPE', 222, '10615', '[3星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10238, 'G_HERO_TYPE', 223, '10616', '[3星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10239, 'G_HERO_TYPE', 223, '10617', '[3星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10240, 'G_HERO_TYPE', 225, '10618', '[3星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10241, 'G_HERO_TYPE', 223, '10619', '[3星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10242, 'G_HERO_TYPE', 223, '10620', '[3星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10243, 'G_HERO_TYPE', 223, '10621', '[3星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10244, 'G_HERO_TYPE', 223, '10622', '[3星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10245, 'G_HERO_TYPE', 223, '10623', '[3星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10246, 'G_HERO_TYPE', 224, '10624', '[3星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10247, 'G_HERO_TYPE', 224, '10625', '[3星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10248, 'G_HERO_TYPE', 224, '10626', '[3星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10249, 'G_HERO_TYPE', 224, '10627', '[3星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10250, 'G_HERO_TYPE', 224, '10628', '[3星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10251, 'G_HERO_TYPE', 224, '10629', '[3星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10252, 'G_HERO_TYPE', 224, '10630', '[3星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10253, 'G_HERO_TYPE', 225, '10631', '[3星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10254, 'G_HERO_TYPE', 225, '10632', '[3星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10255, 'G_HERO_TYPE', 225, '10633', '[3星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10256, 'G_HERO_TYPE', 225, '10634', '[3星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10257, 'G_HERO_TYPE', 225, '10635', '[3星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10258, 'G_HERO_TYPE', 225, '10636', '[3星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10259, 'G_HERO_TYPE', 225, '10637', '[3星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10260, 'G_HERO_TYPE', 223, '21901', '[3星]大法师珍娜+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10261, 'G_HERO_TYPE', 221, '10702', '[3星]熊喵阿肚+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10262, 'G_HERO_TYPE', 221, '10703', '[3星]小牛血蹄+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10263, 'G_HERO_TYPE', 221, '10704', '[3星]河爪首领+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10264, 'G_HERO_TYPE', 221, '10705', '[3星]黑暗邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10265, 'G_HERO_TYPE', 221, '10706', '[3星]利爪小德+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10266, 'G_HERO_TYPE', 221, '10707', '[3星]血帆猎手+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10267, 'G_HERO_TYPE', 221, '10708', '[3星]光明邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10268, 'G_HERO_TYPE', 222, '10709', '[3星]黑金团长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10269, 'G_HERO_TYPE', 222, '10710', '[3星]银色神官+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10270, 'G_HERO_TYPE', 222, '10711', '[3星]法力风暴+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10271, 'G_HERO_TYPE', 222, '10712', '[3星]飞刀战将+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10272, 'G_HERO_TYPE', 222, '10713', '[3星]尖牙王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10273, 'G_HERO_TYPE', 222, '10714', '[3星]美艳妖后+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10274, 'G_HERO_TYPE', 222, '10715', '[3星]巨魔导师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10275, 'G_HERO_TYPE', 223, '10716', '[3星]血狼王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10276, 'G_HERO_TYPE', 223, '10717', '[3星]大星术师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10277, 'G_HERO_TYPE', 225, '10718', '[3星]影踪掌门+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10278, 'G_HERO_TYPE', 223, '10719', '[3星]摄政阿强+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10279, 'G_HERO_TYPE', 223, '10720', '[3星]巨魔酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10280, 'G_HERO_TYPE', 223, '10721', '[3星]梅大工匠+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10281, 'G_HERO_TYPE', 223, '10722', '[3星]星界守护者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10282, 'G_HERO_TYPE', 223, '10723', '[3星]山丘之王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10283, 'G_HERO_TYPE', 224, '10724', '[3星]白银领袖+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10284, 'G_HERO_TYPE', 224, '10725', '[3星]逐日者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10285, 'G_HERO_TYPE', 224, '10726', '[3星]大先知+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10286, 'G_HERO_TYPE', 224, '10727', '[3星]血蹄酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10287, 'G_HERO_TYPE', 224, '10728', '[3星]传奇猎神+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10288, 'G_HERO_TYPE', 224, '10729', '[3星]熊喵酒仙+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10289, 'G_HERO_TYPE', 224, '10730', '[3星]脑残吼+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10290, 'G_HERO_TYPE', 225, '10731', '[3星]蛋刀男+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10291, 'G_HERO_TYPE', 225, '10732', '[3星]燃烧的鸡蛋+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10292, 'G_HERO_TYPE', 225, '10733', '[3星]风行者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10293, 'G_HERO_TYPE', 225, '10734', '[3星]神眠者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10294, 'G_HERO_TYPE', 225, '10735', '[3星]英雄萨+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10295, 'G_HERO_TYPE', 225, '10736', '[3星]月之女+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10296, 'G_HERO_TYPE', 225, '10737', '[3星]小阿王子+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10297, 'G_HERO_TYPE', 223, '22001', '[3星]大法师珍娜+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10298, 'G_HERO_TYPE', 221, '10802', '[3星]熊喵阿肚+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10299, 'G_HERO_TYPE', 221, '10803', '[3星]小牛血蹄+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10300, 'G_HERO_TYPE', 221, '10804', '[3星]河爪首领+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10301, 'G_HERO_TYPE', 221, '10805', '[3星]黑暗邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10302, 'G_HERO_TYPE', 221, '10806', '[3星]利爪小德+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10303, 'G_HERO_TYPE', 221, '10807', '[3星]血帆猎手+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10304, 'G_HERO_TYPE', 221, '10808', '[3星]光明邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10305, 'G_HERO_TYPE', 222, '10809', '[3星]黑金团长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10306, 'G_HERO_TYPE', 222, '10810', '[3星]银色神官+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10307, 'G_HERO_TYPE', 222, '10811', '[3星]法力风暴+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10308, 'G_HERO_TYPE', 222, '10812', '[3星]飞刀战将+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10309, 'G_HERO_TYPE', 222, '10813', '[3星]尖牙王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10310, 'G_HERO_TYPE', 222, '10814', '[3星]美艳妖后+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10311, 'G_HERO_TYPE', 222, '10815', '[3星]巨魔导师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10312, 'G_HERO_TYPE', 223, '10816', '[3星]血狼王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10313, 'G_HERO_TYPE', 223, '10817', '[3星]大星术师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10314, 'G_HERO_TYPE', 225, '10818', '[3星]影踪掌门+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10315, 'G_HERO_TYPE', 223, '10819', '[3星]摄政阿强+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10316, 'G_HERO_TYPE', 223, '10820', '[3星]巨魔酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10317, 'G_HERO_TYPE', 223, '10821', '[3星]梅大工匠+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10318, 'G_HERO_TYPE', 223, '10822', '[3星]星界守护者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10319, 'G_HERO_TYPE', 223, '10823', '[3星]山丘之王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10320, 'G_HERO_TYPE', 224, '10824', '[3星]白银领袖+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10321, 'G_HERO_TYPE', 224, '10825', '[3星]逐日者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10322, 'G_HERO_TYPE', 224, '10826', '[3星]大先知+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10323, 'G_HERO_TYPE', 224, '10827', '[3星]血蹄酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10324, 'G_HERO_TYPE', 224, '10828', '[3星]传奇猎神+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10325, 'G_HERO_TYPE', 224, '10829', '[3星]熊喵酒仙+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10326, 'G_HERO_TYPE', 224, '10830', '[3星]脑残吼+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10327, 'G_HERO_TYPE', 225, '10831', '[3星]蛋刀男+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10328, 'G_HERO_TYPE', 225, '10832', '[3星]燃烧的鸡蛋+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10329, 'G_HERO_TYPE', 225, '10833', '[3星]风行者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10330, 'G_HERO_TYPE', 225, '10834', '[3星]神眠者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10331, 'G_HERO_TYPE', 225, '10835', '[3星]英雄萨+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10332, 'G_HERO_TYPE', 225, '10836', '[3星]月之女+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10333, 'G_HERO_TYPE', 225, '10837', '[3星]小阿王子+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10334, 'G_HERO_TYPE', 224, '22101', '[4星]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10335, 'G_HERO_TYPE', 221, '10902', '[4星]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10336, 'G_HERO_TYPE', 221, '10903', '[4星]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10337, 'G_HERO_TYPE', 221, '10904', '[4星]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10338, 'G_HERO_TYPE', 221, '10905', '[4星]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10339, 'G_HERO_TYPE', 221, '10906', '[4星]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10340, 'G_HERO_TYPE', 221, '10907', '[4星]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10341, 'G_HERO_TYPE', 221, '10908', '[4星]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10342, 'G_HERO_TYPE', 222, '10909', '[4星]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10343, 'G_HERO_TYPE', 222, '10910', '[4星]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10344, 'G_HERO_TYPE', 222, '10911', '[4星]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10345, 'G_HERO_TYPE', 222, '10912', '[4星]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10346, 'G_HERO_TYPE', 222, '10913', '[4星]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10347, 'G_HERO_TYPE', 222, '10914', '[4星]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10348, 'G_HERO_TYPE', 222, '10915', '[4星]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10349, 'G_HERO_TYPE', 223, '10916', '[4星]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10350, 'G_HERO_TYPE', 223, '10917', '[4星]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10351, 'G_HERO_TYPE', 225, '10918', '[4星]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10352, 'G_HERO_TYPE', 223, '10919', '[4星]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10353, 'G_HERO_TYPE', 223, '10920', '[4星]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10354, 'G_HERO_TYPE', 223, '10921', '[4星]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10355, 'G_HERO_TYPE', 223, '10922', '[4星]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10356, 'G_HERO_TYPE', 223, '10923', '[4星]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10357, 'G_HERO_TYPE', 224, '10924', '[4星]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10358, 'G_HERO_TYPE', 224, '10925', '[4星]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10359, 'G_HERO_TYPE', 224, '10926', '[4星]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10360, 'G_HERO_TYPE', 224, '10927', '[4星]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10361, 'G_HERO_TYPE', 224, '10928', '[4星]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10362, 'G_HERO_TYPE', 224, '10929', '[4星]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10363, 'G_HERO_TYPE', 224, '10930', '[4星]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10364, 'G_HERO_TYPE', 225, '10931', '[4星]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10365, 'G_HERO_TYPE', 225, '10932', '[4星]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10366, 'G_HERO_TYPE', 225, '10933', '[4星]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10367, 'G_HERO_TYPE', 225, '10934', '[4星]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10368, 'G_HERO_TYPE', 225, '10935', '[4星]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10369, 'G_HERO_TYPE', 225, '10936', '[4星]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10370, 'G_HERO_TYPE', 225, '10937', '[4星]小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10371, 'G_HERO_TYPE', 224, '22201', '[4星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10372, 'G_HERO_TYPE', 221, '11002', '[4星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10373, 'G_HERO_TYPE', 221, '11003', '[4星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10374, 'G_HERO_TYPE', 221, '11004', '[4星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10375, 'G_HERO_TYPE', 221, '11005', '[4星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10376, 'G_HERO_TYPE', 221, '11006', '[4星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10377, 'G_HERO_TYPE', 221, '11007', '[4星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10378, 'G_HERO_TYPE', 221, '11008', '[4星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10379, 'G_HERO_TYPE', 222, '11009', '[4星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10380, 'G_HERO_TYPE', 222, '11010', '[4星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10381, 'G_HERO_TYPE', 222, '11011', '[4星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10382, 'G_HERO_TYPE', 222, '11012', '[4星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10383, 'G_HERO_TYPE', 222, '11013', '[4星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10384, 'G_HERO_TYPE', 222, '11014', '[4星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10385, 'G_HERO_TYPE', 222, '11015', '[4星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10386, 'G_HERO_TYPE', 223, '11016', '[4星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10387, 'G_HERO_TYPE', 223, '11017', '[4星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10388, 'G_HERO_TYPE', 225, '11018', '[4星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10389, 'G_HERO_TYPE', 223, '11019', '[4星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10390, 'G_HERO_TYPE', 223, '11020', '[4星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10391, 'G_HERO_TYPE', 223, '11021', '[4星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10392, 'G_HERO_TYPE', 223, '11022', '[4星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10393, 'G_HERO_TYPE', 223, '11023', '[4星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10394, 'G_HERO_TYPE', 224, '11024', '[4星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10395, 'G_HERO_TYPE', 224, '11025', '[4星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10396, 'G_HERO_TYPE', 224, '11026', '[4星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10397, 'G_HERO_TYPE', 224, '11027', '[4星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10398, 'G_HERO_TYPE', 224, '11028', '[4星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10399, 'G_HERO_TYPE', 224, '11029', '[4星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10400, 'G_HERO_TYPE', 224, '11030', '[4星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10401, 'G_HERO_TYPE', 225, '11031', '[4星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10402, 'G_HERO_TYPE', 225, '11032', '[4星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10403, 'G_HERO_TYPE', 225, '11033', '[4星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10404, 'G_HERO_TYPE', 225, '11034', '[4星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10405, 'G_HERO_TYPE', 225, '11035', '[4星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10406, 'G_HERO_TYPE', 225, '11036', '[4星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10407, 'G_HERO_TYPE', 225, '11037', '[4星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10408, 'G_HERO_TYPE', 224, '22301', '[4星]大法师珍娜+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10409, 'G_HERO_TYPE', 221, '11102', '[4星]熊喵阿肚+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10410, 'G_HERO_TYPE', 221, '11103', '[4星]小牛血蹄+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10411, 'G_HERO_TYPE', 221, '11104', '[4星]河爪首领+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10412, 'G_HERO_TYPE', 221, '11105', '[4星]黑暗邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10413, 'G_HERO_TYPE', 221, '11106', '[4星]利爪小德+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10414, 'G_HERO_TYPE', 221, '11107', '[4星]血帆猎手+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10415, 'G_HERO_TYPE', 221, '11108', '[4星]光明邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10416, 'G_HERO_TYPE', 222, '11109', '[4星]黑金团长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10417, 'G_HERO_TYPE', 222, '11110', '[4星]银色神官+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10418, 'G_HERO_TYPE', 222, '11111', '[4星]法力风暴+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10419, 'G_HERO_TYPE', 222, '11112', '[4星]飞刀战将+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10420, 'G_HERO_TYPE', 222, '11113', '[4星]尖牙王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10421, 'G_HERO_TYPE', 222, '11114', '[4星]美艳妖后+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10422, 'G_HERO_TYPE', 222, '11115', '[4星]巨魔导师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10423, 'G_HERO_TYPE', 223, '11116', '[4星]血狼王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10424, 'G_HERO_TYPE', 223, '11117', '[4星]大星术师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10425, 'G_HERO_TYPE', 225, '11118', '[4星]影踪掌门+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10426, 'G_HERO_TYPE', 223, '11119', '[4星]摄政阿强+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10427, 'G_HERO_TYPE', 223, '11120', '[4星]巨魔酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10428, 'G_HERO_TYPE', 223, '11121', '[4星]梅大工匠+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10429, 'G_HERO_TYPE', 223, '11122', '[4星]星界守护者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10430, 'G_HERO_TYPE', 223, '11123', '[4星]山丘之王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10431, 'G_HERO_TYPE', 224, '11124', '[4星]白银领袖+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10432, 'G_HERO_TYPE', 224, '11125', '[4星]逐日者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10433, 'G_HERO_TYPE', 224, '11126', '[4星]大先知+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10434, 'G_HERO_TYPE', 224, '11127', '[4星]血蹄酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10435, 'G_HERO_TYPE', 224, '11128', '[4星]传奇猎神+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10436, 'G_HERO_TYPE', 224, '11129', '[4星]熊喵酒仙+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10437, 'G_HERO_TYPE', 224, '11130', '[4星]脑残吼+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10438, 'G_HERO_TYPE', 225, '11131', '[4星]蛋刀男+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10439, 'G_HERO_TYPE', 225, '11132', '[4星]燃烧的鸡蛋+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10440, 'G_HERO_TYPE', 225, '11133', '[4星]风行者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10441, 'G_HERO_TYPE', 225, '11134', '[4星]神眠者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10442, 'G_HERO_TYPE', 225, '11135', '[4星]英雄萨+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10443, 'G_HERO_TYPE', 225, '11136', '[4星]月之女+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10444, 'G_HERO_TYPE', 225, '11137', '[4星]小阿王子+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10445, 'G_HERO_TYPE', 224, '22401', '[4星]大法师珍娜+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10446, 'G_HERO_TYPE', 221, '11202', '[4星]熊喵阿肚+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10447, 'G_HERO_TYPE', 221, '11203', '[4星]小牛血蹄+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10448, 'G_HERO_TYPE', 221, '11204', '[4星]河爪首领+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10449, 'G_HERO_TYPE', 221, '11205', '[4星]黑暗邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10450, 'G_HERO_TYPE', 221, '11206', '[4星]利爪小德+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10451, 'G_HERO_TYPE', 221, '11207', '[4星]血帆猎手+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10452, 'G_HERO_TYPE', 221, '11208', '[4星]光明邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10453, 'G_HERO_TYPE', 222, '11209', '[4星]黑金团长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10454, 'G_HERO_TYPE', 222, '11210', '[4星]银色神官+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10455, 'G_HERO_TYPE', 222, '11211', '[4星]法力风暴+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10456, 'G_HERO_TYPE', 222, '11212', '[4星]飞刀战将+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10457, 'G_HERO_TYPE', 222, '11213', '[4星]尖牙王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10458, 'G_HERO_TYPE', 222, '11214', '[4星]美艳妖后+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10459, 'G_HERO_TYPE', 222, '11215', '[4星]巨魔导师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10460, 'G_HERO_TYPE', 223, '11216', '[4星]血狼王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10461, 'G_HERO_TYPE', 223, '11217', '[4星]大星术师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10462, 'G_HERO_TYPE', 225, '11218', '[4星]影踪掌门+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10463, 'G_HERO_TYPE', 223, '11219', '[4星]摄政阿强+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10464, 'G_HERO_TYPE', 223, '11220', '[4星]巨魔酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10465, 'G_HERO_TYPE', 223, '11221', '[4星]梅大工匠+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10466, 'G_HERO_TYPE', 223, '11222', '[4星]星界守护者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10467, 'G_HERO_TYPE', 223, '11223', '[4星]山丘之王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10468, 'G_HERO_TYPE', 224, '11224', '[4星]白银领袖+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10469, 'G_HERO_TYPE', 224, '11225', '[4星]逐日者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10470, 'G_HERO_TYPE', 224, '11226', '[4星]大先知+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10471, 'G_HERO_TYPE', 224, '11227', '[4星]血蹄酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10472, 'G_HERO_TYPE', 224, '11228', '[4星]传奇猎神+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10473, 'G_HERO_TYPE', 224, '11229', '[4星]熊喵酒仙+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10474, 'G_HERO_TYPE', 224, '11230', '[4星]脑残吼+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10475, 'G_HERO_TYPE', 225, '11231', '[4星]蛋刀男+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10476, 'G_HERO_TYPE', 225, '11232', '[4星]燃烧的鸡蛋+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10477, 'G_HERO_TYPE', 225, '11233', '[4星]风行者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10478, 'G_HERO_TYPE', 225, '11234', '[4星]神眠者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10479, 'G_HERO_TYPE', 225, '11235', '[4星]英雄萨+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10480, 'G_HERO_TYPE', 225, '11236', '[4星]月之女+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10481, 'G_HERO_TYPE', 225, '11237', '[4星]小阿王子+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10482, 'G_HERO_TYPE', 224, '22501', '[4星]大法师珍娜+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10483, 'G_HERO_TYPE', 221, '11302', '[4星]熊喵阿肚+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10484, 'G_HERO_TYPE', 221, '11303', '[4星]小牛血蹄+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10485, 'G_HERO_TYPE', 221, '11304', '[4星]河爪首领+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10486, 'G_HERO_TYPE', 221, '11305', '[4星]黑暗邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10487, 'G_HERO_TYPE', 221, '11306', '[4星]利爪小德+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10488, 'G_HERO_TYPE', 221, '11307', '[4星]血帆猎手+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10489, 'G_HERO_TYPE', 221, '11308', '[4星]光明邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10490, 'G_HERO_TYPE', 222, '11309', '[4星]黑金团长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10491, 'G_HERO_TYPE', 222, '11310', '[4星]银色神官+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10492, 'G_HERO_TYPE', 222, '11311', '[4星]法力风暴+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10493, 'G_HERO_TYPE', 222, '11312', '[4星]飞刀战将+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10494, 'G_HERO_TYPE', 222, '11313', '[4星]尖牙王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10495, 'G_HERO_TYPE', 222, '11314', '[4星]美艳妖后+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10496, 'G_HERO_TYPE', 222, '11315', '[4星]巨魔导师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10497, 'G_HERO_TYPE', 223, '11316', '[4星]血狼王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10498, 'G_HERO_TYPE', 223, '11317', '[4星]大星术师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10499, 'G_HERO_TYPE', 225, '11318', '[4星]影踪掌门+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10500, 'G_HERO_TYPE', 223, '11319', '[4星]摄政阿强+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10501, 'G_HERO_TYPE', 223, '11320', '[4星]巨魔酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10502, 'G_HERO_TYPE', 223, '11321', '[4星]梅大工匠+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10503, 'G_HERO_TYPE', 223, '11322', '[4星]星界守护者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10504, 'G_HERO_TYPE', 223, '11323', '[4星]山丘之王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10505, 'G_HERO_TYPE', 224, '11324', '[4星]白银领袖+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10506, 'G_HERO_TYPE', 224, '11325', '[4星]逐日者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10507, 'G_HERO_TYPE', 224, '11326', '[4星]大先知+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10508, 'G_HERO_TYPE', 224, '11327', '[4星]血蹄酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10509, 'G_HERO_TYPE', 224, '11328', '[4星]传奇猎神+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10510, 'G_HERO_TYPE', 224, '11329', '[4星]熊喵酒仙+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10511, 'G_HERO_TYPE', 224, '11330', '[4星]脑残吼+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10512, 'G_HERO_TYPE', 225, '11331', '[4星]蛋刀男+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10513, 'G_HERO_TYPE', 225, '11332', '[4星]燃烧的鸡蛋+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10514, 'G_HERO_TYPE', 225, '11333', '[4星]风行者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10515, 'G_HERO_TYPE', 225, '11334', '[4星]神眠者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10516, 'G_HERO_TYPE', 225, '11335', '[4星]英雄萨+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10517, 'G_HERO_TYPE', 225, '11336', '[4星]月之女+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10518, 'G_HERO_TYPE', 225, '11337', '[4星]小阿王子+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10519, 'G_HERO_TYPE', 225, '22601', '[5星]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10520, 'G_HERO_TYPE', 221, '11402', '[5星]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10521, 'G_HERO_TYPE', 221, '11403', '[5星]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10522, 'G_HERO_TYPE', 221, '11404', '[5星]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10523, 'G_HERO_TYPE', 221, '11405', '[5星]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10524, 'G_HERO_TYPE', 221, '11406', '[5星]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10525, 'G_HERO_TYPE', 221, '11407', '[5星]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10526, 'G_HERO_TYPE', 221, '11408', '[5星]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10527, 'G_HERO_TYPE', 222, '11409', '[5星]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10528, 'G_HERO_TYPE', 222, '11410', '[5星]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10529, 'G_HERO_TYPE', 222, '11411', '[5星]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10530, 'G_HERO_TYPE', 222, '11412', '[5星]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10531, 'G_HERO_TYPE', 222, '11413', '[5星]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10532, 'G_HERO_TYPE', 222, '11414', '[5星]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10533, 'G_HERO_TYPE', 222, '11415', '[5星]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10534, 'G_HERO_TYPE', 223, '11416', '[5星]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10535, 'G_HERO_TYPE', 223, '11417', '[5星]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10536, 'G_HERO_TYPE', 225, '11418', '[5星]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10537, 'G_HERO_TYPE', 223, '11419', '[5星]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10538, 'G_HERO_TYPE', 223, '11420', '[5星]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10539, 'G_HERO_TYPE', 223, '11421', '[5星]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10540, 'G_HERO_TYPE', 223, '11422', '[5星]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10541, 'G_HERO_TYPE', 223, '11423', '[5星]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10542, 'G_HERO_TYPE', 224, '11424', '[5星]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10543, 'G_HERO_TYPE', 224, '11425', '[5星]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10544, 'G_HERO_TYPE', 224, '11426', '[5星]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10545, 'G_HERO_TYPE', 224, '11427', '[5星]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10546, 'G_HERO_TYPE', 224, '11428', '[5星]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10547, 'G_HERO_TYPE', 224, '11429', '[5星]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10548, 'G_HERO_TYPE', 224, '11430', '[5星]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10549, 'G_HERO_TYPE', 225, '11431', '[5星]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10550, 'G_HERO_TYPE', 225, '11432', '[5星]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10551, 'G_HERO_TYPE', 225, '11433', '[5星]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10552, 'G_HERO_TYPE', 225, '11434', '[5星]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10553, 'G_HERO_TYPE', 225, '11435', '[5星]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10554, 'G_HERO_TYPE', 225, '11436', '[5星]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10555, 'G_HERO_TYPE', 225, '11437', '[5星]小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10556, 'G_HERO_TYPE', 225, '22701', '[5星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10557, 'G_HERO_TYPE', 221, '11502', '[5星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10558, 'G_HERO_TYPE', 221, '11503', '[5星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10559, 'G_HERO_TYPE', 221, '11504', '[5星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10560, 'G_HERO_TYPE', 221, '11505', '[5星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10561, 'G_HERO_TYPE', 221, '11506', '[5星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10562, 'G_HERO_TYPE', 221, '11507', '[5星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10563, 'G_HERO_TYPE', 221, '11508', '[5星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10564, 'G_HERO_TYPE', 222, '11509', '[5星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10565, 'G_HERO_TYPE', 222, '11510', '[5星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10566, 'G_HERO_TYPE', 222, '11511', '[5星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10567, 'G_HERO_TYPE', 222, '11512', '[5星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10568, 'G_HERO_TYPE', 222, '11513', '[5星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10569, 'G_HERO_TYPE', 222, '11514', '[5星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10570, 'G_HERO_TYPE', 222, '11515', '[5星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10571, 'G_HERO_TYPE', 223, '11516', '[5星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10572, 'G_HERO_TYPE', 223, '11517', '[5星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10573, 'G_HERO_TYPE', 225, '11518', '[5星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10574, 'G_HERO_TYPE', 223, '11519', '[5星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10575, 'G_HERO_TYPE', 223, '11520', '[5星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10576, 'G_HERO_TYPE', 223, '11521', '[5星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10577, 'G_HERO_TYPE', 223, '11522', '[5星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10578, 'G_HERO_TYPE', 223, '11523', '[5星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10579, 'G_HERO_TYPE', 224, '11524', '[5星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10580, 'G_HERO_TYPE', 224, '11525', '[5星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10581, 'G_HERO_TYPE', 224, '11526', '[5星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10582, 'G_HERO_TYPE', 224, '11527', '[5星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10583, 'G_HERO_TYPE', 224, '11528', '[5星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10584, 'G_HERO_TYPE', 224, '11529', '[5星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10585, 'G_HERO_TYPE', 224, '11530', '[5星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10586, 'G_HERO_TYPE', 225, '11531', '[5星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10587, 'G_HERO_TYPE', 225, '11532', '[5星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10588, 'G_HERO_TYPE', 225, '11533', '[5星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10589, 'G_HERO_TYPE', 225, '11534', '[5星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10590, 'G_HERO_TYPE', 225, '11535', '[5星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10591, 'G_HERO_TYPE', 225, '11536', '[5星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10592, 'G_HERO_TYPE', 225, '11537', '[5星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10593, 'G_HERO_TYPE', 225, '22801', '[5星]大法师珍娜+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10594, 'G_HERO_TYPE', 221, '11602', '[5星]熊喵阿肚+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10595, 'G_HERO_TYPE', 221, '11603', '[5星]小牛血蹄+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10596, 'G_HERO_TYPE', 221, '11604', '[5星]河爪首领+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10597, 'G_HERO_TYPE', 221, '11605', '[5星]黑暗邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10598, 'G_HERO_TYPE', 221, '11606', '[5星]利爪小德+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10599, 'G_HERO_TYPE', 221, '11607', '[5星]血帆猎手+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10600, 'G_HERO_TYPE', 221, '11608', '[5星]光明邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10601, 'G_HERO_TYPE', 222, '11609', '[5星]黑金团长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10602, 'G_HERO_TYPE', 222, '11610', '[5星]银色神官+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10603, 'G_HERO_TYPE', 222, '11611', '[5星]法力风暴+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10604, 'G_HERO_TYPE', 222, '11612', '[5星]飞刀战将+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10605, 'G_HERO_TYPE', 222, '11613', '[5星]尖牙王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10606, 'G_HERO_TYPE', 222, '11614', '[5星]美艳妖后+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10607, 'G_HERO_TYPE', 222, '11615', '[5星]巨魔导师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10608, 'G_HERO_TYPE', 223, '11616', '[5星]血狼王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10609, 'G_HERO_TYPE', 223, '11617', '[5星]大星术师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10610, 'G_HERO_TYPE', 225, '11618', '[5星]影踪掌门+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10611, 'G_HERO_TYPE', 223, '11619', '[5星]摄政阿强+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10612, 'G_HERO_TYPE', 223, '11620', '[5星]巨魔酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10613, 'G_HERO_TYPE', 223, '11621', '[5星]梅大工匠+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10614, 'G_HERO_TYPE', 223, '11622', '[5星]星界守护者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10615, 'G_HERO_TYPE', 223, '11623', '[5星]山丘之王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10616, 'G_HERO_TYPE', 224, '11624', '[5星]白银领袖+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10617, 'G_HERO_TYPE', 224, '11625', '[5星]逐日者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10618, 'G_HERO_TYPE', 224, '11626', '[5星]大先知+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10619, 'G_HERO_TYPE', 224, '11627', '[5星]血蹄酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10620, 'G_HERO_TYPE', 224, '11628', '[5星]传奇猎神+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10621, 'G_HERO_TYPE', 224, '11629', '[5星]熊喵酒仙+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10622, 'G_HERO_TYPE', 224, '11630', '[5星]脑残吼+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10623, 'G_HERO_TYPE', 225, '11631', '[5星]蛋刀男+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10624, 'G_HERO_TYPE', 225, '11632', '[5星]燃烧的鸡蛋+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10625, 'G_HERO_TYPE', 225, '11633', '[5星]风行者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10626, 'G_HERO_TYPE', 225, '11634', '[5星]神眠者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10627, 'G_HERO_TYPE', 225, '11635', '[5星]英雄萨+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10628, 'G_HERO_TYPE', 225, '11636', '[5星]月之女+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10629, 'G_HERO_TYPE', 225, '11637', '[5星]小阿王子+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10630, 'G_HERO_TYPE', 225, '22901', '[5星]大法师珍娜+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10631, 'G_HERO_TYPE', 221, '11702', '[5星]熊喵阿肚+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10632, 'G_HERO_TYPE', 221, '11703', '[5星]小牛血蹄+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10633, 'G_HERO_TYPE', 221, '11704', '[5星]河爪首领+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10634, 'G_HERO_TYPE', 221, '11705', '[5星]黑暗邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10635, 'G_HERO_TYPE', 221, '11706', '[5星]利爪小德+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10636, 'G_HERO_TYPE', 221, '11707', '[5星]血帆猎手+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10637, 'G_HERO_TYPE', 221, '11708', '[5星]光明邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10638, 'G_HERO_TYPE', 222, '11709', '[5星]黑金团长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10639, 'G_HERO_TYPE', 222, '11710', '[5星]银色神官+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10640, 'G_HERO_TYPE', 222, '11711', '[5星]法力风暴+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10641, 'G_HERO_TYPE', 222, '11712', '[5星]飞刀战将+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10642, 'G_HERO_TYPE', 222, '11713', '[5星]尖牙王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10643, 'G_HERO_TYPE', 222, '11714', '[5星]美艳妖后+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10644, 'G_HERO_TYPE', 222, '11715', '[5星]巨魔导师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10645, 'G_HERO_TYPE', 223, '11716', '[5星]血狼王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10646, 'G_HERO_TYPE', 223, '11717', '[5星]大星术师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10647, 'G_HERO_TYPE', 225, '11718', '[5星]影踪掌门+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10648, 'G_HERO_TYPE', 223, '11719', '[5星]摄政阿强+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10649, 'G_HERO_TYPE', 223, '11720', '[5星]巨魔酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10650, 'G_HERO_TYPE', 223, '11721', '[5星]梅大工匠+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10651, 'G_HERO_TYPE', 223, '11722', '[5星]星界守护者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10652, 'G_HERO_TYPE', 223, '11723', '[5星]山丘之王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10653, 'G_HERO_TYPE', 224, '11724', '[5星]白银领袖+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10654, 'G_HERO_TYPE', 224, '11725', '[5星]逐日者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10655, 'G_HERO_TYPE', 224, '11726', '[5星]大先知+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10656, 'G_HERO_TYPE', 224, '11727', '[5星]血蹄酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10657, 'G_HERO_TYPE', 224, '11728', '[5星]传奇猎神+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10658, 'G_HERO_TYPE', 224, '11729', '[5星]熊喵酒仙+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10659, 'G_HERO_TYPE', 224, '11730', '[5星]脑残吼+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10660, 'G_HERO_TYPE', 225, '11731', '[5星]蛋刀男+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10661, 'G_HERO_TYPE', 225, '11732', '[5星]燃烧的鸡蛋+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10662, 'G_HERO_TYPE', 225, '11733', '[5星]风行者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10663, 'G_HERO_TYPE', 225, '11734', '[5星]神眠者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10664, 'G_HERO_TYPE', 225, '11735', '[5星]英雄萨+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10665, 'G_HERO_TYPE', 225, '11736', '[5星]月之女+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10666, 'G_HERO_TYPE', 225, '11737', '[5星]小阿王子+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10667, 'G_HERO_TYPE', 225, '23001', '[5星]大法师珍娜+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10668, 'G_HERO_TYPE', 221, '11802', '[5星]熊喵阿肚+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10669, 'G_HERO_TYPE', 221, '11803', '[5星]小牛血蹄+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10670, 'G_HERO_TYPE', 221, '11804', '[5星]河爪首领+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10671, 'G_HERO_TYPE', 221, '11805', '[5星]黑暗邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10672, 'G_HERO_TYPE', 221, '11806', '[5星]利爪小德+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10673, 'G_HERO_TYPE', 221, '11807', '[5星]血帆猎手+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10674, 'G_HERO_TYPE', 221, '11808', '[5星]光明邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10675, 'G_HERO_TYPE', 222, '11809', '[5星]黑金团长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10676, 'G_HERO_TYPE', 222, '11810', '[5星]银色神官+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10677, 'G_HERO_TYPE', 222, '11811', '[5星]法力风暴+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10678, 'G_HERO_TYPE', 222, '11812', '[5星]飞刀战将+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10679, 'G_HERO_TYPE', 222, '11813', '[5星]尖牙王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10680, 'G_HERO_TYPE', 222, '11814', '[5星]美艳妖后+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10681, 'G_HERO_TYPE', 222, '11815', '[5星]巨魔导师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10682, 'G_HERO_TYPE', 223, '11816', '[5星]血狼王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10683, 'G_HERO_TYPE', 223, '11817', '[5星]大星术师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10684, 'G_HERO_TYPE', 225, '11818', '[5星]影踪掌门+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10685, 'G_HERO_TYPE', 223, '11819', '[5星]摄政阿强+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10686, 'G_HERO_TYPE', 223, '11820', '[5星]巨魔酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10687, 'G_HERO_TYPE', 223, '11821', '[5星]梅大工匠+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10688, 'G_HERO_TYPE', 223, '11822', '[5星]星界守护者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10689, 'G_HERO_TYPE', 223, '11823', '[5星]山丘之王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10690, 'G_HERO_TYPE', 224, '11824', '[5星]白银领袖+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10691, 'G_HERO_TYPE', 224, '11825', '[5星]逐日者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10692, 'G_HERO_TYPE', 224, '11826', '[5星]大先知+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10693, 'G_HERO_TYPE', 224, '11827', '[5星]血蹄酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10694, 'G_HERO_TYPE', 224, '11828', '[5星]传奇猎神+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10695, 'G_HERO_TYPE', 224, '11829', '[5星]熊喵酒仙+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10696, 'G_HERO_TYPE', 224, '11830', '[5星]脑残吼+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10697, 'G_HERO_TYPE', 225, '11831', '[5星]蛋刀男+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10698, 'G_HERO_TYPE', 225, '11832', '[5星]燃烧的鸡蛋+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10699, 'G_HERO_TYPE', 225, '11833', '[5星]风行者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10700, 'G_HERO_TYPE', 225, '11834', '[5星]神眠者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10701, 'G_HERO_TYPE', 225, '11835', '[5星]英雄萨+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10702, 'G_HERO_TYPE', 225, '11836', '[5星]月之女+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10703, 'G_HERO_TYPE', 225, '11837', '[5星]小阿王子+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10704, 'G_HERO_TYPE', 225, '23101', '[5星]大法师珍娜+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10705, 'G_HERO_TYPE', 221, '11902', '[5星]熊喵阿肚+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10706, 'G_HERO_TYPE', 221, '11903', '[5星]小牛血蹄+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10707, 'G_HERO_TYPE', 221, '11904', '[5星]河爪首领+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10708, 'G_HERO_TYPE', 221, '11905', '[5星]黑暗邪灵+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10709, 'G_HERO_TYPE', 221, '11906', '[5星]利爪小德+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10710, 'G_HERO_TYPE', 221, '11907', '[5星]血帆猎手+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10711, 'G_HERO_TYPE', 221, '11908', '[5星]光明邪灵+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10712, 'G_HERO_TYPE', 222, '11909', '[5星]黑金团长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10713, 'G_HERO_TYPE', 222, '11910', '[5星]银色神官+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10714, 'G_HERO_TYPE', 222, '11911', '[5星]法力风暴+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10715, 'G_HERO_TYPE', 222, '11912', '[5星]飞刀战将+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10716, 'G_HERO_TYPE', 222, '11913', '[5星]尖牙王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10717, 'G_HERO_TYPE', 222, '11914', '[5星]美艳妖后+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10718, 'G_HERO_TYPE', 222, '11915', '[5星]巨魔导师+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10719, 'G_HERO_TYPE', 223, '11916', '[5星]血狼王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10720, 'G_HERO_TYPE', 223, '11917', '[5星]大星术师+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10721, 'G_HERO_TYPE', 225, '11918', '[5星]影踪掌门+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10722, 'G_HERO_TYPE', 223, '11919', '[5星]摄政阿强+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10723, 'G_HERO_TYPE', 223, '11920', '[5星]巨魔酋长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10724, 'G_HERO_TYPE', 223, '11921', '[5星]梅大工匠+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10725, 'G_HERO_TYPE', 223, '11922', '[5星]星界守护者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10726, 'G_HERO_TYPE', 223, '11923', '[5星]山丘之王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10727, 'G_HERO_TYPE', 224, '11924', '[5星]白银领袖+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10728, 'G_HERO_TYPE', 224, '11925', '[5星]逐日者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10729, 'G_HERO_TYPE', 224, '11926', '[5星]大先知+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10730, 'G_HERO_TYPE', 224, '11927', '[5星]血蹄酋长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10731, 'G_HERO_TYPE', 224, '11928', '[5星]传奇猎神+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10732, 'G_HERO_TYPE', 224, '11929', '[5星]熊喵酒仙+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10733, 'G_HERO_TYPE', 224, '11930', '[5星]脑残吼+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10734, 'G_HERO_TYPE', 225, '11931', '[5星]蛋刀男+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10735, 'G_HERO_TYPE', 225, '11932', '[5星]燃烧的鸡蛋+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10736, 'G_HERO_TYPE', 225, '11933', '[5星]风行者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10737, 'G_HERO_TYPE', 225, '11934', '[5星]神眠者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10738, 'G_HERO_TYPE', 225, '11935', '[5星]英雄萨+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10739, 'G_HERO_TYPE', 225, '11936', '[5星]月之女+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10740, 'G_HERO_TYPE', 225, '11937', '[5星]小阿王子+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10741, 'G_HERO_TYPE', 225, '23201', '[6星]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10742, 'G_HERO_TYPE', 221, '12002', '[6星]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10743, 'G_HERO_TYPE', 221, '12003', '[6星]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10744, 'G_HERO_TYPE', 221, '12004', '[6星]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10745, 'G_HERO_TYPE', 221, '12005', '[6星]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10746, 'G_HERO_TYPE', 221, '12006', '[6星]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10747, 'G_HERO_TYPE', 221, '12007', '[6星]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10748, 'G_HERO_TYPE', 221, '12008', '[6星]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10749, 'G_HERO_TYPE', 222, '12009', '[6星]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10750, 'G_HERO_TYPE', 222, '12010', '[6星]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10751, 'G_HERO_TYPE', 222, '12011', '[6星]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10752, 'G_HERO_TYPE', 222, '12012', '[6星]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10753, 'G_HERO_TYPE', 222, '12013', '[6星]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10754, 'G_HERO_TYPE', 222, '12014', '[6星]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10755, 'G_HERO_TYPE', 222, '12015', '[6星]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10756, 'G_HERO_TYPE', 223, '12016', '[6星]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10757, 'G_HERO_TYPE', 223, '12017', '[6星]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10758, 'G_HERO_TYPE', 225, '12018', '[6星]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10759, 'G_HERO_TYPE', 223, '12019', '[6星]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10760, 'G_HERO_TYPE', 223, '12020', '[6星]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10761, 'G_HERO_TYPE', 223, '12021', '[6星]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10762, 'G_HERO_TYPE', 223, '12022', '[6星]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10763, 'G_HERO_TYPE', 223, '12023', '[6星]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10764, 'G_HERO_TYPE', 224, '12024', '[6星]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10765, 'G_HERO_TYPE', 224, '12025', '[6星]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10766, 'G_HERO_TYPE', 224, '12026', '[6星]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10767, 'G_HERO_TYPE', 224, '12027', '[6星]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10768, 'G_HERO_TYPE', 224, '12028', '[6星]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10769, 'G_HERO_TYPE', 224, '12029', '[6星]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10770, 'G_HERO_TYPE', 224, '12030', '[6星]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10771, 'G_HERO_TYPE', 225, '12031', '[6星]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10772, 'G_HERO_TYPE', 225, '12032', '[6星]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10773, 'G_HERO_TYPE', 225, '12033', '[6星]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10774, 'G_HERO_TYPE', 225, '12034', '[6星]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10775, 'G_HERO_TYPE', 225, '12035', '[6星]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10776, 'G_HERO_TYPE', 225, '12036', '[6星]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10777, 'G_HERO_TYPE', 225, '12037', '[6星]小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10778, 'G_HERO_TYPE', 225, '23301', '[6星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10779, 'G_HERO_TYPE', 221, '12102', '[6星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10780, 'G_HERO_TYPE', 221, '12103', '[6星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10781, 'G_HERO_TYPE', 221, '12104', '[6星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10782, 'G_HERO_TYPE', 221, '12105', '[6星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10783, 'G_HERO_TYPE', 221, '12106', '[6星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10784, 'G_HERO_TYPE', 221, '12107', '[6星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10785, 'G_HERO_TYPE', 221, '12108', '[6星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10786, 'G_HERO_TYPE', 222, '12109', '[6星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10787, 'G_HERO_TYPE', 222, '12110', '[6星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10788, 'G_HERO_TYPE', 222, '12111', '[6星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10789, 'G_HERO_TYPE', 222, '12112', '[6星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10790, 'G_HERO_TYPE', 222, '12113', '[6星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10791, 'G_HERO_TYPE', 222, '12114', '[6星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10792, 'G_HERO_TYPE', 222, '12115', '[6星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10793, 'G_HERO_TYPE', 223, '12116', '[6星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10794, 'G_HERO_TYPE', 223, '12117', '[6星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10795, 'G_HERO_TYPE', 225, '12118', '[6星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10796, 'G_HERO_TYPE', 223, '12119', '[6星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10797, 'G_HERO_TYPE', 223, '12120', '[6星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10798, 'G_HERO_TYPE', 223, '12121', '[6星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10799, 'G_HERO_TYPE', 223, '12122', '[6星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10800, 'G_HERO_TYPE', 223, '12123', '[6星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10801, 'G_HERO_TYPE', 224, '12124', '[6星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10802, 'G_HERO_TYPE', 224, '12125', '[6星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10803, 'G_HERO_TYPE', 224, '12126', '[6星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10804, 'G_HERO_TYPE', 224, '12127', '[6星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10805, 'G_HERO_TYPE', 224, '12128', '[6星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10806, 'G_HERO_TYPE', 224, '12129', '[6星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10807, 'G_HERO_TYPE', 224, '12130', '[6星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10808, 'G_HERO_TYPE', 225, '12131', '[6星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10809, 'G_HERO_TYPE', 225, '12132', '[6星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10810, 'G_HERO_TYPE', 225, '12133', '[6星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10811, 'G_HERO_TYPE', 225, '12134', '[6星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10812, 'G_HERO_TYPE', 225, '12135', '[6星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10813, 'G_HERO_TYPE', 225, '12136', '[6星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10814, 'G_HERO_TYPE', 225, '12137', '[6星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10815, 'G_HERO_TYPE', 225, '23401', '[6星]大法师珍娜+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10816, 'G_HERO_TYPE', 221, '12202', '[6星]熊喵阿肚+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10817, 'G_HERO_TYPE', 221, '12203', '[6星]小牛血蹄+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10818, 'G_HERO_TYPE', 221, '12204', '[6星]河爪首领+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10819, 'G_HERO_TYPE', 221, '12205', '[6星]黑暗邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10820, 'G_HERO_TYPE', 221, '12206', '[6星]利爪小德+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10821, 'G_HERO_TYPE', 221, '12207', '[6星]血帆猎手+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10822, 'G_HERO_TYPE', 221, '12208', '[6星]光明邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10823, 'G_HERO_TYPE', 222, '12209', '[6星]黑金团长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10824, 'G_HERO_TYPE', 222, '12210', '[6星]银色神官+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10825, 'G_HERO_TYPE', 222, '12211', '[6星]法力风暴+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10826, 'G_HERO_TYPE', 222, '12212', '[6星]飞刀战将+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10827, 'G_HERO_TYPE', 222, '12213', '[6星]尖牙王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10828, 'G_HERO_TYPE', 222, '12214', '[6星]美艳妖后+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10829, 'G_HERO_TYPE', 222, '12215', '[6星]巨魔导师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10830, 'G_HERO_TYPE', 223, '12216', '[6星]血狼王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10831, 'G_HERO_TYPE', 223, '12217', '[6星]大星术师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10832, 'G_HERO_TYPE', 225, '12218', '[6星]影踪掌门+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10833, 'G_HERO_TYPE', 223, '12219', '[6星]摄政阿强+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10834, 'G_HERO_TYPE', 223, '12220', '[6星]巨魔酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10835, 'G_HERO_TYPE', 223, '12221', '[6星]梅大工匠+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10836, 'G_HERO_TYPE', 223, '12222', '[6星]星界守护者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10837, 'G_HERO_TYPE', 223, '12223', '[6星]山丘之王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10838, 'G_HERO_TYPE', 224, '12224', '[6星]白银领袖+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10839, 'G_HERO_TYPE', 224, '12225', '[6星]逐日者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10840, 'G_HERO_TYPE', 224, '12226', '[6星]大先知+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10841, 'G_HERO_TYPE', 224, '12227', '[6星]血蹄酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10842, 'G_HERO_TYPE', 224, '12228', '[6星]传奇猎神+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10843, 'G_HERO_TYPE', 224, '12229', '[6星]熊喵酒仙+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10844, 'G_HERO_TYPE', 224, '12230', '[6星]脑残吼+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10845, 'G_HERO_TYPE', 225, '12231', '[6星]蛋刀男+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10846, 'G_HERO_TYPE', 225, '12232', '[6星]燃烧的鸡蛋+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10847, 'G_HERO_TYPE', 225, '12233', '[6星]风行者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10848, 'G_HERO_TYPE', 225, '12234', '[6星]神眠者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10849, 'G_HERO_TYPE', 225, '12235', '[6星]英雄萨+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10850, 'G_HERO_TYPE', 225, '12236', '[6星]月之女+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10851, 'G_HERO_TYPE', 225, '12237', '[6星]小阿王子+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10852, 'G_HERO_TYPE', 225, '23501', '[6星]大法师珍娜+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10853, 'G_HERO_TYPE', 221, '12302', '[6星]熊喵阿肚+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10854, 'G_HERO_TYPE', 221, '12303', '[6星]小牛血蹄+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10855, 'G_HERO_TYPE', 221, '12304', '[6星]河爪首领+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10856, 'G_HERO_TYPE', 221, '12305', '[6星]黑暗邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10857, 'G_HERO_TYPE', 221, '12306', '[6星]利爪小德+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10858, 'G_HERO_TYPE', 221, '12307', '[6星]血帆猎手+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10859, 'G_HERO_TYPE', 221, '12308', '[6星]光明邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10860, 'G_HERO_TYPE', 222, '12309', '[6星]黑金团长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10861, 'G_HERO_TYPE', 222, '12310', '[6星]银色神官+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10862, 'G_HERO_TYPE', 222, '12311', '[6星]法力风暴+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10863, 'G_HERO_TYPE', 222, '12312', '[6星]飞刀战将+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10864, 'G_HERO_TYPE', 222, '12313', '[6星]尖牙王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10865, 'G_HERO_TYPE', 222, '12314', '[6星]美艳妖后+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10866, 'G_HERO_TYPE', 222, '12315', '[6星]巨魔导师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10867, 'G_HERO_TYPE', 223, '12316', '[6星]血狼王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10868, 'G_HERO_TYPE', 223, '12317', '[6星]大星术师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10869, 'G_HERO_TYPE', 225, '12318', '[6星]影踪掌门+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10870, 'G_HERO_TYPE', 223, '12319', '[6星]摄政阿强+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10871, 'G_HERO_TYPE', 223, '12320', '[6星]巨魔酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10872, 'G_HERO_TYPE', 223, '12321', '[6星]梅大工匠+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10873, 'G_HERO_TYPE', 223, '12322', '[6星]星界守护者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10874, 'G_HERO_TYPE', 223, '12323', '[6星]山丘之王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10875, 'G_HERO_TYPE', 224, '12324', '[6星]白银领袖+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10876, 'G_HERO_TYPE', 224, '12325', '[6星]逐日者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10877, 'G_HERO_TYPE', 224, '12326', '[6星]大先知+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10878, 'G_HERO_TYPE', 224, '12327', '[6星]血蹄酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10879, 'G_HERO_TYPE', 224, '12328', '[6星]传奇猎神+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10880, 'G_HERO_TYPE', 224, '12329', '[6星]熊喵酒仙+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10881, 'G_HERO_TYPE', 224, '12330', '[6星]脑残吼+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10882, 'G_HERO_TYPE', 225, '12331', '[6星]蛋刀男+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10883, 'G_HERO_TYPE', 225, '12332', '[6星]燃烧的鸡蛋+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10884, 'G_HERO_TYPE', 225, '12333', '[6星]风行者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10885, 'G_HERO_TYPE', 225, '12334', '[6星]神眠者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10886, 'G_HERO_TYPE', 225, '12335', '[6星]英雄萨+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10887, 'G_HERO_TYPE', 225, '12336', '[6星]月之女+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10888, 'G_HERO_TYPE', 225, '12337', '[6星]小阿王子+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10889, 'G_HERO_TYPE', 225, '23601', '[6星]大法师珍娜+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10890, 'G_HERO_TYPE', 221, '12402', '[6星]熊喵阿肚+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10891, 'G_HERO_TYPE', 221, '12403', '[6星]小牛血蹄+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10892, 'G_HERO_TYPE', 221, '12404', '[6星]河爪首领+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10893, 'G_HERO_TYPE', 221, '12405', '[6星]黑暗邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10894, 'G_HERO_TYPE', 221, '12406', '[6星]利爪小德+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10895, 'G_HERO_TYPE', 221, '12407', '[6星]血帆猎手+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10896, 'G_HERO_TYPE', 221, '12408', '[6星]光明邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10897, 'G_HERO_TYPE', 222, '12409', '[6星]黑金团长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10898, 'G_HERO_TYPE', 222, '12410', '[6星]银色神官+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10899, 'G_HERO_TYPE', 222, '12411', '[6星]法力风暴+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10900, 'G_HERO_TYPE', 222, '12412', '[6星]飞刀战将+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10901, 'G_HERO_TYPE', 222, '12413', '[6星]尖牙王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10902, 'G_HERO_TYPE', 222, '12414', '[6星]美艳妖后+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10903, 'G_HERO_TYPE', 222, '12415', '[6星]巨魔导师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10904, 'G_HERO_TYPE', 223, '12416', '[6星]血狼王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10905, 'G_HERO_TYPE', 223, '12417', '[6星]大星术师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10906, 'G_HERO_TYPE', 225, '12418', '[6星]影踪掌门+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10907, 'G_HERO_TYPE', 223, '12419', '[6星]摄政阿强+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10908, 'G_HERO_TYPE', 223, '12420', '[6星]巨魔酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10909, 'G_HERO_TYPE', 223, '12421', '[6星]梅大工匠+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10910, 'G_HERO_TYPE', 223, '12422', '[6星]星界守护者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10911, 'G_HERO_TYPE', 223, '12423', '[6星]山丘之王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10912, 'G_HERO_TYPE', 224, '12424', '[6星]白银领袖+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10913, 'G_HERO_TYPE', 224, '12425', '[6星]逐日者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10914, 'G_HERO_TYPE', 224, '12426', '[6星]大先知+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10915, 'G_HERO_TYPE', 224, '12427', '[6星]血蹄酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10916, 'G_HERO_TYPE', 224, '12428', '[6星]传奇猎神+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10917, 'G_HERO_TYPE', 224, '12429', '[6星]熊喵酒仙+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10918, 'G_HERO_TYPE', 224, '12430', '[6星]脑残吼+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10919, 'G_HERO_TYPE', 225, '12431', '[6星]蛋刀男+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10920, 'G_HERO_TYPE', 225, '12432', '[6星]燃烧的鸡蛋+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10921, 'G_HERO_TYPE', 225, '12433', '[6星]风行者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10922, 'G_HERO_TYPE', 225, '12434', '[6星]神眠者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10923, 'G_HERO_TYPE', 225, '12435', '[6星]英雄萨+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10924, 'G_HERO_TYPE', 225, '12436', '[6星]月之女+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10925, 'G_HERO_TYPE', 225, '12437', '[6星]小阿王子+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10926, 'G_HERO_TYPE', 225, '23701', '[6星]大法师珍娜+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10927, 'G_HERO_TYPE', 221, '12502', '[6星]熊喵阿肚+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10928, 'G_HERO_TYPE', 221, '12503', '[6星]小牛血蹄+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10929, 'G_HERO_TYPE', 221, '12504', '[6星]河爪首领+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10930, 'G_HERO_TYPE', 221, '12505', '[6星]黑暗邪灵+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10931, 'G_HERO_TYPE', 221, '12506', '[6星]利爪小德+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10932, 'G_HERO_TYPE', 221, '12507', '[6星]血帆猎手+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10933, 'G_HERO_TYPE', 221, '12508', '[6星]光明邪灵+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10934, 'G_HERO_TYPE', 222, '12509', '[6星]黑金团长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10935, 'G_HERO_TYPE', 222, '12510', '[6星]银色神官+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10936, 'G_HERO_TYPE', 222, '12511', '[6星]法力风暴+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10937, 'G_HERO_TYPE', 222, '12512', '[6星]飞刀战将+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10938, 'G_HERO_TYPE', 222, '12513', '[6星]尖牙王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10939, 'G_HERO_TYPE', 222, '12514', '[6星]美艳妖后+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10940, 'G_HERO_TYPE', 222, '12515', '[6星]巨魔导师+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10941, 'G_HERO_TYPE', 223, '12516', '[6星]血狼王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10942, 'G_HERO_TYPE', 223, '12517', '[6星]大星术师+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10943, 'G_HERO_TYPE', 225, '12518', '[6星]影踪掌门+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10944, 'G_HERO_TYPE', 223, '12519', '[6星]摄政阿强+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10945, 'G_HERO_TYPE', 223, '12520', '[6星]巨魔酋长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10946, 'G_HERO_TYPE', 223, '12521', '[6星]梅大工匠+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10947, 'G_HERO_TYPE', 223, '12522', '[6星]星界守护者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10948, 'G_HERO_TYPE', 223, '12523', '[6星]山丘之王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10949, 'G_HERO_TYPE', 224, '12524', '[6星]白银领袖+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10950, 'G_HERO_TYPE', 224, '12525', '[6星]逐日者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10951, 'G_HERO_TYPE', 224, '12526', '[6星]大先知+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10952, 'G_HERO_TYPE', 224, '12527', '[6星]血蹄酋长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10953, 'G_HERO_TYPE', 224, '12528', '[6星]传奇猎神+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10954, 'G_HERO_TYPE', 224, '12529', '[6星]熊喵酒仙+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10955, 'G_HERO_TYPE', 224, '12530', '[6星]脑残吼+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10956, 'G_HERO_TYPE', 225, '12531', '[6星]蛋刀男+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10957, 'G_HERO_TYPE', 225, '12532', '[6星]燃烧的鸡蛋+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10958, 'G_HERO_TYPE', 225, '12533', '[6星]风行者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10959, 'G_HERO_TYPE', 225, '12534', '[6星]神眠者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10960, 'G_HERO_TYPE', 225, '12535', '[6星]英雄萨+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10961, 'G_HERO_TYPE', 225, '12536', '[6星]月之女+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10962, 'G_HERO_TYPE', 225, '12537', '[6星]小阿王子+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10963, 'G_HERO_TYPE', 225, '23801', '[6星]大法师珍娜+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10964, 'G_HERO_TYPE', 221, '12602', '[6星]熊喵阿肚+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10965, 'G_HERO_TYPE', 221, '12603', '[6星]小牛血蹄+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10966, 'G_HERO_TYPE', 221, '12604', '[6星]河爪首领+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10967, 'G_HERO_TYPE', 221, '12605', '[6星]黑暗邪灵+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10968, 'G_HERO_TYPE', 221, '12606', '[6星]利爪小德+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10969, 'G_HERO_TYPE', 221, '12607', '[6星]血帆猎手+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10970, 'G_HERO_TYPE', 221, '12608', '[6星]光明邪灵+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10971, 'G_HERO_TYPE', 222, '12609', '[6星]黑金团长+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10972, 'G_HERO_TYPE', 222, '12610', '[6星]银色神官+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10973, 'G_HERO_TYPE', 222, '12611', '[6星]法力风暴+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10974, 'G_HERO_TYPE', 222, '12612', '[6星]飞刀战将+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10975, 'G_HERO_TYPE', 222, '12613', '[6星]尖牙王+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10976, 'G_HERO_TYPE', 222, '12614', '[6星]美艳妖后+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10977, 'G_HERO_TYPE', 222, '12615', '[6星]巨魔导师+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10978, 'G_HERO_TYPE', 223, '12616', '[6星]血狼王+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10979, 'G_HERO_TYPE', 223, '12617', '[6星]大星术师+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10980, 'G_HERO_TYPE', 225, '12618', '[6星]影踪掌门+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10981, 'G_HERO_TYPE', 223, '12619', '[6星]摄政阿强+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10982, 'G_HERO_TYPE', 223, '12620', '[6星]巨魔酋长+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10983, 'G_HERO_TYPE', 223, '12621', '[6星]梅大工匠+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10984, 'G_HERO_TYPE', 223, '12622', '[6星]星界守护者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10985, 'G_HERO_TYPE', 223, '12623', '[6星]山丘之王+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10986, 'G_HERO_TYPE', 224, '12624', '[6星]白银领袖+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10987, 'G_HERO_TYPE', 224, '12625', '[6星]逐日者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10988, 'G_HERO_TYPE', 224, '12626', '[6星]大先知+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10989, 'G_HERO_TYPE', 224, '12627', '[6星]血蹄酋长+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10990, 'G_HERO_TYPE', 224, '12628', '[6星]传奇猎神+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10991, 'G_HERO_TYPE', 224, '12629', '[6星]熊喵酒仙+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10992, 'G_HERO_TYPE', 224, '12630', '[6星]脑残吼+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10993, 'G_HERO_TYPE', 225, '12631', '[6星]蛋刀男+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10994, 'G_HERO_TYPE', 225, '12632', '[6星]燃烧的鸡蛋+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10995, 'G_HERO_TYPE', 225, '12633', '[6星]风行者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10996, 'G_HERO_TYPE', 225, '12634', '[6星]神眠者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10997, 'G_HERO_TYPE', 225, '12635', '[6星]英雄萨+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10998, 'G_HERO_TYPE', 225, '12636', '[6星]月之女+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10999, 'G_HERO_TYPE', 225, '12637', '[6星]小阿王子+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11000, 'G_HERO_TYPE', 225, '23901', '[7星]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11001, 'G_HERO_TYPE', 221, '12702', '[7星]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11002, 'G_HERO_TYPE', 221, '12703', '[7星]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11003, 'G_HERO_TYPE', 221, '12704', '[7星]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11004, 'G_HERO_TYPE', 221, '12705', '[7星]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11005, 'G_HERO_TYPE', 221, '12706', '[7星]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11006, 'G_HERO_TYPE', 221, '12707', '[7星]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11007, 'G_HERO_TYPE', 221, '12708', '[7星]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11008, 'G_HERO_TYPE', 222, '12709', '[7星]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11009, 'G_HERO_TYPE', 222, '12710', '[7星]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11010, 'G_HERO_TYPE', 222, '12711', '[7星]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11011, 'G_HERO_TYPE', 222, '12712', '[7星]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11012, 'G_HERO_TYPE', 222, '12713', '[7星]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11013, 'G_HERO_TYPE', 222, '12714', '[7星]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11014, 'G_HERO_TYPE', 222, '12715', '[7星]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11015, 'G_HERO_TYPE', 223, '12716', '[7星]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11016, 'G_HERO_TYPE', 223, '12717', '[7星]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11017, 'G_HERO_TYPE', 225, '12718', '[7星]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11018, 'G_HERO_TYPE', 223, '12719', '[7星]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11019, 'G_HERO_TYPE', 223, '12720', '[7星]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11020, 'G_HERO_TYPE', 223, '12721', '[7星]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11021, 'G_HERO_TYPE', 223, '12722', '[7星]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11022, 'G_HERO_TYPE', 223, '12723', '[7星]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11023, 'G_HERO_TYPE', 224, '12724', '[7星]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11024, 'G_HERO_TYPE', 224, '12725', '[7星]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11025, 'G_HERO_TYPE', 224, '12726', '[7星]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11026, 'G_HERO_TYPE', 224, '12727', '[7星]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11027, 'G_HERO_TYPE', 224, '12728', '[7星]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11028, 'G_HERO_TYPE', 224, '12729', '[7星]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11029, 'G_HERO_TYPE', 224, '12730', '[7星]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11030, 'G_HERO_TYPE', 225, '12731', '[7星]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11031, 'G_HERO_TYPE', 225, '12732', '[7星]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11032, 'G_HERO_TYPE', 225, '12733', '[7星]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11033, 'G_HERO_TYPE', 225, '12734', '[7星]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11034, 'G_HERO_TYPE', 225, '12735', '[7星]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11035, 'G_HERO_TYPE', 225, '12736', '[7星]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11036, 'G_HERO_TYPE', 225, '12737', '[7星]小阿王子', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11037, 'G_HERO_TYPE', 225, '24001', '[7星]大法师珍娜+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11038, 'G_HERO_TYPE', 221, '12802', '[7星]熊喵阿肚+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11039, 'G_HERO_TYPE', 221, '12803', '[7星]小牛血蹄+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11040, 'G_HERO_TYPE', 221, '12804', '[7星]河爪首领+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11041, 'G_HERO_TYPE', 221, '12805', '[7星]黑暗邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11042, 'G_HERO_TYPE', 221, '12806', '[7星]利爪小德+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11043, 'G_HERO_TYPE', 221, '12807', '[7星]血帆猎手+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11044, 'G_HERO_TYPE', 221, '12808', '[7星]光明邪灵+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11045, 'G_HERO_TYPE', 222, '12809', '[7星]黑金团长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11046, 'G_HERO_TYPE', 222, '12810', '[7星]银色神官+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11047, 'G_HERO_TYPE', 222, '12811', '[7星]法力风暴+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11048, 'G_HERO_TYPE', 222, '12812', '[7星]飞刀战将+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11049, 'G_HERO_TYPE', 222, '12813', '[7星]尖牙王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11050, 'G_HERO_TYPE', 222, '12814', '[7星]美艳妖后+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11051, 'G_HERO_TYPE', 222, '12815', '[7星]巨魔导师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11052, 'G_HERO_TYPE', 223, '12816', '[7星]血狼王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11053, 'G_HERO_TYPE', 223, '12817', '[7星]大星术师+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11054, 'G_HERO_TYPE', 225, '12818', '[7星]影踪掌门+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11055, 'G_HERO_TYPE', 223, '12819', '[7星]摄政阿强+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11056, 'G_HERO_TYPE', 223, '12820', '[7星]巨魔酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11057, 'G_HERO_TYPE', 223, '12821', '[7星]梅大工匠+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11058, 'G_HERO_TYPE', 223, '12822', '[7星]星界守护者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11059, 'G_HERO_TYPE', 223, '12823', '[7星]山丘之王+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11060, 'G_HERO_TYPE', 224, '12824', '[7星]白银领袖+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11061, 'G_HERO_TYPE', 224, '12825', '[7星]逐日者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11062, 'G_HERO_TYPE', 224, '12826', '[7星]大先知+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11063, 'G_HERO_TYPE', 224, '12827', '[7星]血蹄酋长+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11064, 'G_HERO_TYPE', 224, '12828', '[7星]传奇猎神+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11065, 'G_HERO_TYPE', 224, '12829', '[7星]熊喵酒仙+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11066, 'G_HERO_TYPE', 224, '12830', '[7星]脑残吼+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11067, 'G_HERO_TYPE', 225, '12831', '[7星]蛋刀男+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11068, 'G_HERO_TYPE', 225, '12832', '[7星]燃烧的鸡蛋+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11069, 'G_HERO_TYPE', 225, '12833', '[7星]风行者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11070, 'G_HERO_TYPE', 225, '12834', '[7星]神眠者+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11071, 'G_HERO_TYPE', 225, '12835', '[7星]英雄萨+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11072, 'G_HERO_TYPE', 225, '12836', '[7星]月之女+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11073, 'G_HERO_TYPE', 225, '12837', '[7星]小阿王子+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11074, 'G_HERO_TYPE', 225, '24101', '[7星]大法师珍娜+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11075, 'G_HERO_TYPE', 221, '12902', '[7星]熊喵阿肚+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11076, 'G_HERO_TYPE', 221, '12903', '[7星]小牛血蹄+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11077, 'G_HERO_TYPE', 221, '12904', '[7星]河爪首领+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11078, 'G_HERO_TYPE', 221, '12905', '[7星]黑暗邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11079, 'G_HERO_TYPE', 221, '12906', '[7星]利爪小德+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11080, 'G_HERO_TYPE', 221, '12907', '[7星]血帆猎手+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11081, 'G_HERO_TYPE', 221, '12908', '[7星]光明邪灵+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11082, 'G_HERO_TYPE', 222, '12909', '[7星]黑金团长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11083, 'G_HERO_TYPE', 222, '12910', '[7星]银色神官+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11084, 'G_HERO_TYPE', 222, '12911', '[7星]法力风暴+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11085, 'G_HERO_TYPE', 222, '12912', '[7星]飞刀战将+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11086, 'G_HERO_TYPE', 222, '12913', '[7星]尖牙王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11087, 'G_HERO_TYPE', 222, '12914', '[7星]美艳妖后+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11088, 'G_HERO_TYPE', 222, '12915', '[7星]巨魔导师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11089, 'G_HERO_TYPE', 223, '12916', '[7星]血狼王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11090, 'G_HERO_TYPE', 223, '12917', '[7星]大星术师+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11091, 'G_HERO_TYPE', 225, '12918', '[7星]影踪掌门+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11092, 'G_HERO_TYPE', 223, '12919', '[7星]摄政阿强+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11093, 'G_HERO_TYPE', 223, '12920', '[7星]巨魔酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11094, 'G_HERO_TYPE', 223, '12921', '[7星]梅大工匠+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11095, 'G_HERO_TYPE', 223, '12922', '[7星]星界守护者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11096, 'G_HERO_TYPE', 223, '12923', '[7星]山丘之王+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11097, 'G_HERO_TYPE', 224, '12924', '[7星]白银领袖+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11098, 'G_HERO_TYPE', 224, '12925', '[7星]逐日者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11099, 'G_HERO_TYPE', 224, '12926', '[7星]大先知+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11100, 'G_HERO_TYPE', 224, '12927', '[7星]血蹄酋长+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11101, 'G_HERO_TYPE', 224, '12928', '[7星]传奇猎神+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11102, 'G_HERO_TYPE', 224, '12929', '[7星]熊喵酒仙+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11103, 'G_HERO_TYPE', 224, '12930', '[7星]脑残吼+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11104, 'G_HERO_TYPE', 225, '12931', '[7星]蛋刀男+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11105, 'G_HERO_TYPE', 225, '12932', '[7星]燃烧的鸡蛋+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11106, 'G_HERO_TYPE', 225, '12933', '[7星]风行者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11107, 'G_HERO_TYPE', 225, '12934', '[7星]神眠者+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11108, 'G_HERO_TYPE', 225, '12935', '[7星]英雄萨+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11109, 'G_HERO_TYPE', 225, '12936', '[7星]月之女+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11110, 'G_HERO_TYPE', 225, '12937', '[7星]小阿王子+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11111, 'G_HERO_TYPE', 225, '24201', '[7星]大法师珍娜+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11112, 'G_HERO_TYPE', 221, '13002', '[7星]熊喵阿肚+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11113, 'G_HERO_TYPE', 221, '13003', '[7星]小牛血蹄+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11114, 'G_HERO_TYPE', 221, '13004', '[7星]河爪首领+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11115, 'G_HERO_TYPE', 221, '13005', '[7星]黑暗邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11116, 'G_HERO_TYPE', 221, '13006', '[7星]利爪小德+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11117, 'G_HERO_TYPE', 221, '13007', '[7星]血帆猎手+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11118, 'G_HERO_TYPE', 221, '13008', '[7星]光明邪灵+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11119, 'G_HERO_TYPE', 222, '13009', '[7星]黑金团长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11120, 'G_HERO_TYPE', 222, '13010', '[7星]银色神官+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11121, 'G_HERO_TYPE', 222, '13011', '[7星]法力风暴+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11122, 'G_HERO_TYPE', 222, '13012', '[7星]飞刀战将+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11123, 'G_HERO_TYPE', 222, '13013', '[7星]尖牙王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11124, 'G_HERO_TYPE', 222, '13014', '[7星]美艳妖后+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11125, 'G_HERO_TYPE', 222, '13015', '[7星]巨魔导师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11126, 'G_HERO_TYPE', 223, '13016', '[7星]血狼王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11127, 'G_HERO_TYPE', 223, '13017', '[7星]大星术师+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11128, 'G_HERO_TYPE', 225, '13018', '[7星]影踪掌门+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11129, 'G_HERO_TYPE', 223, '13019', '[7星]摄政阿强+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11130, 'G_HERO_TYPE', 223, '13020', '[7星]巨魔酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11131, 'G_HERO_TYPE', 223, '13021', '[7星]梅大工匠+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11132, 'G_HERO_TYPE', 223, '13022', '[7星]星界守护者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11133, 'G_HERO_TYPE', 223, '13023', '[7星]山丘之王+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11134, 'G_HERO_TYPE', 224, '13024', '[7星]白银领袖+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11135, 'G_HERO_TYPE', 224, '13025', '[7星]逐日者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11136, 'G_HERO_TYPE', 224, '13026', '[7星]大先知+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11137, 'G_HERO_TYPE', 224, '13027', '[7星]血蹄酋长+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11138, 'G_HERO_TYPE', 224, '13028', '[7星]传奇猎神+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11139, 'G_HERO_TYPE', 224, '13029', '[7星]熊喵酒仙+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11140, 'G_HERO_TYPE', 224, '13030', '[7星]脑残吼+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11141, 'G_HERO_TYPE', 225, '13031', '[7星]蛋刀男+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11142, 'G_HERO_TYPE', 225, '13032', '[7星]燃烧的鸡蛋+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11143, 'G_HERO_TYPE', 225, '13033', '[7星]风行者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11144, 'G_HERO_TYPE', 225, '13034', '[7星]神眠者+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11145, 'G_HERO_TYPE', 225, '13035', '[7星]英雄萨+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11146, 'G_HERO_TYPE', 225, '13036', '[7星]月之女+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11147, 'G_HERO_TYPE', 225, '13037', '[7星]小阿王子+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11148, 'G_HERO_TYPE', 225, '24301', '[7星]大法师珍娜+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11149, 'G_HERO_TYPE', 221, '13102', '[7星]熊喵阿肚+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11150, 'G_HERO_TYPE', 221, '13103', '[7星]小牛血蹄+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11151, 'G_HERO_TYPE', 221, '13104', '[7星]河爪首领+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11152, 'G_HERO_TYPE', 221, '13105', '[7星]黑暗邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11153, 'G_HERO_TYPE', 221, '13106', '[7星]利爪小德+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11154, 'G_HERO_TYPE', 221, '13107', '[7星]血帆猎手+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11155, 'G_HERO_TYPE', 221, '13108', '[7星]光明邪灵+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11156, 'G_HERO_TYPE', 222, '13109', '[7星]黑金团长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11157, 'G_HERO_TYPE', 222, '13110', '[7星]银色神官+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11158, 'G_HERO_TYPE', 222, '13111', '[7星]法力风暴+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11159, 'G_HERO_TYPE', 222, '13112', '[7星]飞刀战将+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11160, 'G_HERO_TYPE', 222, '13113', '[7星]尖牙王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11161, 'G_HERO_TYPE', 222, '13114', '[7星]美艳妖后+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11162, 'G_HERO_TYPE', 222, '13115', '[7星]巨魔导师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11163, 'G_HERO_TYPE', 223, '13116', '[7星]血狼王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11164, 'G_HERO_TYPE', 223, '13117', '[7星]大星术师+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11165, 'G_HERO_TYPE', 225, '13118', '[7星]影踪掌门+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11166, 'G_HERO_TYPE', 223, '13119', '[7星]摄政阿强+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11167, 'G_HERO_TYPE', 223, '13120', '[7星]巨魔酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11168, 'G_HERO_TYPE', 223, '13121', '[7星]梅大工匠+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11169, 'G_HERO_TYPE', 223, '13122', '[7星]星界守护者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11170, 'G_HERO_TYPE', 223, '13123', '[7星]山丘之王+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11171, 'G_HERO_TYPE', 224, '13124', '[7星]白银领袖+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11172, 'G_HERO_TYPE', 224, '13125', '[7星]逐日者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11173, 'G_HERO_TYPE', 224, '13126', '[7星]大先知+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11174, 'G_HERO_TYPE', 224, '13127', '[7星]血蹄酋长+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11175, 'G_HERO_TYPE', 224, '13128', '[7星]传奇猎神+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11176, 'G_HERO_TYPE', 224, '13129', '[7星]熊喵酒仙+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11177, 'G_HERO_TYPE', 224, '13130', '[7星]脑残吼+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11178, 'G_HERO_TYPE', 225, '13131', '[7星]蛋刀男+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11179, 'G_HERO_TYPE', 225, '13132', '[7星]燃烧的鸡蛋+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11180, 'G_HERO_TYPE', 225, '13133', '[7星]风行者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11181, 'G_HERO_TYPE', 225, '13134', '[7星]神眠者+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11182, 'G_HERO_TYPE', 225, '13135', '[7星]英雄萨+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11183, 'G_HERO_TYPE', 225, '13136', '[7星]月之女+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11184, 'G_HERO_TYPE', 225, '13137', '[7星]小阿王子+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11185, 'G_HERO_TYPE', 225, '24401', '[7星]大法师珍娜+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11186, 'G_HERO_TYPE', 221, '13202', '[7星]熊喵阿肚+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11187, 'G_HERO_TYPE', 221, '13203', '[7星]小牛血蹄+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11188, 'G_HERO_TYPE', 221, '13204', '[7星]河爪首领+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11189, 'G_HERO_TYPE', 221, '13205', '[7星]黑暗邪灵+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11190, 'G_HERO_TYPE', 221, '13206', '[7星]利爪小德+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11191, 'G_HERO_TYPE', 221, '13207', '[7星]血帆猎手+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11192, 'G_HERO_TYPE', 221, '13208', '[7星]光明邪灵+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11193, 'G_HERO_TYPE', 222, '13209', '[7星]黑金团长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11194, 'G_HERO_TYPE', 222, '13210', '[7星]银色神官+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11195, 'G_HERO_TYPE', 222, '13211', '[7星]法力风暴+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11196, 'G_HERO_TYPE', 222, '13212', '[7星]飞刀战将+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11197, 'G_HERO_TYPE', 222, '13213', '[7星]尖牙王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11198, 'G_HERO_TYPE', 222, '13214', '[7星]美艳妖后+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11199, 'G_HERO_TYPE', 222, '13215', '[7星]巨魔导师+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11200, 'G_HERO_TYPE', 223, '13216', '[7星]血狼王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11201, 'G_HERO_TYPE', 223, '13217', '[7星]大星术师+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11202, 'G_HERO_TYPE', 225, '13218', '[7星]影踪掌门+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11203, 'G_HERO_TYPE', 223, '13219', '[7星]摄政阿强+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11204, 'G_HERO_TYPE', 223, '13220', '[7星]巨魔酋长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11205, 'G_HERO_TYPE', 223, '13221', '[7星]梅大工匠+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11206, 'G_HERO_TYPE', 223, '13222', '[7星]星界守护者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11207, 'G_HERO_TYPE', 223, '13223', '[7星]山丘之王+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11208, 'G_HERO_TYPE', 224, '13224', '[7星]白银领袖+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11209, 'G_HERO_TYPE', 224, '13225', '[7星]逐日者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11210, 'G_HERO_TYPE', 224, '13226', '[7星]大先知+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11211, 'G_HERO_TYPE', 224, '13227', '[7星]血蹄酋长+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11212, 'G_HERO_TYPE', 224, '13228', '[7星]传奇猎神+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11213, 'G_HERO_TYPE', 224, '13229', '[7星]熊喵酒仙+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11214, 'G_HERO_TYPE', 224, '13230', '[7星]脑残吼+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11215, 'G_HERO_TYPE', 225, '13231', '[7星]蛋刀男+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11216, 'G_HERO_TYPE', 225, '13232', '[7星]燃烧的鸡蛋+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11217, 'G_HERO_TYPE', 225, '13233', '[7星]风行者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11218, 'G_HERO_TYPE', 225, '13234', '[7星]神眠者+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11219, 'G_HERO_TYPE', 225, '13235', '[7星]英雄萨+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11220, 'G_HERO_TYPE', 225, '13236', '[7星]月之女+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11221, 'G_HERO_TYPE', 225, '13237', '[7星]小阿王子+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11222, 'G_HERO_TYPE', 225, '24501', '[7星]大法师珍娜+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11223, 'G_HERO_TYPE', 221, '13302', '[7星]熊喵阿肚+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11224, 'G_HERO_TYPE', 221, '13303', '[7星]小牛血蹄+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11225, 'G_HERO_TYPE', 221, '13304', '[7星]河爪首领+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11226, 'G_HERO_TYPE', 221, '13305', '[7星]黑暗邪灵+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11227, 'G_HERO_TYPE', 221, '13306', '[7星]利爪小德+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11228, 'G_HERO_TYPE', 221, '13307', '[7星]血帆猎手+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11229, 'G_HERO_TYPE', 221, '13308', '[7星]光明邪灵+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11230, 'G_HERO_TYPE', 222, '13309', '[7星]黑金团长+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11231, 'G_HERO_TYPE', 222, '13310', '[7星]银色神官+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11232, 'G_HERO_TYPE', 222, '13311', '[7星]法力风暴+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11233, 'G_HERO_TYPE', 222, '13312', '[7星]飞刀战将+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11234, 'G_HERO_TYPE', 222, '13313', '[7星]尖牙王+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11235, 'G_HERO_TYPE', 222, '13314', '[7星]美艳妖后+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11236, 'G_HERO_TYPE', 222, '13315', '[7星]巨魔导师+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11237, 'G_HERO_TYPE', 223, '13316', '[7星]血狼王+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11238, 'G_HERO_TYPE', 223, '13317', '[7星]大星术师+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11239, 'G_HERO_TYPE', 225, '13318', '[7星]影踪掌门+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11240, 'G_HERO_TYPE', 223, '13319', '[7星]摄政阿强+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11241, 'G_HERO_TYPE', 223, '13320', '[7星]巨魔酋长+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11242, 'G_HERO_TYPE', 223, '13321', '[7星]梅大工匠+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11243, 'G_HERO_TYPE', 223, '13322', '[7星]星界守护者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11244, 'G_HERO_TYPE', 223, '13323', '[7星]山丘之王+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11245, 'G_HERO_TYPE', 224, '13324', '[7星]白银领袖+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11246, 'G_HERO_TYPE', 224, '13325', '[7星]逐日者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11247, 'G_HERO_TYPE', 224, '13326', '[7星]大先知+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11248, 'G_HERO_TYPE', 224, '13327', '[7星]血蹄酋长+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11249, 'G_HERO_TYPE', 224, '13328', '[7星]传奇猎神+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11250, 'G_HERO_TYPE', 224, '13329', '[7星]熊喵酒仙+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11251, 'G_HERO_TYPE', 224, '13330', '[7星]脑残吼+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11252, 'G_HERO_TYPE', 225, '13331', '[7星]蛋刀男+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11253, 'G_HERO_TYPE', 225, '13332', '[7星]燃烧的鸡蛋+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11254, 'G_HERO_TYPE', 225, '13333', '[7星]风行者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11255, 'G_HERO_TYPE', 225, '13334', '[7星]神眠者+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11256, 'G_HERO_TYPE', 225, '13335', '[7星]英雄萨+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11257, 'G_HERO_TYPE', 225, '13336', '[7星]月之女+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11258, 'G_HERO_TYPE', 225, '13337', '[7星]小阿王子+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11259, 'G_HERO_TYPE', 225, '24601', '[7星]大法师珍娜+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11260, 'G_HERO_TYPE', 221, '13402', '[7星]熊喵阿肚+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11261, 'G_HERO_TYPE', 221, '13403', '[7星]小牛血蹄+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11262, 'G_HERO_TYPE', 221, '13404', '[7星]河爪首领+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11263, 'G_HERO_TYPE', 221, '13405', '[7星]黑暗邪灵+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11264, 'G_HERO_TYPE', 221, '13406', '[7星]利爪小德+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11265, 'G_HERO_TYPE', 221, '13407', '[7星]血帆猎手+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11266, 'G_HERO_TYPE', 221, '13408', '[7星]光明邪灵+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11267, 'G_HERO_TYPE', 222, '13409', '[7星]黑金团长+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11268, 'G_HERO_TYPE', 222, '13410', '[7星]银色神官+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11269, 'G_HERO_TYPE', 222, '13411', '[7星]法力风暴+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11270, 'G_HERO_TYPE', 222, '13412', '[7星]飞刀战将+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11271, 'G_HERO_TYPE', 222, '13413', '[7星]尖牙王+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11272, 'G_HERO_TYPE', 222, '13414', '[7星]美艳妖后+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11273, 'G_HERO_TYPE', 222, '13415', '[7星]巨魔导师+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11274, 'G_HERO_TYPE', 223, '13416', '[7星]血狼王+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11275, 'G_HERO_TYPE', 223, '13417', '[7星]大星术师+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11276, 'G_HERO_TYPE', 225, '13418', '[7星]影踪掌门+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11277, 'G_HERO_TYPE', 223, '13419', '[7星]摄政阿强+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11278, 'G_HERO_TYPE', 223, '13420', '[7星]巨魔酋长+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11279, 'G_HERO_TYPE', 223, '13421', '[7星]梅大工匠+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11280, 'G_HERO_TYPE', 223, '13422', '[7星]星界守护者+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11281, 'G_HERO_TYPE', 223, '13423', '[7星]山丘之王+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11282, 'G_HERO_TYPE', 224, '13424', '[7星]白银领袖+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11283, 'G_HERO_TYPE', 224, '13425', '[7星]逐日者+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11284, 'G_HERO_TYPE', 224, '13426', '[7星]大先知+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11285, 'G_HERO_TYPE', 224, '13427', '[7星]血蹄酋长+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11286, 'G_HERO_TYPE', 224, '13428', '[7星]传奇猎神+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11287, 'G_HERO_TYPE', 224, '13429', '[7星]熊喵酒仙+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11288, 'G_HERO_TYPE', 224, '13430', '[7星]脑残吼+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11289, 'G_HERO_TYPE', 225, '13431', '[7星]蛋刀男+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11290, 'G_HERO_TYPE', 225, '13432', '[7星]燃烧的鸡蛋+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11291, 'G_HERO_TYPE', 225, '13433', '[7星]风行者+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11292, 'G_HERO_TYPE', 225, '13434', '[7星]神眠者+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11293, 'G_HERO_TYPE', 225, '13435', '[7星]英雄萨+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11294, 'G_HERO_TYPE', 225, '13436', '[7星]月之女+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11295, 'G_HERO_TYPE', 225, '13437', '[7星]小阿王子+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11296, 'G_HERO_TYPE', 225, '24701', '[终极]大法师珍娜', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11297, 'G_HERO_TYPE', 221, '13502', '[终极]熊喵阿肚', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11298, 'G_HERO_TYPE', 221, '13503', '[终极]小牛血蹄', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11299, 'G_HERO_TYPE', 221, '13504', '[终极]河爪首领', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11300, 'G_HERO_TYPE', 221, '13505', '[终极]黑暗邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11301, 'G_HERO_TYPE', 221, '13506', '[终极]利爪小德', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11302, 'G_HERO_TYPE', 221, '13507', '[终极]血帆猎手', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11303, 'G_HERO_TYPE', 221, '13508', '[终极]光明邪灵', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11304, 'G_HERO_TYPE', 222, '13509', '[终极]黑金团长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11305, 'G_HERO_TYPE', 222, '13510', '[终极]银色神官', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11306, 'G_HERO_TYPE', 222, '13511', '[终极]法力风暴', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11307, 'G_HERO_TYPE', 222, '13512', '[终极]飞刀战将', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11308, 'G_HERO_TYPE', 222, '13513', '[终极]尖牙王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11309, 'G_HERO_TYPE', 222, '13514', '[终极]美艳妖后', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11310, 'G_HERO_TYPE', 222, '13515', '[终极]巨魔导师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11311, 'G_HERO_TYPE', 223, '13516', '[终极]血狼王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11312, 'G_HERO_TYPE', 223, '13517', '[终极]大星术师', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11313, 'G_HERO_TYPE', 225, '13518', '[终极]影踪掌门', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11314, 'G_HERO_TYPE', 223, '13519', '[终极]摄政阿强', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11315, 'G_HERO_TYPE', 223, '13520', '[终极]巨魔酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11316, 'G_HERO_TYPE', 223, '13521', '[终极]梅大工匠', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11317, 'G_HERO_TYPE', 223, '13522', '[终极]星界守护者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11318, 'G_HERO_TYPE', 223, '13523', '[终极]山丘之王', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11319, 'G_HERO_TYPE', 224, '13524', '[终极]白银领袖', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11320, 'G_HERO_TYPE', 224, '13525', '[终极]逐日者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11321, 'G_HERO_TYPE', 224, '13526', '[终极]大先知', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11322, 'G_HERO_TYPE', 224, '13527', '[终极]血蹄酋长', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11323, 'G_HERO_TYPE', 224, '13528', '[终极]传奇猎神', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11324, 'G_HERO_TYPE', 224, '13529', '[终极]熊喵酒仙', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11325, 'G_HERO_TYPE', 224, '13530', '[终极]脑残吼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11326, 'G_HERO_TYPE', 225, '13531', '[终极]蛋刀男', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11327, 'G_HERO_TYPE', 225, '13532', '[终极]燃烧的鸡蛋', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11328, 'G_HERO_TYPE', 225, '13533', '[终极]风行者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11329, 'G_HERO_TYPE', 225, '13534', '[终极]神眠者', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11330, 'G_HERO_TYPE', 225, '13535', '[终极]英雄萨', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11331, 'G_HERO_TYPE', 225, '13536', '[终极]月之女', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11332, 'G_HERO_TYPE', 225, '13537', '[终极]小阿王子', null, '0', '1', null);

--SYS_GM_MENU

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('0', 1, -1, 'root', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('5', null, 0, '账户管理', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('6', null, 0, '审核', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('7', null, 0, '后台记录查询', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('4', null, 0, '调数据工具', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1', null, 0, '运营工具', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('2', null, 0, 'GM工具', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('3', 59, 0, '发布公告', '/gmTools/announcement', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('15', null, 1, '各模块参与数据', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('16', 61, 1, '奖励补偿发放', '/gmTools/supplyAward/supplyAward', '0', null);

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('17', null, 1, '内部账户管理', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('14', null, 1, '资源产量数据', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('11', null, 1, '登录及留存数据', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('12', null, 1, '充值数据', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('13', null, 1, '排行数据', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('22', null, 2, '账号查询', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('21', 60, 2, '封号处理', '/gmTools/accountIntervene', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('53', null, 5, '职位配置', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('54', null, 5, '我的账户', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('51', null, 5, '账户建立', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('52', null, 5, '账户管理', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('62', null, 6, '记录详细查看', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('61', 62, 6, '审核列表', '/gmApprove/supplyApprove', '0', null);

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('114', 5, 11, '天登录次数', '/manageTools/loginData/dailyLoginAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('115', null, 11, '在线峰值', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('116', 8, 11, '活跃用户数', '/manageTools/loginData/activeUser', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('111', 2, 11, '用户转换率', '/manageTools/loginData/userTranslate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('112', 3, 11, '留存数据', '/manageTools/loginData/saveData', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('113', 4, 11, '等级分布', '/manageTools/loginData/playerLevel', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('125', 14, 12, '充值率及APU值', '/manageTools/rechargeData/prepayAndAPRU', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('126', 15, 12, '充值记录', '/manageTools/rechargeData/chargeRecords', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('127', 42, 12, '特权购买次数', '/manageTools/rechargeData/playerPrivilege', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('124', 13, 12, '充值次数分布', '/manageTools/rechargeData/firstlyChargeAndAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('121', null, 12, '充值金额分布', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('122', 11, 12, '首充等级分布', '/manageTools/rechargeData/firstlyChargeAndLevel', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('123', 12, 12, '首充天数分布', '/manageTools/rechargeData/firstlyChargeAndRelativeDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('131', 16, 13, '用户排名记录', '/manageTools/rankingData', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('142', 18, 14, '资源产出消耗分布', '/manageTools/resourceData/resourceDataByModule', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('141', 17, 14, '资源总产出消耗', '/manageTools/resourceData/resourceDataByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('157', null, 15, '英雄', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('156', null, 15, '宝藏', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('159', null, 15, '其他', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('158', null, 15, '活动', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('152', null, 15, '竞技场', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('151', null, 15, '副本及体力', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('155', null, 15, '装备', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('153', null, 15, '通灵塔', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('223', 56, 22, '详细信息', '/gmTools/playerDetail', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('221', 57, 22, '钻石查询', '/gmTools/playerGemQuery', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('222', 58, 22, '金币查询', '/gmTools/playerGoldQuery', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1152', 7, 115, '天在线峰值', '/manageTools/loginData/dailyOnline', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1151', 6, 115, '小时在线峰值', '/manageTools/loginData/hourlyOnline', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1212', 10, 121, '单笔充值金额分布', '/manageTools/rechargeData/singleRecharge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1211', 9, 121, '充值总金额分布', '/manageTools/rechargeData/totalRecharge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1513', 21, 151, '通关副本及扫荡次数', '/manageTools/moduleData/zone/zoneChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1512', 20, 151, '每日体力购买次数分布', '/manageTools/moduleData/zone/purchasePowerByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1511', 19, 151, '每日体力购买总次数', '/manageTools/moduleData/zone/purchasePowerByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1524', 25, 152, '竞技连胜次数分布', '/manageTools/moduleData/arena/arenaConsecutiveChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1525', 26, 152, '竞技失败次数分布', '/manageTools/moduleData/arena/arenaFallingChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1523', 24, 152, '竞技胜利次数分布', '/manageTools/moduleData/arena/arenaSuccessChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1521', 22, 152, '竞技购买总次数', '/manageTools/moduleData/arena/purchaseArenaChallengeByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1522', 23, 152, '竞技购买次数分布', '/manageTools/moduleData/arena/purchaseArenaChallengeByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1532', 28, 153, '通灵塔星数', '/manageTools/moduleData/zig/zigScore', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1531', 27, 153, '通灵塔层数', '/manageTools/moduleData/zig/zigFloor', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1554', 47, 155, '祭坛总次数', '/manageTools/moduleData/equip/totalAltarAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1555', 48, 155, '祭坛次数分布', '/manageTools/moduleData/equip/altarByPlayer', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1553', 31, 155, '当日强化次数', '/manageTools/moduleData/equip/equipUpgrade', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1552', 30, 155, '强化级别数量', '/manageTools/moduleData/equip/equipLevel', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1551', 29, 155, '装备品质', '/manageTools/moduleData/equip/equipRankAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1569', 40, 156, '兑换总次数', '/manageTools/moduleData/treasure/exchangeAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1568', 39, 156, '祝福时间', '/manageTools/moduleData/treasure/treasureBlessTime', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('156a', 41, 156, '兑换指定id次数', '/manageTools/moduleData/treasure/exchangeByOid', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1561', 32, 156, '掠夺次数', '/manageTools/moduleData/treasure/treasurePillageAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1562', 33, 156, '宝藏级别分布 ', '/manageTools/moduleData/treasure/treasureLevelByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1564', 35, 156, '宝藏次数', '/manageTools/moduleData/treasure/treasureDigAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1563', 34, 156, '宝藏级别总数', '/manageTools/moduleData/treasure/treasureLevelByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1565', 36, 156, '刷新次数', '/manageTools/moduleData/treasure/treasureRefreshAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1567', 38, 156, '阵营胜利时间', '/manageTools/moduleData/treasure/treasureVictorTime', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1566', 37, 156, '祝福次数', '/manageTools/moduleData/treasure/treasureBlessAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1573', 54, 157, '修炼次数分布', '/manageTools/moduleData/hero/heroHoneByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1574', 55, 157, '训练次数', '/manageTools/moduleData/hero/heroTraining', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1571', 52, 157, '进阶次数', '/manageTools/moduleData/hero/heroUpgradeRank', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1572', 53, 157, '修炼次数', '/manageTools/moduleData/hero/heroHoneByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1583', 45, 158, '连续领军饷天数', '/manageTools/moduleData/activity/activityContinuousGoldPay', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1584', 46, 158, '指定活动id参与次数', '/manageTools/moduleData/activity/activityAsSpecial', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1581', 43, 158, '吃面包次数', '/manageTools/moduleData/activity/activityFoods', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1582', 44, 158, '领军饷次数', '/manageTools/moduleData/activity/activityGetGoldPay', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1593', 51, 159, '背包格子数', '/manageTools/moduleData/other/packageAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1592', 50, 159, '排名领奖次数', '/manageTools/moduleData/other/getRankingReward', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1591', 49, 159, '商店购买次数', '/manageTools/moduleData/other/goodsBuy', '0', '');

-- temp user sys_gm_user

insert into sys_gm_user (USER_ID, USER_NAME, NICK_NAME, USER_PWD, JOB_ID)
values (1, 'root', 'root', 'root', 1);

-- temp job sys_gm_job

insert into sys_gm_job (JOB_ID, JOB_GRADE, JOB_NAME)
values (1, '1', 'CEO');

--sys_gm_role

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (1, '后台记录查询', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (2, '奖励发放', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (3, '内部账户管理', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (4, '封号处理', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (5, '账户查询', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (6, '登录留存数据', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (7, '充值数据', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (8, '排行数据', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (9, '资源产量数据', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (10, '模块参与数据', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (11, '职位管理', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (12, '账号建立', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (13, '账户修改删除', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (14, '账户权限配置', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (15, '调数据', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (16, '审核发放', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (17, '后台记录查询', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (18, '盛大区', '1', '0', null, 0);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (19, '腾讯区', '1', '0', null, 1);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (20, 'XXX区1', '1', '0', null, 2);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (21, 'XXX区2', '1', '0', null, 3);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (22, 'XXX区3', '1', '0', null, 4);

--sys_gm_user_re_role

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (1, 1, 1);

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (2, 1, 2);

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (3, 1, 3);

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (4, 1, 18);

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (5, 1, 19);

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (6, 1, 20);

insert into sys_gm_user_re_role (USER_ROLE_ID, USER_ID, ROLE_ID)
values (7, 1, 21);

--sys_gm_menu_re_role

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1292, '0', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1293, '1', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1294, '11', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1295, '111', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1296, '112', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1297, '113', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1298, '114', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1299, '115', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1290, '1151', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1291, '1152', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1300, '116', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1301, '12', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1302, '121', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1303, '1211', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1304, '1212', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1305, '122', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1306, '123', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1307, '124', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1308, '125', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1309, '126', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1381, '127', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1310, '13', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1311, '131', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1312, '14', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1313, '141', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1314, '142', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1316, '15', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1317, '151', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1318, '1511', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1319, '1512', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1320, '1513', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1321, '152', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1322, '1521', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1323, '1522', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1324, '1523', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1325, '1524', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1326, '1525', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1327, '153', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1328, '1531', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1329, '1532', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1330, '155', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1331, '1551', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1332, '1552', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1333, '1553', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1350, '1554', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1351, '1555', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1334, '156', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1335, '1561', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1336, '1562', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1337, '1563', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1338, '1564', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1339, '1565', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1340, '1566', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1341, '1567', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1342, '1568', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1343, '1569', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1344, '156a', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1345, '157', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1346, '1571', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1347, '1572', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1348, '1573', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1349, '1574', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1352, '158', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1353, '1581', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1354, '1582', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1355, '1583', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1356, '1584', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1358, '159', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1359, '1591', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1360, '1592', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1361, '1593', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1362, '16', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1363, '17', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1364, '2', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1365, '21', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1366, '22', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1367, '221', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1368, '222', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1369, '223', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1370, '3', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1371, '4', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1372, '5', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1373, '51', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1374, '52', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1375, '53', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1376, '54', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1377, '6', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1378, '61', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1379, '62', 1);

insert into sys_gm_menu_re_role (MENU_ROLE_ID, MENU_ID, ROLE_ID)
values (1380, '7', 1);


-- temp
insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (1, '/', 'overview/', 'Overview', '1', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (2, '/manageTools/loginData/userTranslate', 'manageTools/loginData/userTranslate/', 'UserTranslate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (3, '/manageTools/loginData/saveData', 'manageTools/loginData/saveData/', 'SaveData', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (4, '/manageTools/loginData/playerLevel', 'manageTools/loginData/playerLevel/', 'PlayerLevel', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (5, '/manageTools/loginData/dailyLoginAmount', 'manageTools/loginData/dailyLoginAmount/', 'DailyLoginAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (6, '/manageTools/loginData/hourlyOnline', 'manageTools/loginData/hourlyOnline/', 'HourlyOnline', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (7, '/manageTools/loginData/dailyOnline', 'manageTools/loginData/dailyOnline/', 'DailyOnline', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (8, '/manageTools/loginData/activeUser', 'manageTools/loginData/activeUser/', 'ActiveUser', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (9, '/manageTools/rechargeData/totalRecharge', 'manageTools/rechargeData/totalRecharge/', 'TotalRecharge', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (10, '/manageTools/rechargeData/singleRecharge', 'manageTools/rechargeData/singleRecharge/', 'SingleRecharge', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (11, '/manageTools/rechargeData/firstlyChargeAndLevel', 'manageTools/rechargeData/firstlyChargeAndLevel/', 'FirstlyChargeAndLevel', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (12, '/manageTools/rechargeData/firstlyChargeAndRelativeDate', 'manageTools/rechargeData/firstlyChargeAndRelativeDate/', 'FirstlyChargeAndRelativeDate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (13, '/manageTools/rechargeData/firstlyChargeAndAmount', 'manageTools/rechargeData/firstlyChargeAndAmount/', 'FirstlyChargeAndAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (14, '/manageTools/rechargeData/prepayAndAPRU', 'manageTools/rechargeData/prepayAndAPRU/', 'PrepayAndAPRU', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (15, '/manageTools/rechargeData/chargeRecords', 'manageTools/rechargeData/chargeRecords/', 'ChargeRecords', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (16, '/manageTools/rankingData', 'manageTools/rankingData/', 'RankingData', '1', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (17, '/manageTools/resourceData/resourceDataByDate', 'manageTools/resourceData/resourceDataByDate/', 'ResourceDataByDate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (18, '/manageTools/resourceData/resourceDataByModule', 'manageTools/resourceData/resourceDataByModule/', 'ResourceDataByModule', '', '', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (19, '/manageTools/moduleData/zone/purchasePowerByDate', 'manageTools/moduleData/zone/', 'PurchasePowerByDate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (20, '/manageTools/moduleData/zone/purchasePowerByAmount', 'manageTools/moduleData/zone/', 'PurchasePowerByAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (21, '/manageTools/moduleData/zone/zoneChallenge', 'manageTools/moduleData/zone/', 'ZoneChallenge', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (22, '/manageTools/moduleData/arena/purchaseArenaChallengeByDate', 'manageTools/moduleData/arena/', 'PurchaseArenaChallengeByDate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (23, '/manageTools/moduleData/arena/purchaseArenaChallengeByAmount', 'manageTools/moduleData/arena/', 'PurchaseArenaChallengeByAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (24, '/manageTools/moduleData/arena/arenaSuccessChallenge', 'manageTools/moduleData/arena/', 'ArenaSuccessChallenge', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (25, '/manageTools/moduleData/arena/arenaConsecutiveChallenge', 'manageTools/moduleData/arena/', 'ArenaConsecutiveChallenge', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (26, '/manageTools/moduleData/arena/arenaFallingChallenge', 'manageTools/moduleData/arena/', 'ArenaFallingChallenge', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (27, '/manageTools/moduleData/zig/zigFloor', 'manageTools/moduleData/zig/', 'ZigFloor', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (28, '/manageTools/moduleData/zig/zigScore', 'manageTools/moduleData/zig/', 'ZigScore', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (29, '/manageTools/moduleData/equip/equipRankAmount', 'manageTools/moduleData/equip/', 'EquipRankAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (30, '/manageTools/moduleData/equip/equipLevel', 'manageTools/moduleData/equip/', 'EquipLevel', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (31, '/manageTools/moduleData/equip/equipUpgrade', 'manageTools/moduleData/equip/', 'EquipUpgrade', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (32, '/manageTools/moduleData/treasure/treasurePillageAmount', 'manageTools/moduleData/treasure/', 'TreasurePillageAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (33, '/manageTools/moduleData/treasure/treasureLevelByAmount', 'manageTools/moduleData/treasure/', 'TreasureLevelByAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (34, '/manageTools/moduleData/treasure/treasureLevelByDate', 'manageTools/moduleData/treasure/', 'TreasureLevelByDate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (35, '/manageTools/moduleData/treasure/treasureDigAmount', 'manageTools/moduleData/treasure/', 'TreasureDigAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (36, '/manageTools/moduleData/treasure/treasureRefreshAmount', 'manageTools/moduleData/treasure/', 'TreasureRefreshAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (37, '/manageTools/moduleData/treasure/treasureBlessAmount', 'manageTools/moduleData/treasure/', 'TreasureBlessAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (38, '/manageTools/moduleData/treasure/treasureVictorTime', 'manageTools/moduleData/treasure/', 'TreasureVictorTime', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (39, '/manageTools/moduleData/treasure/treasureBlessTime', 'manageTools/moduleData/treasure/', 'TreasureBlessTime', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (40, '/manageTools/moduleData/treasure/exchangeAmount', 'manageTools/moduleData/treasure/', 'ExchangeAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (41, '/manageTools/moduleData/treasure/exchangeByOid', 'manageTools/moduleData/treasure/', 'ExchangeByOid', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (42, '/manageTools/rechargeData/playerPrivilege', 'manageTools/rechargeData/playerPrivilege/', 'PlayerPrivilege', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (43, '/manageTools/moduleData/activity/activityFoods', 'manageTools/moduleData/activity/', 'ActivityFoods', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (44, '/manageTools/moduleData/activity/activityGetGoldPay', 'manageTools/moduleData/activity/', 'ActivityGetGoldPay', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (45, '/manageTools/moduleData/activity/activityContinuousGoldPay', 'manageTools/moduleData/activity/', 'ActivityContinuousGoldPay', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (46, '/manageTools/moduleData/activity/activityAsSpecial', 'manageTools/moduleData/activity/', 'ActivityAsSpecial', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (47, '/manageTools/moduleData/equip/totalAltarAmount', 'manageTools/moduleData/equip/', 'TotalAltarAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (48, '/manageTools/moduleData/equip/altarByPlayer', 'manageTools/moduleData/equip/', 'AltarByPlayer', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (49, '/manageTools/moduleData/other/goodsBuy', 'manageTools/moduleData/other/', 'GoodsBuy', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (50, '/manageTools/moduleData/other/getRankingReward', 'manageTools/moduleData/other/', 'GetRankingReward', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (51, '/manageTools/moduleData/other/packageAmount', 'manageTools/moduleData/other/', 'PackageAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (52, '/manageTools/moduleData/hero/heroUpgradeRank', 'manageTools/moduleData/hero/', 'HeroUpgradeRank', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (53, '/manageTools/moduleData/hero/heroHoneByDate', 'manageTools/moduleData/hero/', 'HeroHoneByDate', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (54, '/manageTools/moduleData/hero/heroHoneByAmount', 'manageTools/moduleData/hero/', 'HeroHoneByAmount', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (55, '/manageTools/moduleData/hero/heroTraining', 'manageTools/moduleData/hero/', 'HeroTraining', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (56, '/gmTools/playerDetail', 'gmTools/', 'PlayerDetail', '', '', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (57, '/gmTools/playerGemQuery', 'gmTools/', 'PlayerGemQuery', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (58, '/gmTools/playerGoldQuery', 'gmTools/', 'PlayerGoldQuery', '0', '0', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (59, '/gmTools/announcement', 'gmTools/', 'Announcement', '', '', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (60, '/gmTools/accountIntervene', 'gmTools/', 'AccountIntervene', '', '', '');

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (61, '/gmTools/supplyAward/supplyAward', 'gmTools/supplyAward/', 'SupplyAward', '1', '0', null);

insert into sys_gm_route (ROUTE_ID, ROUTE_PATH, MODULE_PATH, MODULE_NAME, LOAD_CSS, DISABLE, DESCRIPTION)
values (62, '/gmApprove/supplyApprove', 'gmApprove/', 'SupplyApprove', '0', '0', null);

-- sys_gm_server
insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (0, '盛大一区', '0', '01-1月 -14 12.00.00.000000 上午', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (1, '盛大二区', '0', '01-1月 -14 12.00.00.000000 上午', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (2, '腾讯一区', '0', '01-1月 -14 12.00.00.000000 上午', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (3, '果苹区', '0', '01-1月 -14 12.00.00.000000 上午', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (0, '盛大', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (1, '腾讯', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (2, '供应商test1', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (3, '供应商test2', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (4, '供应商test3', '0', null);


insert into sys_gm_provider_re_server(provider_server_id,server_id, provider_id)
values (1, 0, 0);

insert into sys_gm_provider_re_server(provider_server_id,server_id, provider_id)
values (2, 1, 0);

insert into sys_gm_provider_re_server(provider_server_id,server_id, provider_id)
values (3, 2, 1);

insert into sys_gm_provider_re_server(provider_server_id,server_id, provider_id)
values (4, 3, 2);

insert into sys_gm_provider_re_server(provider_server_id,server_id, provider_id)
values (5, 3, 3);

insert into sys_gm_provider_re_server(provider_server_id,server_id, provider_id)
values (6, 3, 4);
