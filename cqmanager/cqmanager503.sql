﻿# Host: localhost  (Version: 5.5.53)
# Date: 2020-07-08 17:02:26
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "hero"
#

DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heroName` varchar(255) DEFAULT NULL,
  `heroSkill` varchar(255) DEFAULT NULL,
  `heroIcon` varchar(255) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

#
# Data for table "hero"
#

/*!40000 ALTER TABLE `hero` DISABLE KEYS */;
INSERT INTO `hero` VALUES (1,'孙尚香','活力迸发','https://game.gtimg.cn/images/yxzj/img201606/heroimg/111/111-mobileskin-1.jpg','false'),(2,'小乔小','治愈微笑','https://game.gtimg.cn/images/yxzj/img201606/heroimg/106/106-mobileskin-1.jpg','false'),(3,'鲁班七号','火力压制','https://game.gtimg.cn/images/yxzj/img201606/heroimg/112/112-mobileskin-1.jpg','false'),(4,'墨子','兼爱非攻','https://game.gtimg.cn/images/yxzj/img201606/heroimg/108/108-mobileskin-1.jpg','false'),(5,'廉颇','勇士之魂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/105/105-mobileskin-1.jpg','false'),(6,'妲己','失心','https://game.gtimg.cn/images/yxzj/img201606/heroimg/109/109-mobileskin-1.jpg','false'),(7,'刘禅','磁力屏障','https://game.gtimg.cn/images/yxzj/img201606/heroimg/114/114-mobileskin-1.jpg','false'),(8,'庄周','自然意志','https://game.gtimg.cn/images/yxzj/img201606/heroimg/113/113-mobileskin-1.jpg','false'),(9,'嬴政','王者审判','https://game.gtimg.cn/images/yxzj/img201606/heroimg/110/110-mobileskin-1.jpg','false'),(10,'赵云','龙鸣','https://game.gtimg.cn/images/yxzj/img201606/heroimg/107/107-mobileskin-1.jpg','false'),(11,'扁鹊','恶德医疗','https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119-mobileskin-1.jpg','false'),(12,'高渐离','哀歌','https://game.gtimg.cn/images/yxzj/img201606/heroimg/115/115-mobileskin-1.jpg','false'),(13,'周瑜','引燃','https://game.gtimg.cn/images/yxzj/img201606/heroimg/124/124-mobileskin-1.jpg','false'),(14,'阿轲','死吻','https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116-mobileskin-1.jpg','false'),(15,'吕布','饕餮血统','https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123-mobileskin-1.jpg','false'),(16,'孙膑','时间沙漏','https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118-mobileskin-1.jpg','false'),(17,'白起','反击之镰','https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120-mobileskin-1.jpg','false'),(18,'芈月','永生之血','https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121-mobileskin-1.jpg','false'),(19,'钟无艳','石之炼金','https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117-mobileskin-1.jpg','false'),(20,'夏侯惇','噬目','https://game.gtimg.cn/images/yxzj/img201606/heroimg/126/126-mobileskin-1.jpg','false'),(21,'甄姬','凝泪成冰','https://game.gtimg.cn/images/yxzj/img201606/heroimg/127/127-mobileskin-1.jpg','false'),(22,'典韦','激怒','https://game.gtimg.cn/images/yxzj/img201606/heroimg/129/129-mobileskin-1.jpg','false'),(23,'曹操','争霸','https://game.gtimg.cn/images/yxzj/img201606/heroimg/128/128-mobileskin-1.jpg','false'),(24,'宫本武藏','狩魔','https://game.gtimg.cn/images/yxzj/img201606/heroimg/130/130-mobileskin-1.jpg','false'),(25,'李白','侠客行','https://game.gtimg.cn/images/yxzj/img201606/heroimg/131/131-mobileskin-1.jpg','false'),(26,'狄仁杰','迅捷','https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133-mobileskin-1.jpg','false'),(27,'达摩','真言·心经','https://game.gtimg.cn/images/yxzj/img201606/heroimg/134/134-mobileskin-1.jpg','false'),(28,'马可波罗','连锁反应','https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132-mobileskin-1.jpg','false'),(29,'武则天','天命之女','https://game.gtimg.cn/images/yxzj/img201606/heroimg/136/136-mobileskin-1.jpg','false'),(30,'项羽','陷阵之志','https://game.gtimg.cn/images/yxzj/img201606/heroimg/135/135-mobileskin-1.jpg','false'),(31,'程咬金','舍生忘死','https://game.gtimg.cn/images/yxzj/img201606/heroimg/144/144-mobileskin-1.jpg','false'),(32,'姜子牙','心魔','https://game.gtimg.cn/images/yxzj/img201606/heroimg/148/148-mobileskin-1.jpg','false'),(33,'刘邦','君主野望','https://game.gtimg.cn/images/yxzj/img201606/heroimg/149/149-mobileskin-1.jpg','false'),(34,'露娜','月光之舞','https://game.gtimg.cn/images/yxzj/img201606/heroimg/146/146-mobileskin-1.jpg','false'),(35,'老夫子','师道尊严','https://game.gtimg.cn/images/yxzj/img201606/heroimg/139/139-mobileskin-1.jpg','false'),(36,'貂蝉','语·花印','https://game.gtimg.cn/images/yxzj/img201606/heroimg/141/141-mobileskin-1.jpg','false'),(37,'关羽','一骑当千','https://game.gtimg.cn/images/yxzj/img201606/heroimg/140/140-mobileskin-1.jpg','false'),(38,'安琪拉','咒术火焰','https://game.gtimg.cn/images/yxzj/img201606/heroimg/142/142-mobileskin-1.jpg','false'),(39,'兰陵王','秘技·极意','https://game.gtimg.cn/images/yxzj/img201606/heroimg/153/153-mobileskin-1.jpg','false'),(40,'韩信','杀意之枪','https://game.gtimg.cn/images/yxzj/img201606/heroimg/150/150-mobileskin-1.jpg','false'),(41,'王昭君','冰封之心','https://game.gtimg.cn/images/yxzj/img201606/heroimg/152/152-mobileskin-1.jpg','false'),(42,'娜可露露','流刀舞术','https://game.gtimg.cn/images/yxzj/img201606/heroimg/162/162-mobileskin-1.jpg','false'),(43,'橘右京','秘剑胧刀','https://game.gtimg.cn/images/yxzj/img201606/heroimg/163/163-mobileskin-1.jpg','false'),(44,'花木兰','长城巡守者','https://game.gtimg.cn/images/yxzj/img201606/heroimg/154/154-mobileskin-1.jpg','false'),(45,'张良','言灵·咒令','https://game.gtimg.cn/images/yxzj/img201606/heroimg/156/156-mobileskin-1.jpg','false'),(46,'不知火舞','忍蜂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/157/157-mobileskin-1.jpg','false'),(47,'亚瑟','圣光守护','https://game.gtimg.cn/images/yxzj/img201606/heroimg/166/166-mobileskin-1.jpg','false'),(48,'孙悟空','大圣神威','https://game.gtimg.cn/images/yxzj/img201606/heroimg/167/167-mobileskin-1.jpg','false'),(49,'成吉思汗','追猎','https://game.gtimg.cn/images/yxzj/img201606/heroimg/177/177-mobileskin-1.jpg','false'),(50,'张飞','黑暗潜能','https://game.gtimg.cn/images/yxzj/img201606/heroimg/171/171-mobileskin-1.jpg','false'),(51,'刘备','强化霰弹','https://game.gtimg.cn/images/yxzj/img201606/heroimg/170/170-mobileskin-1.jpg','false'),(52,'后羿','惩戒射击','https://game.gtimg.cn/images/yxzj/img201606/heroimg/169/169-mobileskin-1.jpg','false'),(53,'李元芳','密探谛听','https://game.gtimg.cn/images/yxzj/img201606/heroimg/173/173-mobileskin-1.jpg','false'),(54,'钟馗','制裁仪式','https://game.gtimg.cn/images/yxzj/img201606/heroimg/175/175-mobileskin-1.jpg','false'),(55,'牛魔','强力援护','https://game.gtimg.cn/images/yxzj/img201606/heroimg/168/168-mobileskin-1.jpg','false'),(56,'虞姬','树神护佑','https://game.gtimg.cn/images/yxzj/img201606/heroimg/174/174-mobileskin-1.jpg','false'),(57,'杨戬','神智侵蚀','https://game.gtimg.cn/images/yxzj/img201606/heroimg/178/178-mobileskin-1.jpg','false'),(58,'雅典娜','真神觉醒','https://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183-mobileskin-1.jpg','false'),(59,'太乙真人','黄金闪闪','https://game.gtimg.cn/images/yxzj/img201606/heroimg/186/186-mobileskin-1.jpg','false'),(60,'蔡文姬','长歌行','https://game.gtimg.cn/images/yxzj/img201606/heroimg/184/184-mobileskin-1.jpg','false'),(61,'黄忠','炮手燃魂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/192/192-mobileskin-1.jpg','false'),(62,'哪吒','炙炼火种','https://game.gtimg.cn/images/yxzj/img201606/heroimg/180/180-mobileskin-1.jpg','false'),(63,'诸葛亮','策谋之刻','https://game.gtimg.cn/images/yxzj/img201606/heroimg/190/190-mobileskin-1.jpg','false'),(64,'大乔','川流不息','https://game.gtimg.cn/images/yxzj/img201606/heroimg/191/191-mobileskin-1.jpg','false'),(65,'干将莫邪','比翼同心','https://game.gtimg.cn/images/yxzj/img201606/heroimg/182/182-mobileskin-1.jpg','false'),(66,'铠','修罗之魂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/193/193-mobileskin-1.jpg','false'),(67,'东皇太一','暗冕之噬','https://game.gtimg.cn/images/yxzj/img201606/heroimg/187/187-mobileskin-1.jpg','false'),(68,'鬼谷子','纵横兵法','https://game.gtimg.cn/images/yxzj/img201606/heroimg/189/189-mobileskin-1.jpg','false'),(69,'百里守约','瞄准','https://game.gtimg.cn/images/yxzj/img201606/heroimg/196/196-mobileskin-1.jpg','false'),(70,'女娲','辉煌指引','https://game.gtimg.cn/images/yxzj/img201606/heroimg/179/179-mobileskin-1.jpg','false'),(71,'梦奇','食梦','https://game.gtimg.cn/images/yxzj/img201606/heroimg/198/198-mobileskin-1.jpg','false'),(72,'苏烈','不屈铁壁','https://game.gtimg.cn/images/yxzj/img201606/heroimg/194/194-mobileskin-1.jpg','false'),(73,'百里玄策','狂热序章','https://game.gtimg.cn/images/yxzj/img201606/heroimg/195/195-mobileskin-1.jpg','false'),(74,'明世隐','大吉大利','https://game.gtimg.cn/images/yxzj/img201606/heroimg/501/501-mobileskin-1.jpg','false'),(75,'杨玉环','惊鸿调','https://game.gtimg.cn/images/yxzj/img201606/heroimg/176/176-mobileskin-1.jpg','false'),(76,'公孙离','晚云落','https://game.gtimg.cn/images/yxzj/img201606/heroimg/199/199-mobileskin-1.jpg','false'),(77,'裴擒虎','寸劲','https://game.gtimg.cn/images/yxzj/img201606/heroimg/502/502-mobileskin-1.jpg','false'),(78,'弈星','气合','https://game.gtimg.cn/images/yxzj/img201606/heroimg/197/197-mobileskin-1.jpg','false'),(79,'孙策','怒潮','https://game.gtimg.cn/images/yxzj/img201606/heroimg/510/510-mobileskin-1.jpg','false'),(80,'狂铁','无畏战车','https://game.gtimg.cn/images/yxzj/img201606/heroimg/503/503-mobileskin-1.jpg','false'),(81,'米莱狄','机械仆从','https://game.gtimg.cn/images/yxzj/img201606/heroimg/504/504-mobileskin-1.jpg','false'),(82,'盾山','天地化盾','https://game.gtimg.cn/images/yxzj/img201606/heroimg/509/509-mobileskin-1.jpg','false'),(83,'伽罗','破魔之箭','https://game.gtimg.cn/images/yxzj/img201606/heroimg/508/508-mobileskin-1.jpg','false'),(84,'元歌','秘术·操控','https://game.gtimg.cn/images/yxzj/img201606/heroimg/125/125-mobileskin-1.jpg','false'),(85,'司马懿','静默之语','https://game.gtimg.cn/images/yxzj/img201606/heroimg/137/137-mobileskin-1.jpg','false'),(86,'沈梦溪','暴躁节奏','https://game.gtimg.cn/images/yxzj/img201606/heroimg/312/312-mobileskin-1.jpg','false'),(87,'上官婉儿','笔阵','https://game.gtimg.cn/images/yxzj/img201606/heroimg/513/513-mobileskin-1.jpg','false'),(88,'李信','灰暗利刃','https://game.gtimg.cn/images/yxzj/img201606/heroimg/507/507-mobileskin-1.jpg','false'),(89,'嫦娥','月盈','https://game.gtimg.cn/images/yxzj/img201606/heroimg/515/515-mobileskin-1.jpg','false'),(90,'猪八戒','毫发无伤','https://game.gtimg.cn/images/yxzj/img201606/heroimg/511/511-mobileskin-1.jpg','false'),(91,'曜','星辰之赐','https://game.gtimg.cn/images/yxzj/img201606/heroimg/522/522-mobileskin-1.jpg','false'),(92,'盘古','盘古斧','https://game.gtimg.cn/images/yxzj/img201606/heroimg/529/529-mobileskin-1.jpg','false'),(93,'瑶','山鬼·白鹿','https://game.gtimg.cn/images/yxzj/img201606/heroimg/505/505-mobileskin-1.jpg','false'),(94,'马超','魔影突袭','https://game.gtimg.cn/images/yxzj/img201606/heroimg/518/518-mobileskin-1.jpg','false'),(95,'鲁班大师','稷下科技','https://game.gtimg.cn/images/yxzj/img201606/heroimg/525/525-mobileskin-1.jpg','false'),(96,'西施','少女的把戏','https://game.gtimg.cn/images/yxzj/img201606/heroimg/523/523-mobileskin-1.jpg','false'),(97,'云中君','云间游','https://game.gtimg.cn/images/yxzj/img201606/heroimg/506/506-mobileskin-1.jpg','false'),(98,'蒙犽','炽热浑天','https://game.gtimg.cn/images/yxzj/img201606/heroimg/524/524-mobileskin-1.jpg','false'),(99,'镜','铸镜','https://game.gtimg.cn/images/yxzj/img201606/heroimg/531/531-mobileskin-1.jpg','false'),(100,'蒙恬','玄雍防线','https://game.gtimg.cn/images/yxzj/img201606/heroimg/527/527-mobileskin-1.jpg','false'),(101,'廉颇','勇士之魂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/105/105-mobileskin-1.jpg','false'),(102,'孙尚香','活力迸发','https://game.gtimg.cn/images/yxzj/img201606/heroimg/111/111-mobileskin-1.jpg','false'),(103,'鲁班七号','火力压制','https://game.gtimg.cn/images/yxzj/img201606/heroimg/112/112-mobileskin-1.jpg','false'),(104,'庄周','自然意志','https://game.gtimg.cn/images/yxzj/img201606/heroimg/113/113-mobileskin-1.jpg','false'),(105,'小乔','治愈微笑','https://game.gtimg.cn/images/yxzj/img201606/heroimg/106/106-mobileskin-1.jpg','false'),(106,'赵云','龙鸣','https://game.gtimg.cn/images/yxzj/img201606/heroimg/107/107-mobileskin-1.jpg','false'),(107,'嬴政','王者审判','https://game.gtimg.cn/images/yxzj/img201606/heroimg/110/110-mobileskin-1.jpg','false'),(108,'墨子','兼爱非攻','https://game.gtimg.cn/images/yxzj/img201606/heroimg/108/108-mobileskin-1.jpg','false'),(109,'妲己','失心','https://game.gtimg.cn/images/yxzj/img201606/heroimg/109/109-mobileskin-1.jpg','false'),(110,'刘禅','磁力屏障','https://game.gtimg.cn/images/yxzj/img201606/heroimg/114/114-mobileskin-1.jpg','false'),(111,'孙膑','时间沙漏','https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118-mobileskin-1.jpg','false'),(112,'高渐离','哀歌','https://game.gtimg.cn/images/yxzj/img201606/heroimg/115/115-mobileskin-1.jpg','false'),(113,'扁鹊','恶德医疗','https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119-mobileskin-1.jpg','false'),(114,'白起','反击之镰','https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120-mobileskin-1.jpg','false'),(115,'钟无艳','石之炼金','https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117-mobileskin-1.jpg','false'),(116,'阿轲','死吻','https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116-mobileskin-1.jpg','false'),(117,'吕布','饕餮血统','https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123-mobileskin-1.jpg','false'),(118,'芈月','永生之血','https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121-mobileskin-1.jpg','false'),(119,'夏侯惇','噬目','https://game.gtimg.cn/images/yxzj/img201606/heroimg/126/126-mobileskin-1.jpg','false'),(120,'曹操','争霸','https://game.gtimg.cn/images/yxzj/img201606/heroimg/128/128-mobileskin-1.jpg','false'),(121,'甄姬','凝泪成冰','https://game.gtimg.cn/images/yxzj/img201606/heroimg/127/127-mobileskin-1.jpg','false'),(122,'典韦','激怒','https://game.gtimg.cn/images/yxzj/img201606/heroimg/129/129-mobileskin-1.jpg','false'),(123,'周瑜','引燃','https://game.gtimg.cn/images/yxzj/img201606/heroimg/124/124-mobileskin-1.jpg','false'),(124,'马可波罗','连锁反应','https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132-mobileskin-1.jpg','false'),(125,'李白','侠客行','https://game.gtimg.cn/images/yxzj/img201606/heroimg/131/131-mobileskin-1.jpg','false'),(126,'宫本武藏','狩魔','https://game.gtimg.cn/images/yxzj/img201606/heroimg/130/130-mobileskin-1.jpg','false'),(127,'狄仁杰','迅捷','https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133-mobileskin-1.jpg','false'),(128,'达摩','真言·心经','https://game.gtimg.cn/images/yxzj/img201606/heroimg/134/134-mobileskin-1.jpg','false'),(129,'武则天','天命之女','https://game.gtimg.cn/images/yxzj/img201606/heroimg/136/136-mobileskin-1.jpg','false'),(130,'老夫子','师道尊严','https://game.gtimg.cn/images/yxzj/img201606/heroimg/139/139-mobileskin-1.jpg','false'),(131,'项羽','陷阵之志','https://game.gtimg.cn/images/yxzj/img201606/heroimg/135/135-mobileskin-1.jpg','false'),(132,'关羽','一骑当千','https://game.gtimg.cn/images/yxzj/img201606/heroimg/140/140-mobileskin-1.jpg','false'),(133,'貂蝉','语·花印','https://game.gtimg.cn/images/yxzj/img201606/heroimg/141/141-mobileskin-1.jpg','false'),(134,'姜子牙','心魔','https://game.gtimg.cn/images/yxzj/img201606/heroimg/148/148-mobileskin-1.jpg','false'),(135,'程咬金','舍生忘死','https://game.gtimg.cn/images/yxzj/img201606/heroimg/144/144-mobileskin-1.jpg','false'),(136,'露娜','月光之舞','https://game.gtimg.cn/images/yxzj/img201606/heroimg/146/146-mobileskin-1.jpg','false'),(137,'安琪拉','咒术火焰','https://game.gtimg.cn/images/yxzj/img201606/heroimg/142/142-mobileskin-1.jpg','false'),(138,'刘邦','君主野望','https://game.gtimg.cn/images/yxzj/img201606/heroimg/149/149-mobileskin-1.jpg','false'),(139,'王昭君','冰封之心','https://game.gtimg.cn/images/yxzj/img201606/heroimg/152/152-mobileskin-1.jpg','false'),(140,'花木兰','长城巡守者','https://game.gtimg.cn/images/yxzj/img201606/heroimg/154/154-mobileskin-1.jpg','false'),(141,'兰陵王','秘技·极意','https://game.gtimg.cn/images/yxzj/img201606/heroimg/153/153-mobileskin-1.jpg','false'),(142,'娜可露露','流刀舞术','https://game.gtimg.cn/images/yxzj/img201606/heroimg/162/162-mobileskin-1.jpg','false'),(143,'张良','言灵·咒令','https://game.gtimg.cn/images/yxzj/img201606/heroimg/156/156-mobileskin-1.jpg','false'),(144,'不知火舞','忍蜂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/157/157-mobileskin-1.jpg','false'),(145,'亚瑟','圣光守护','https://game.gtimg.cn/images/yxzj/img201606/heroimg/166/166-mobileskin-1.jpg','false'),(146,'韩信','杀意之枪','https://game.gtimg.cn/images/yxzj/img201606/heroimg/150/150-mobileskin-1.jpg','false'),(147,'橘右京','秘剑胧刀','https://game.gtimg.cn/images/yxzj/img201606/heroimg/163/163-mobileskin-1.jpg','false'),(148,'张飞','黑暗潜能','https://game.gtimg.cn/images/yxzj/img201606/heroimg/171/171-mobileskin-1.jpg','false'),(149,'孙悟空','大圣神威','https://game.gtimg.cn/images/yxzj/img201606/heroimg/167/167-mobileskin-1.jpg','false'),(150,'牛魔','强力援护','https://game.gtimg.cn/images/yxzj/img201606/heroimg/168/168-mobileskin-1.jpg','false'),(151,'后羿','惩戒射击','https://game.gtimg.cn/images/yxzj/img201606/heroimg/169/169-mobileskin-1.jpg','false'),(152,'刘备','强化霰弹','https://game.gtimg.cn/images/yxzj/img201606/heroimg/170/170-mobileskin-1.jpg','false'),(153,'成吉思汗','追猎','https://game.gtimg.cn/images/yxzj/img201606/heroimg/177/177-mobileskin-1.jpg','false'),(154,'杨戬','神智侵蚀','https://game.gtimg.cn/images/yxzj/img201606/heroimg/178/178-mobileskin-1.jpg','false'),(155,'钟馗','制裁仪式','https://game.gtimg.cn/images/yxzj/img201606/heroimg/175/175-mobileskin-1.jpg','false'),(156,'李元芳','密探谛听','https://game.gtimg.cn/images/yxzj/img201606/heroimg/173/173-mobileskin-1.jpg','false'),(157,'虞姬','树神护佑','https://game.gtimg.cn/images/yxzj/img201606/heroimg/174/174-mobileskin-1.jpg','false'),(158,'诸葛亮','策谋之刻','https://game.gtimg.cn/images/yxzj/img201606/heroimg/190/190-mobileskin-1.jpg','false'),(159,'黄忠','炮手燃魂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/192/192-mobileskin-1.jpg','false'),(160,'哪吒','炙炼火种','https://game.gtimg.cn/images/yxzj/img201606/heroimg/180/180-mobileskin-1.jpg','false'),(161,'太乙真人','黄金闪闪','https://game.gtimg.cn/images/yxzj/img201606/heroimg/186/186-mobileskin-1.jpg','false'),(162,'雅典娜','真神觉醒','https://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183-mobileskin-1.jpg','false'),(163,'蔡文姬','长歌行','https://game.gtimg.cn/images/yxzj/img201606/heroimg/184/184-mobileskin-1.jpg','false'),(164,'干将莫邪','比翼同心','https://game.gtimg.cn/images/yxzj/img201606/heroimg/182/182-mobileskin-1.jpg','false'),(165,'鬼谷子','纵横兵法','https://game.gtimg.cn/images/yxzj/img201606/heroimg/189/189-mobileskin-1.jpg','false'),(166,'东皇太一','暗冕之噬','https://game.gtimg.cn/images/yxzj/img201606/heroimg/187/187-mobileskin-1.jpg','false'),(167,'苏烈','不屈铁壁','https://game.gtimg.cn/images/yxzj/img201606/heroimg/194/194-mobileskin-1.jpg','false'),(168,'百里守约','瞄准','https://game.gtimg.cn/images/yxzj/img201606/heroimg/196/196-mobileskin-1.jpg','false'),(169,'铠','修罗之魂','https://game.gtimg.cn/images/yxzj/img201606/heroimg/193/193-mobileskin-1.jpg','false'),(170,'百里玄策','狂热序章','https://game.gtimg.cn/images/yxzj/img201606/heroimg/195/195-mobileskin-1.jpg','false'),(171,'大乔','川流不息','https://game.gtimg.cn/images/yxzj/img201606/heroimg/191/191-mobileskin-1.jpg','false'),(172,'女娲','辉煌指引','https://game.gtimg.cn/images/yxzj/img201606/heroimg/179/179-mobileskin-1.jpg','false'),(173,'梦奇','食梦','https://game.gtimg.cn/images/yxzj/img201606/heroimg/198/198-mobileskin-1.jpg','false'),(174,'公孙离','晚云落','https://game.gtimg.cn/images/yxzj/img201606/heroimg/199/199-mobileskin-1.jpg','false'),(175,'明世隐','大吉大利','https://game.gtimg.cn/images/yxzj/img201606/heroimg/501/501-mobileskin-1.jpg','false'),(176,'弈星','气合','https://game.gtimg.cn/images/yxzj/img201606/heroimg/197/197-mobileskin-1.jpg','false'),(177,'司马懿','静默之语','https://game.gtimg.cn/images/yxzj/img201606/heroimg/137/137-mobileskin-1.jpg','false'),(178,'狂铁','无畏战车','https://game.gtimg.cn/images/yxzj/img201606/heroimg/503/503-mobileskin-1.jpg','false'),(179,'杨玉环','惊鸿调','https://game.gtimg.cn/images/yxzj/img201606/heroimg/176/176-mobileskin-1.jpg','false'),(180,'孙策','怒潮','https://game.gtimg.cn/images/yxzj/img201606/heroimg/510/510-mobileskin-1.jpg','false'),(181,'米莱狄','机械仆从','https://game.gtimg.cn/images/yxzj/img201606/heroimg/504/504-mobileskin-1.jpg','false'),(182,'裴擒虎','寸劲','https://game.gtimg.cn/images/yxzj/img201606/heroimg/502/502-mobileskin-1.jpg','false'),(183,'元歌','秘术·操控','https://game.gtimg.cn/images/yxzj/img201606/heroimg/125/125-mobileskin-1.jpg','false'),(184,'沈梦溪','暴躁节奏','https://game.gtimg.cn/images/yxzj/img201606/heroimg/312/312-mobileskin-1.jpg','false'),(185,'猪八戒','毫发无伤','https://game.gtimg.cn/images/yxzj/img201606/heroimg/511/511-mobileskin-1.jpg','false'),(186,'盘古','盘古斧','https://game.gtimg.cn/images/yxzj/img201606/heroimg/529/529-mobileskin-1.jpg','false'),(187,'李信','灰暗利刃','https://game.gtimg.cn/images/yxzj/img201606/heroimg/507/507-mobileskin-1.jpg','false'),(188,'嫦娥','月盈','https://game.gtimg.cn/images/yxzj/img201606/heroimg/515/515-mobileskin-1.jpg','false'),(189,'上官婉儿','笔阵','https://game.gtimg.cn/images/yxzj/img201606/heroimg/513/513-mobileskin-1.jpg','false'),(190,'盾山','天地化盾','https://game.gtimg.cn/images/yxzj/img201606/heroimg/509/509-mobileskin-1.jpg','false'),(191,'伽罗','破魔之箭','https://game.gtimg.cn/images/yxzj/img201606/heroimg/508/508-mobileskin-1.jpg','false'),(192,'瑶','山鬼·白鹿','https://game.gtimg.cn/images/yxzj/img201606/heroimg/505/505-mobileskin-1.jpg','false'),(193,'云中君','云间游','https://game.gtimg.cn/images/yxzj/img201606/heroimg/506/506-mobileskin-1.jpg','false'),(194,'曜','星辰之赐','https://game.gtimg.cn/images/yxzj/img201606/heroimg/522/522-mobileskin-1.jpg','false'),(195,'马超','魔影突袭','https://game.gtimg.cn/images/yxzj/img201606/heroimg/518/518-mobileskin-1.jpg','false'),(196,'蒙恬','玄雍防线','https://game.gtimg.cn/images/yxzj/img201606/heroimg/527/527-mobileskin-1.jpg','false'),(197,'西施','少女的把戏','https://game.gtimg.cn/images/yxzj/img201606/heroimg/523/523-mobileskin-1.jpg','false'),(198,'鲁班大师','稷下科技','https://game.gtimg.cn/images/yxzj/img201606/heroimg/525/525-mobileskin-1.jpg','false'),(199,'蒙犽','炽热浑天','https://game.gtimg.cn/images/yxzj/img201606/heroimg/524/524-mobileskin-1.jpg','false'),(200,'镜','铸镜','https://game.gtimg.cn/images/yxzj/img201606/heroimg/531/531-mobileskin-1.jpg','false');
/*!40000 ALTER TABLE `hero` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dg','b4d9248b620ba3e46f51d86534586784',NULL),(3,'dg1','12957bc5ea85682a30fcb8a7b132e618',NULL),(4,'123','6534be9b35fc0736c99dcd7d133161bb',NULL),(5,'qq','9f02ef36a2bd03d34e1d95103f75f23d',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;