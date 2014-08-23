--sys_code_type
insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (1, 'BASIC_ROLE', '����Ȩ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (2, 'ADVANCED_ROLE', '�߼�Ȩ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (3, 'SERVER_ROLE', '������Ȩ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (4, 'G_BASIC_TYPE', '��Ϸ��������', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (5, 'ACTION_TYPE', 'action����', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (6, 'G_ITEM_RANK_TYPE', '��ƷƷ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (7, 'G_ITEM_TYPE', '��Ʒ����', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (8, 'G_EQUIP_RANK_TYPE', 'װ��Ʒ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (9, 'G_EQUIP_TYPE', 'װ������', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (10, 'G_HERO_RANK_TYPE', 'Ӣ��Ʒ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (11, 'G_HERO_TYPE', 'Ӣ������', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (12, 'G_HONOR_TYPE', '��������', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (13, 'G_TREASURE_RANK_TYPE', '����Ʒ��', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (14, 'G_EXCHANGE_TYPE', '���ضһ�ID', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (15, 'G_ACTIVITY_SPECIFIC_TYPE', '�ض��ID', '0', '');

insert into sys_code_type (CODE_TYPE_ID, CODE_TYPE, CODE_LABEL, DISABLE, DESCRIPTION)
values (16, 'G_PET_TYPE', '��������', '0', null);

--sys_code
insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (1, 'ROLE_TYPE', null, '1', '������Ȩ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2, 'ROLE_TYPE', null, '2', '����Ȩ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3, 'ROLE_TYPE', null, '3', '�߼�Ȩ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (4, 'BASIC_ROLE', 2, '1', '��̨��¼��ѯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (5, 'BASIC_ROLE', 2, '2', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (6, 'BASIC_ROLE', 2, '3', '�ڲ��˻�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (7, 'BASIC_ROLE', 2, '4', '��Ŵ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (8, 'BASIC_ROLE', 2, '5', '�˻���ѯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (9, 'BASIC_ROLE', 2, '6', '��¼��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10, 'BASIC_ROLE', 2, '7', '��ֵ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11, 'BASIC_ROLE', 2, '8', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (12, 'BASIC_ROLE', 2, '9', '��Դ��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (13, 'BASIC_ROLE', 2, '10', 'ģ���������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (14, 'ADVANCED_ROLE', 3, '11', 'ְλ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (15, 'ADVANCED_ROLE', 3, '12', '�˺Ž���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (16, 'ADVANCED_ROLE', 3, '13', '�˻��޸�ɾ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (17, 'ADVANCED_ROLE', 3, '14', '�˻�Ȩ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (18, 'ADVANCED_ROLE', 3, '15', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (19, 'ADVANCED_ROLE', 3, '16', '��˷���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (20, 'ADVANCED_ROLE', 3, '17', '��̨��¼��ѯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (101, 'G_BASIC_TYPE', null, '1', '���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (102, 'G_BASIC_TYPE', null, '2', '��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (103, 'G_BASIC_TYPE', null, '3', '����', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (104, 'G_BASIC_TYPE', null, '4', '����', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (105, 'G_BASIC_TYPE', null, '5', '����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (106, 'G_BASIC_TYPE', null, '601', 'װ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (107, 'G_BASIC_TYPE', null, '602', '����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (108, 'G_BASIC_TYPE', null, '603', 'Ӣ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (109, 'G_BASIC_TYPE', null, '604', 'װ��Ʒ��', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (110, 'G_BASIC_TYPE', null, '605', 'װ��ǿ���ȼ�', null, '0', '0', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (151, 'G_HONOR_TYPE', 105, '1', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (152, 'G_HONOR_TYPE', 105, '2', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (153, 'G_HONOR_TYPE', 105, '10', '�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (161, 'G_CONDITION_TYPE', null, '1', '�ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (162, 'G_CONDITION_TYPE', null, '2', '�ۼƳ�ֵ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (163, 'G_CONDITION_TYPE', null, '3', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (164, 'G_CONDITION_TYPE', null, '4', '������ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (165, 'G_CONDITION_TYPE', null, '5', '��½����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (166, 'G_CONDITION_TYPE', null, '6', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (167, 'G_CONDITION_TYPE', null, '7', '����ʤ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (168, 'G_CONDITION_TYPE', null, '8', '�Ӷ�ɹ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (169, 'G_CONDITION_TYPE', null, '9', '�ڲ���ҵȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (201, 'G_EQUIP_RANK_TYPE', 106, '0', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (202, 'G_EQUIP_RANK_TYPE', 106, '1', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (203, 'G_EQUIP_RANK_TYPE', 106, '2', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (204, 'G_EQUIP_RANK_TYPE', 106, '3', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (205, 'G_EQUIP_RANK_TYPE', 106, '4', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (211, 'G_ITEM_RANK_TYPE', 107, '0', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (212, 'G_ITEM_RANK_TYPE', 107, '1', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (213, 'G_ITEM_RANK_TYPE', 107, '2', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (214, 'G_ITEM_RANK_TYPE', 107, '3', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (215, 'G_ITEM_RANK_TYPE', 107, '4', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (221, 'G_HERO_RANK_TYPE', 108, '0', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (222, 'G_HERO_RANK_TYPE', 108, '1', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (223, 'G_HERO_RANK_TYPE', 108, '2', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (224, 'G_HERO_RANK_TYPE', 108, '3', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (225, 'G_HERO_RANK_TYPE', 108, '4', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (231, 'G_TREASURE_RANK_TYPE', null, '0', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (232, 'G_TREASURE_RANK_TYPE', null, '1', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (233, 'G_TREASURE_RANK_TYPE', null, '2', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (234, 'G_TREASURE_RANK_TYPE', null, '3', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (235, 'G_TREASURE_RANK_TYPE', null, '4', '��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (301, 'ACTION_TYPE', null, '200001', '��ɫģ��-', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (302, 'ACTION_TYPE', null, '200003', '��ɫģ��-���Ӣ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (303, 'ACTION_TYPE', null, '200013', '��ɫģ��-ѵ��Ӣ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (304, 'ACTION_TYPE', null, '200017', '��ɫģ��-Ӣ��ѵ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (305, 'ACTION_TYPE', null, '200019', '��ɫģ��-Ӣ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (306, 'ACTION_TYPE', null, '200021', '��ɫģ��-Ӣ�۽���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (307, 'ACTION_TYPE', null, '200033', '��ɫģ��-Ӣ����ļ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (308, 'ACTION_TYPE', null, '210001', '��Ʒģ��-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (309, 'ACTION_TYPE', null, '210005', '��Ʒģ��-�ƶ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (310, 'ACTION_TYPE', null, '210007', '��Ʒģ��-��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (311, 'ACTION_TYPE', null, '210009', '��Ʒģ��-�����̵�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (312, 'ACTION_TYPE', null, '210011', '��Ʒģ��-װ���ֽ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (313, 'ACTION_TYPE', null, '210013', '��Ʒģ��-������Ʒ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (314, 'ACTION_TYPE', null, '210017', '��Ʒģ��-װ��ǿ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (315, 'ACTION_TYPE', null, '210021', '��Ʒģ��-ʹ����Ʒ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (316, 'ACTION_TYPE', null, '210023', '��Ʒģ��-������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (317, 'ACTION_TYPE', null, '210025', '��Ʒģ��-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (318, 'ACTION_TYPE', null, '180001', '����-����ͨ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (319, 'ACTION_TYPE', null, '180003', '����-ɨ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (320, 'ACTION_TYPE', null, '180007', '����-��������ֵ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (321, 'ACTION_TYPE', null, '180013', '����-��ȡ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (322, 'ACTION_TYPE', null, '180015', '�Թ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (323, 'ACTION_TYPE', null, '180017', '�Թ��¼�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (324, 'ACTION_TYPE', null, '170001', 'ͨ����-��ս', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (325, 'ACTION_TYPE', null, '170003', 'ͨ����-�Զ���ս', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (326, 'ACTION_TYPE', null, '170005', 'ͨ����-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (327, 'ACTION_TYPE', null, '170007', 'ͨ����-������ս����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (328, 'ACTION_TYPE', null, '220001', 'ս��ģ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (329, 'ACTION_TYPE', null, '220003', 'ս����������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (330, 'ACTION_TYPE', null, '260001', '������-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (331, 'ACTION_TYPE', null, '260003', '������-ˢ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (332, 'ACTION_TYPE', null, '260009', '������-��ս', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (333, 'ACTION_TYPE', null, '270001', '����-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (334, 'ACTION_TYPE', null, '270005', '����-��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (335, 'ACTION_TYPE', null, '270007', '����-�Ӷ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (336, 'ACTION_TYPE', null, '270009', '����-�ձ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (337, 'ACTION_TYPE', null, '270015', '����-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (338, 'ACTION_TYPE', null, '270017', '����-ף��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (339, 'ACTION_TYPE', null, '270019', '����-�һ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (340, 'ACTION_TYPE', null, '270025', '����-Ѱ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (341, 'ACTION_TYPE', null, '270029', '����-ˢ�±���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (342, 'ACTION_TYPE', null, '270031', '����-ץ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (343, 'ACTION_TYPE', null, '270033', '����-���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (344, 'ACTION_TYPE', null, '270035', '����-���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (345, 'ACTION_TYPE', null, '270037', '����-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (346, 'ACTION_TYPE', null, '270039', '����-�ͷ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (347, 'ACTION_TYPE', null, '310001', '��ֵ-��ֵ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (348, 'ACTION_TYPE', null, '310003', '��ֵ-��ȡ��ֵ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (349, 'ACTION_TYPE', null, '310005', '��ֵ-��ȡ��Ȩ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (350, 'ACTION_TYPE', null, '280001', '����-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (351, 'ACTION_TYPE', null, '280003', '����-��ȡ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (352, 'ACTION_TYPE', null, '290001', '�-�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (353, 'ACTION_TYPE', null, '290003', '�-��ȡ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (354, 'ACTION_TYPE', null, '290005', '�-�������˵�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (355, 'ACTION_TYPE', null, '290007', '�-��ʷ�齱��¼', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (356, 'ACTION_TYPE', null, '290009', '�-�齱', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (357, 'ACTION_TYPE', null, '290011', '�-�볣������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (358, 'ACTION_TYPE', null, '290013', '�-��ȡ��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (359, 'ACTION_TYPE', null, '190003', '����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (360, 'ACTION_TYPE', null, '320001', '����-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (361, 'ACTION_TYPE', null, '320003', '����-��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (362, 'ACTION_TYPE', null, '320005', '����-ˢ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (363, 'ACTION_TYPE', null, '320007', '����-ɾ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (364, 'ACTION_TYPE', null, '320011', '����-��ѯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (365, 'ACTION_TYPE', null, '330009', '�ʼ�-����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (366, 'ACTION_TYPE', null, '330011', '�ʼ�-��ȡ��ȡGM����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (367, 'ACTION_TYPE', null, '330013', '�ʼ�-�Ѷ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (368, 'ACTION_TYPE', null, '330015', '�ʼ�-ɾ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (369, 'ACTION_TYPE', null, '340001', '����ģ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (370, 'ACTION_TYPE', null, '350001', 'С����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (371, 'ACTION_TYPE', null, '360001', '��½���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (372, 'ACTION_TYPE', null, '1000001', 'GM-���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (373, 'ACTION_TYPE', null, '330023', '�ʼ�-��ȡ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (501, 'G_EQUIP_TYPE', 201, '1011011', 'Ѫ��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (502, 'G_EQUIP_TYPE', 201, '1011012', '��ӥ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (503, 'G_EQUIP_TYPE', 201, '1011013', '���ƻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (504, 'G_EQUIP_TYPE', 201, '1011014', 'Ѫ���ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (505, 'G_EQUIP_TYPE', 201, '1011015', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (506, 'G_EQUIP_TYPE', 201, '1011016', '��ɱսѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (507, 'G_EQUIP_TYPE', 201, '1011017', '��ʯ�۸�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (508, 'G_EQUIP_TYPE', 201, '1011018', '���ֳ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (509, 'G_EQUIP_TYPE', 201, '1011019', '�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (510, 'G_EQUIP_TYPE', 201, '1012021', '�ƻ�ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (511, 'G_EQUIP_TYPE', 201, '1012022', '��ڼ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (512, 'G_EQUIP_TYPE', 201, '1012023', 'ǿ�Ƽ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (513, 'G_EQUIP_TYPE', 201, '1012024', 'ʳ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (514, 'G_EQUIP_TYPE', 201, '1012025', '���ӻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (515, 'G_EQUIP_TYPE', 201, '1012026', '��̤֮ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (516, 'G_EQUIP_TYPE', 201, '1012027', '�߻�ǹ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (517, 'G_EQUIP_TYPE', 201, '1012028', '�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (518, 'G_EQUIP_TYPE', 201, '1013031', '����ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (519, 'G_EQUIP_TYPE', 201, '1013032', '��ɱ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (520, 'G_EQUIP_TYPE', 201, '1013033', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (521, 'G_EQUIP_TYPE', 201, '1013034', '�־�Ƥ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (522, 'G_EQUIP_TYPE', 201, '1013035', '���»���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (523, 'G_EQUIP_TYPE', 201, '1013036', '�޷糤ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (524, 'G_EQUIP_TYPE', 201, '1013037', '��ľ�ָ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (525, 'G_EQUIP_TYPE', 201, '1013038', 'С���㵶', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (526, 'G_EQUIP_TYPE', 201, '1013039', '���Ŷ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (527, 'G_EQUIP_TYPE', 201, '1014041', 'Ԫ��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (528, 'G_EQUIP_TYPE', 201, '1014042', '��֪�ļ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (529, 'G_EQUIP_TYPE', 201, '1014043', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (530, 'G_EQUIP_TYPE', 201, '1014044', 'Ѫɫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (531, 'G_EQUIP_TYPE', 201, '1014045', '��ʹ�̿�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (532, 'G_EQUIP_TYPE', 201, '1014046', '�����Ь', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (533, 'G_EQUIP_TYPE', 201, '1014047', '��ľ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (534, 'G_EQUIP_TYPE', 201, '1014048', '��ľ��֦', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (535, 'G_EQUIP_TYPE', 201, '1014049', '������֦', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (536, 'G_EQUIP_TYPE', 202, '1111051', 'ͻΧ�߾޿�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (537, 'G_EQUIP_TYPE', 202, '1111052', 'ͻΧ�߼���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (538, 'G_EQUIP_TYPE', 202, '1111053', 'ͻΧ���ּ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (539, 'G_EQUIP_TYPE', 202, '1111054', 'ͻΧ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (540, 'G_EQUIP_TYPE', 202, '1111055', 'ͻΧ�߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (541, 'G_EQUIP_TYPE', 202, '1111056', 'ͻΧ��սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (542, 'G_EQUIP_TYPE', 202, '1111057', 'ʳ��ħս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (543, 'G_EQUIP_TYPE', 202, '1111058', '͵���Ĵ̵�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (544, 'G_EQUIP_TYPE', 202, '1111059', '�ڰ����Ľ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (545, 'G_EQUIP_TYPE', 202, '1112061', '׷����ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (546, 'G_EQUIP_TYPE', 202, '1112062', '׷���߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (547, 'G_EQUIP_TYPE', 202, '1112063', '׷��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (548, 'G_EQUIP_TYPE', 202, '1112064', '׷���߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (549, 'G_EQUIP_TYPE', 202, '1112065', '׷���߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (550, 'G_EQUIP_TYPE', 202, '1112066', '׷���߶�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (551, 'G_EQUIP_TYPE', 202, '1112067', '�������ǹ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (552, 'G_EQUIP_TYPE', 202, '1112068', 'ʱ��Ť���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (553, 'G_EQUIP_TYPE', 202, '1113071', '��ɱ��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (554, 'G_EQUIP_TYPE', 202, '1113072', '��ɱ�߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (555, 'G_EQUIP_TYPE', 202, '1113073', '��ɱ�߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (556, 'G_EQUIP_TYPE', 202, '1113074', '��ɱ���ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (557, 'G_EQUIP_TYPE', 202, '1113075', '��ɱ�߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (558, 'G_EQUIP_TYPE', 202, '1113076', '��ɱ��Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (559, 'G_EQUIP_TYPE', 202, '1113077', 'С���ս���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (560, 'G_EQUIP_TYPE', 202, '1113078', '�ҳ�ʹ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (561, 'G_EQUIP_TYPE', 202, '1113079', '������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (562, 'G_EQUIP_TYPE', 202, '1114081', '����Ůͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (563, 'G_EQUIP_TYPE', 202, '1114082', '����Ů�ļ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (564, 'G_EQUIP_TYPE', 202, '1114083', '����Ů����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (565, 'G_EQUIP_TYPE', 202, '1114084', '����Ů����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (566, 'G_EQUIP_TYPE', 202, '1114085', '����Ů����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (567, 'G_EQUIP_TYPE', 202, '1114086', '����Ů��Ь', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (568, 'G_EQUIP_TYPE', 202, '1114087', '�ֻ���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (569, 'G_EQUIP_TYPE', 202, '1114088', '��Ӱ�߷���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (570, 'G_EQUIP_TYPE', 202, '1114089', '����Ů����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (571, 'G_EQUIP_TYPE', 203, '1211091', '�ۻ���ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (572, 'G_EQUIP_TYPE', 203, '1211092', '�ۻ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (573, 'G_EQUIP_TYPE', 203, '1211093', '�ۻ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (574, 'G_EQUIP_TYPE', 203, '1211094', '�ۻ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (575, 'G_EQUIP_TYPE', 203, '1211095', '�ۻ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (576, 'G_EQUIP_TYPE', 203, '1211096', '�ۻ���սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (577, 'G_EQUIP_TYPE', 203, '1211097', '�ֲ��ĸ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (578, 'G_EQUIP_TYPE', 203, '1211098', '���˵�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (579, 'G_EQUIP_TYPE', 203, '1211099', 'ɽկ��˪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (580, 'G_EQUIP_TYPE', 203, '1212101', '쫷�˪��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (581, 'G_EQUIP_TYPE', 203, '1212102', '쫷�˪�׼��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (582, 'G_EQUIP_TYPE', 203, '1212103', '쫷�˪������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (583, 'G_EQUIP_TYPE', 203, '1212104', '쫷�˪������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (584, 'G_EQUIP_TYPE', 203, '1212105', '쫷�˪���ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (585, 'G_EQUIP_TYPE', 203, '1212106', '쫷�˪�׶�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (586, 'G_EQUIP_TYPE', 203, '1212107', '�߷���֮ŭ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (587, 'G_EQUIP_TYPE', 203, '1212108', '���Ʒ籩֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (588, 'G_EQUIP_TYPE', 203, '1213111', '�ڰ�����ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (589, 'G_EQUIP_TYPE', 203, '1213112', '�ڰ��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (590, 'G_EQUIP_TYPE', 203, '1213113', '�ڰ���������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (591, 'G_EQUIP_TYPE', 203, '1213114', '�ڰ��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (592, 'G_EQUIP_TYPE', 203, '1213115', '�ڰ����軤��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (593, 'G_EQUIP_TYPE', 203, '1213116', '�ڰ�����Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (594, 'G_EQUIP_TYPE', 203, '1213117', '��Ʒ����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (595, 'G_EQUIP_TYPE', 203, '1213118', '����֮��ħ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (596, 'G_EQUIP_TYPE', 203, '1213119', '����С��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (597, 'G_EQUIP_TYPE', 203, '1214121', 'Ѫ��Ԫ�ض�ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (598, 'G_EQUIP_TYPE', 203, '1214122', 'Ѫ��Ԫ�ؼ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (599, 'G_EQUIP_TYPE', 203, '1214123', 'Ѫ��Ԫ�ع���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (600, 'G_EQUIP_TYPE', 203, '1214124', 'Ѫ��Ԫ�س���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (601, 'G_EQUIP_TYPE', 203, '1214125', 'Ѫ��Ԫ�ع���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (602, 'G_EQUIP_TYPE', 203, '1214126', 'Ѫ��Ԫ�س�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (603, 'G_EQUIP_TYPE', 203, '1214127', '�������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (604, 'G_EQUIP_TYPE', 203, '1214128', '����籩֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (605, 'G_EQUIP_TYPE', 203, '1214129', 'ʱ������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (606, 'G_EQUIP_TYPE', 204, '1300131', '�����Ƕ�ʿͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (607, 'G_EQUIP_TYPE', 204, '1300132', '�����Ƕ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (608, 'G_EQUIP_TYPE', 204, '1300133', '�����Ƕ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (609, 'G_EQUIP_TYPE', 204, '1300134', '�����Ƕ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (610, 'G_EQUIP_TYPE', 204, '1300135', '�����Ƕ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (611, 'G_EQUIP_TYPE', 204, '1300136', '�����Ƕ�ʿսѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (612, 'G_EQUIP_TYPE', 204, '1300137', '�����Ƕ�ʿն�׸�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (613, 'G_EQUIP_TYPE', 204, '1301141', '����������ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (614, 'G_EQUIP_TYPE', 204, '1301142', '���������߼���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (615, 'G_EQUIP_TYPE', 204, '1301143', '�����������ּ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (616, 'G_EQUIP_TYPE', 204, '1301144', '����������ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (617, 'G_EQUIP_TYPE', 204, '1301145', '��������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (618, 'G_EQUIP_TYPE', 204, '1301146', '����������սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (619, 'G_EQUIP_TYPE', 204, '1301147', '����Ĺ�â��ʿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (620, 'G_EQUIP_TYPE', 204, '1302151', '���������ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (621, 'G_EQUIP_TYPE', 204, '1302152', '������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (622, 'G_EQUIP_TYPE', 204, '1302153', '����������ּ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (623, 'G_EQUIP_TYPE', 204, '1302154', '�������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (624, 'G_EQUIP_TYPE', 204, '1302155', '��������黤��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (625, 'G_EQUIP_TYPE', 204, '1302156', '���������սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (626, 'G_EQUIP_TYPE', 204, '1302157', '����������ؽ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (627, 'G_EQUIP_TYPE', 204, '1303161', '������Ѫ��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (628, 'G_EQUIP_TYPE', 204, '1303162', '������Ѫ�߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (629, 'G_EQUIP_TYPE', 204, '1303163', '������Ѫ�߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (630, 'G_EQUIP_TYPE', 204, '1303164', '������Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (631, 'G_EQUIP_TYPE', 204, '1303165', '������Ѫ���ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (632, 'G_EQUIP_TYPE', 204, '1303166', '������Ѫ�߶�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (633, 'G_EQUIP_TYPE', 204, '1303167', '������Ѫ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (634, 'G_EQUIP_TYPE', 204, '1304171', '���֯ս��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (635, 'G_EQUIP_TYPE', 204, '1304172', '���֯ս�߼���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (636, 'G_EQUIP_TYPE', 204, '1304173', '���֯ս������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (637, 'G_EQUIP_TYPE', 204, '1304174', '���֯ս������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (638, 'G_EQUIP_TYPE', 204, '1304175', '���֯ս�߰���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (639, 'G_EQUIP_TYPE', 204, '1304176', '���֯ս�߶�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (640, 'G_EQUIP_TYPE', 204, '1304177', '���֯ս��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (641, 'G_EQUIP_TYPE', 204, '1305181', 'Ӱ�ٵ߸���ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (642, 'G_EQUIP_TYPE', 204, '1305182', 'Ӱ�ٵ߸��߼��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (643, 'G_EQUIP_TYPE', 204, '1305183', 'Ӱ�ٵ߸���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (644, 'G_EQUIP_TYPE', 204, '1305184', 'Ӱ�ٵ߸�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (645, 'G_EQUIP_TYPE', 204, '1305185', 'Ӱ�ٵ߸��߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (646, 'G_EQUIP_TYPE', 204, '1305186', 'Ӱ�ٵ߸���Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (647, 'G_EQUIP_TYPE', 204, '1305187', 'Ӱ�پ����ٻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (648, 'G_EQUIP_TYPE', 204, '1306191', 'Ѫ���ѻ���ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (649, 'G_EQUIP_TYPE', 204, '1306192', 'Ѫ���ѻ��߼��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (650, 'G_EQUIP_TYPE', 204, '1306193', 'Ѫ���ѻ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (651, 'G_EQUIP_TYPE', 204, '1306194', 'Ѫ���ѻ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (652, 'G_EQUIP_TYPE', 204, '1306195', 'Ѫ���ѻ��߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (653, 'G_EQUIP_TYPE', 204, '1306196', 'Ѫ���ѻ���Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (654, 'G_EQUIP_TYPE', 204, '1306197', '�ֲ�Ѫ���ѻ��� ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (655, 'G_EQUIP_TYPE', 204, '1307201', 'ŭ��������ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (656, 'G_EQUIP_TYPE', 204, '1307202', 'ŭ�������߼���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (657, 'G_EQUIP_TYPE', 204, '1307203', 'ŭ�������߹���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (658, 'G_EQUIP_TYPE', 204, '1307204', 'ŭ�������߳���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (659, 'G_EQUIP_TYPE', 204, '1307205', 'ŭ�������߰���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (660, 'G_EQUIP_TYPE', 204, '1307206', 'ŭ��������Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (661, 'G_EQUIP_TYPE', 204, '1307207', 'ŭ��������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (662, 'G_EQUIP_TYPE', 204, '1308211', '���������߶�ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (663, 'G_EQUIP_TYPE', 204, '1308212', '���������߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (664, 'G_EQUIP_TYPE', 204, '1308213', '��������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (665, 'G_EQUIP_TYPE', 204, '1308214', '���������߳���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (666, 'G_EQUIP_TYPE', 204, '1308215', '���������߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (667, 'G_EQUIP_TYPE', 204, '1308216', '���������߳�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (668, 'G_EQUIP_TYPE', 204, '1308217', '����������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (669, 'G_EQUIP_TYPE', 204, '1309221', 'ʱ���ػ��߶�ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (670, 'G_EQUIP_TYPE', 204, '1309222', 'ʱ���ػ��߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (671, 'G_EQUIP_TYPE', 204, '1309223', 'ʱ���ػ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (672, 'G_EQUIP_TYPE', 204, '1309224', 'ʱ���ػ��߳���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (673, 'G_EQUIP_TYPE', 204, '1309225', 'ʱ���ػ��߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (674, 'G_EQUIP_TYPE', 204, '1309226', 'ʱ���ػ��߳�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (675, 'G_EQUIP_TYPE', 204, '1309227', 'ʱ���ػ��߷���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (676, 'G_EQUIP_TYPE', 204, '1310231', '���������߶�ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (677, 'G_EQUIP_TYPE', 204, '1310232', '���������߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (678, 'G_EQUIP_TYPE', 204, '1310233', '��������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (679, 'G_EQUIP_TYPE', 204, '1310234', '���������߷���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (680, 'G_EQUIP_TYPE', 204, '1310235', '���������߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (681, 'G_EQUIP_TYPE', 204, '1310236', '���������߳�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (682, 'G_EQUIP_TYPE', 204, '1310237', '��������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (683, 'G_EQUIP_TYPE', 205, '1400241', 'ĺ�������ۻ�ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (684, 'G_EQUIP_TYPE', 205, '1400242', 'ĺ�������ۻ𻤼�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (685, 'G_EQUIP_TYPE', 205, '1400243', 'ĺ�������ۻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (686, 'G_EQUIP_TYPE', 205, '1400244', 'ĺ�������ۻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (687, 'G_EQUIP_TYPE', 205, '1400245', 'ĺ�������ۻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (688, 'G_EQUIP_TYPE', 205, '1400246', 'ĺ�������ۻ�սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (689, 'G_EQUIP_TYPE', 205, '1400247', '����ĳȸ�Ӱ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (690, 'G_EQUIP_TYPE', 205, '1401251', '��ʥ�׻��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (691, 'G_EQUIP_TYPE', 205, '1401252', '��ʥ�׻����ļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (692, 'G_EQUIP_TYPE', 205, '1401253', '��ʥ�׻����Ļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (693, 'G_EQUIP_TYPE', 205, '1401254', '��ʥ�׻����Ļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (694, 'G_EQUIP_TYPE', 205, '1401255', '��ʥ�׻����Ļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (695, 'G_EQUIP_TYPE', 205, '1401256', '��ʥ�׻�����սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (696, 'G_EQUIP_TYPE', 205, '1401257', '���������ҽ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (697, 'G_EQUIP_TYPE', 205, '1402261', '������������ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (698, 'G_EQUIP_TYPE', 205, '1402262', '����������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (699, 'G_EQUIP_TYPE', 205, '1402263', '�������������ּ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (700, 'G_EQUIP_TYPE', 205, '1402264', '������������ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (701, 'G_EQUIP_TYPE', 205, '1402265', '����������������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (702, 'G_EQUIP_TYPE', 205, '1402266', '������������սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (703, 'G_EQUIP_TYPE', 205, '1402267', '����ľ޽�˪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (704, 'G_EQUIP_TYPE', 205, '1403271', '����׷���ߵ�ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (705, 'G_EQUIP_TYPE', 205, '1403272', '����׷���ߵĻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (706, 'G_EQUIP_TYPE', 205, '1403273', '����׷���ߵ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (707, 'G_EQUIP_TYPE', 205, '1403274', '����׷���ߵ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (708, 'G_EQUIP_TYPE', 205, '1403275', '����׷���ߵĻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (709, 'G_EQUIP_TYPE', 205, '1403276', '����׷���ߵĶ�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (710, 'G_EQUIP_TYPE', 205, '1403277', '����׷���ߵĻ�ǹ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (711, 'G_EQUIP_TYPE', 205, '1404281', '���������ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (712, 'G_EQUIP_TYPE', 205, '1404282', '��������߼���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (713, 'G_EQUIP_TYPE', 205, '1404283', '���������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (714, 'G_EQUIP_TYPE', 205, '1404284', '����������ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (715, 'G_EQUIP_TYPE', 205, '1404285', '��������߻���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (716, 'G_EQUIP_TYPE', 205, '1404286', '��������߶�ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (717, 'G_EQUIP_TYPE', 205, '1404287', '���������֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (718, 'G_EQUIP_TYPE', 205, '1405291', '���֮��Ѹ��ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (719, 'G_EQUIP_TYPE', 205, '1405292', '���֮��Ѹ�ݻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (720, 'G_EQUIP_TYPE', 205, '1405293', '���֮��Ѹ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (721, 'G_EQUIP_TYPE', 205, '1405294', '���֮��Ѹ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (722, 'G_EQUIP_TYPE', 205, '1405295', '���֮��Ѹ�ݻ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (723, 'G_EQUIP_TYPE', 205, '1405296', '���֮��Ѹ��Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (724, 'G_EQUIP_TYPE', 205, '1405297', '��ʥ�籩��˵����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (725, 'G_EQUIP_TYPE', 205, '1406301', '�п�ĽǶ�ʿͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (726, 'G_EQUIP_TYPE', 205, '1406302', '�п�ĽǶ�ʿ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (727, 'G_EQUIP_TYPE', 205, '1406303', '�п�ĽǶ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (728, 'G_EQUIP_TYPE', 205, '1406304', '�п�ĽǶ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (729, 'G_EQUIP_TYPE', 205, '1406305', '�п�ĽǶ�ʿ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (730, 'G_EQUIP_TYPE', 205, '1406306', '�п�ĽǶ�ʿƤѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (731, 'G_EQUIP_TYPE', 205, '1406307', '����������ǵ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (732, 'G_EQUIP_TYPE', 205, '1407311', '�����ߵ�������ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (733, 'G_EQUIP_TYPE', 205, '1407312', '�����ߵ��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (734, 'G_EQUIP_TYPE', 205, '1407313', '�����ߵ���������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (735, 'G_EQUIP_TYPE', 205, '1407314', '�����ߵ���������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (736, 'G_EQUIP_TYPE', 205, '1407315', '�����ߵ���������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (737, 'G_EQUIP_TYPE', 205, '1407316', '�����ߵ�����Ƥѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (738, 'G_EQUIP_TYPE', 205, '1407317', '��ħ����˿֮�ִ� ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (739, 'G_EQUIP_TYPE', 205, '1408321', 'а��֮ɷ��궵ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (740, 'G_EQUIP_TYPE', 205, '1408322', 'а��֮ɷ��껤��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (741, 'G_EQUIP_TYPE', 205, '1408323', 'а��֮ɷ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (742, 'G_EQUIP_TYPE', 205, '1408324', 'а��֮ɷ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (743, 'G_EQUIP_TYPE', 205, '1408325', 'а��֮ɷ��껤��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (744, 'G_EQUIP_TYPE', 205, '1408326', 'а��֮ɷ��곤ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (745, 'G_EQUIP_TYPE', 205, '1408327', 'а��֮ɷ���ħ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (746, 'G_EQUIP_TYPE', 205, '1409331', '��ʥ�ǽ��ػ���ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (747, 'G_EQUIP_TYPE', 205, '1409332', '��ʥ�ǽ��ػ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (748, 'G_EQUIP_TYPE', 205, '1409333', '��ʥ�ǽ��ػ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (749, 'G_EQUIP_TYPE', 205, '1409334', '��ʥ�ǽ��ػ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (750, 'G_EQUIP_TYPE', 205, '1409335', '��ʥ�ǽ��ػ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (751, 'G_EQUIP_TYPE', 205, '1409336', '��ʥ�ǽ��ػ���ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (752, 'G_EQUIP_TYPE', 205, '1409337', '��ʥ�ǽ��ػ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (753, 'G_EQUIP_TYPE', 205, '1410341', '��������֮��ñ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (754, 'G_EQUIP_TYPE', 205, '1410342', '��������֮�𻤼�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (755, 'G_EQUIP_TYPE', 205, '1410343', '��������֮������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (756, 'G_EQUIP_TYPE', 205, '1410344', '��������֮������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (757, 'G_EQUIP_TYPE', 205, '1410345', '��������֮����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (758, 'G_EQUIP_TYPE', 205, '1410346', '��������֮��ѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (759, 'G_EQUIP_TYPE', 205, '1410347', '��������֮����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (760, 'G_EQUIP_TYPE', 201, '1500001', '��ͨͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (761, 'G_EQUIP_TYPE', 201, '1500007', '��ͨ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (762, 'G_EQUIP_TYPE', 201, '1500002', '��ͨ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (763, 'G_EQUIP_TYPE', 201, '1500005', '��ͨ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (764, 'G_EQUIP_TYPE', 201, '1500003', '��ͨ�ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (765, 'G_EQUIP_TYPE', 201, '1500004', '��ͨ�ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (766, 'G_EQUIP_TYPE', 201, '1500006', '��ͨսѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (767, 'G_EQUIP_TYPE', 202, '1500101', '����ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (768, 'G_EQUIP_TYPE', 202, '1500107', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (769, 'G_EQUIP_TYPE', 202, '1500102', '���㻤��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (770, 'G_EQUIP_TYPE', 202, '1500105', '���㻤��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (771, 'G_EQUIP_TYPE', 202, '1500103', '�����ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (772, 'G_EQUIP_TYPE', 202, '1500104', '�����ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (773, 'G_EQUIP_TYPE', 202, '1500106', '����սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (774, 'G_EQUIP_TYPE', 203, '1500201', '����ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (775, 'G_EQUIP_TYPE', 203, '1500207', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (776, 'G_EQUIP_TYPE', 203, '1500202', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (777, 'G_EQUIP_TYPE', 203, '1500205', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (778, 'G_EQUIP_TYPE', 203, '1500203', '�����ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (779, 'G_EQUIP_TYPE', 203, '1500204', '�����ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (780, 'G_EQUIP_TYPE', 203, '1500206', '����սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (781, 'G_EQUIP_TYPE', 204, '1500301', 'ʷʫͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (782, 'G_EQUIP_TYPE', 204, '1500307', 'ʷʫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (783, 'G_EQUIP_TYPE', 204, '1500302', 'ʷʫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (784, 'G_EQUIP_TYPE', 204, '1500305', 'ʷʫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (785, 'G_EQUIP_TYPE', 204, '1500303', 'ʷʫ�ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (786, 'G_EQUIP_TYPE', 204, '1500304', 'ʷʫ�ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (787, 'G_EQUIP_TYPE', 204, '1500306', 'ʷʫսѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (788, 'G_EQUIP_TYPE', 205, '1500401', '��˵ͷ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (789, 'G_EQUIP_TYPE', 205, '1500407', '��˵����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (790, 'G_EQUIP_TYPE', 205, '1500402', '��˵����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (791, 'G_EQUIP_TYPE', 205, '1500405', '��˵����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (792, 'G_EQUIP_TYPE', 205, '1500403', '��˵�ؼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (793, 'G_EQUIP_TYPE', 205, '1500404', '��˵�ȼ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (794, 'G_EQUIP_TYPE', 205, '1500406', '��˵սѥ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2001, 'G_ITEM_TYPE', 211, '1026', '1��ǿ��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2002, 'G_ITEM_TYPE', 211, '2001', '[��ͨ]ħ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2003, 'G_ITEM_TYPE', 211, '2002', '[��ͨ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2004, 'G_ITEM_TYPE', 211, '2003', '[��ͨ]���ؾ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2005, 'G_ITEM_TYPE', 211, '2004', '[��ͨ]��Ƥ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2006, 'G_ITEM_TYPE', 211, '2005', '[��ͨ]���ر���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2007, 'G_ITEM_TYPE', 211, '2006', '[��ͨ]��ŭ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2008, 'G_ITEM_TYPE', 211, '2007', '[��ͨ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2009, 'G_ITEM_TYPE', 211, '2008', '[��ͨ]���˿�Ƭ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2010, 'G_ITEM_TYPE', 211, '2009', '[��ͨ]̩̹�ֶ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2011, 'G_ITEM_TYPE', 211, '2010', '[��ͨ]봽��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2012, 'G_ITEM_TYPE', 211, '2011', '[��ͨ]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2013, 'G_ITEM_TYPE', 211, '2012', '[��ͨ]���Ʋ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2014, 'G_ITEM_TYPE', 211, '2064', '1��ǿ��ʯ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2015, 'G_ITEM_TYPE', 211, '2069', '[��ͨ]���ײ��ϰ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2016, 'G_ITEM_TYPE', 212, '1001', '��������ҩˮ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2017, 'G_ITEM_TYPE', 212, '1005', 'С����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2018, 'G_ITEM_TYPE', 212, '1009', 'С�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2019, 'G_ITEM_TYPE', 212, '1017', '��������ѫ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2020, 'G_ITEM_TYPE', 212, '1020', '��������ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2021, 'G_ITEM_TYPE', 212, '1023', '��������ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2022, 'G_ITEM_TYPE', 212, '1027', '2��ǿ��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2023, 'G_ITEM_TYPE', 212, '1184', '��ͭװ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2024, 'G_ITEM_TYPE', 212, '1201', '25��Ծ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2025, 'G_ITEM_TYPE', 212, '2013', '[����]ħ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2026, 'G_ITEM_TYPE', 212, '2014', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2027, 'G_ITEM_TYPE', 212, '2015', '[����]���ؾ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2028, 'G_ITEM_TYPE', 212, '2016', '[����]��Ƥ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2029, 'G_ITEM_TYPE', 212, '2017', '[����]���ر���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2030, 'G_ITEM_TYPE', 212, '2018', '[����]��ŭ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2031, 'G_ITEM_TYPE', 212, '2019', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2032, 'G_ITEM_TYPE', 212, '2020', '[����]���˿�Ƭ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2033, 'G_ITEM_TYPE', 212, '2021', '[����]̩̹�ֶ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2034, 'G_ITEM_TYPE', 212, '2022', '[����]봽��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2035, 'G_ITEM_TYPE', 212, '2023', '[����]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2036, 'G_ITEM_TYPE', 212, '2024', '[����]���Ʋ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2037, 'G_ITEM_TYPE', 212, '2065', '2��ǿ��ʯ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2038, 'G_ITEM_TYPE', 212, '2070', '[����]���ײ��ϰ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2039, 'G_ITEM_TYPE', 213, '1002', '�м�����ҩˮ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2040, 'G_ITEM_TYPE', 213, '1006', '�д���ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2041, 'G_ITEM_TYPE', 213, '1010', '�д����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2042, 'G_ITEM_TYPE', 213, '1018', '�м�����ѫ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2043, 'G_ITEM_TYPE', 213, '1021', '�м�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2044, 'G_ITEM_TYPE', 213, '1024', '�м�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2045, 'G_ITEM_TYPE', 213, '1028', '3��ǿ��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2046, 'G_ITEM_TYPE', 213, '1185', '����װ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2047, 'G_ITEM_TYPE', 213, '1202', '50��Ծ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2048, 'G_ITEM_TYPE', 213, '2025', '[����]ħ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2049, 'G_ITEM_TYPE', 213, '2026', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2050, 'G_ITEM_TYPE', 213, '2027', '[����]���ؾ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2051, 'G_ITEM_TYPE', 213, '2028', '[����]��Ƥ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2052, 'G_ITEM_TYPE', 213, '2029', '[����]���ر���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2053, 'G_ITEM_TYPE', 213, '2030', '[����]��ŭ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2054, 'G_ITEM_TYPE', 213, '2031', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2055, 'G_ITEM_TYPE', 213, '2032', '[����]���˿�Ƭ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2056, 'G_ITEM_TYPE', 213, '2033', '[����]̩̹�ֶ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2057, 'G_ITEM_TYPE', 213, '2034', '[����]봽��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2058, 'G_ITEM_TYPE', 213, '2035', '[����]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2059, 'G_ITEM_TYPE', 213, '2036', '[����]���Ʋ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2060, 'G_ITEM_TYPE', 213, '2061', '�Թ�ͭ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2061, 'G_ITEM_TYPE', 213, '2066', '3��ǿ��ʯ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2062, 'G_ITEM_TYPE', 213, '2071', '[����]���ײ��ϰ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2063, 'G_ITEM_TYPE', 214, '1003', '�߼�����ҩˮ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2064, 'G_ITEM_TYPE', 214, '1007', '�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2065, 'G_ITEM_TYPE', 214, '1011', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2066, 'G_ITEM_TYPE', 214, '1016', '���ر���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2067, 'G_ITEM_TYPE', 214, '1019', '�߼�����ѫ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2068, 'G_ITEM_TYPE', 214, '1022', '�߼�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2069, 'G_ITEM_TYPE', 214, '1025', '�߼�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2070, 'G_ITEM_TYPE', 214, '1029', '4��ǿ��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2071, 'G_ITEM_TYPE', 214, '1186', '�ƽ�װ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2072, 'G_ITEM_TYPE', 214, '1203', '75��Ծ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2073, 'G_ITEM_TYPE', 214, '2037', '[ʷʫ]ħ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2074, 'G_ITEM_TYPE', 214, '2038', '[ʷʫ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2075, 'G_ITEM_TYPE', 214, '2039', '[ʷʫ]���ؾ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2076, 'G_ITEM_TYPE', 214, '2040', '[ʷʫ]��Ƥ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2077, 'G_ITEM_TYPE', 214, '2041', '[ʷʫ]���ر���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2078, 'G_ITEM_TYPE', 214, '2042', '[ʷʫ]��ŭ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2079, 'G_ITEM_TYPE', 214, '2043', '[ʷʫ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2080, 'G_ITEM_TYPE', 214, '2044', '[ʷʫ]���˿�Ƭ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2081, 'G_ITEM_TYPE', 214, '2045', '[ʷʫ]̩̹�ֶ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2082, 'G_ITEM_TYPE', 214, '2046', '[ʷʫ]봽��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2083, 'G_ITEM_TYPE', 214, '2047', '[ʷʫ]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2084, 'G_ITEM_TYPE', 214, '2048', '[ʷʫ]���Ʋ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2085, 'G_ITEM_TYPE', 214, '2062', '�Թ�������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2086, 'G_ITEM_TYPE', 214, '2067', '4��ǿ��ʯ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2087, 'G_ITEM_TYPE', 214, '2072', '[ʷʫ]���ײ��ϰ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2088, 'G_ITEM_TYPE', 215, '1004', '�ؼ�����ҩˮ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2089, 'G_ITEM_TYPE', 215, '1008', '�ش����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2090, 'G_ITEM_TYPE', 215, '1012', '�ش�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2091, 'G_ITEM_TYPE', 215, '1013', '�ؼ�����ѫ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2092, 'G_ITEM_TYPE', 215, '1014', '�ؼ�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2093, 'G_ITEM_TYPE', 215, '1015', '�ؼ�����ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2094, 'G_ITEM_TYPE', 215, '1030', '5��ǿ��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2095, 'G_ITEM_TYPE', 215, '1187', '����װ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2096, 'G_ITEM_TYPE', 215, '1204', '100��Ծ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2097, 'G_ITEM_TYPE', 215, '2049', '[��˵]ħ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2098, 'G_ITEM_TYPE', 215, '2050', '[��˵]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2099, 'G_ITEM_TYPE', 215, '2051', '[��˵]���ؾ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2100, 'G_ITEM_TYPE', 215, '2052', '[��˵]��Ƥ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2101, 'G_ITEM_TYPE', 215, '2053', '[��˵]���ر���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2102, 'G_ITEM_TYPE', 215, '2054', '[��˵]��ŭ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2103, 'G_ITEM_TYPE', 215, '2055', '[��˵]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2104, 'G_ITEM_TYPE', 215, '2056', '[��˵]���˿�Ƭ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2105, 'G_ITEM_TYPE', 215, '2057', '[��˵]̩̹�ֶ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2106, 'G_ITEM_TYPE', 215, '2058', '[��˵]봽��ʯ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2107, 'G_ITEM_TYPE', 215, '2059', '[��˵]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2108, 'G_ITEM_TYPE', 215, '2060', '[��˵]���Ʋ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2109, 'G_ITEM_TYPE', 215, '2063', '�Թ�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2110, 'G_ITEM_TYPE', 215, '2068', '5��ǿ��ʯ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2111, 'G_ITEM_TYPE', 215, '2073', '[��˵]���ײ��ϰ�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2112, 'G_ITEM_TYPE', 211, '2074', '[��ͨ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2113, 'G_ITEM_TYPE', 211, '2075', '[��ͨ]��Ѫ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2114, 'G_ITEM_TYPE', 211, '2076', '[��ͨ]��֪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2115, 'G_ITEM_TYPE', 211, '2077', '[��ͨ]���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2116, 'G_ITEM_TYPE', 211, '2078', '[��ͨ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2117, 'G_ITEM_TYPE', 211, '2079', '[��ͨ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2118, 'G_ITEM_TYPE', 211, '2080', '[��ͨ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2119, 'G_ITEM_TYPE', 212, '2081', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2120, 'G_ITEM_TYPE', 212, '2082', '[����]��Ѫ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2121, 'G_ITEM_TYPE', 212, '2083', '[����]��֪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2122, 'G_ITEM_TYPE', 212, '2084', '[����]���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2123, 'G_ITEM_TYPE', 212, '2085', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2124, 'G_ITEM_TYPE', 212, '2086', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2125, 'G_ITEM_TYPE', 212, '2087', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2126, 'G_ITEM_TYPE', 213, '2088', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2127, 'G_ITEM_TYPE', 213, '2089', '[����]��Ѫ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2128, 'G_ITEM_TYPE', 213, '2090', '[����]��֪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2129, 'G_ITEM_TYPE', 213, '2091', '[����]���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2130, 'G_ITEM_TYPE', 213, '2092', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2131, 'G_ITEM_TYPE', 213, '2093', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2132, 'G_ITEM_TYPE', 213, '2094', '[����]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2133, 'G_ITEM_TYPE', 214, '2095', '[ʷʫ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2134, 'G_ITEM_TYPE', 214, '2096', '[ʷʫ]��Ѫ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2135, 'G_ITEM_TYPE', 214, '2097', '[ʷʫ]��֪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2136, 'G_ITEM_TYPE', 214, '2098', '[ʷʫ]���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2137, 'G_ITEM_TYPE', 214, '2099', '[ʷʫ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2138, 'G_ITEM_TYPE', 214, '2100', '[ʷʫ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2139, 'G_ITEM_TYPE', 214, '2101', '[ʷʫ]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2140, 'G_ITEM_TYPE', 215, '2102', '[��˵]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2141, 'G_ITEM_TYPE', 215, '2103', '[��˵]��Ѫ֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2142, 'G_ITEM_TYPE', 215, '2104', '[��˵]��֪֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2143, 'G_ITEM_TYPE', 215, '2105', '[��˵]���֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2144, 'G_ITEM_TYPE', 215, '2106', '[��˵]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2145, 'G_ITEM_TYPE', 215, '2107', '[��˵]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2146, 'G_ITEM_TYPE', 215, '2108', '[��˵]����֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2147, 'G_ITEM_TYPE', 211, '3001', '��צ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2148, 'G_ITEM_TYPE', 212, '3002', 'ѪϺ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2149, 'G_ITEM_TYPE', 213, '3003', '����ˮĸ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2150, 'G_ITEM_TYPE', 214, '3004', '����β��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2151, 'G_ITEM_TYPE', 215, '3005', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2152, 'G_ITEM_TYPE', 215, '3006', '����Ϻ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2153, 'G_ITEM_TYPE', 211, '3007', '����֩����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2154, 'G_ITEM_TYPE', 212, '3008', '����ţ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2155, 'G_ITEM_TYPE', 213, '3009', '�����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2156, 'G_ITEM_TYPE', 214, '3010', 'Ϭţ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2157, 'G_ITEM_TYPE', 215, '3011', 'ǨԾ�޹�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2158, 'G_ITEM_TYPE', 215, '3012', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2159, 'G_ITEM_TYPE', 211, '3013', '��ζ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2160, 'G_ITEM_TYPE', 212, '3014', 'ͺӥ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2161, 'G_ITEM_TYPE', 213, '3015', '�޵�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2162, 'G_ITEM_TYPE', 214, '3016', 'ɳ�غ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2163, 'G_ITEM_TYPE', 215, '3017', 'С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (2164, 'G_ITEM_TYPE', 215, '3018', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3001, 'G_PET_TYPE', null, '1000001', '��СQ', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3002, 'G_PET_TYPE', null, '1000002', 'Сɽ��', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3003, 'G_PET_TYPE', null, '1000003', 'С����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3004, 'G_PET_TYPE', null, '1000004', '�������', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3005, 'G_PET_TYPE', null, '1000005', 'С����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3006, 'G_PET_TYPE', null, '1000006', 'С����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3007, 'G_PET_TYPE', null, '1000007', '�������', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3008, 'G_PET_TYPE', null, '1000008', '����Ұ��', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3009, 'G_PET_TYPE', null, '1000009', 'С����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3010, 'G_PET_TYPE', null, '1000010', '�����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3011, 'G_PET_TYPE', null, '1000011', '�ﺣҰ��', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3012, 'G_PET_TYPE', null, '1000012', 'С����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3013, 'G_PET_TYPE', null, '1000013', '�����', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3014, 'G_PET_TYPE', null, '1000014', '����Ұ��', null, '1', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (3015, 'G_PET_TYPE', null, '1000015', 'С����', null, '1', '1', null);

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
values (10001, 'G_HERO_TYPE', 221, '21201', '��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10002, 'G_HERO_TYPE', 221, '10002', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10003, 'G_HERO_TYPE', 221, '10003', 'СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10004, 'G_HERO_TYPE', 221, '10004', '��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10005, 'G_HERO_TYPE', 221, '10005', '�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10006, 'G_HERO_TYPE', 221, '10006', '��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10007, 'G_HERO_TYPE', 221, '10007', 'Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10008, 'G_HERO_TYPE', 221, '10008', '����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10009, 'G_HERO_TYPE', 222, '10009', '�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10010, 'G_HERO_TYPE', 222, '10010', '��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10011, 'G_HERO_TYPE', 222, '10011', '�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10012, 'G_HERO_TYPE', 222, '10012', '�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10013, 'G_HERO_TYPE', 222, '10013', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10014, 'G_HERO_TYPE', 222, '10014', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10015, 'G_HERO_TYPE', 222, '10015', '��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10016, 'G_HERO_TYPE', 223, '10016', 'Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10017, 'G_HERO_TYPE', 223, '10017', '������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10018, 'G_HERO_TYPE', 223, '10018', 'Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10019, 'G_HERO_TYPE', 223, '10019', '������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10020, 'G_HERO_TYPE', 223, '10020', '��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10021, 'G_HERO_TYPE', 223, '10021', '÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10022, 'G_HERO_TYPE', 223, '10022', '�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10023, 'G_HERO_TYPE', 223, '10023', 'ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10024, 'G_HERO_TYPE', 224, '10024', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10025, 'G_HERO_TYPE', 224, '10025', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10026, 'G_HERO_TYPE', 224, '10026', '����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10027, 'G_HERO_TYPE', 224, '10027', 'Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10028, 'G_HERO_TYPE', 224, '10028', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10029, 'G_HERO_TYPE', 224, '10029', '��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10030, 'G_HERO_TYPE', 224, '10030', '�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10031, 'G_HERO_TYPE', 225, '10031', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10032, 'G_HERO_TYPE', 225, '10032', 'ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10033, 'G_HERO_TYPE', 225, '10033', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10034, 'G_HERO_TYPE', 225, '10034', '������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10035, 'G_HERO_TYPE', 225, '10035', 'Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10036, 'G_HERO_TYPE', 225, '10036', '��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10037, 'G_HERO_TYPE', 225, '10037', 'С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10038, 'G_HERO_TYPE', 221, '21301', '[1��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10039, 'G_HERO_TYPE', 221, '10102', '[1��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10040, 'G_HERO_TYPE', 221, '10103', '[1��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10041, 'G_HERO_TYPE', 221, '10104', '[1��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10042, 'G_HERO_TYPE', 221, '10105', '[1��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10043, 'G_HERO_TYPE', 221, '10106', '[1��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10044, 'G_HERO_TYPE', 221, '10107', '[1��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10045, 'G_HERO_TYPE', 221, '10108', '[1��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10046, 'G_HERO_TYPE', 222, '10109', '[1��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10047, 'G_HERO_TYPE', 222, '10110', '[1��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10048, 'G_HERO_TYPE', 222, '10111', '[1��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10049, 'G_HERO_TYPE', 222, '10112', '[1��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10050, 'G_HERO_TYPE', 222, '10113', '[1��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10051, 'G_HERO_TYPE', 222, '10114', '[1��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10052, 'G_HERO_TYPE', 222, '10115', '[1��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10053, 'G_HERO_TYPE', 223, '10116', '[1��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10054, 'G_HERO_TYPE', 223, '10117', '[1��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10055, 'G_HERO_TYPE', 225, '10118', '[1��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10056, 'G_HERO_TYPE', 223, '10119', '[1��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10057, 'G_HERO_TYPE', 223, '10120', '[1��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10058, 'G_HERO_TYPE', 223, '10121', '[1��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10059, 'G_HERO_TYPE', 223, '10122', '[1��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10060, 'G_HERO_TYPE', 223, '10123', '[1��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10061, 'G_HERO_TYPE', 224, '10124', '[1��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10062, 'G_HERO_TYPE', 224, '10125', '[1��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10063, 'G_HERO_TYPE', 224, '10126', '[1��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10064, 'G_HERO_TYPE', 224, '10127', '[1��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10065, 'G_HERO_TYPE', 224, '10128', '[1��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10066, 'G_HERO_TYPE', 224, '10129', '[1��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10067, 'G_HERO_TYPE', 224, '10130', '[1��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10068, 'G_HERO_TYPE', 225, '10131', '[1��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10069, 'G_HERO_TYPE', 225, '10132', '[1��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10070, 'G_HERO_TYPE', 225, '10133', '[1��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10071, 'G_HERO_TYPE', 225, '10134', '[1��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10072, 'G_HERO_TYPE', 225, '10135', '[1��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10073, 'G_HERO_TYPE', 225, '10136', '[1��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10074, 'G_HERO_TYPE', 225, '10137', '[1��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10075, 'G_HERO_TYPE', 222, '21401', '[2��]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10076, 'G_HERO_TYPE', 221, '10202', '[2��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10077, 'G_HERO_TYPE', 221, '10203', '[2��]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10078, 'G_HERO_TYPE', 221, '10204', '[2��]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10079, 'G_HERO_TYPE', 221, '10205', '[2��]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10080, 'G_HERO_TYPE', 221, '10206', '[2��]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10081, 'G_HERO_TYPE', 221, '10207', '[2��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10082, 'G_HERO_TYPE', 221, '10208', '[2��]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10083, 'G_HERO_TYPE', 222, '10209', '[2��]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10084, 'G_HERO_TYPE', 222, '10210', '[2��]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10085, 'G_HERO_TYPE', 222, '10211', '[2��]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10086, 'G_HERO_TYPE', 222, '10212', '[2��]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10087, 'G_HERO_TYPE', 222, '10213', '[2��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10088, 'G_HERO_TYPE', 222, '10214', '[2��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10089, 'G_HERO_TYPE', 222, '10215', '[2��]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10090, 'G_HERO_TYPE', 223, '10216', '[2��]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10091, 'G_HERO_TYPE', 223, '10217', '[2��]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10092, 'G_HERO_TYPE', 225, '10218', '[2��]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10093, 'G_HERO_TYPE', 223, '10219', '[2��]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10094, 'G_HERO_TYPE', 223, '10220', '[2��]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10095, 'G_HERO_TYPE', 223, '10221', '[2��]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10096, 'G_HERO_TYPE', 223, '10222', '[2��]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10097, 'G_HERO_TYPE', 223, '10223', '[2��]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10098, 'G_HERO_TYPE', 224, '10224', '[2��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10099, 'G_HERO_TYPE', 224, '10225', '[2��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10100, 'G_HERO_TYPE', 224, '10226', '[2��]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10101, 'G_HERO_TYPE', 224, '10227', '[2��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10102, 'G_HERO_TYPE', 224, '10228', '[2��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10103, 'G_HERO_TYPE', 224, '10229', '[2��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10104, 'G_HERO_TYPE', 224, '10230', '[2��]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10105, 'G_HERO_TYPE', 225, '10231', '[2��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10106, 'G_HERO_TYPE', 225, '10232', '[2��]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10107, 'G_HERO_TYPE', 225, '10233', '[2��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10108, 'G_HERO_TYPE', 225, '10234', '[2��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10109, 'G_HERO_TYPE', 225, '10235', '[2��]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10110, 'G_HERO_TYPE', 225, '10236', '[2��]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10111, 'G_HERO_TYPE', 225, '10237', '[2��]С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10112, 'G_HERO_TYPE', 222, '21501', '[2��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10113, 'G_HERO_TYPE', 221, '10302', '[2��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10114, 'G_HERO_TYPE', 221, '10303', '[2��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10115, 'G_HERO_TYPE', 221, '10304', '[2��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10116, 'G_HERO_TYPE', 221, '10305', '[2��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10117, 'G_HERO_TYPE', 221, '10306', '[2��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10118, 'G_HERO_TYPE', 221, '10307', '[2��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10119, 'G_HERO_TYPE', 221, '10308', '[2��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10120, 'G_HERO_TYPE', 222, '10309', '[2��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10121, 'G_HERO_TYPE', 222, '10310', '[2��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10122, 'G_HERO_TYPE', 222, '10311', '[2��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10123, 'G_HERO_TYPE', 222, '10312', '[2��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10124, 'G_HERO_TYPE', 222, '10313', '[2��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10125, 'G_HERO_TYPE', 222, '10314', '[2��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10126, 'G_HERO_TYPE', 222, '10315', '[2��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10127, 'G_HERO_TYPE', 223, '10316', '[2��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10128, 'G_HERO_TYPE', 223, '10317', '[2��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10129, 'G_HERO_TYPE', 225, '10318', '[2��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10130, 'G_HERO_TYPE', 223, '10319', '[2��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10131, 'G_HERO_TYPE', 223, '10320', '[2��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10132, 'G_HERO_TYPE', 223, '10321', '[2��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10133, 'G_HERO_TYPE', 223, '10322', '[2��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10134, 'G_HERO_TYPE', 223, '10323', '[2��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10135, 'G_HERO_TYPE', 224, '10324', '[2��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10136, 'G_HERO_TYPE', 224, '10325', '[2��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10137, 'G_HERO_TYPE', 224, '10326', '[2��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10138, 'G_HERO_TYPE', 224, '10327', '[2��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10139, 'G_HERO_TYPE', 224, '10328', '[2��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10140, 'G_HERO_TYPE', 224, '10329', '[2��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10141, 'G_HERO_TYPE', 224, '10330', '[2��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10142, 'G_HERO_TYPE', 225, '10331', '[2��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10143, 'G_HERO_TYPE', 225, '10332', '[2��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10144, 'G_HERO_TYPE', 225, '10333', '[2��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10145, 'G_HERO_TYPE', 225, '10334', '[2��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10146, 'G_HERO_TYPE', 225, '10335', '[2��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10147, 'G_HERO_TYPE', 225, '10336', '[2��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10148, 'G_HERO_TYPE', 225, '10337', '[2��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10149, 'G_HERO_TYPE', 222, '21601', '[2��]��ʦ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10150, 'G_HERO_TYPE', 221, '10402', '[2��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10151, 'G_HERO_TYPE', 221, '10403', '[2��]СţѪ��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10152, 'G_HERO_TYPE', 221, '10404', '[2��]��צ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10153, 'G_HERO_TYPE', 221, '10405', '[2��]�ڰ�а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10154, 'G_HERO_TYPE', 221, '10406', '[2��]��צС��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10155, 'G_HERO_TYPE', 221, '10407', '[2��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10156, 'G_HERO_TYPE', 221, '10408', '[2��]����а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10157, 'G_HERO_TYPE', 222, '10409', '[2��]�ڽ��ų�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10158, 'G_HERO_TYPE', 222, '10410', '[2��]��ɫ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10159, 'G_HERO_TYPE', 222, '10411', '[2��]�����籩+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10160, 'G_HERO_TYPE', 222, '10412', '[2��]�ɵ�ս��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10161, 'G_HERO_TYPE', 222, '10413', '[2��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10162, 'G_HERO_TYPE', 222, '10414', '[2��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10163, 'G_HERO_TYPE', 222, '10415', '[2��]��ħ��ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10164, 'G_HERO_TYPE', 223, '10416', '[2��]Ѫ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10165, 'G_HERO_TYPE', 223, '10417', '[2��]������ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10166, 'G_HERO_TYPE', 225, '10418', '[2��]Ӱ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10167, 'G_HERO_TYPE', 223, '10419', '[2��]������ǿ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10168, 'G_HERO_TYPE', 223, '10420', '[2��]��ħ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10169, 'G_HERO_TYPE', 223, '10421', '[2��]÷�󹤽�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10170, 'G_HERO_TYPE', 223, '10422', '[2��]�ǽ��ػ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10171, 'G_HERO_TYPE', 223, '10423', '[2��]ɽ��֮��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10172, 'G_HERO_TYPE', 224, '10424', '[2��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10173, 'G_HERO_TYPE', 224, '10425', '[2��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10174, 'G_HERO_TYPE', 224, '10426', '[2��]����֪+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10175, 'G_HERO_TYPE', 224, '10427', '[2��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10176, 'G_HERO_TYPE', 224, '10428', '[2��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10177, 'G_HERO_TYPE', 224, '10429', '[2��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10178, 'G_HERO_TYPE', 224, '10430', '[2��]�Բк�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10179, 'G_HERO_TYPE', 225, '10431', '[2��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10180, 'G_HERO_TYPE', 225, '10432', '[2��]ȼ�յļ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10181, 'G_HERO_TYPE', 225, '10433', '[2��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10182, 'G_HERO_TYPE', 225, '10434', '[2��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10183, 'G_HERO_TYPE', 225, '10435', '[2��]Ӣ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10184, 'G_HERO_TYPE', 225, '10436', '[2��]��֮Ů+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10185, 'G_HERO_TYPE', 225, '10437', '[2��]С������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10186, 'G_HERO_TYPE', 223, '21701', '[3��]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10187, 'G_HERO_TYPE', 221, '10502', '[3��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10188, 'G_HERO_TYPE', 221, '10503', '[3��]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10189, 'G_HERO_TYPE', 221, '10504', '[3��]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10190, 'G_HERO_TYPE', 221, '10505', '[3��]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10191, 'G_HERO_TYPE', 221, '10506', '[3��]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10192, 'G_HERO_TYPE', 221, '10507', '[3��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10193, 'G_HERO_TYPE', 221, '10508', '[3��]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10194, 'G_HERO_TYPE', 222, '10509', '[3��]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10195, 'G_HERO_TYPE', 222, '10510', '[3��]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10196, 'G_HERO_TYPE', 222, '10511', '[3��]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10197, 'G_HERO_TYPE', 222, '10512', '[3��]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10198, 'G_HERO_TYPE', 222, '10513', '[3��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10199, 'G_HERO_TYPE', 222, '10514', '[3��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10200, 'G_HERO_TYPE', 222, '10515', '[3��]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10201, 'G_HERO_TYPE', 223, '10516', '[3��]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10202, 'G_HERO_TYPE', 223, '10517', '[3��]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10203, 'G_HERO_TYPE', 225, '10518', '[3��]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10204, 'G_HERO_TYPE', 223, '10519', '[3��]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10205, 'G_HERO_TYPE', 223, '10520', '[3��]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10206, 'G_HERO_TYPE', 223, '10521', '[3��]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10207, 'G_HERO_TYPE', 223, '10522', '[3��]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10208, 'G_HERO_TYPE', 223, '10523', '[3��]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10209, 'G_HERO_TYPE', 224, '10524', '[3��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10210, 'G_HERO_TYPE', 224, '10525', '[3��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10211, 'G_HERO_TYPE', 224, '10526', '[3��]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10212, 'G_HERO_TYPE', 224, '10527', '[3��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10213, 'G_HERO_TYPE', 224, '10528', '[3��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10214, 'G_HERO_TYPE', 224, '10529', '[3��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10215, 'G_HERO_TYPE', 224, '10530', '[3��]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10216, 'G_HERO_TYPE', 225, '10531', '[3��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10217, 'G_HERO_TYPE', 225, '10532', '[3��]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10218, 'G_HERO_TYPE', 225, '10533', '[3��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10219, 'G_HERO_TYPE', 225, '10534', '[3��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10220, 'G_HERO_TYPE', 225, '10535', '[3��]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10221, 'G_HERO_TYPE', 225, '10536', '[3��]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10222, 'G_HERO_TYPE', 225, '10537', '[3��]С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10223, 'G_HERO_TYPE', 223, '21801', '[3��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10224, 'G_HERO_TYPE', 221, '10602', '[3��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10225, 'G_HERO_TYPE', 221, '10603', '[3��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10226, 'G_HERO_TYPE', 221, '10604', '[3��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10227, 'G_HERO_TYPE', 221, '10605', '[3��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10228, 'G_HERO_TYPE', 221, '10606', '[3��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10229, 'G_HERO_TYPE', 221, '10607', '[3��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10230, 'G_HERO_TYPE', 221, '10608', '[3��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10231, 'G_HERO_TYPE', 222, '10609', '[3��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10232, 'G_HERO_TYPE', 222, '10610', '[3��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10233, 'G_HERO_TYPE', 222, '10611', '[3��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10234, 'G_HERO_TYPE', 222, '10612', '[3��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10235, 'G_HERO_TYPE', 222, '10613', '[3��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10236, 'G_HERO_TYPE', 222, '10614', '[3��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10237, 'G_HERO_TYPE', 222, '10615', '[3��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10238, 'G_HERO_TYPE', 223, '10616', '[3��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10239, 'G_HERO_TYPE', 223, '10617', '[3��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10240, 'G_HERO_TYPE', 225, '10618', '[3��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10241, 'G_HERO_TYPE', 223, '10619', '[3��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10242, 'G_HERO_TYPE', 223, '10620', '[3��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10243, 'G_HERO_TYPE', 223, '10621', '[3��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10244, 'G_HERO_TYPE', 223, '10622', '[3��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10245, 'G_HERO_TYPE', 223, '10623', '[3��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10246, 'G_HERO_TYPE', 224, '10624', '[3��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10247, 'G_HERO_TYPE', 224, '10625', '[3��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10248, 'G_HERO_TYPE', 224, '10626', '[3��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10249, 'G_HERO_TYPE', 224, '10627', '[3��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10250, 'G_HERO_TYPE', 224, '10628', '[3��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10251, 'G_HERO_TYPE', 224, '10629', '[3��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10252, 'G_HERO_TYPE', 224, '10630', '[3��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10253, 'G_HERO_TYPE', 225, '10631', '[3��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10254, 'G_HERO_TYPE', 225, '10632', '[3��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10255, 'G_HERO_TYPE', 225, '10633', '[3��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10256, 'G_HERO_TYPE', 225, '10634', '[3��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10257, 'G_HERO_TYPE', 225, '10635', '[3��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10258, 'G_HERO_TYPE', 225, '10636', '[3��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10259, 'G_HERO_TYPE', 225, '10637', '[3��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10260, 'G_HERO_TYPE', 223, '21901', '[3��]��ʦ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10261, 'G_HERO_TYPE', 221, '10702', '[3��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10262, 'G_HERO_TYPE', 221, '10703', '[3��]СţѪ��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10263, 'G_HERO_TYPE', 221, '10704', '[3��]��צ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10264, 'G_HERO_TYPE', 221, '10705', '[3��]�ڰ�а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10265, 'G_HERO_TYPE', 221, '10706', '[3��]��צС��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10266, 'G_HERO_TYPE', 221, '10707', '[3��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10267, 'G_HERO_TYPE', 221, '10708', '[3��]����а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10268, 'G_HERO_TYPE', 222, '10709', '[3��]�ڽ��ų�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10269, 'G_HERO_TYPE', 222, '10710', '[3��]��ɫ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10270, 'G_HERO_TYPE', 222, '10711', '[3��]�����籩+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10271, 'G_HERO_TYPE', 222, '10712', '[3��]�ɵ�ս��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10272, 'G_HERO_TYPE', 222, '10713', '[3��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10273, 'G_HERO_TYPE', 222, '10714', '[3��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10274, 'G_HERO_TYPE', 222, '10715', '[3��]��ħ��ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10275, 'G_HERO_TYPE', 223, '10716', '[3��]Ѫ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10276, 'G_HERO_TYPE', 223, '10717', '[3��]������ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10277, 'G_HERO_TYPE', 225, '10718', '[3��]Ӱ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10278, 'G_HERO_TYPE', 223, '10719', '[3��]������ǿ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10279, 'G_HERO_TYPE', 223, '10720', '[3��]��ħ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10280, 'G_HERO_TYPE', 223, '10721', '[3��]÷�󹤽�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10281, 'G_HERO_TYPE', 223, '10722', '[3��]�ǽ��ػ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10282, 'G_HERO_TYPE', 223, '10723', '[3��]ɽ��֮��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10283, 'G_HERO_TYPE', 224, '10724', '[3��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10284, 'G_HERO_TYPE', 224, '10725', '[3��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10285, 'G_HERO_TYPE', 224, '10726', '[3��]����֪+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10286, 'G_HERO_TYPE', 224, '10727', '[3��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10287, 'G_HERO_TYPE', 224, '10728', '[3��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10288, 'G_HERO_TYPE', 224, '10729', '[3��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10289, 'G_HERO_TYPE', 224, '10730', '[3��]�Բк�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10290, 'G_HERO_TYPE', 225, '10731', '[3��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10291, 'G_HERO_TYPE', 225, '10732', '[3��]ȼ�յļ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10292, 'G_HERO_TYPE', 225, '10733', '[3��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10293, 'G_HERO_TYPE', 225, '10734', '[3��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10294, 'G_HERO_TYPE', 225, '10735', '[3��]Ӣ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10295, 'G_HERO_TYPE', 225, '10736', '[3��]��֮Ů+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10296, 'G_HERO_TYPE', 225, '10737', '[3��]С������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10297, 'G_HERO_TYPE', 223, '22001', '[3��]��ʦ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10298, 'G_HERO_TYPE', 221, '10802', '[3��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10299, 'G_HERO_TYPE', 221, '10803', '[3��]СţѪ��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10300, 'G_HERO_TYPE', 221, '10804', '[3��]��צ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10301, 'G_HERO_TYPE', 221, '10805', '[3��]�ڰ�а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10302, 'G_HERO_TYPE', 221, '10806', '[3��]��צС��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10303, 'G_HERO_TYPE', 221, '10807', '[3��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10304, 'G_HERO_TYPE', 221, '10808', '[3��]����а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10305, 'G_HERO_TYPE', 222, '10809', '[3��]�ڽ��ų�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10306, 'G_HERO_TYPE', 222, '10810', '[3��]��ɫ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10307, 'G_HERO_TYPE', 222, '10811', '[3��]�����籩+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10308, 'G_HERO_TYPE', 222, '10812', '[3��]�ɵ�ս��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10309, 'G_HERO_TYPE', 222, '10813', '[3��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10310, 'G_HERO_TYPE', 222, '10814', '[3��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10311, 'G_HERO_TYPE', 222, '10815', '[3��]��ħ��ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10312, 'G_HERO_TYPE', 223, '10816', '[3��]Ѫ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10313, 'G_HERO_TYPE', 223, '10817', '[3��]������ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10314, 'G_HERO_TYPE', 225, '10818', '[3��]Ӱ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10315, 'G_HERO_TYPE', 223, '10819', '[3��]������ǿ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10316, 'G_HERO_TYPE', 223, '10820', '[3��]��ħ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10317, 'G_HERO_TYPE', 223, '10821', '[3��]÷�󹤽�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10318, 'G_HERO_TYPE', 223, '10822', '[3��]�ǽ��ػ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10319, 'G_HERO_TYPE', 223, '10823', '[3��]ɽ��֮��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10320, 'G_HERO_TYPE', 224, '10824', '[3��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10321, 'G_HERO_TYPE', 224, '10825', '[3��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10322, 'G_HERO_TYPE', 224, '10826', '[3��]����֪+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10323, 'G_HERO_TYPE', 224, '10827', '[3��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10324, 'G_HERO_TYPE', 224, '10828', '[3��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10325, 'G_HERO_TYPE', 224, '10829', '[3��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10326, 'G_HERO_TYPE', 224, '10830', '[3��]�Բк�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10327, 'G_HERO_TYPE', 225, '10831', '[3��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10328, 'G_HERO_TYPE', 225, '10832', '[3��]ȼ�յļ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10329, 'G_HERO_TYPE', 225, '10833', '[3��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10330, 'G_HERO_TYPE', 225, '10834', '[3��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10331, 'G_HERO_TYPE', 225, '10835', '[3��]Ӣ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10332, 'G_HERO_TYPE', 225, '10836', '[3��]��֮Ů+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10333, 'G_HERO_TYPE', 225, '10837', '[3��]С������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10334, 'G_HERO_TYPE', 224, '22101', '[4��]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10335, 'G_HERO_TYPE', 221, '10902', '[4��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10336, 'G_HERO_TYPE', 221, '10903', '[4��]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10337, 'G_HERO_TYPE', 221, '10904', '[4��]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10338, 'G_HERO_TYPE', 221, '10905', '[4��]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10339, 'G_HERO_TYPE', 221, '10906', '[4��]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10340, 'G_HERO_TYPE', 221, '10907', '[4��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10341, 'G_HERO_TYPE', 221, '10908', '[4��]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10342, 'G_HERO_TYPE', 222, '10909', '[4��]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10343, 'G_HERO_TYPE', 222, '10910', '[4��]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10344, 'G_HERO_TYPE', 222, '10911', '[4��]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10345, 'G_HERO_TYPE', 222, '10912', '[4��]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10346, 'G_HERO_TYPE', 222, '10913', '[4��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10347, 'G_HERO_TYPE', 222, '10914', '[4��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10348, 'G_HERO_TYPE', 222, '10915', '[4��]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10349, 'G_HERO_TYPE', 223, '10916', '[4��]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10350, 'G_HERO_TYPE', 223, '10917', '[4��]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10351, 'G_HERO_TYPE', 225, '10918', '[4��]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10352, 'G_HERO_TYPE', 223, '10919', '[4��]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10353, 'G_HERO_TYPE', 223, '10920', '[4��]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10354, 'G_HERO_TYPE', 223, '10921', '[4��]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10355, 'G_HERO_TYPE', 223, '10922', '[4��]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10356, 'G_HERO_TYPE', 223, '10923', '[4��]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10357, 'G_HERO_TYPE', 224, '10924', '[4��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10358, 'G_HERO_TYPE', 224, '10925', '[4��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10359, 'G_HERO_TYPE', 224, '10926', '[4��]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10360, 'G_HERO_TYPE', 224, '10927', '[4��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10361, 'G_HERO_TYPE', 224, '10928', '[4��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10362, 'G_HERO_TYPE', 224, '10929', '[4��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10363, 'G_HERO_TYPE', 224, '10930', '[4��]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10364, 'G_HERO_TYPE', 225, '10931', '[4��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10365, 'G_HERO_TYPE', 225, '10932', '[4��]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10366, 'G_HERO_TYPE', 225, '10933', '[4��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10367, 'G_HERO_TYPE', 225, '10934', '[4��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10368, 'G_HERO_TYPE', 225, '10935', '[4��]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10369, 'G_HERO_TYPE', 225, '10936', '[4��]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10370, 'G_HERO_TYPE', 225, '10937', '[4��]С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10371, 'G_HERO_TYPE', 224, '22201', '[4��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10372, 'G_HERO_TYPE', 221, '11002', '[4��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10373, 'G_HERO_TYPE', 221, '11003', '[4��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10374, 'G_HERO_TYPE', 221, '11004', '[4��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10375, 'G_HERO_TYPE', 221, '11005', '[4��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10376, 'G_HERO_TYPE', 221, '11006', '[4��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10377, 'G_HERO_TYPE', 221, '11007', '[4��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10378, 'G_HERO_TYPE', 221, '11008', '[4��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10379, 'G_HERO_TYPE', 222, '11009', '[4��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10380, 'G_HERO_TYPE', 222, '11010', '[4��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10381, 'G_HERO_TYPE', 222, '11011', '[4��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10382, 'G_HERO_TYPE', 222, '11012', '[4��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10383, 'G_HERO_TYPE', 222, '11013', '[4��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10384, 'G_HERO_TYPE', 222, '11014', '[4��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10385, 'G_HERO_TYPE', 222, '11015', '[4��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10386, 'G_HERO_TYPE', 223, '11016', '[4��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10387, 'G_HERO_TYPE', 223, '11017', '[4��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10388, 'G_HERO_TYPE', 225, '11018', '[4��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10389, 'G_HERO_TYPE', 223, '11019', '[4��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10390, 'G_HERO_TYPE', 223, '11020', '[4��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10391, 'G_HERO_TYPE', 223, '11021', '[4��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10392, 'G_HERO_TYPE', 223, '11022', '[4��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10393, 'G_HERO_TYPE', 223, '11023', '[4��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10394, 'G_HERO_TYPE', 224, '11024', '[4��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10395, 'G_HERO_TYPE', 224, '11025', '[4��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10396, 'G_HERO_TYPE', 224, '11026', '[4��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10397, 'G_HERO_TYPE', 224, '11027', '[4��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10398, 'G_HERO_TYPE', 224, '11028', '[4��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10399, 'G_HERO_TYPE', 224, '11029', '[4��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10400, 'G_HERO_TYPE', 224, '11030', '[4��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10401, 'G_HERO_TYPE', 225, '11031', '[4��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10402, 'G_HERO_TYPE', 225, '11032', '[4��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10403, 'G_HERO_TYPE', 225, '11033', '[4��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10404, 'G_HERO_TYPE', 225, '11034', '[4��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10405, 'G_HERO_TYPE', 225, '11035', '[4��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10406, 'G_HERO_TYPE', 225, '11036', '[4��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10407, 'G_HERO_TYPE', 225, '11037', '[4��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10408, 'G_HERO_TYPE', 224, '22301', '[4��]��ʦ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10409, 'G_HERO_TYPE', 221, '11102', '[4��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10410, 'G_HERO_TYPE', 221, '11103', '[4��]СţѪ��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10411, 'G_HERO_TYPE', 221, '11104', '[4��]��צ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10412, 'G_HERO_TYPE', 221, '11105', '[4��]�ڰ�а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10413, 'G_HERO_TYPE', 221, '11106', '[4��]��צС��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10414, 'G_HERO_TYPE', 221, '11107', '[4��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10415, 'G_HERO_TYPE', 221, '11108', '[4��]����а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10416, 'G_HERO_TYPE', 222, '11109', '[4��]�ڽ��ų�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10417, 'G_HERO_TYPE', 222, '11110', '[4��]��ɫ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10418, 'G_HERO_TYPE', 222, '11111', '[4��]�����籩+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10419, 'G_HERO_TYPE', 222, '11112', '[4��]�ɵ�ս��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10420, 'G_HERO_TYPE', 222, '11113', '[4��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10421, 'G_HERO_TYPE', 222, '11114', '[4��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10422, 'G_HERO_TYPE', 222, '11115', '[4��]��ħ��ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10423, 'G_HERO_TYPE', 223, '11116', '[4��]Ѫ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10424, 'G_HERO_TYPE', 223, '11117', '[4��]������ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10425, 'G_HERO_TYPE', 225, '11118', '[4��]Ӱ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10426, 'G_HERO_TYPE', 223, '11119', '[4��]������ǿ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10427, 'G_HERO_TYPE', 223, '11120', '[4��]��ħ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10428, 'G_HERO_TYPE', 223, '11121', '[4��]÷�󹤽�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10429, 'G_HERO_TYPE', 223, '11122', '[4��]�ǽ��ػ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10430, 'G_HERO_TYPE', 223, '11123', '[4��]ɽ��֮��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10431, 'G_HERO_TYPE', 224, '11124', '[4��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10432, 'G_HERO_TYPE', 224, '11125', '[4��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10433, 'G_HERO_TYPE', 224, '11126', '[4��]����֪+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10434, 'G_HERO_TYPE', 224, '11127', '[4��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10435, 'G_HERO_TYPE', 224, '11128', '[4��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10436, 'G_HERO_TYPE', 224, '11129', '[4��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10437, 'G_HERO_TYPE', 224, '11130', '[4��]�Բк�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10438, 'G_HERO_TYPE', 225, '11131', '[4��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10439, 'G_HERO_TYPE', 225, '11132', '[4��]ȼ�յļ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10440, 'G_HERO_TYPE', 225, '11133', '[4��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10441, 'G_HERO_TYPE', 225, '11134', '[4��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10442, 'G_HERO_TYPE', 225, '11135', '[4��]Ӣ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10443, 'G_HERO_TYPE', 225, '11136', '[4��]��֮Ů+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10444, 'G_HERO_TYPE', 225, '11137', '[4��]С������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10445, 'G_HERO_TYPE', 224, '22401', '[4��]��ʦ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10446, 'G_HERO_TYPE', 221, '11202', '[4��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10447, 'G_HERO_TYPE', 221, '11203', '[4��]СţѪ��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10448, 'G_HERO_TYPE', 221, '11204', '[4��]��צ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10449, 'G_HERO_TYPE', 221, '11205', '[4��]�ڰ�а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10450, 'G_HERO_TYPE', 221, '11206', '[4��]��צС��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10451, 'G_HERO_TYPE', 221, '11207', '[4��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10452, 'G_HERO_TYPE', 221, '11208', '[4��]����а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10453, 'G_HERO_TYPE', 222, '11209', '[4��]�ڽ��ų�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10454, 'G_HERO_TYPE', 222, '11210', '[4��]��ɫ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10455, 'G_HERO_TYPE', 222, '11211', '[4��]�����籩+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10456, 'G_HERO_TYPE', 222, '11212', '[4��]�ɵ�ս��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10457, 'G_HERO_TYPE', 222, '11213', '[4��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10458, 'G_HERO_TYPE', 222, '11214', '[4��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10459, 'G_HERO_TYPE', 222, '11215', '[4��]��ħ��ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10460, 'G_HERO_TYPE', 223, '11216', '[4��]Ѫ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10461, 'G_HERO_TYPE', 223, '11217', '[4��]������ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10462, 'G_HERO_TYPE', 225, '11218', '[4��]Ӱ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10463, 'G_HERO_TYPE', 223, '11219', '[4��]������ǿ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10464, 'G_HERO_TYPE', 223, '11220', '[4��]��ħ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10465, 'G_HERO_TYPE', 223, '11221', '[4��]÷�󹤽�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10466, 'G_HERO_TYPE', 223, '11222', '[4��]�ǽ��ػ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10467, 'G_HERO_TYPE', 223, '11223', '[4��]ɽ��֮��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10468, 'G_HERO_TYPE', 224, '11224', '[4��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10469, 'G_HERO_TYPE', 224, '11225', '[4��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10470, 'G_HERO_TYPE', 224, '11226', '[4��]����֪+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10471, 'G_HERO_TYPE', 224, '11227', '[4��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10472, 'G_HERO_TYPE', 224, '11228', '[4��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10473, 'G_HERO_TYPE', 224, '11229', '[4��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10474, 'G_HERO_TYPE', 224, '11230', '[4��]�Բк�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10475, 'G_HERO_TYPE', 225, '11231', '[4��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10476, 'G_HERO_TYPE', 225, '11232', '[4��]ȼ�յļ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10477, 'G_HERO_TYPE', 225, '11233', '[4��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10478, 'G_HERO_TYPE', 225, '11234', '[4��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10479, 'G_HERO_TYPE', 225, '11235', '[4��]Ӣ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10480, 'G_HERO_TYPE', 225, '11236', '[4��]��֮Ů+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10481, 'G_HERO_TYPE', 225, '11237', '[4��]С������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10482, 'G_HERO_TYPE', 224, '22501', '[4��]��ʦ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10483, 'G_HERO_TYPE', 221, '11302', '[4��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10484, 'G_HERO_TYPE', 221, '11303', '[4��]СţѪ��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10485, 'G_HERO_TYPE', 221, '11304', '[4��]��צ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10486, 'G_HERO_TYPE', 221, '11305', '[4��]�ڰ�а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10487, 'G_HERO_TYPE', 221, '11306', '[4��]��צС��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10488, 'G_HERO_TYPE', 221, '11307', '[4��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10489, 'G_HERO_TYPE', 221, '11308', '[4��]����а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10490, 'G_HERO_TYPE', 222, '11309', '[4��]�ڽ��ų�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10491, 'G_HERO_TYPE', 222, '11310', '[4��]��ɫ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10492, 'G_HERO_TYPE', 222, '11311', '[4��]�����籩+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10493, 'G_HERO_TYPE', 222, '11312', '[4��]�ɵ�ս��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10494, 'G_HERO_TYPE', 222, '11313', '[4��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10495, 'G_HERO_TYPE', 222, '11314', '[4��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10496, 'G_HERO_TYPE', 222, '11315', '[4��]��ħ��ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10497, 'G_HERO_TYPE', 223, '11316', '[4��]Ѫ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10498, 'G_HERO_TYPE', 223, '11317', '[4��]������ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10499, 'G_HERO_TYPE', 225, '11318', '[4��]Ӱ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10500, 'G_HERO_TYPE', 223, '11319', '[4��]������ǿ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10501, 'G_HERO_TYPE', 223, '11320', '[4��]��ħ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10502, 'G_HERO_TYPE', 223, '11321', '[4��]÷�󹤽�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10503, 'G_HERO_TYPE', 223, '11322', '[4��]�ǽ��ػ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10504, 'G_HERO_TYPE', 223, '11323', '[4��]ɽ��֮��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10505, 'G_HERO_TYPE', 224, '11324', '[4��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10506, 'G_HERO_TYPE', 224, '11325', '[4��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10507, 'G_HERO_TYPE', 224, '11326', '[4��]����֪+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10508, 'G_HERO_TYPE', 224, '11327', '[4��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10509, 'G_HERO_TYPE', 224, '11328', '[4��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10510, 'G_HERO_TYPE', 224, '11329', '[4��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10511, 'G_HERO_TYPE', 224, '11330', '[4��]�Բк�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10512, 'G_HERO_TYPE', 225, '11331', '[4��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10513, 'G_HERO_TYPE', 225, '11332', '[4��]ȼ�յļ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10514, 'G_HERO_TYPE', 225, '11333', '[4��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10515, 'G_HERO_TYPE', 225, '11334', '[4��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10516, 'G_HERO_TYPE', 225, '11335', '[4��]Ӣ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10517, 'G_HERO_TYPE', 225, '11336', '[4��]��֮Ů+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10518, 'G_HERO_TYPE', 225, '11337', '[4��]С������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10519, 'G_HERO_TYPE', 225, '22601', '[5��]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10520, 'G_HERO_TYPE', 221, '11402', '[5��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10521, 'G_HERO_TYPE', 221, '11403', '[5��]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10522, 'G_HERO_TYPE', 221, '11404', '[5��]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10523, 'G_HERO_TYPE', 221, '11405', '[5��]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10524, 'G_HERO_TYPE', 221, '11406', '[5��]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10525, 'G_HERO_TYPE', 221, '11407', '[5��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10526, 'G_HERO_TYPE', 221, '11408', '[5��]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10527, 'G_HERO_TYPE', 222, '11409', '[5��]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10528, 'G_HERO_TYPE', 222, '11410', '[5��]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10529, 'G_HERO_TYPE', 222, '11411', '[5��]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10530, 'G_HERO_TYPE', 222, '11412', '[5��]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10531, 'G_HERO_TYPE', 222, '11413', '[5��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10532, 'G_HERO_TYPE', 222, '11414', '[5��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10533, 'G_HERO_TYPE', 222, '11415', '[5��]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10534, 'G_HERO_TYPE', 223, '11416', '[5��]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10535, 'G_HERO_TYPE', 223, '11417', '[5��]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10536, 'G_HERO_TYPE', 225, '11418', '[5��]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10537, 'G_HERO_TYPE', 223, '11419', '[5��]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10538, 'G_HERO_TYPE', 223, '11420', '[5��]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10539, 'G_HERO_TYPE', 223, '11421', '[5��]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10540, 'G_HERO_TYPE', 223, '11422', '[5��]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10541, 'G_HERO_TYPE', 223, '11423', '[5��]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10542, 'G_HERO_TYPE', 224, '11424', '[5��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10543, 'G_HERO_TYPE', 224, '11425', '[5��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10544, 'G_HERO_TYPE', 224, '11426', '[5��]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10545, 'G_HERO_TYPE', 224, '11427', '[5��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10546, 'G_HERO_TYPE', 224, '11428', '[5��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10547, 'G_HERO_TYPE', 224, '11429', '[5��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10548, 'G_HERO_TYPE', 224, '11430', '[5��]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10549, 'G_HERO_TYPE', 225, '11431', '[5��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10550, 'G_HERO_TYPE', 225, '11432', '[5��]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10551, 'G_HERO_TYPE', 225, '11433', '[5��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10552, 'G_HERO_TYPE', 225, '11434', '[5��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10553, 'G_HERO_TYPE', 225, '11435', '[5��]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10554, 'G_HERO_TYPE', 225, '11436', '[5��]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10555, 'G_HERO_TYPE', 225, '11437', '[5��]С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10556, 'G_HERO_TYPE', 225, '22701', '[5��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10557, 'G_HERO_TYPE', 221, '11502', '[5��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10558, 'G_HERO_TYPE', 221, '11503', '[5��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10559, 'G_HERO_TYPE', 221, '11504', '[5��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10560, 'G_HERO_TYPE', 221, '11505', '[5��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10561, 'G_HERO_TYPE', 221, '11506', '[5��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10562, 'G_HERO_TYPE', 221, '11507', '[5��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10563, 'G_HERO_TYPE', 221, '11508', '[5��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10564, 'G_HERO_TYPE', 222, '11509', '[5��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10565, 'G_HERO_TYPE', 222, '11510', '[5��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10566, 'G_HERO_TYPE', 222, '11511', '[5��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10567, 'G_HERO_TYPE', 222, '11512', '[5��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10568, 'G_HERO_TYPE', 222, '11513', '[5��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10569, 'G_HERO_TYPE', 222, '11514', '[5��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10570, 'G_HERO_TYPE', 222, '11515', '[5��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10571, 'G_HERO_TYPE', 223, '11516', '[5��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10572, 'G_HERO_TYPE', 223, '11517', '[5��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10573, 'G_HERO_TYPE', 225, '11518', '[5��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10574, 'G_HERO_TYPE', 223, '11519', '[5��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10575, 'G_HERO_TYPE', 223, '11520', '[5��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10576, 'G_HERO_TYPE', 223, '11521', '[5��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10577, 'G_HERO_TYPE', 223, '11522', '[5��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10578, 'G_HERO_TYPE', 223, '11523', '[5��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10579, 'G_HERO_TYPE', 224, '11524', '[5��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10580, 'G_HERO_TYPE', 224, '11525', '[5��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10581, 'G_HERO_TYPE', 224, '11526', '[5��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10582, 'G_HERO_TYPE', 224, '11527', '[5��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10583, 'G_HERO_TYPE', 224, '11528', '[5��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10584, 'G_HERO_TYPE', 224, '11529', '[5��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10585, 'G_HERO_TYPE', 224, '11530', '[5��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10586, 'G_HERO_TYPE', 225, '11531', '[5��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10587, 'G_HERO_TYPE', 225, '11532', '[5��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10588, 'G_HERO_TYPE', 225, '11533', '[5��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10589, 'G_HERO_TYPE', 225, '11534', '[5��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10590, 'G_HERO_TYPE', 225, '11535', '[5��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10591, 'G_HERO_TYPE', 225, '11536', '[5��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10592, 'G_HERO_TYPE', 225, '11537', '[5��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10593, 'G_HERO_TYPE', 225, '22801', '[5��]��ʦ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10594, 'G_HERO_TYPE', 221, '11602', '[5��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10595, 'G_HERO_TYPE', 221, '11603', '[5��]СţѪ��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10596, 'G_HERO_TYPE', 221, '11604', '[5��]��צ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10597, 'G_HERO_TYPE', 221, '11605', '[5��]�ڰ�а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10598, 'G_HERO_TYPE', 221, '11606', '[5��]��צС��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10599, 'G_HERO_TYPE', 221, '11607', '[5��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10600, 'G_HERO_TYPE', 221, '11608', '[5��]����а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10601, 'G_HERO_TYPE', 222, '11609', '[5��]�ڽ��ų�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10602, 'G_HERO_TYPE', 222, '11610', '[5��]��ɫ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10603, 'G_HERO_TYPE', 222, '11611', '[5��]�����籩+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10604, 'G_HERO_TYPE', 222, '11612', '[5��]�ɵ�ս��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10605, 'G_HERO_TYPE', 222, '11613', '[5��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10606, 'G_HERO_TYPE', 222, '11614', '[5��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10607, 'G_HERO_TYPE', 222, '11615', '[5��]��ħ��ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10608, 'G_HERO_TYPE', 223, '11616', '[5��]Ѫ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10609, 'G_HERO_TYPE', 223, '11617', '[5��]������ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10610, 'G_HERO_TYPE', 225, '11618', '[5��]Ӱ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10611, 'G_HERO_TYPE', 223, '11619', '[5��]������ǿ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10612, 'G_HERO_TYPE', 223, '11620', '[5��]��ħ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10613, 'G_HERO_TYPE', 223, '11621', '[5��]÷�󹤽�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10614, 'G_HERO_TYPE', 223, '11622', '[5��]�ǽ��ػ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10615, 'G_HERO_TYPE', 223, '11623', '[5��]ɽ��֮��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10616, 'G_HERO_TYPE', 224, '11624', '[5��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10617, 'G_HERO_TYPE', 224, '11625', '[5��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10618, 'G_HERO_TYPE', 224, '11626', '[5��]����֪+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10619, 'G_HERO_TYPE', 224, '11627', '[5��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10620, 'G_HERO_TYPE', 224, '11628', '[5��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10621, 'G_HERO_TYPE', 224, '11629', '[5��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10622, 'G_HERO_TYPE', 224, '11630', '[5��]�Բк�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10623, 'G_HERO_TYPE', 225, '11631', '[5��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10624, 'G_HERO_TYPE', 225, '11632', '[5��]ȼ�յļ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10625, 'G_HERO_TYPE', 225, '11633', '[5��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10626, 'G_HERO_TYPE', 225, '11634', '[5��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10627, 'G_HERO_TYPE', 225, '11635', '[5��]Ӣ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10628, 'G_HERO_TYPE', 225, '11636', '[5��]��֮Ů+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10629, 'G_HERO_TYPE', 225, '11637', '[5��]С������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10630, 'G_HERO_TYPE', 225, '22901', '[5��]��ʦ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10631, 'G_HERO_TYPE', 221, '11702', '[5��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10632, 'G_HERO_TYPE', 221, '11703', '[5��]СţѪ��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10633, 'G_HERO_TYPE', 221, '11704', '[5��]��צ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10634, 'G_HERO_TYPE', 221, '11705', '[5��]�ڰ�а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10635, 'G_HERO_TYPE', 221, '11706', '[5��]��צС��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10636, 'G_HERO_TYPE', 221, '11707', '[5��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10637, 'G_HERO_TYPE', 221, '11708', '[5��]����а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10638, 'G_HERO_TYPE', 222, '11709', '[5��]�ڽ��ų�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10639, 'G_HERO_TYPE', 222, '11710', '[5��]��ɫ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10640, 'G_HERO_TYPE', 222, '11711', '[5��]�����籩+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10641, 'G_HERO_TYPE', 222, '11712', '[5��]�ɵ�ս��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10642, 'G_HERO_TYPE', 222, '11713', '[5��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10643, 'G_HERO_TYPE', 222, '11714', '[5��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10644, 'G_HERO_TYPE', 222, '11715', '[5��]��ħ��ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10645, 'G_HERO_TYPE', 223, '11716', '[5��]Ѫ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10646, 'G_HERO_TYPE', 223, '11717', '[5��]������ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10647, 'G_HERO_TYPE', 225, '11718', '[5��]Ӱ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10648, 'G_HERO_TYPE', 223, '11719', '[5��]������ǿ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10649, 'G_HERO_TYPE', 223, '11720', '[5��]��ħ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10650, 'G_HERO_TYPE', 223, '11721', '[5��]÷�󹤽�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10651, 'G_HERO_TYPE', 223, '11722', '[5��]�ǽ��ػ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10652, 'G_HERO_TYPE', 223, '11723', '[5��]ɽ��֮��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10653, 'G_HERO_TYPE', 224, '11724', '[5��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10654, 'G_HERO_TYPE', 224, '11725', '[5��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10655, 'G_HERO_TYPE', 224, '11726', '[5��]����֪+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10656, 'G_HERO_TYPE', 224, '11727', '[5��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10657, 'G_HERO_TYPE', 224, '11728', '[5��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10658, 'G_HERO_TYPE', 224, '11729', '[5��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10659, 'G_HERO_TYPE', 224, '11730', '[5��]�Բк�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10660, 'G_HERO_TYPE', 225, '11731', '[5��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10661, 'G_HERO_TYPE', 225, '11732', '[5��]ȼ�յļ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10662, 'G_HERO_TYPE', 225, '11733', '[5��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10663, 'G_HERO_TYPE', 225, '11734', '[5��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10664, 'G_HERO_TYPE', 225, '11735', '[5��]Ӣ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10665, 'G_HERO_TYPE', 225, '11736', '[5��]��֮Ů+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10666, 'G_HERO_TYPE', 225, '11737', '[5��]С������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10667, 'G_HERO_TYPE', 225, '23001', '[5��]��ʦ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10668, 'G_HERO_TYPE', 221, '11802', '[5��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10669, 'G_HERO_TYPE', 221, '11803', '[5��]СţѪ��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10670, 'G_HERO_TYPE', 221, '11804', '[5��]��צ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10671, 'G_HERO_TYPE', 221, '11805', '[5��]�ڰ�а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10672, 'G_HERO_TYPE', 221, '11806', '[5��]��צС��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10673, 'G_HERO_TYPE', 221, '11807', '[5��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10674, 'G_HERO_TYPE', 221, '11808', '[5��]����а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10675, 'G_HERO_TYPE', 222, '11809', '[5��]�ڽ��ų�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10676, 'G_HERO_TYPE', 222, '11810', '[5��]��ɫ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10677, 'G_HERO_TYPE', 222, '11811', '[5��]�����籩+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10678, 'G_HERO_TYPE', 222, '11812', '[5��]�ɵ�ս��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10679, 'G_HERO_TYPE', 222, '11813', '[5��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10680, 'G_HERO_TYPE', 222, '11814', '[5��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10681, 'G_HERO_TYPE', 222, '11815', '[5��]��ħ��ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10682, 'G_HERO_TYPE', 223, '11816', '[5��]Ѫ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10683, 'G_HERO_TYPE', 223, '11817', '[5��]������ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10684, 'G_HERO_TYPE', 225, '11818', '[5��]Ӱ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10685, 'G_HERO_TYPE', 223, '11819', '[5��]������ǿ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10686, 'G_HERO_TYPE', 223, '11820', '[5��]��ħ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10687, 'G_HERO_TYPE', 223, '11821', '[5��]÷�󹤽�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10688, 'G_HERO_TYPE', 223, '11822', '[5��]�ǽ��ػ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10689, 'G_HERO_TYPE', 223, '11823', '[5��]ɽ��֮��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10690, 'G_HERO_TYPE', 224, '11824', '[5��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10691, 'G_HERO_TYPE', 224, '11825', '[5��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10692, 'G_HERO_TYPE', 224, '11826', '[5��]����֪+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10693, 'G_HERO_TYPE', 224, '11827', '[5��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10694, 'G_HERO_TYPE', 224, '11828', '[5��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10695, 'G_HERO_TYPE', 224, '11829', '[5��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10696, 'G_HERO_TYPE', 224, '11830', '[5��]�Բк�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10697, 'G_HERO_TYPE', 225, '11831', '[5��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10698, 'G_HERO_TYPE', 225, '11832', '[5��]ȼ�յļ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10699, 'G_HERO_TYPE', 225, '11833', '[5��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10700, 'G_HERO_TYPE', 225, '11834', '[5��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10701, 'G_HERO_TYPE', 225, '11835', '[5��]Ӣ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10702, 'G_HERO_TYPE', 225, '11836', '[5��]��֮Ů+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10703, 'G_HERO_TYPE', 225, '11837', '[5��]С������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10704, 'G_HERO_TYPE', 225, '23101', '[5��]��ʦ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10705, 'G_HERO_TYPE', 221, '11902', '[5��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10706, 'G_HERO_TYPE', 221, '11903', '[5��]СţѪ��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10707, 'G_HERO_TYPE', 221, '11904', '[5��]��צ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10708, 'G_HERO_TYPE', 221, '11905', '[5��]�ڰ�а��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10709, 'G_HERO_TYPE', 221, '11906', '[5��]��צС��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10710, 'G_HERO_TYPE', 221, '11907', '[5��]Ѫ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10711, 'G_HERO_TYPE', 221, '11908', '[5��]����а��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10712, 'G_HERO_TYPE', 222, '11909', '[5��]�ڽ��ų�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10713, 'G_HERO_TYPE', 222, '11910', '[5��]��ɫ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10714, 'G_HERO_TYPE', 222, '11911', '[5��]�����籩+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10715, 'G_HERO_TYPE', 222, '11912', '[5��]�ɵ�ս��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10716, 'G_HERO_TYPE', 222, '11913', '[5��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10717, 'G_HERO_TYPE', 222, '11914', '[5��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10718, 'G_HERO_TYPE', 222, '11915', '[5��]��ħ��ʦ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10719, 'G_HERO_TYPE', 223, '11916', '[5��]Ѫ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10720, 'G_HERO_TYPE', 223, '11917', '[5��]������ʦ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10721, 'G_HERO_TYPE', 225, '11918', '[5��]Ӱ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10722, 'G_HERO_TYPE', 223, '11919', '[5��]������ǿ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10723, 'G_HERO_TYPE', 223, '11920', '[5��]��ħ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10724, 'G_HERO_TYPE', 223, '11921', '[5��]÷�󹤽�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10725, 'G_HERO_TYPE', 223, '11922', '[5��]�ǽ��ػ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10726, 'G_HERO_TYPE', 223, '11923', '[5��]ɽ��֮��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10727, 'G_HERO_TYPE', 224, '11924', '[5��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10728, 'G_HERO_TYPE', 224, '11925', '[5��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10729, 'G_HERO_TYPE', 224, '11926', '[5��]����֪+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10730, 'G_HERO_TYPE', 224, '11927', '[5��]Ѫ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10731, 'G_HERO_TYPE', 224, '11928', '[5��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10732, 'G_HERO_TYPE', 224, '11929', '[5��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10733, 'G_HERO_TYPE', 224, '11930', '[5��]�Բк�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10734, 'G_HERO_TYPE', 225, '11931', '[5��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10735, 'G_HERO_TYPE', 225, '11932', '[5��]ȼ�յļ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10736, 'G_HERO_TYPE', 225, '11933', '[5��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10737, 'G_HERO_TYPE', 225, '11934', '[5��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10738, 'G_HERO_TYPE', 225, '11935', '[5��]Ӣ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10739, 'G_HERO_TYPE', 225, '11936', '[5��]��֮Ů+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10740, 'G_HERO_TYPE', 225, '11937', '[5��]С������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10741, 'G_HERO_TYPE', 225, '23201', '[6��]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10742, 'G_HERO_TYPE', 221, '12002', '[6��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10743, 'G_HERO_TYPE', 221, '12003', '[6��]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10744, 'G_HERO_TYPE', 221, '12004', '[6��]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10745, 'G_HERO_TYPE', 221, '12005', '[6��]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10746, 'G_HERO_TYPE', 221, '12006', '[6��]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10747, 'G_HERO_TYPE', 221, '12007', '[6��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10748, 'G_HERO_TYPE', 221, '12008', '[6��]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10749, 'G_HERO_TYPE', 222, '12009', '[6��]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10750, 'G_HERO_TYPE', 222, '12010', '[6��]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10751, 'G_HERO_TYPE', 222, '12011', '[6��]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10752, 'G_HERO_TYPE', 222, '12012', '[6��]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10753, 'G_HERO_TYPE', 222, '12013', '[6��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10754, 'G_HERO_TYPE', 222, '12014', '[6��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10755, 'G_HERO_TYPE', 222, '12015', '[6��]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10756, 'G_HERO_TYPE', 223, '12016', '[6��]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10757, 'G_HERO_TYPE', 223, '12017', '[6��]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10758, 'G_HERO_TYPE', 225, '12018', '[6��]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10759, 'G_HERO_TYPE', 223, '12019', '[6��]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10760, 'G_HERO_TYPE', 223, '12020', '[6��]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10761, 'G_HERO_TYPE', 223, '12021', '[6��]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10762, 'G_HERO_TYPE', 223, '12022', '[6��]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10763, 'G_HERO_TYPE', 223, '12023', '[6��]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10764, 'G_HERO_TYPE', 224, '12024', '[6��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10765, 'G_HERO_TYPE', 224, '12025', '[6��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10766, 'G_HERO_TYPE', 224, '12026', '[6��]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10767, 'G_HERO_TYPE', 224, '12027', '[6��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10768, 'G_HERO_TYPE', 224, '12028', '[6��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10769, 'G_HERO_TYPE', 224, '12029', '[6��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10770, 'G_HERO_TYPE', 224, '12030', '[6��]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10771, 'G_HERO_TYPE', 225, '12031', '[6��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10772, 'G_HERO_TYPE', 225, '12032', '[6��]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10773, 'G_HERO_TYPE', 225, '12033', '[6��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10774, 'G_HERO_TYPE', 225, '12034', '[6��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10775, 'G_HERO_TYPE', 225, '12035', '[6��]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10776, 'G_HERO_TYPE', 225, '12036', '[6��]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10777, 'G_HERO_TYPE', 225, '12037', '[6��]С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10778, 'G_HERO_TYPE', 225, '23301', '[6��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10779, 'G_HERO_TYPE', 221, '12102', '[6��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10780, 'G_HERO_TYPE', 221, '12103', '[6��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10781, 'G_HERO_TYPE', 221, '12104', '[6��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10782, 'G_HERO_TYPE', 221, '12105', '[6��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10783, 'G_HERO_TYPE', 221, '12106', '[6��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10784, 'G_HERO_TYPE', 221, '12107', '[6��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10785, 'G_HERO_TYPE', 221, '12108', '[6��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10786, 'G_HERO_TYPE', 222, '12109', '[6��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10787, 'G_HERO_TYPE', 222, '12110', '[6��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10788, 'G_HERO_TYPE', 222, '12111', '[6��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10789, 'G_HERO_TYPE', 222, '12112', '[6��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10790, 'G_HERO_TYPE', 222, '12113', '[6��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10791, 'G_HERO_TYPE', 222, '12114', '[6��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10792, 'G_HERO_TYPE', 222, '12115', '[6��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10793, 'G_HERO_TYPE', 223, '12116', '[6��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10794, 'G_HERO_TYPE', 223, '12117', '[6��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10795, 'G_HERO_TYPE', 225, '12118', '[6��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10796, 'G_HERO_TYPE', 223, '12119', '[6��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10797, 'G_HERO_TYPE', 223, '12120', '[6��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10798, 'G_HERO_TYPE', 223, '12121', '[6��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10799, 'G_HERO_TYPE', 223, '12122', '[6��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10800, 'G_HERO_TYPE', 223, '12123', '[6��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10801, 'G_HERO_TYPE', 224, '12124', '[6��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10802, 'G_HERO_TYPE', 224, '12125', '[6��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10803, 'G_HERO_TYPE', 224, '12126', '[6��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10804, 'G_HERO_TYPE', 224, '12127', '[6��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10805, 'G_HERO_TYPE', 224, '12128', '[6��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10806, 'G_HERO_TYPE', 224, '12129', '[6��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10807, 'G_HERO_TYPE', 224, '12130', '[6��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10808, 'G_HERO_TYPE', 225, '12131', '[6��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10809, 'G_HERO_TYPE', 225, '12132', '[6��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10810, 'G_HERO_TYPE', 225, '12133', '[6��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10811, 'G_HERO_TYPE', 225, '12134', '[6��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10812, 'G_HERO_TYPE', 225, '12135', '[6��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10813, 'G_HERO_TYPE', 225, '12136', '[6��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10814, 'G_HERO_TYPE', 225, '12137', '[6��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10815, 'G_HERO_TYPE', 225, '23401', '[6��]��ʦ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10816, 'G_HERO_TYPE', 221, '12202', '[6��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10817, 'G_HERO_TYPE', 221, '12203', '[6��]СţѪ��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10818, 'G_HERO_TYPE', 221, '12204', '[6��]��צ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10819, 'G_HERO_TYPE', 221, '12205', '[6��]�ڰ�а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10820, 'G_HERO_TYPE', 221, '12206', '[6��]��צС��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10821, 'G_HERO_TYPE', 221, '12207', '[6��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10822, 'G_HERO_TYPE', 221, '12208', '[6��]����а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10823, 'G_HERO_TYPE', 222, '12209', '[6��]�ڽ��ų�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10824, 'G_HERO_TYPE', 222, '12210', '[6��]��ɫ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10825, 'G_HERO_TYPE', 222, '12211', '[6��]�����籩+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10826, 'G_HERO_TYPE', 222, '12212', '[6��]�ɵ�ս��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10827, 'G_HERO_TYPE', 222, '12213', '[6��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10828, 'G_HERO_TYPE', 222, '12214', '[6��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10829, 'G_HERO_TYPE', 222, '12215', '[6��]��ħ��ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10830, 'G_HERO_TYPE', 223, '12216', '[6��]Ѫ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10831, 'G_HERO_TYPE', 223, '12217', '[6��]������ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10832, 'G_HERO_TYPE', 225, '12218', '[6��]Ӱ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10833, 'G_HERO_TYPE', 223, '12219', '[6��]������ǿ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10834, 'G_HERO_TYPE', 223, '12220', '[6��]��ħ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10835, 'G_HERO_TYPE', 223, '12221', '[6��]÷�󹤽�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10836, 'G_HERO_TYPE', 223, '12222', '[6��]�ǽ��ػ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10837, 'G_HERO_TYPE', 223, '12223', '[6��]ɽ��֮��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10838, 'G_HERO_TYPE', 224, '12224', '[6��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10839, 'G_HERO_TYPE', 224, '12225', '[6��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10840, 'G_HERO_TYPE', 224, '12226', '[6��]����֪+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10841, 'G_HERO_TYPE', 224, '12227', '[6��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10842, 'G_HERO_TYPE', 224, '12228', '[6��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10843, 'G_HERO_TYPE', 224, '12229', '[6��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10844, 'G_HERO_TYPE', 224, '12230', '[6��]�Բк�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10845, 'G_HERO_TYPE', 225, '12231', '[6��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10846, 'G_HERO_TYPE', 225, '12232', '[6��]ȼ�յļ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10847, 'G_HERO_TYPE', 225, '12233', '[6��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10848, 'G_HERO_TYPE', 225, '12234', '[6��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10849, 'G_HERO_TYPE', 225, '12235', '[6��]Ӣ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10850, 'G_HERO_TYPE', 225, '12236', '[6��]��֮Ů+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10851, 'G_HERO_TYPE', 225, '12237', '[6��]С������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10852, 'G_HERO_TYPE', 225, '23501', '[6��]��ʦ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10853, 'G_HERO_TYPE', 221, '12302', '[6��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10854, 'G_HERO_TYPE', 221, '12303', '[6��]СţѪ��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10855, 'G_HERO_TYPE', 221, '12304', '[6��]��צ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10856, 'G_HERO_TYPE', 221, '12305', '[6��]�ڰ�а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10857, 'G_HERO_TYPE', 221, '12306', '[6��]��צС��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10858, 'G_HERO_TYPE', 221, '12307', '[6��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10859, 'G_HERO_TYPE', 221, '12308', '[6��]����а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10860, 'G_HERO_TYPE', 222, '12309', '[6��]�ڽ��ų�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10861, 'G_HERO_TYPE', 222, '12310', '[6��]��ɫ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10862, 'G_HERO_TYPE', 222, '12311', '[6��]�����籩+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10863, 'G_HERO_TYPE', 222, '12312', '[6��]�ɵ�ս��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10864, 'G_HERO_TYPE', 222, '12313', '[6��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10865, 'G_HERO_TYPE', 222, '12314', '[6��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10866, 'G_HERO_TYPE', 222, '12315', '[6��]��ħ��ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10867, 'G_HERO_TYPE', 223, '12316', '[6��]Ѫ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10868, 'G_HERO_TYPE', 223, '12317', '[6��]������ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10869, 'G_HERO_TYPE', 225, '12318', '[6��]Ӱ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10870, 'G_HERO_TYPE', 223, '12319', '[6��]������ǿ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10871, 'G_HERO_TYPE', 223, '12320', '[6��]��ħ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10872, 'G_HERO_TYPE', 223, '12321', '[6��]÷�󹤽�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10873, 'G_HERO_TYPE', 223, '12322', '[6��]�ǽ��ػ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10874, 'G_HERO_TYPE', 223, '12323', '[6��]ɽ��֮��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10875, 'G_HERO_TYPE', 224, '12324', '[6��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10876, 'G_HERO_TYPE', 224, '12325', '[6��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10877, 'G_HERO_TYPE', 224, '12326', '[6��]����֪+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10878, 'G_HERO_TYPE', 224, '12327', '[6��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10879, 'G_HERO_TYPE', 224, '12328', '[6��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10880, 'G_HERO_TYPE', 224, '12329', '[6��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10881, 'G_HERO_TYPE', 224, '12330', '[6��]�Բк�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10882, 'G_HERO_TYPE', 225, '12331', '[6��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10883, 'G_HERO_TYPE', 225, '12332', '[6��]ȼ�յļ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10884, 'G_HERO_TYPE', 225, '12333', '[6��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10885, 'G_HERO_TYPE', 225, '12334', '[6��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10886, 'G_HERO_TYPE', 225, '12335', '[6��]Ӣ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10887, 'G_HERO_TYPE', 225, '12336', '[6��]��֮Ů+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10888, 'G_HERO_TYPE', 225, '12337', '[6��]С������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10889, 'G_HERO_TYPE', 225, '23601', '[6��]��ʦ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10890, 'G_HERO_TYPE', 221, '12402', '[6��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10891, 'G_HERO_TYPE', 221, '12403', '[6��]СţѪ��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10892, 'G_HERO_TYPE', 221, '12404', '[6��]��צ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10893, 'G_HERO_TYPE', 221, '12405', '[6��]�ڰ�а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10894, 'G_HERO_TYPE', 221, '12406', '[6��]��צС��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10895, 'G_HERO_TYPE', 221, '12407', '[6��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10896, 'G_HERO_TYPE', 221, '12408', '[6��]����а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10897, 'G_HERO_TYPE', 222, '12409', '[6��]�ڽ��ų�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10898, 'G_HERO_TYPE', 222, '12410', '[6��]��ɫ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10899, 'G_HERO_TYPE', 222, '12411', '[6��]�����籩+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10900, 'G_HERO_TYPE', 222, '12412', '[6��]�ɵ�ս��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10901, 'G_HERO_TYPE', 222, '12413', '[6��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10902, 'G_HERO_TYPE', 222, '12414', '[6��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10903, 'G_HERO_TYPE', 222, '12415', '[6��]��ħ��ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10904, 'G_HERO_TYPE', 223, '12416', '[6��]Ѫ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10905, 'G_HERO_TYPE', 223, '12417', '[6��]������ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10906, 'G_HERO_TYPE', 225, '12418', '[6��]Ӱ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10907, 'G_HERO_TYPE', 223, '12419', '[6��]������ǿ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10908, 'G_HERO_TYPE', 223, '12420', '[6��]��ħ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10909, 'G_HERO_TYPE', 223, '12421', '[6��]÷�󹤽�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10910, 'G_HERO_TYPE', 223, '12422', '[6��]�ǽ��ػ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10911, 'G_HERO_TYPE', 223, '12423', '[6��]ɽ��֮��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10912, 'G_HERO_TYPE', 224, '12424', '[6��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10913, 'G_HERO_TYPE', 224, '12425', '[6��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10914, 'G_HERO_TYPE', 224, '12426', '[6��]����֪+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10915, 'G_HERO_TYPE', 224, '12427', '[6��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10916, 'G_HERO_TYPE', 224, '12428', '[6��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10917, 'G_HERO_TYPE', 224, '12429', '[6��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10918, 'G_HERO_TYPE', 224, '12430', '[6��]�Բк�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10919, 'G_HERO_TYPE', 225, '12431', '[6��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10920, 'G_HERO_TYPE', 225, '12432', '[6��]ȼ�յļ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10921, 'G_HERO_TYPE', 225, '12433', '[6��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10922, 'G_HERO_TYPE', 225, '12434', '[6��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10923, 'G_HERO_TYPE', 225, '12435', '[6��]Ӣ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10924, 'G_HERO_TYPE', 225, '12436', '[6��]��֮Ů+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10925, 'G_HERO_TYPE', 225, '12437', '[6��]С������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10926, 'G_HERO_TYPE', 225, '23701', '[6��]��ʦ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10927, 'G_HERO_TYPE', 221, '12502', '[6��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10928, 'G_HERO_TYPE', 221, '12503', '[6��]СţѪ��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10929, 'G_HERO_TYPE', 221, '12504', '[6��]��צ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10930, 'G_HERO_TYPE', 221, '12505', '[6��]�ڰ�а��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10931, 'G_HERO_TYPE', 221, '12506', '[6��]��צС��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10932, 'G_HERO_TYPE', 221, '12507', '[6��]Ѫ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10933, 'G_HERO_TYPE', 221, '12508', '[6��]����а��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10934, 'G_HERO_TYPE', 222, '12509', '[6��]�ڽ��ų�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10935, 'G_HERO_TYPE', 222, '12510', '[6��]��ɫ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10936, 'G_HERO_TYPE', 222, '12511', '[6��]�����籩+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10937, 'G_HERO_TYPE', 222, '12512', '[6��]�ɵ�ս��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10938, 'G_HERO_TYPE', 222, '12513', '[6��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10939, 'G_HERO_TYPE', 222, '12514', '[6��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10940, 'G_HERO_TYPE', 222, '12515', '[6��]��ħ��ʦ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10941, 'G_HERO_TYPE', 223, '12516', '[6��]Ѫ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10942, 'G_HERO_TYPE', 223, '12517', '[6��]������ʦ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10943, 'G_HERO_TYPE', 225, '12518', '[6��]Ӱ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10944, 'G_HERO_TYPE', 223, '12519', '[6��]������ǿ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10945, 'G_HERO_TYPE', 223, '12520', '[6��]��ħ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10946, 'G_HERO_TYPE', 223, '12521', '[6��]÷�󹤽�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10947, 'G_HERO_TYPE', 223, '12522', '[6��]�ǽ��ػ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10948, 'G_HERO_TYPE', 223, '12523', '[6��]ɽ��֮��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10949, 'G_HERO_TYPE', 224, '12524', '[6��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10950, 'G_HERO_TYPE', 224, '12525', '[6��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10951, 'G_HERO_TYPE', 224, '12526', '[6��]����֪+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10952, 'G_HERO_TYPE', 224, '12527', '[6��]Ѫ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10953, 'G_HERO_TYPE', 224, '12528', '[6��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10954, 'G_HERO_TYPE', 224, '12529', '[6��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10955, 'G_HERO_TYPE', 224, '12530', '[6��]�Բк�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10956, 'G_HERO_TYPE', 225, '12531', '[6��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10957, 'G_HERO_TYPE', 225, '12532', '[6��]ȼ�յļ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10958, 'G_HERO_TYPE', 225, '12533', '[6��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10959, 'G_HERO_TYPE', 225, '12534', '[6��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10960, 'G_HERO_TYPE', 225, '12535', '[6��]Ӣ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10961, 'G_HERO_TYPE', 225, '12536', '[6��]��֮Ů+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10962, 'G_HERO_TYPE', 225, '12537', '[6��]С������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10963, 'G_HERO_TYPE', 225, '23801', '[6��]��ʦ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10964, 'G_HERO_TYPE', 221, '12602', '[6��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10965, 'G_HERO_TYPE', 221, '12603', '[6��]СţѪ��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10966, 'G_HERO_TYPE', 221, '12604', '[6��]��צ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10967, 'G_HERO_TYPE', 221, '12605', '[6��]�ڰ�а��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10968, 'G_HERO_TYPE', 221, '12606', '[6��]��צС��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10969, 'G_HERO_TYPE', 221, '12607', '[6��]Ѫ������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10970, 'G_HERO_TYPE', 221, '12608', '[6��]����а��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10971, 'G_HERO_TYPE', 222, '12609', '[6��]�ڽ��ų�+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10972, 'G_HERO_TYPE', 222, '12610', '[6��]��ɫ���+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10973, 'G_HERO_TYPE', 222, '12611', '[6��]�����籩+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10974, 'G_HERO_TYPE', 222, '12612', '[6��]�ɵ�ս��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10975, 'G_HERO_TYPE', 222, '12613', '[6��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10976, 'G_HERO_TYPE', 222, '12614', '[6��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10977, 'G_HERO_TYPE', 222, '12615', '[6��]��ħ��ʦ+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10978, 'G_HERO_TYPE', 223, '12616', '[6��]Ѫ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10979, 'G_HERO_TYPE', 223, '12617', '[6��]������ʦ+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10980, 'G_HERO_TYPE', 225, '12618', '[6��]Ӱ������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10981, 'G_HERO_TYPE', 223, '12619', '[6��]������ǿ+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10982, 'G_HERO_TYPE', 223, '12620', '[6��]��ħ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10983, 'G_HERO_TYPE', 223, '12621', '[6��]÷�󹤽�+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10984, 'G_HERO_TYPE', 223, '12622', '[6��]�ǽ��ػ���+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10985, 'G_HERO_TYPE', 223, '12623', '[6��]ɽ��֮��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10986, 'G_HERO_TYPE', 224, '12624', '[6��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10987, 'G_HERO_TYPE', 224, '12625', '[6��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10988, 'G_HERO_TYPE', 224, '12626', '[6��]����֪+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10989, 'G_HERO_TYPE', 224, '12627', '[6��]Ѫ������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10990, 'G_HERO_TYPE', 224, '12628', '[6��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10991, 'G_HERO_TYPE', 224, '12629', '[6��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10992, 'G_HERO_TYPE', 224, '12630', '[6��]�Բк�+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10993, 'G_HERO_TYPE', 225, '12631', '[6��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10994, 'G_HERO_TYPE', 225, '12632', '[6��]ȼ�յļ���+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10995, 'G_HERO_TYPE', 225, '12633', '[6��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10996, 'G_HERO_TYPE', 225, '12634', '[6��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10997, 'G_HERO_TYPE', 225, '12635', '[6��]Ӣ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10998, 'G_HERO_TYPE', 225, '12636', '[6��]��֮Ů+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (10999, 'G_HERO_TYPE', 225, '12637', '[6��]С������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11000, 'G_HERO_TYPE', 225, '23901', '[7��]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11001, 'G_HERO_TYPE', 221, '12702', '[7��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11002, 'G_HERO_TYPE', 221, '12703', '[7��]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11003, 'G_HERO_TYPE', 221, '12704', '[7��]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11004, 'G_HERO_TYPE', 221, '12705', '[7��]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11005, 'G_HERO_TYPE', 221, '12706', '[7��]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11006, 'G_HERO_TYPE', 221, '12707', '[7��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11007, 'G_HERO_TYPE', 221, '12708', '[7��]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11008, 'G_HERO_TYPE', 222, '12709', '[7��]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11009, 'G_HERO_TYPE', 222, '12710', '[7��]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11010, 'G_HERO_TYPE', 222, '12711', '[7��]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11011, 'G_HERO_TYPE', 222, '12712', '[7��]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11012, 'G_HERO_TYPE', 222, '12713', '[7��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11013, 'G_HERO_TYPE', 222, '12714', '[7��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11014, 'G_HERO_TYPE', 222, '12715', '[7��]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11015, 'G_HERO_TYPE', 223, '12716', '[7��]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11016, 'G_HERO_TYPE', 223, '12717', '[7��]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11017, 'G_HERO_TYPE', 225, '12718', '[7��]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11018, 'G_HERO_TYPE', 223, '12719', '[7��]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11019, 'G_HERO_TYPE', 223, '12720', '[7��]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11020, 'G_HERO_TYPE', 223, '12721', '[7��]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11021, 'G_HERO_TYPE', 223, '12722', '[7��]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11022, 'G_HERO_TYPE', 223, '12723', '[7��]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11023, 'G_HERO_TYPE', 224, '12724', '[7��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11024, 'G_HERO_TYPE', 224, '12725', '[7��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11025, 'G_HERO_TYPE', 224, '12726', '[7��]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11026, 'G_HERO_TYPE', 224, '12727', '[7��]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11027, 'G_HERO_TYPE', 224, '12728', '[7��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11028, 'G_HERO_TYPE', 224, '12729', '[7��]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11029, 'G_HERO_TYPE', 224, '12730', '[7��]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11030, 'G_HERO_TYPE', 225, '12731', '[7��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11031, 'G_HERO_TYPE', 225, '12732', '[7��]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11032, 'G_HERO_TYPE', 225, '12733', '[7��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11033, 'G_HERO_TYPE', 225, '12734', '[7��]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11034, 'G_HERO_TYPE', 225, '12735', '[7��]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11035, 'G_HERO_TYPE', 225, '12736', '[7��]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11036, 'G_HERO_TYPE', 225, '12737', '[7��]С������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11037, 'G_HERO_TYPE', 225, '24001', '[7��]��ʦ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11038, 'G_HERO_TYPE', 221, '12802', '[7��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11039, 'G_HERO_TYPE', 221, '12803', '[7��]СţѪ��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11040, 'G_HERO_TYPE', 221, '12804', '[7��]��צ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11041, 'G_HERO_TYPE', 221, '12805', '[7��]�ڰ�а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11042, 'G_HERO_TYPE', 221, '12806', '[7��]��צС��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11043, 'G_HERO_TYPE', 221, '12807', '[7��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11044, 'G_HERO_TYPE', 221, '12808', '[7��]����а��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11045, 'G_HERO_TYPE', 222, '12809', '[7��]�ڽ��ų�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11046, 'G_HERO_TYPE', 222, '12810', '[7��]��ɫ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11047, 'G_HERO_TYPE', 222, '12811', '[7��]�����籩+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11048, 'G_HERO_TYPE', 222, '12812', '[7��]�ɵ�ս��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11049, 'G_HERO_TYPE', 222, '12813', '[7��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11050, 'G_HERO_TYPE', 222, '12814', '[7��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11051, 'G_HERO_TYPE', 222, '12815', '[7��]��ħ��ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11052, 'G_HERO_TYPE', 223, '12816', '[7��]Ѫ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11053, 'G_HERO_TYPE', 223, '12817', '[7��]������ʦ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11054, 'G_HERO_TYPE', 225, '12818', '[7��]Ӱ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11055, 'G_HERO_TYPE', 223, '12819', '[7��]������ǿ+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11056, 'G_HERO_TYPE', 223, '12820', '[7��]��ħ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11057, 'G_HERO_TYPE', 223, '12821', '[7��]÷�󹤽�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11058, 'G_HERO_TYPE', 223, '12822', '[7��]�ǽ��ػ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11059, 'G_HERO_TYPE', 223, '12823', '[7��]ɽ��֮��+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11060, 'G_HERO_TYPE', 224, '12824', '[7��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11061, 'G_HERO_TYPE', 224, '12825', '[7��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11062, 'G_HERO_TYPE', 224, '12826', '[7��]����֪+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11063, 'G_HERO_TYPE', 224, '12827', '[7��]Ѫ������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11064, 'G_HERO_TYPE', 224, '12828', '[7��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11065, 'G_HERO_TYPE', 224, '12829', '[7��]��������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11066, 'G_HERO_TYPE', 224, '12830', '[7��]�Բк�+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11067, 'G_HERO_TYPE', 225, '12831', '[7��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11068, 'G_HERO_TYPE', 225, '12832', '[7��]ȼ�յļ���+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11069, 'G_HERO_TYPE', 225, '12833', '[7��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11070, 'G_HERO_TYPE', 225, '12834', '[7��]������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11071, 'G_HERO_TYPE', 225, '12835', '[7��]Ӣ����+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11072, 'G_HERO_TYPE', 225, '12836', '[7��]��֮Ů+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11073, 'G_HERO_TYPE', 225, '12837', '[7��]С������+1', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11074, 'G_HERO_TYPE', 225, '24101', '[7��]��ʦ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11075, 'G_HERO_TYPE', 221, '12902', '[7��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11076, 'G_HERO_TYPE', 221, '12903', '[7��]СţѪ��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11077, 'G_HERO_TYPE', 221, '12904', '[7��]��צ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11078, 'G_HERO_TYPE', 221, '12905', '[7��]�ڰ�а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11079, 'G_HERO_TYPE', 221, '12906', '[7��]��צС��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11080, 'G_HERO_TYPE', 221, '12907', '[7��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11081, 'G_HERO_TYPE', 221, '12908', '[7��]����а��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11082, 'G_HERO_TYPE', 222, '12909', '[7��]�ڽ��ų�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11083, 'G_HERO_TYPE', 222, '12910', '[7��]��ɫ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11084, 'G_HERO_TYPE', 222, '12911', '[7��]�����籩+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11085, 'G_HERO_TYPE', 222, '12912', '[7��]�ɵ�ս��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11086, 'G_HERO_TYPE', 222, '12913', '[7��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11087, 'G_HERO_TYPE', 222, '12914', '[7��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11088, 'G_HERO_TYPE', 222, '12915', '[7��]��ħ��ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11089, 'G_HERO_TYPE', 223, '12916', '[7��]Ѫ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11090, 'G_HERO_TYPE', 223, '12917', '[7��]������ʦ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11091, 'G_HERO_TYPE', 225, '12918', '[7��]Ӱ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11092, 'G_HERO_TYPE', 223, '12919', '[7��]������ǿ+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11093, 'G_HERO_TYPE', 223, '12920', '[7��]��ħ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11094, 'G_HERO_TYPE', 223, '12921', '[7��]÷�󹤽�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11095, 'G_HERO_TYPE', 223, '12922', '[7��]�ǽ��ػ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11096, 'G_HERO_TYPE', 223, '12923', '[7��]ɽ��֮��+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11097, 'G_HERO_TYPE', 224, '12924', '[7��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11098, 'G_HERO_TYPE', 224, '12925', '[7��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11099, 'G_HERO_TYPE', 224, '12926', '[7��]����֪+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11100, 'G_HERO_TYPE', 224, '12927', '[7��]Ѫ������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11101, 'G_HERO_TYPE', 224, '12928', '[7��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11102, 'G_HERO_TYPE', 224, '12929', '[7��]��������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11103, 'G_HERO_TYPE', 224, '12930', '[7��]�Բк�+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11104, 'G_HERO_TYPE', 225, '12931', '[7��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11105, 'G_HERO_TYPE', 225, '12932', '[7��]ȼ�յļ���+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11106, 'G_HERO_TYPE', 225, '12933', '[7��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11107, 'G_HERO_TYPE', 225, '12934', '[7��]������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11108, 'G_HERO_TYPE', 225, '12935', '[7��]Ӣ����+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11109, 'G_HERO_TYPE', 225, '12936', '[7��]��֮Ů+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11110, 'G_HERO_TYPE', 225, '12937', '[7��]С������+2', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11111, 'G_HERO_TYPE', 225, '24201', '[7��]��ʦ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11112, 'G_HERO_TYPE', 221, '13002', '[7��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11113, 'G_HERO_TYPE', 221, '13003', '[7��]СţѪ��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11114, 'G_HERO_TYPE', 221, '13004', '[7��]��צ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11115, 'G_HERO_TYPE', 221, '13005', '[7��]�ڰ�а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11116, 'G_HERO_TYPE', 221, '13006', '[7��]��צС��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11117, 'G_HERO_TYPE', 221, '13007', '[7��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11118, 'G_HERO_TYPE', 221, '13008', '[7��]����а��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11119, 'G_HERO_TYPE', 222, '13009', '[7��]�ڽ��ų�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11120, 'G_HERO_TYPE', 222, '13010', '[7��]��ɫ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11121, 'G_HERO_TYPE', 222, '13011', '[7��]�����籩+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11122, 'G_HERO_TYPE', 222, '13012', '[7��]�ɵ�ս��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11123, 'G_HERO_TYPE', 222, '13013', '[7��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11124, 'G_HERO_TYPE', 222, '13014', '[7��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11125, 'G_HERO_TYPE', 222, '13015', '[7��]��ħ��ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11126, 'G_HERO_TYPE', 223, '13016', '[7��]Ѫ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11127, 'G_HERO_TYPE', 223, '13017', '[7��]������ʦ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11128, 'G_HERO_TYPE', 225, '13018', '[7��]Ӱ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11129, 'G_HERO_TYPE', 223, '13019', '[7��]������ǿ+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11130, 'G_HERO_TYPE', 223, '13020', '[7��]��ħ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11131, 'G_HERO_TYPE', 223, '13021', '[7��]÷�󹤽�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11132, 'G_HERO_TYPE', 223, '13022', '[7��]�ǽ��ػ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11133, 'G_HERO_TYPE', 223, '13023', '[7��]ɽ��֮��+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11134, 'G_HERO_TYPE', 224, '13024', '[7��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11135, 'G_HERO_TYPE', 224, '13025', '[7��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11136, 'G_HERO_TYPE', 224, '13026', '[7��]����֪+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11137, 'G_HERO_TYPE', 224, '13027', '[7��]Ѫ������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11138, 'G_HERO_TYPE', 224, '13028', '[7��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11139, 'G_HERO_TYPE', 224, '13029', '[7��]��������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11140, 'G_HERO_TYPE', 224, '13030', '[7��]�Բк�+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11141, 'G_HERO_TYPE', 225, '13031', '[7��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11142, 'G_HERO_TYPE', 225, '13032', '[7��]ȼ�յļ���+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11143, 'G_HERO_TYPE', 225, '13033', '[7��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11144, 'G_HERO_TYPE', 225, '13034', '[7��]������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11145, 'G_HERO_TYPE', 225, '13035', '[7��]Ӣ����+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11146, 'G_HERO_TYPE', 225, '13036', '[7��]��֮Ů+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11147, 'G_HERO_TYPE', 225, '13037', '[7��]С������+3', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11148, 'G_HERO_TYPE', 225, '24301', '[7��]��ʦ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11149, 'G_HERO_TYPE', 221, '13102', '[7��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11150, 'G_HERO_TYPE', 221, '13103', '[7��]СţѪ��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11151, 'G_HERO_TYPE', 221, '13104', '[7��]��צ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11152, 'G_HERO_TYPE', 221, '13105', '[7��]�ڰ�а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11153, 'G_HERO_TYPE', 221, '13106', '[7��]��צС��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11154, 'G_HERO_TYPE', 221, '13107', '[7��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11155, 'G_HERO_TYPE', 221, '13108', '[7��]����а��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11156, 'G_HERO_TYPE', 222, '13109', '[7��]�ڽ��ų�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11157, 'G_HERO_TYPE', 222, '13110', '[7��]��ɫ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11158, 'G_HERO_TYPE', 222, '13111', '[7��]�����籩+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11159, 'G_HERO_TYPE', 222, '13112', '[7��]�ɵ�ս��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11160, 'G_HERO_TYPE', 222, '13113', '[7��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11161, 'G_HERO_TYPE', 222, '13114', '[7��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11162, 'G_HERO_TYPE', 222, '13115', '[7��]��ħ��ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11163, 'G_HERO_TYPE', 223, '13116', '[7��]Ѫ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11164, 'G_HERO_TYPE', 223, '13117', '[7��]������ʦ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11165, 'G_HERO_TYPE', 225, '13118', '[7��]Ӱ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11166, 'G_HERO_TYPE', 223, '13119', '[7��]������ǿ+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11167, 'G_HERO_TYPE', 223, '13120', '[7��]��ħ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11168, 'G_HERO_TYPE', 223, '13121', '[7��]÷�󹤽�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11169, 'G_HERO_TYPE', 223, '13122', '[7��]�ǽ��ػ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11170, 'G_HERO_TYPE', 223, '13123', '[7��]ɽ��֮��+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11171, 'G_HERO_TYPE', 224, '13124', '[7��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11172, 'G_HERO_TYPE', 224, '13125', '[7��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11173, 'G_HERO_TYPE', 224, '13126', '[7��]����֪+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11174, 'G_HERO_TYPE', 224, '13127', '[7��]Ѫ������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11175, 'G_HERO_TYPE', 224, '13128', '[7��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11176, 'G_HERO_TYPE', 224, '13129', '[7��]��������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11177, 'G_HERO_TYPE', 224, '13130', '[7��]�Բк�+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11178, 'G_HERO_TYPE', 225, '13131', '[7��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11179, 'G_HERO_TYPE', 225, '13132', '[7��]ȼ�յļ���+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11180, 'G_HERO_TYPE', 225, '13133', '[7��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11181, 'G_HERO_TYPE', 225, '13134', '[7��]������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11182, 'G_HERO_TYPE', 225, '13135', '[7��]Ӣ����+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11183, 'G_HERO_TYPE', 225, '13136', '[7��]��֮Ů+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11184, 'G_HERO_TYPE', 225, '13137', '[7��]С������+4', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11185, 'G_HERO_TYPE', 225, '24401', '[7��]��ʦ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11186, 'G_HERO_TYPE', 221, '13202', '[7��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11187, 'G_HERO_TYPE', 221, '13203', '[7��]СţѪ��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11188, 'G_HERO_TYPE', 221, '13204', '[7��]��צ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11189, 'G_HERO_TYPE', 221, '13205', '[7��]�ڰ�а��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11190, 'G_HERO_TYPE', 221, '13206', '[7��]��צС��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11191, 'G_HERO_TYPE', 221, '13207', '[7��]Ѫ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11192, 'G_HERO_TYPE', 221, '13208', '[7��]����а��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11193, 'G_HERO_TYPE', 222, '13209', '[7��]�ڽ��ų�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11194, 'G_HERO_TYPE', 222, '13210', '[7��]��ɫ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11195, 'G_HERO_TYPE', 222, '13211', '[7��]�����籩+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11196, 'G_HERO_TYPE', 222, '13212', '[7��]�ɵ�ս��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11197, 'G_HERO_TYPE', 222, '13213', '[7��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11198, 'G_HERO_TYPE', 222, '13214', '[7��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11199, 'G_HERO_TYPE', 222, '13215', '[7��]��ħ��ʦ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11200, 'G_HERO_TYPE', 223, '13216', '[7��]Ѫ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11201, 'G_HERO_TYPE', 223, '13217', '[7��]������ʦ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11202, 'G_HERO_TYPE', 225, '13218', '[7��]Ӱ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11203, 'G_HERO_TYPE', 223, '13219', '[7��]������ǿ+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11204, 'G_HERO_TYPE', 223, '13220', '[7��]��ħ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11205, 'G_HERO_TYPE', 223, '13221', '[7��]÷�󹤽�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11206, 'G_HERO_TYPE', 223, '13222', '[7��]�ǽ��ػ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11207, 'G_HERO_TYPE', 223, '13223', '[7��]ɽ��֮��+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11208, 'G_HERO_TYPE', 224, '13224', '[7��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11209, 'G_HERO_TYPE', 224, '13225', '[7��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11210, 'G_HERO_TYPE', 224, '13226', '[7��]����֪+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11211, 'G_HERO_TYPE', 224, '13227', '[7��]Ѫ������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11212, 'G_HERO_TYPE', 224, '13228', '[7��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11213, 'G_HERO_TYPE', 224, '13229', '[7��]��������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11214, 'G_HERO_TYPE', 224, '13230', '[7��]�Բк�+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11215, 'G_HERO_TYPE', 225, '13231', '[7��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11216, 'G_HERO_TYPE', 225, '13232', '[7��]ȼ�յļ���+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11217, 'G_HERO_TYPE', 225, '13233', '[7��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11218, 'G_HERO_TYPE', 225, '13234', '[7��]������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11219, 'G_HERO_TYPE', 225, '13235', '[7��]Ӣ����+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11220, 'G_HERO_TYPE', 225, '13236', '[7��]��֮Ů+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11221, 'G_HERO_TYPE', 225, '13237', '[7��]С������+5', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11222, 'G_HERO_TYPE', 225, '24501', '[7��]��ʦ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11223, 'G_HERO_TYPE', 221, '13302', '[7��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11224, 'G_HERO_TYPE', 221, '13303', '[7��]СţѪ��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11225, 'G_HERO_TYPE', 221, '13304', '[7��]��צ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11226, 'G_HERO_TYPE', 221, '13305', '[7��]�ڰ�а��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11227, 'G_HERO_TYPE', 221, '13306', '[7��]��צС��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11228, 'G_HERO_TYPE', 221, '13307', '[7��]Ѫ������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11229, 'G_HERO_TYPE', 221, '13308', '[7��]����а��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11230, 'G_HERO_TYPE', 222, '13309', '[7��]�ڽ��ų�+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11231, 'G_HERO_TYPE', 222, '13310', '[7��]��ɫ���+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11232, 'G_HERO_TYPE', 222, '13311', '[7��]�����籩+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11233, 'G_HERO_TYPE', 222, '13312', '[7��]�ɵ�ս��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11234, 'G_HERO_TYPE', 222, '13313', '[7��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11235, 'G_HERO_TYPE', 222, '13314', '[7��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11236, 'G_HERO_TYPE', 222, '13315', '[7��]��ħ��ʦ+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11237, 'G_HERO_TYPE', 223, '13316', '[7��]Ѫ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11238, 'G_HERO_TYPE', 223, '13317', '[7��]������ʦ+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11239, 'G_HERO_TYPE', 225, '13318', '[7��]Ӱ������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11240, 'G_HERO_TYPE', 223, '13319', '[7��]������ǿ+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11241, 'G_HERO_TYPE', 223, '13320', '[7��]��ħ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11242, 'G_HERO_TYPE', 223, '13321', '[7��]÷�󹤽�+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11243, 'G_HERO_TYPE', 223, '13322', '[7��]�ǽ��ػ���+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11244, 'G_HERO_TYPE', 223, '13323', '[7��]ɽ��֮��+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11245, 'G_HERO_TYPE', 224, '13324', '[7��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11246, 'G_HERO_TYPE', 224, '13325', '[7��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11247, 'G_HERO_TYPE', 224, '13326', '[7��]����֪+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11248, 'G_HERO_TYPE', 224, '13327', '[7��]Ѫ������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11249, 'G_HERO_TYPE', 224, '13328', '[7��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11250, 'G_HERO_TYPE', 224, '13329', '[7��]��������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11251, 'G_HERO_TYPE', 224, '13330', '[7��]�Բк�+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11252, 'G_HERO_TYPE', 225, '13331', '[7��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11253, 'G_HERO_TYPE', 225, '13332', '[7��]ȼ�յļ���+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11254, 'G_HERO_TYPE', 225, '13333', '[7��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11255, 'G_HERO_TYPE', 225, '13334', '[7��]������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11256, 'G_HERO_TYPE', 225, '13335', '[7��]Ӣ����+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11257, 'G_HERO_TYPE', 225, '13336', '[7��]��֮Ů+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11258, 'G_HERO_TYPE', 225, '13337', '[7��]С������+6', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11259, 'G_HERO_TYPE', 225, '24601', '[7��]��ʦ����+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11260, 'G_HERO_TYPE', 221, '13402', '[7��]��������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11261, 'G_HERO_TYPE', 221, '13403', '[7��]СţѪ��+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11262, 'G_HERO_TYPE', 221, '13404', '[7��]��צ����+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11263, 'G_HERO_TYPE', 221, '13405', '[7��]�ڰ�а��+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11264, 'G_HERO_TYPE', 221, '13406', '[7��]��צС��+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11265, 'G_HERO_TYPE', 221, '13407', '[7��]Ѫ������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11266, 'G_HERO_TYPE', 221, '13408', '[7��]����а��+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11267, 'G_HERO_TYPE', 222, '13409', '[7��]�ڽ��ų�+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11268, 'G_HERO_TYPE', 222, '13410', '[7��]��ɫ���+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11269, 'G_HERO_TYPE', 222, '13411', '[7��]�����籩+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11270, 'G_HERO_TYPE', 222, '13412', '[7��]�ɵ�ս��+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11271, 'G_HERO_TYPE', 222, '13413', '[7��]������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11272, 'G_HERO_TYPE', 222, '13414', '[7��]��������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11273, 'G_HERO_TYPE', 222, '13415', '[7��]��ħ��ʦ+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11274, 'G_HERO_TYPE', 223, '13416', '[7��]Ѫ����+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11275, 'G_HERO_TYPE', 223, '13417', '[7��]������ʦ+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11276, 'G_HERO_TYPE', 225, '13418', '[7��]Ӱ������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11277, 'G_HERO_TYPE', 223, '13419', '[7��]������ǿ+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11278, 'G_HERO_TYPE', 223, '13420', '[7��]��ħ����+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11279, 'G_HERO_TYPE', 223, '13421', '[7��]÷�󹤽�+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11280, 'G_HERO_TYPE', 223, '13422', '[7��]�ǽ��ػ���+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11281, 'G_HERO_TYPE', 223, '13423', '[7��]ɽ��֮��+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11282, 'G_HERO_TYPE', 224, '13424', '[7��]��������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11283, 'G_HERO_TYPE', 224, '13425', '[7��]������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11284, 'G_HERO_TYPE', 224, '13426', '[7��]����֪+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11285, 'G_HERO_TYPE', 224, '13427', '[7��]Ѫ������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11286, 'G_HERO_TYPE', 224, '13428', '[7��]��������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11287, 'G_HERO_TYPE', 224, '13429', '[7��]��������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11288, 'G_HERO_TYPE', 224, '13430', '[7��]�Բк�+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11289, 'G_HERO_TYPE', 225, '13431', '[7��]������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11290, 'G_HERO_TYPE', 225, '13432', '[7��]ȼ�յļ���+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11291, 'G_HERO_TYPE', 225, '13433', '[7��]������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11292, 'G_HERO_TYPE', 225, '13434', '[7��]������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11293, 'G_HERO_TYPE', 225, '13435', '[7��]Ӣ����+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11294, 'G_HERO_TYPE', 225, '13436', '[7��]��֮Ů+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11295, 'G_HERO_TYPE', 225, '13437', '[7��]С������+7', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11296, 'G_HERO_TYPE', 225, '24701', '[�ռ�]��ʦ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11297, 'G_HERO_TYPE', 221, '13502', '[�ռ�]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11298, 'G_HERO_TYPE', 221, '13503', '[�ռ�]СţѪ��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11299, 'G_HERO_TYPE', 221, '13504', '[�ռ�]��צ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11300, 'G_HERO_TYPE', 221, '13505', '[�ռ�]�ڰ�а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11301, 'G_HERO_TYPE', 221, '13506', '[�ռ�]��צС��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11302, 'G_HERO_TYPE', 221, '13507', '[�ռ�]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11303, 'G_HERO_TYPE', 221, '13508', '[�ռ�]����а��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11304, 'G_HERO_TYPE', 222, '13509', '[�ռ�]�ڽ��ų�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11305, 'G_HERO_TYPE', 222, '13510', '[�ռ�]��ɫ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11306, 'G_HERO_TYPE', 222, '13511', '[�ռ�]�����籩', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11307, 'G_HERO_TYPE', 222, '13512', '[�ռ�]�ɵ�ս��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11308, 'G_HERO_TYPE', 222, '13513', '[�ռ�]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11309, 'G_HERO_TYPE', 222, '13514', '[�ռ�]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11310, 'G_HERO_TYPE', 222, '13515', '[�ռ�]��ħ��ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11311, 'G_HERO_TYPE', 223, '13516', '[�ռ�]Ѫ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11312, 'G_HERO_TYPE', 223, '13517', '[�ռ�]������ʦ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11313, 'G_HERO_TYPE', 225, '13518', '[�ռ�]Ӱ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11314, 'G_HERO_TYPE', 223, '13519', '[�ռ�]������ǿ', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11315, 'G_HERO_TYPE', 223, '13520', '[�ռ�]��ħ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11316, 'G_HERO_TYPE', 223, '13521', '[�ռ�]÷�󹤽�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11317, 'G_HERO_TYPE', 223, '13522', '[�ռ�]�ǽ��ػ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11318, 'G_HERO_TYPE', 223, '13523', '[�ռ�]ɽ��֮��', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11319, 'G_HERO_TYPE', 224, '13524', '[�ռ�]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11320, 'G_HERO_TYPE', 224, '13525', '[�ռ�]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11321, 'G_HERO_TYPE', 224, '13526', '[�ռ�]����֪', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11322, 'G_HERO_TYPE', 224, '13527', '[�ռ�]Ѫ������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11323, 'G_HERO_TYPE', 224, '13528', '[�ռ�]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11324, 'G_HERO_TYPE', 224, '13529', '[�ռ�]��������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11325, 'G_HERO_TYPE', 224, '13530', '[�ռ�]�Բк�', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11326, 'G_HERO_TYPE', 225, '13531', '[�ռ�]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11327, 'G_HERO_TYPE', 225, '13532', '[�ռ�]ȼ�յļ���', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11328, 'G_HERO_TYPE', 225, '13533', '[�ռ�]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11329, 'G_HERO_TYPE', 225, '13534', '[�ռ�]������', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11330, 'G_HERO_TYPE', 225, '13535', '[�ռ�]Ӣ����', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11331, 'G_HERO_TYPE', 225, '13536', '[�ռ�]��֮Ů', null, '0', '1', null);

insert into sys_code (CODE_ID, CODE_TYPE, PARENT_CODE_ID, CODE_VALUE, CODE_LABEL, ATTR1, DISABLE, DISPLAY, DESCRIPTION)
values (11332, 'G_HERO_TYPE', 225, '13537', '[�ռ�]С������', null, '0', '1', null);

--SYS_GM_MENU

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('0', 1, -1, 'root', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('5', null, 0, '�˻�����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('6', null, 0, '���', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('7', null, 0, '��̨��¼��ѯ', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('4', null, 0, '�����ݹ���', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1', null, 0, '��Ӫ����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('2', null, 0, 'GM����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('3', 59, 0, '��������', '/gmTools/announcement', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('15', null, 1, '��ģ���������', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('16', 61, 1, '������������', '/gmTools/supplyAward/supplyAward', '0', null);

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('17', null, 1, '�ڲ��˻�����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('14', null, 1, '��Դ��������', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('11', null, 1, '��¼����������', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('12', null, 1, '��ֵ����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('13', null, 1, '��������', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('22', null, 2, '�˺Ų�ѯ', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('21', 60, 2, '��Ŵ���', '/gmTools/accountIntervene', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('53', null, 5, 'ְλ����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('54', null, 5, '�ҵ��˻�', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('51', null, 5, '�˻�����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('52', null, 5, '�˻�����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('62', null, 6, '��¼��ϸ�鿴', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('61', 62, 6, '����б�', '/gmApprove/supplyApprove', '0', null);

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('114', 5, 11, '���¼����', '/manageTools/loginData/dailyLoginAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('115', null, 11, '���߷�ֵ', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('116', 8, 11, '��Ծ�û���', '/manageTools/loginData/activeUser', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('111', 2, 11, '�û�ת����', '/manageTools/loginData/userTranslate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('112', 3, 11, '��������', '/manageTools/loginData/saveData', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('113', 4, 11, '�ȼ��ֲ�', '/manageTools/loginData/playerLevel', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('125', 14, 12, '��ֵ�ʼ�APUֵ', '/manageTools/rechargeData/prepayAndAPRU', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('126', 15, 12, '��ֵ��¼', '/manageTools/rechargeData/chargeRecords', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('127', 42, 12, '��Ȩ�������', '/manageTools/rechargeData/playerPrivilege', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('124', 13, 12, '��ֵ�����ֲ�', '/manageTools/rechargeData/firstlyChargeAndAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('121', null, 12, '��ֵ���ֲ�', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('122', 11, 12, '�׳�ȼ��ֲ�', '/manageTools/rechargeData/firstlyChargeAndLevel', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('123', 12, 12, '�׳������ֲ�', '/manageTools/rechargeData/firstlyChargeAndRelativeDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('131', 16, 13, '�û�������¼', '/manageTools/rankingData', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('142', 18, 14, '��Դ�������ķֲ�', '/manageTools/resourceData/resourceDataByModule', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('141', 17, 14, '��Դ�ܲ�������', '/manageTools/resourceData/resourceDataByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('157', null, 15, 'Ӣ��', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('156', null, 15, '����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('159', null, 15, '����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('158', null, 15, '�', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('152', null, 15, '������', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('151', null, 15, '����������', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('155', null, 15, 'װ��', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('153', null, 15, 'ͨ����', '', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('223', 56, 22, '��ϸ��Ϣ', '/gmTools/playerDetail', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('221', 57, 22, '��ʯ��ѯ', '/gmTools/playerGemQuery', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('222', 58, 22, '��Ҳ�ѯ', '/gmTools/playerGoldQuery', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1152', 7, 115, '�����߷�ֵ', '/manageTools/loginData/dailyOnline', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1151', 6, 115, 'Сʱ���߷�ֵ', '/manageTools/loginData/hourlyOnline', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1212', 10, 121, '���ʳ�ֵ���ֲ�', '/manageTools/rechargeData/singleRecharge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1211', 9, 121, '��ֵ�ܽ��ֲ�', '/manageTools/rechargeData/totalRecharge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1513', 21, 151, 'ͨ�ظ�����ɨ������', '/manageTools/moduleData/zone/zoneChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1512', 20, 151, 'ÿ��������������ֲ�', '/manageTools/moduleData/zone/purchasePowerByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1511', 19, 151, 'ÿ�����������ܴ���', '/manageTools/moduleData/zone/purchasePowerByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1524', 25, 152, '������ʤ�����ֲ�', '/manageTools/moduleData/arena/arenaConsecutiveChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1525', 26, 152, '����ʧ�ܴ����ֲ�', '/manageTools/moduleData/arena/arenaFallingChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1523', 24, 152, '����ʤ�������ֲ�', '/manageTools/moduleData/arena/arenaSuccessChallenge', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1521', 22, 152, '���������ܴ���', '/manageTools/moduleData/arena/purchaseArenaChallengeByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1522', 23, 152, '������������ֲ�', '/manageTools/moduleData/arena/purchaseArenaChallengeByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1532', 28, 153, 'ͨ��������', '/manageTools/moduleData/zig/zigScore', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1531', 27, 153, 'ͨ��������', '/manageTools/moduleData/zig/zigFloor', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1554', 47, 155, '��̳�ܴ���', '/manageTools/moduleData/equip/totalAltarAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1555', 48, 155, '��̳�����ֲ�', '/manageTools/moduleData/equip/altarByPlayer', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1553', 31, 155, '����ǿ������', '/manageTools/moduleData/equip/equipUpgrade', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1552', 30, 155, 'ǿ����������', '/manageTools/moduleData/equip/equipLevel', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1551', 29, 155, 'װ��Ʒ��', '/manageTools/moduleData/equip/equipRankAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1569', 40, 156, '�һ��ܴ���', '/manageTools/moduleData/treasure/exchangeAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1568', 39, 156, 'ף��ʱ��', '/manageTools/moduleData/treasure/treasureBlessTime', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('156a', 41, 156, '�һ�ָ��id����', '/manageTools/moduleData/treasure/exchangeByOid', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1561', 32, 156, '�Ӷ����', '/manageTools/moduleData/treasure/treasurePillageAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1562', 33, 156, '���ؼ���ֲ� ', '/manageTools/moduleData/treasure/treasureLevelByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1564', 35, 156, '���ش���', '/manageTools/moduleData/treasure/treasureDigAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1563', 34, 156, '���ؼ�������', '/manageTools/moduleData/treasure/treasureLevelByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1565', 36, 156, 'ˢ�´���', '/manageTools/moduleData/treasure/treasureRefreshAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1567', 38, 156, '��Ӫʤ��ʱ��', '/manageTools/moduleData/treasure/treasureVictorTime', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1566', 37, 156, 'ף������', '/manageTools/moduleData/treasure/treasureBlessAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1573', 54, 157, '���������ֲ�', '/manageTools/moduleData/hero/heroHoneByAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1574', 55, 157, 'ѵ������', '/manageTools/moduleData/hero/heroTraining', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1571', 52, 157, '���״���', '/manageTools/moduleData/hero/heroUpgradeRank', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1572', 53, 157, '��������', '/manageTools/moduleData/hero/heroHoneByDate', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1583', 45, 158, '�������������', '/manageTools/moduleData/activity/activityContinuousGoldPay', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1584', 46, 158, 'ָ���id�������', '/manageTools/moduleData/activity/activityAsSpecial', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1581', 43, 158, '���������', '/manageTools/moduleData/activity/activityFoods', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1582', 44, 158, '����ô���', '/manageTools/moduleData/activity/activityGetGoldPay', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1593', 51, 159, '����������', '/manageTools/moduleData/other/packageAmount', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1592', 50, 159, '�����콱����', '/manageTools/moduleData/other/getRankingReward', '0', '');

insert into sys_gm_menu (MENU_ID, ROUTE_ID, PARENT_ID, MENU_NAME, MENU_URL, DISABLE, DESCRIPTION)
values ('1591', 49, 159, '�̵깺�����', '/manageTools/moduleData/other/goodsBuy', '0', '');

-- temp user sys_gm_user

insert into sys_gm_user (USER_ID, USER_NAME, NICK_NAME, USER_PWD, JOB_ID)
values (1, 'root', 'root', 'root', 1);

-- temp job sys_gm_job

insert into sys_gm_job (JOB_ID, JOB_GRADE, JOB_NAME)
values (1, '1', 'CEO');

--sys_gm_role

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (1, '��̨��¼��ѯ', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (2, '��������', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (3, '�ڲ��˻�����', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (4, '��Ŵ���', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (5, '�˻���ѯ', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (6, '��¼��������', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (7, '��ֵ����', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (8, '��������', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (9, '��Դ��������', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (10, 'ģ���������', '2', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (11, 'ְλ����', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (12, '�˺Ž���', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (13, '�˻��޸�ɾ��', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (14, '�˻�Ȩ������', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (15, '������', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (16, '��˷���', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (17, '��̨��¼��ѯ', '3', '0', null, null);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (18, 'ʢ����', '1', '0', null, 0);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (19, '��Ѷ��', '1', '0', null, 1);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (20, 'XXX��1', '1', '0', null, 2);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (21, 'XXX��2', '1', '0', null, 3);

insert into sys_gm_role (ROLE_ID, ROLE_NAME, ROLE_TYPE, DISABLE, DESCRIPTION, PROVIDER_ID)
values (22, 'XXX��3', '1', '0', null, 4);

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
values (0, 'ʢ��һ��', '0', '01-1�� -14 12.00.00.000000 ����', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (1, 'ʢ�����', '0', '01-1�� -14 12.00.00.000000 ����', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (2, '��Ѷһ��', '0', '01-1�� -14 12.00.00.000000 ����', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_server (SERVER_ID, SERVER_NAME, DISABLE, START_SERVER_DATE, CONNECT_SITE,DESCRIPTION)
values (3, '��ƻ��', '0', '01-1�� -14 12.00.00.000000 ����', 'http://txwyygbm.xicp.net:8888/war', '');

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (0, 'ʢ��', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (1, '��Ѷ', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (2, '��Ӧ��test1', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (3, '��Ӧ��test2', '0', null);

insert into sys_gm_provider (PROVIDER_ID, PROVIDER_NAME, DISABLE, DESCRIPTION)
values (4, '��Ӧ��test3', '0', null);


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
