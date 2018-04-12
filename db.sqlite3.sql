BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `schoolsite_teacher` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`first_name`	varchar ( 30 ) NOT NULL,
	`last_name`	varchar ( 30 ) NOT NULL,
	`details`	varchar ( 100 ) NOT NULL,
	`email`	varchar ( 50 ) NOT NULL,
	`image`	varchar ( 100 )
);
INSERT INTO `schoolsite_teacher` (id,first_name,last_name,details,email,image) VALUES (1,'Dieter','Engels','Wiskunde/Biologie','dieter@teacher.be','26176049_1708456652538751_1837625462_n.jpg'),
 (2,'Maxim','Ganses','Economie/Engels','maxim@teacher.be','14052371_546154255573433_1265896531_n.jpg');
CREATE TABLE IF NOT EXISTS `schoolsite_login` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`login_name`	varchar ( 50 ) NOT NULL,
	`login_pw`	varchar ( 200 ) NOT NULL
);
CREATE TABLE IF NOT EXISTS `schoolsite_course` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`course_name`	varchar ( 50 ) NOT NULL,
	`course_desc`	varchar ( 250 ) NOT NULL
);
INSERT INTO `schoolsite_course` (id,course_name,course_desc) VALUES (1,'ASO Wiskune','6u wiskune per week'),
 (2,'ASO Economie','4u wiskune per week, 4u economie per week'),
 (3,'ASO Talen','4u wiskunde per week, alle talen 4u per week'),
 (4,'ASO Latijn','4u wiskune per week, 4u latijn per week'),
 (5,'TSO Kunst','Beeldende Kunsten'),
 (6,'TSO Kunst','Vrije kunsten'),
 (7,'TSO Tuinbouw','Tuin- en landbouw'),
 (8,'TSO Techniek','Technische arbeid'),
 (9,'BSO Animatie','Beroepsopleiding kinderanimatie'),
 (10,'BSO Ouderenzorg','Beroepsopleiding ouderenzorg');
CREATE TABLE IF NOT EXISTS `schoolsite_contact` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`contact_email`	varchar ( 50 ) NOT NULL,
	`contact_message`	varchar ( 500 ) NOT NULL,
	`contact_name`	varchar ( 30 ) NOT NULL
);
INSERT INTO `schoolsite_contact` (id,contact_email,contact_message,contact_name) VALUES (12,'fffff@gmail.com','ddddddddddd','fffff');
CREATE TABLE IF NOT EXISTS `django_session` (
	`session_key`	varchar ( 40 ) NOT NULL,
	`session_data`	text NOT NULL,
	`expire_date`	datetime NOT NULL,
	PRIMARY KEY(`session_key`)
);
INSERT INTO `django_session` (session_key,session_data,expire_date) VALUES ('9m07v5uc8m7g4dskd3htlr1ral1nrb5h','NmZkM2RlMDE5MTdjZjY5ZGM3OTFhZDQ4MTVkOWFiMzZhOWZlZThmYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjA3OWNmZWExYmJjNzQ2ZTExNzk5NmQ5NzM2N2FmZTQwNmUxZjkxYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-27 20:47:17.510000'),
 ('7lpb7uhw8i2m3ashq21y5g9aaqn9eyd6','NmZkM2RlMDE5MTdjZjY5ZGM3OTFhZDQ4MTVkOWFiMzZhOWZlZThmYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjA3OWNmZWExYmJjNzQ2ZTExNzk5NmQ5NzM2N2FmZTQwNmUxZjkxYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-28 14:34:03.645000');
CREATE TABLE IF NOT EXISTS `django_migrations` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`app`	varchar ( 255 ) NOT NULL,
	`name`	varchar ( 255 ) NOT NULL,
	`applied`	datetime NOT NULL
);
INSERT INTO `django_migrations` (id,app,name,applied) VALUES (1,'contenttypes','0001_initial','2018-01-06 21:30:37.037000'),
 (2,'auth','0001_initial','2018-01-06 21:30:37.657000'),
 (3,'admin','0001_initial','2018-01-06 21:30:38.023000'),
 (4,'admin','0002_logentry_remove_auto_add','2018-01-06 21:30:38.479000'),
 (5,'contenttypes','0002_remove_content_type_name','2018-01-06 21:30:38.903000'),
 (6,'auth','0002_alter_permission_name_max_length','2018-01-06 21:30:39.285000'),
 (7,'auth','0003_alter_user_email_max_length','2018-01-06 21:30:39.683000'),
 (8,'auth','0004_alter_user_username_opts','2018-01-06 21:30:40.056000'),
 (9,'auth','0005_alter_user_last_login_null','2018-01-06 21:30:40.505000'),
 (10,'auth','0006_require_contenttypes_0002','2018-01-06 21:30:40.636000'),
 (11,'auth','0007_alter_validators_add_error_messages','2018-01-06 21:30:41.060000'),
 (12,'auth','0008_alter_user_username_max_length','2018-01-06 21:30:41.506000'),
 (13,'sessions','0001_initial','2018-01-06 21:30:41.938000'),
 (14,'schoolsite','0001_initial','2018-01-06 23:12:01.605000'),
 (15,'schoolsite','0002_auto_20180108_2322','2018-01-08 22:22:34.494000'),
 (16,'schoolsite','0003_auto_20180109_2000','2018-01-09 19:01:33.733000'),
 (17,'schoolsite','0004_teacher_pic','2018-01-09 19:52:30.868000'),
 (18,'schoolsite','0005_auto_20180109_2056','2018-01-09 19:56:50.208000');
CREATE TABLE IF NOT EXISTS `django_content_type` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`app_label`	varchar ( 100 ) NOT NULL,
	`model`	varchar ( 100 ) NOT NULL
);
INSERT INTO `django_content_type` (id,app_label,model) VALUES (1,'admin','logentry'),
 (2,'auth','group'),
 (3,'auth','permission'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'schoolsite','contact'),
 (8,'schoolsite','course'),
 (9,'schoolsite','teacher'),
 (10,'schoolsite','login');
CREATE TABLE IF NOT EXISTS `django_admin_log` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`object_id`	text,
	`object_repr`	varchar ( 200 ) NOT NULL,
	`action_flag`	smallint unsigned NOT NULL,
	`change_message`	text NOT NULL,
	`content_type_id`	integer,
	`user_id`	integer NOT NULL,
	`action_time`	datetime NOT NULL,
	FOREIGN KEY(`user_id`) REFERENCES `auth_user`(`id`),
	FOREIGN KEY(`content_type_id`) REFERENCES `django_content_type`(`id`)
);
INSERT INTO `django_admin_log` (id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time) VALUES (1,'1','Dieter Engels',2,'[{"changed": {"fields": ["image"]}}]',9,1,'2018-01-09 20:02:04.816000'),
 (2,'2','Maxim Ganses',2,'[{"changed": {"fields": ["image"]}}]',9,1,'2018-01-09 20:02:22.727000'),
 (3,'2','dokme',1,'[{"added": {}}]',4,1,'2018-01-09 22:41:05.024000'),
 (4,'3','Lil Peep',1,'[{"added": {}}]',9,1,'2018-01-09 22:57:43.379000'),
 (5,'3','Lil Peep',3,'',9,1,'2018-01-09 22:59:41.294000'),
 (6,'11','d',3,'',8,1,'2018-01-13 19:12:18.823000'),
 (7,'12','f',3,'',8,1,'2018-01-13 19:18:33.049000'),
 (8,'11','Contact object',3,'',7,1,'2018-01-13 19:33:00.877000'),
 (9,'10','Contact object',3,'',7,1,'2018-01-13 19:33:01.037000');
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`user_id`	integer NOT NULL,
	`permission_id`	integer NOT NULL,
	FOREIGN KEY(`user_id`) REFERENCES `auth_user`(`id`),
	FOREIGN KEY(`permission_id`) REFERENCES `auth_permission`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`user_id`	integer NOT NULL,
	`group_id`	integer NOT NULL,
	FOREIGN KEY(`user_id`) REFERENCES `auth_user`(`id`),
	FOREIGN KEY(`group_id`) REFERENCES `auth_group`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_user` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`password`	varchar ( 128 ) NOT NULL,
	`last_login`	datetime,
	`is_superuser`	bool NOT NULL,
	`first_name`	varchar ( 30 ) NOT NULL,
	`last_name`	varchar ( 30 ) NOT NULL,
	`email`	varchar ( 254 ) NOT NULL,
	`is_staff`	bool NOT NULL,
	`is_active`	bool NOT NULL,
	`date_joined`	datetime NOT NULL,
	`username`	varchar ( 150 ) NOT NULL UNIQUE
);
INSERT INTO `auth_user` (id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username) VALUES (1,'pbkdf2_sha256$36000$6tsteILySYB4$smZSO99ig1s5WUvglZ8IBBQBM6MDMo8JGezHKaRCdJA=','2018-01-14 14:34:03.457000',1,'','','admin@schoolsite.be',1,1,'2018-01-07 00:30:44.655000','admin'),
 (2,'pbkdf2_sha256$36000$B7rkjbMgYkMW$ftTYL3906MVwL2t1Wkihvk/sC0bCUYsBJX9Jq9Z5Fik=','2018-01-09 22:55:15.572000',0,'','','',0,1,'2018-01-09 22:41:04.954000','dokme');
CREATE TABLE IF NOT EXISTS `auth_permission` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`content_type_id`	integer NOT NULL,
	`codename`	varchar ( 100 ) NOT NULL,
	`name`	varchar ( 255 ) NOT NULL,
	FOREIGN KEY(`content_type_id`) REFERENCES `django_content_type`(`id`)
);
INSERT INTO `auth_permission` (id,content_type_id,codename,name) VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,2,'add_group','Can add group'),
 (5,2,'change_group','Can change group'),
 (6,2,'delete_group','Can delete group'),
 (7,3,'add_permission','Can add permission'),
 (8,3,'change_permission','Can change permission'),
 (9,3,'delete_permission','Can delete permission'),
 (10,4,'add_user','Can add user'),
 (11,4,'change_user','Can change user'),
 (12,4,'delete_user','Can delete user'),
 (13,5,'add_contenttype','Can add content type'),
 (14,5,'change_contenttype','Can change content type'),
 (15,5,'delete_contenttype','Can delete content type'),
 (16,6,'add_session','Can add session'),
 (17,6,'change_session','Can change session'),
 (18,6,'delete_session','Can delete session'),
 (19,7,'add_contact','Can add contact'),
 (20,7,'change_contact','Can change contact'),
 (21,7,'delete_contact','Can delete contact'),
 (22,8,'add_course','Can add course'),
 (23,8,'change_course','Can change course'),
 (24,8,'delete_course','Can delete course'),
 (25,9,'add_teacher','Can add teacher'),
 (26,9,'change_teacher','Can change teacher'),
 (27,9,'delete_teacher','Can delete teacher'),
 (28,10,'add_login','Can add login'),
 (29,10,'change_login','Can change login'),
 (30,10,'delete_login','Can delete login');
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`group_id`	integer NOT NULL,
	`permission_id`	integer NOT NULL,
	FOREIGN KEY(`permission_id`) REFERENCES `auth_permission`(`id`),
	FOREIGN KEY(`group_id`) REFERENCES `auth_group`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_group` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 80 ) NOT NULL UNIQUE
);
CREATE INDEX IF NOT EXISTS `django_session_expire_date_a5c62663` ON `django_session` (
	`expire_date`
);
CREATE UNIQUE INDEX IF NOT EXISTS `django_content_type_app_label_model_76bd3d3b_uniq` ON `django_content_type` (
	`app_label`,
	`model`
);
CREATE INDEX IF NOT EXISTS `django_admin_log_user_id_c564eba6` ON `django_admin_log` (
	`user_id`
);
CREATE INDEX IF NOT EXISTS `django_admin_log_content_type_id_c4bce8eb` ON `django_admin_log` (
	`content_type_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` ON `auth_user_user_permissions` (
	`user_id`,
	`permission_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_user_permissions_user_id_a95ead1b` ON `auth_user_user_permissions` (
	`user_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_user_permissions_permission_id_1fbb5f2c` ON `auth_user_user_permissions` (
	`permission_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_user_groups_user_id_group_id_94350c0c_uniq` ON `auth_user_groups` (
	`user_id`,
	`group_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_groups_user_id_6a12ed8b` ON `auth_user_groups` (
	`user_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_groups_group_id_97559544` ON `auth_user_groups` (
	`group_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_permission_content_type_id_codename_01ab375a_uniq` ON `auth_permission` (
	`content_type_id`,
	`codename`
);
CREATE INDEX IF NOT EXISTS `auth_permission_content_type_id_2f476e4b` ON `auth_permission` (
	`content_type_id`
);
CREATE INDEX IF NOT EXISTS `auth_group_permissions_permission_id_84c5c92e` ON `auth_group_permissions` (
	`permission_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` ON `auth_group_permissions` (
	`group_id`,
	`permission_id`
);
CREATE INDEX IF NOT EXISTS `auth_group_permissions_group_id_b120cbf9` ON `auth_group_permissions` (
	`group_id`
);
COMMIT;
