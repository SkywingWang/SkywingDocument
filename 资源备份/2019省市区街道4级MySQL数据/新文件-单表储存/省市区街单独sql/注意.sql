# ��Ϊ֮ǰ�����������в�ͳһ��

# �������������ӵĻ���1.��Ҫ�ȴ�����2.Ȼ��������ݣ�3.Ȼ��������������С�

CREATE TABLE `cn_region_info` (
  `CRI_CODE` varchar(40) NOT NULL COMMENT '����',
  `CRI_NAME` varchar(50) NOT NULL COMMENT '����',
  `CRI_SHORT_NAME` varchar(20) NOT NULL COMMENT '���',
  `CRI_SUPERIOR_CODE` varchar(40) DEFAULT NULL COMMENT '�ϼ�����',
  `CRI_LNG` varchar(20) DEFAULT NULL COMMENT '����',
  `CRI_LAT` varchar(20) DEFAULT NULL COMMENT 'γ��',
  `CRI_SORT` int(6) DEFAULT NULL COMMENT '����',
  `CRI_GMT_CREATE` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CRI_GMT_MODIFIED` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
  `CRI_MEMO` varchar(250) DEFAULT NULL COMMENT '��ע',
  `CRI_DATA_STATE` int(11) DEFAULT NULL COMMENT '״̬',
  `CRI_TENANT_CODE` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `CRI_LEVEL` varchar(11) DEFAULT NULL COMMENT '����',
  KEY `Index_1` (`CRI_CODE`,`CRI_TENANT_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='�й�������Ϣ';

ALTER TABLE cn_region_info ADD CRI_ID INT NOT NULL COMMENT '����ID' PRIMARY KEY AUTO_INCREMENT FIRST;