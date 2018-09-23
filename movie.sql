SET NAMES UTF8;
DROP DATABASE IF EXISTS movie;
CREATE DATABASE movie CHARSET=UTF8;
USE movie;

/**网站基本信息表**/
CREATE TABLE movie_site_info(
  site_name VARCHAR(16),
  logo VARCHAR(64),
  admin_email VARCHAR(64),
  icp VARCHAR(32),
  copyright VARCHAR(64)
);
INSERT INTO movie_site_info VALUES("我的电影网",'img/logo.png','admin@mm.com','京090856788号','版权所有@2010-2018我的电影网');

/**导航表**/
CREATE TABLE movie_navbar_item(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16),
  title VARCHAR(32)
);
INSERT INTO movie_navbar_item VALUES
(NULL,'首页','跳转到网站首页'),
(NULL,'影讯','最新最热的电影资讯'),
(NULL,'今日影视','查看周围院线动态'),
(NULL,'电影票房','在线订票'),
(NULL,'电视剧','电视剧分类');

/**首页广告轮播**/
CREATE TABLE movie_carousel_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  title VARCHAR(32)
);
INSERT INTO movie_carousel_item VALUES
(NULL,'../images/banner/pic1.jpg','战狼2'),
(NULL,'../images/banner/pic2.jpg','摔跤吧爸爸'),
(NULL,'../images/banner/pic3.jpg','FAN'),
(NULL,'../images/banner/pic4.jpg','神偷奶爸');

/**轮播右侧信息**/
CREATE TABLE movie_banner_right_info(
  rid INT PRIMARY KEY AUTO_INCREMENT,
  rname VARCHAR(128)
);
INSERT INTO movie_banner_right_info VALUES
(NULL,'《三少爷的剑》徐克尔冬升联手淬炼 何润东'),
(NULL,'《五女闹东京》发先导预告 五 “铁蜜”变身古惑仔'),
(NULL,'《怨灵地下室》今天上映 民国背景融入'),
(NULL,'《喵星人》定档2017暑期斥资2亿打造'),
(NULL,'《游戏规则》发燃情版预告 黄子韬开启'),
(NULL,'《中国好声音》全国十四强诞生');

/**首页楼层信息**/
CREATE TABLE movie_floor_info(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
INSERT INTO movie_floor_info VALUES
(NULL,'热播影视'),
(NULL,'电视节目表'),
(NULL,'电视剧'),
(NULL,'电影'),
(NULL,'动漫卡通'),
(NULL,'综艺娱乐'),
(NULL,'最新图片');

/**首页--热播影视**/
CREATE TABLE hotmouse_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO hotmouse_index_product VALUES
(NULL,'延禧攻略','70集全','../images/hotmouse/a_100056295_m_601_m21_260_360.jpg','details.html?lid=1'),
(NULL,'再创世纪','更新至27集','../images/hotmouse/a_100120704_m_601_m15_180_236.jpg','details.html?lid=1'),
(NULL,'等到烟暖收第一季','12集全','../images/hotmouse/a_100178866_m_601_m7_180_236.jpg','details.html?lid=1'),
(NULL,'我和两个他','更新至13集','../images/hotmouse/a_100101550_m_601_m17_260_360.jpg','details.html?lid=1'),
(NULL,'1006的房客','26集全','../images/hotmouse/a_100147838_m_601_m3_260_360.jpg','details.html?lid=1'),
(NULL,'朕的刺客女友','24集全','../images/hotmouse/a_100161325_m_601_m10_260_360.jpg','details.html?lid=1'),
(NULL,'芸汐传','50集全','../images/hotmouse/a_100033091_m_601_m21_180_236.jpg','details.html?lid=1'),
(NULL,'天盛长歌','更新至63集','../images/hotmouse/a_100089604_m_601_m10_180_236.jpg','details.html?lid=1'),
(NULL,'娘道','更新至23集','../images/hotmouse/a2faf34fd5bc47f1abe8013caa04c159.jpg','details.html?lid=1'),
(NULL,'香蜜沉沉烬如霜','更新至63集','../images/hotmouse/a_100158743_m_601_m5_180_236.jpg','details.html?lid=1'),
(NULL,'月嫂先生','更新至27集','../images/hotmouse/a_100056295_m_601_m21_260_360.jpg','details.html?lid=1'),
(NULL,'桃花依旧笑春风','更新至46集','../images/hotmouse/a_100162358_m_601_m6_180_236.jpg','details.html?lid=1');

/**首页电视节目表**/
CREATE TABLE movie_tvprogram(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  title VARCHAR(32),
  timer1 time,
  title1 VARCHAR(32),
  timer2 time,
  title2 VARCHAR(32),
  timer3 time,
  title3 VARCHAR(32)
);
INSERT INTO movie_tvprogram VALUES
(NULL,'../images/tvprogram/tv01.gif','CCTV1综合','21:02','淬火成钢25（首播）','22:00','晚间新闻','22:36','淬火成钢26（首播）'),
(NULL,'../images/tvprogram/tv02 (1).jpg','CCTV2财经','21:15','经济半小时','21:47','中国福利彩票公益开奖','21:50','央视财经评论'),
(NULL,'../images/tvprogram/tv03 (1).jpg','CCTV5体育','19:30','黄金赛场—2017/2018赛季','21:30','体育世界','22:15','体育人生'),
(NULL,'../images/tvprogram/tv04.gif','湖南卫视','20:15','金鹰独播剧场：放弃我抓紧我','21:44','广告','22:00','钻石独播剧场：兰陵王妃'),
(NULL,'../images/tvprogram/tv05.gif','江苏卫视','21:20','芝麻开门（20181027）','22:32','芝麻开门（20181027）','23:41','时代问答'),
(NULL,'../images/tvprogram/tv06 (1).jpg','浙江卫视','20:34','中国蓝剧场：北上广依然相爱情','21:30','今日评说','21:41','中国蓝速递'),
(NULL,'../images/tvprogram//tv07.gif','东方卫视','21:12','东方看大剧','21:25','直播上海（20180915）','21:36','妈妈咪呀精编版'),
(NULL,'../images/tvprogram/tv08.gif','北京卫视','20:34','红星剧场：我的岳父会武术','21:22','苗阜秀（20181120）','22:21','跨界喜剧王精华版'),
(NULL,'../images/tvprogram/tv09.gif','安徽卫视','21:20','超级诊疗室第三季','22:04','超级大首映精编版','23:17','时尚妈咪（20181108）'),
(NULL,'../images/tvprogram/tv10.gif','凤凰卫视','21:00','时事直通车(27/12/16)','22:00','凤凰冲击播：冷暖人生','22:30','大唐西市丝路文明(346)'),
(NULL,'../images/tvprogram/tv11.gif','TVB-翡翠台','20:30','流氓皇帝#12[粤]','21:30','巾帼枭雄之谍血长天#9[粤]','22:30','阿爷厨房[粤]'),
(NULL,'../images/tvprogram/tv12.jpg','中天综合台','21:00','SS小燕之夜 首播','22:00','小明星大跟班 首播','23:00','18岁不睡 首播');

/**首页电视剧，电影，综艺，动漫左侧**/
CREATE TABLE tvplay_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  href VARCHAR(128)
);

/**首页右侧内容*/
CREATE TABLE movie_right(
  rid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  info VARCHAR(32)
);
INSERT INTO movie_right VALUES
(NULL,'蓝色大海的传说','更新至13集'),
(NULL,'极品家丁','更新至10集'),
(NULL,'锦绣未央','更新至13集'),
(NULL,'青云志2','更新至15集'),
(NULL,'举重妖精金福珠','更新至8集'),
(NULL,'我的岳父会武术','更新至26集'),
(NULL,'嫉妒的化身','更新至22集'),
(NULL,'西部世界第一季','更新至23集'),
(NULL,'微能力者','更新至11集'),
(NULL,'浪漫医生金实福','更新至8集'),
(NULL,'七次的初吻','更新至45集'),
(NULL,'北上广不相信眼泪','更新至36集');

/**用户信息表**/
CREATE TABLE movie_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  user_name VARCHAR(32),
  gender INT
);
INSERT INTO movie_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567','丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568','林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569','窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560','秦小雅', '0');