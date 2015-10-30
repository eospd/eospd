SELECT * FROM eospd.collectindexday;
/*
INSERT INTO `eospd`.`collectindexday`
(
`indexTime`,
`deviceId`,
`dataEffRate`,
`meterOnlineRate`,
`realCollectRate`)
VALUES
(
'2015-10-30 10:19',
1,
0.80,
0.85,
0.90);
*/

/* 

alter table eospd.collectindexday add column `create_by` varchar(64) DEFAULT NULL COMMENT '创建者';

alter table eospd.collectindexday add column `create_date` datetime DEFAULT NULL COMMENT '创建时间';

alter table eospd.collectindexday add column `update_by` varchar(64) DEFAULT NULL COMMENT '更新者';

alter table eospd.collectindexday add column `update_date` datetime DEFAULT NULL COMMENT '更新时间';

alter table eospd.collectindexday add column `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息';

alter table eospd.collectindexday add column `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记';

desc eospd.collectindexday;

*/

alter table eospd.dc add column `create_by` varchar(64) DEFAULT NULL COMMENT '创建者';

alter table eospd.dc add column `create_date` datetime DEFAULT NULL COMMENT '创建时间';

alter table eospd.dc add column `update_by` varchar(64) DEFAULT NULL COMMENT '更新者';

alter table eospd.dc add column `update_date` datetime DEFAULT NULL COMMENT '更新时间';

alter table eospd.dc add column `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息';

alter table eospd.dc add column `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记';



alter table eospd.meter add column `create_by` varchar(64) DEFAULT NULL COMMENT '创建者';

alter table eospd.meter add column `create_date` datetime DEFAULT NULL COMMENT '创建时间';

alter table eospd.meter add column `update_by` varchar(64) DEFAULT NULL COMMENT '更新者';

alter table eospd.meter add column `update_date` datetime DEFAULT NULL COMMENT '更新时间';

alter table eospd.meter add column `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息';

alter table eospd.meter add column `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记';


alter table eospd.metertype add column `create_by` varchar(64) DEFAULT NULL COMMENT '创建者';

alter table eospd.metertype add column `create_date` datetime DEFAULT NULL COMMENT '创建时间';

alter table eospd.metertype add column `update_by` varchar(64) DEFAULT NULL COMMENT '更新者';

alter table eospd.metertype add column `update_date` datetime DEFAULT NULL COMMENT '更新时间';

alter table eospd.metertype add column `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息';

alter table eospd.metertype add column `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记';


alter table eospd.metervender add column `create_by` varchar(64) DEFAULT NULL COMMENT '创建者';

alter table eospd.metervender add column `create_date` datetime DEFAULT NULL COMMENT '创建时间';

alter table eospd.metervender add column `update_by` varchar(64) DEFAULT NULL COMMENT '更新者';

alter table eospd.metervender add column `update_date` datetime DEFAULT NULL COMMENT '更新时间';

alter table eospd.metervender add column `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息';

alter table eospd.metervender add column `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记';


