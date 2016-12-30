CREATE TABLE persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);

CREATE TABLE `user` (
  `id` int(19) NOT NULL AUTO_INCREMENT COMMENT '�û�ID,PK',
	`version` int(19) NOT NULL DEFAULT '1' COMMENT 'version',
  `enabled` boolean NOT NULL DEFAULT true COMMENT '�˻�״̬',
  `account_expired` boolean NOT NULL DEFAULT false COMMENT '�˻�ʧЧ',
  `account_locked` boolean NOT NULL DEFAULT false COMMENT '�˻�����',
  `login_name` varchar(20) NOT NULL COMMENT '��¼��',
  `password_expired` boolean NOT NULL DEFAULT false COMMENT '����ʧЧ',
  `hashed_password` varchar(240) NOT NULL COMMENT '����(����)',
  `full_name` varchar(60) NOT NULL COMMENT '�û�ȫ��',
  `phone` varchar(20) NOT NULL COMMENT '�ֻ�',
  `email` varchar(120) NOT NULL COMMENT '����',
	`sex` varchar(6) NOT NULL COMMENT '�Ա�',
	`birth_day` datetime DEFAULT NULL COMMENT '����',
  `created_by` int(19) NOT NULL DEFAULT '-1' COMMENT '������',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `last_updated` timestamp NOT NULL COMMENT '�������ʱ��',
  `updated_by` int(19) NOT NULL DEFAULT '-1' COMMENT '������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name_unique_key` (`login_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--password:0cf7cfd9580e9c15d32342eddd288e57