/*
 Navicat Premium Data Transfer

 Source Server         : movie
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : movielist

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 25/05/2021 20:26:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `like` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `download` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moviename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('你爱了23年的女孩长大了，别忘了她曾有多有自由', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2370846705.webp', 'https://img2.doubanio.com/icon/u147681591-2.jpg', '新世相', '2021-05-18 19:32:41', '今天（5月17日）是我惦记了好久的日子，是一位可爱女士的生日：方慈。你可能不熟悉她的名字，但你一定听过的艺名：江湖人称：小燕子。英文名：swallow.谁不爱小燕子呢？她是表情包届无可撼动的大佬。和五阿哥的“永燕CP”，已经是B站最受欢迎的CP之一。她和五阿...', '32', '', '2回应', 1, '吉祥如意');
INSERT INTO `comment` VALUES ('《爱，死亡和机器人2》完全看片指南', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641221021.webp', 'https://img2.doubanio.com/icon/u144464879-2.jpg', '未来事务管理局', '2021-05-14 22:52:30', '这篇剧评可能有剧透轻微剧透本文在观片前、后都可食用今天，万众期待的《爱死机2》终于上线，Netflix一次性放出了全部8集！憋了两个月的大消息终于可以宣布了：作为时间线管理机构，（我们当然提前知道了，删掉）我们精准押中了8集中（可能是最好看）的两篇！这部由大卫·芬奇和蒂姆·米勒担...', '360', '6', '36回应', 2, '八佰');
INSERT INTO `comment` VALUES ('《东城梦魇》：拯救的徒劳', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2637878518.webp', 'https://img1.doubanio.com/icon/u180693708-27.jpg', 'Enlightening', '2021-05-17 19:59:58', '这篇剧评可能有剧透作者：Enlightening首发：[陀螺电影]随着流媒体不可逆地冲击了传统院线，对于聚集了流媒体巨头的美国来说，电影和电视的界限变得前所未有的模糊。好莱坞巨星们没有选择躲在大制片厂的摄影棚中坐以待毙，妮可·基德曼、艾米·亚当斯和梅丽尔·斯特里普等昔日的电影明星在近年...', '25', '', '12回应', 3, '玫瑰岛的不可思议的历史');
INSERT INTO `comment` VALUES ('沉默又巨大的人类和无聊却充满好奇心的机器人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641221021.webp', 'https://img2.doubanio.com/icon/u179103151-3.jpg', 'Simon', '2021-05-14 18:13:14', '1.自动化客服一：当人类不再劳作，仅仅享受科技进步带来的福利时，人早已成为机器的奴隶，被征服成了必然。二：看似是人类与机器的对立，到头来还是资本家和消费者的战争。消费成为了一件强制又残忍的事情，不买则死。这种环境造成了消费者之间的互不信任，人类依靠没有人性...', '335', '19', '118回应', 4, '命运之夜——天之杯Ⅲ：春之歌');
INSERT INTO `comment` VALUES ('第三集剧评：一个鞭策女性去生孩子的故事？我不这么觉得。（剧透警告⚠️）', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641221021.webp', 'https://img3.doubanio.com/icon/u197752648-1.jpg', '想好好生活', '2021-05-14 23:46:43', '这篇剧评可能有剧透自知水平尚浅，对剧集的理解肯定绝对必然没有各路大佬厉害。但在看完第三集之后，我去洗了个碗、上了个厕所，过程中回味着第三集，越发兴奋。然后实在忍不住想跑到豆瓣上来找找共鸣，结果发现在讨论的是——还是不想生孩子什么啊？？？？？别误会，我认为生孩子与否是每个人...', '137', '18', '93回应', 5, '我和我的家乡');
INSERT INTO `comment` VALUES ('幻之光：是枝裕和牵引生命的海边之光', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2186795930.webp', 'https://img3.doubanio.com/icon/u182975599-141.jpg', '松枝清显', '2021-05-14 20:36:10', '[本文首发于本人公众号：林浮云。欢迎关注。]他曾经说过：“大海在召唤你”，爸爸过去常常出海，他说当他出海感到孤单的时候，常常会看到一束美丽的光。在远处闪呀闪，召唤着他。我想，这也会发生在任何人身上。《幻之光》是是枝裕和导演的处女作，同时也是我私人的是枝裕和...', '56', '', '2回应', 6, '紧急救援');
INSERT INTO `comment` VALUES ('我们该如何安置眼睛的归属', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2557035652.webp', 'https://img2.doubanio.com/icon/u165173830-3.jpg', '嘿 我要走了', '2021-05-18 17:42:19', '这篇影评可能有剧透男性凝视与二次元的联系已经被鞭尸了太多次。固然这是个恶心的现状，只要社会的男性威权一天不倒下，无论是男性受众还是女性受众，都会落于这样的圈套中。甚至可以夸张一点的说，男凝视角是绝大多数日漫的根本属性。前阵子大火的《鬼灭之刃》，原作漫画作者虽然身为女性，男凝...', '5', '', '1回应', 7, '犹大与黑弥赛亚');
INSERT INTO `comment` VALUES ('陪你一起长大 陪你一起变老', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2634295370.webp', 'https://img9.doubanio.com/icon/u233800447-6.jpg', '一定一定', '2021-05-19 05:16:14', '第一时间看完电影深深的觉得自己这些年来追对人了无法表达自己的心情看到23岁的世勋美好的让人流泪让人心动不已从来没有见过这么好的艺人和演员从来没有在大银幕上看过这么帅的男人这么完美的眉眼感觉自己没看错人演的真的好能看出来他付出了多少努力和汗水喜欢一...', '3', '', '1回应', 8, '鬼灭之刃那田蜘蛛山篇');
INSERT INTO `comment` VALUES ('如坐针毡、如芒刺背、如鲠在喉', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623496825.webp', 'https://img9.doubanio.com/icon/u63374183-4.jpg', '八卦先生', '2021-05-15 16:18:48', '这篇剧评可能有剧透刘敏涛和文淇都是口碑不错的女演员，都有几部口碑很好的作品，演技也受大家认可，但没想到两人一起主演的新剧《生活家》一开播，就让人大失所望，用“如坐针毡、如芒刺背、如鲠在喉”来形容都不为过。（为方便理解，下文用演员名字代替角色名）《生活家》里，刘敏涛和文淇饰...', '55', '5', '14回应', 9, '疯狂原始人');
INSERT INTO `comment` VALUES ('西西里的美丽传说', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2441988159.webp', 'https://img3.doubanio.com/icon/u232857148-1.jpg', 'w碧潭飘雪h', '2021-05-18 18:49:30', '所有的美都不可触及，能够触及的皆为平平。N多年前看过的影片，关于玛莲娜和雷纳多的角色记忆，经过时间的碾磨已经变成零星的段落。以雷纳多的视角讲述西西里岛最美女人的传说，仿佛疼痛会些许减轻。那辆飞转的单车记录着雷纳多青春期心理和生理躁动的行迹。追寻的目光，悄悄...', '3', '', '0回应', 10, '神奇女侠');
INSERT INTO `comment` VALUES ('“幽灵”的一种可能：在同一电影空间中，幽灵肉身与缺席过往的再现。', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546247180.webp', 'https://img2.doubanio.com/icon/u198334798-2.jpg', 'donnie', '2021-05-17 22:33:00', '这篇影评可能有剧透“幽灵”的一种可能：在同一电影空间中，幽灵肉身与缺席过往的再现。伏笔：P1中母亲出狱（收到了四年前丈夫写的信，在丈夫尸体边发现）走着走着倒下与P2母亲发现在河对岸的儿子尸体（其他母亲在河这一边认领尸体）。P3母亲与外婆相见（外婆应该已经死了），交代两个儿子死了。...', '3', '', '1回应', 11, '兴安岭猎人传说');
INSERT INTO `comment` VALUES ('《隐秘而伟大》观后感', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2517672847.webp', 'https://img2.doubanio.com/icon/u200080131-3.jpg', 'oooo', '2021-05-19 09:16:10', '这部剧我也算是从头到尾追下来的，虽然看到后面好心疼男主等了会更新从后往前追。不得不说，李易峰的演技真的提高了很多，这是有目共睹的。刚开始确实是冲着他才去看的这部剧，到后面发现完全是剧情以及人物设定吸引了我，到后面我分享时完全是冲顾耀东这名字。沉淀并不是沉...', '2', '', '1回应', 12, '白虎');
INSERT INTO `comment` VALUES ('真实事件改编，这部比《熔炉》更震撼的高分片，我不忍心看第二遍', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2596147131.webp', 'https://img9.doubanio.com/icon/u167071520-4.jpg', '酒仙桥14号', '2021-05-18 12:31:22', '校园生活，本该是人一生中最纯真快乐的回忆。但如果是在“豫章书院”那样的学校，再遇到个杨永信那样的老师，恐怕真的是噩梦一场了。“豫章书院”和杨永信这样扭曲人性的教育方式，因新闻的曝光才引起社会关注。然而，他们的最终结果只是关停。杨永信的行政职位仍是临沂市...', '3', '', '1回应', 13, '电话');
INSERT INTO `comment` VALUES ('看过很久了，还是很喜欢', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2517672847.webp', 'https://img9.doubanio.com/icon/u226864397-4.jpg', '悠悠子', '2021-05-18 15:05:41', '我喜欢这部剧的人物设定，不同于其他谍战剧，这部剧的男主的起点真的不高，一个懵懂无知，对国民党失望透顶的小警察。而他的成长，对当时社会腐朽的失望，一步步走进共产党，深刻的写出了我们党领导的正确性。他和杨会计的谈话真的是看一遍哭一遍，那从内心深处透露出的无力，...', '5', '', '0回应', 14, '拆弹专家');
INSERT INTO `comment` VALUES ('很感激那些靠知识救国的伟人们', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2645784468.webp', 'https://img9.doubanio.com/icon/u224332871-4.jpg', 'Pocky', '2021-05-18 13:55:10', '被《觉醒年代》带进了正剧的坑，补完几部比较好评的之后陷入剧荒，这两天发现电视上播了新的《大浪淘沙》，就开始全家人一起追着看了。目前刚播出几集，节奏比较慢，比较像在为后面的剧情奠定基础，但和我最近看的这些对比起来有个优势：细节把握得很到位。可能因为下功夫去刻...', '61', '', '5回应', 15, '哆啦A梦：大雄的新恐龙');
INSERT INTO `comment` VALUES ('看懂《卧虎藏龙》：章子怡为何跳崖？李安想隐喻什么？', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1507810991.webp', 'https://img9.doubanio.com/icon/u63048086-5.jpg', '电影夫人', '2021-05-17 20:26:18', '这篇影评可能有剧透《卧虎藏龙》结尾，玉娇龙纵身一跃，跳下了云雾缭绕、深不见底的山崖。立于崖上的罗小虎，默然无语，热泪双流。银幕之前的观众们，内心怅然，不知所措……大伙儿想不通，为啥要自杀嘛？明明人长得漂亮，出身高贵，武艺又超群！生此浮华尘世，究竟哪里不合蛟龙妹妹的心意呢...', '2', '', '0回应', 16, '许愿神龙');
INSERT INTO `comment` VALUES ('“谎言之家”——浅谈《秘密访客》', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2640266496.webp', 'https://img2.doubanio.com/icon/u178061530-2.jpg', '蓝莓山药泥', '2021-05-19 10:45:00', '这篇影评可能有剧透一个不见天日的访客，两个同妻的逃离，三个牺牲品的孩子，四个没有血缘关系的家人，五个人的各怀鬼胎，凑成的谎言之家，陈正道导演又双叒叕带着他的悬疑剧情片来了！作为陈正道导演的“悬疑三部曲”最后一部，陈导的班底不可谓不用心，主演郭富城（之前演过他的《天亮之前》）...', '3', '', '0回应', 17, '蜡笔小新：激战！涂鸦王国和约四位勇士');
INSERT INTO `comment` VALUES ('这剧的调性让我很怀旧', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2549533685.webp', 'https://img2.doubanio.com/icon/u205952989-2.jpg', '嘿嘿嘿', '2021-05-18 12:51:37', '很多人会觉得这个剧不像是杨幂会演的，或者说感觉在这个剧里看到那些熟悉的脸会有一些别扭，这是因为看惯了他们以往的剧多少有点偶像滤镜。最开始看的时候其实我也是为了来看帅哥美女的，但是看着看着就觉得剧情真的很棒，这里我再次再次要夸一下梁振华老师，他作为编剧真的给...', '3', '', '0回应', 18, '沿路而下');
INSERT INTO `comment` VALUES ('千万别惹郭达森，否则死得很难看 ！！！', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642842673.webp', 'https://img3.doubanio.com/icon/u71853537-1.jpg', '自由行走的蓝', '2021-05-18 10:59:52', '电影名字《人之怒》起得非常贴切霸气！杰森斯坦森演绎的男主H确实是光凭着满腔的仇恨和愤怒，就可以亳不畏惧，视死如归地投身到危机四伏的复仇大业里！❤️之前，郭达的硬汉角色大都是为了维护自己的利益和保护客户或弱势群体而被迫向要致自己于死地的对头展开反击！但...', '1', '', '0回应', 19, '女人的碎片');
INSERT INTO `comment` VALUES ('共存与独霸：Nausicca与Kushana的路线之争', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p1917567652.webp', 'https://img2.doubanio.com/icon/u2096229-3.jpg', '葡萄奶茶☕️', '2021-05-18 04:29:03', '这篇影评可能有剧透最初的标记是09年9月，上周末从图书馆借来光碟重看了。Nausicaa和Kushana分别代表两种不同路线。Nausicaa是和平主义、相互尊重、共存。再往下推可以推论出，地球上的万物都是平等的。而Kushana推崇力量，成王败寇，有力量，就能/也应该，去占有更大生存空间。只从本片看来，K...', '1', '', '0回应', 20, '你的眼睛在追问');
INSERT INTO `comment` VALUES ('怦然对你心动！', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p501177648.webp', 'https://img2.doubanio.com/icon/user_normal_f.jpg', '大宝贝亦奕', '2021-05-18 10:32:06', '女孩对男孩的执念，就是她对那棵大树的执念一样！男孩厌倦女孩天天烦他，却不知道情早已牵系于她！男孩爷爷说的那段话真的太触动人心了！两个小演员把那种纯真的，懵懵的少情愫演得非常到位！非常共鸣！！不知道听谁说的，在十几岁喜欢上的人，会喜欢一辈子的！虽然世界纷纷扰...', '4', '', '0回应', 21, '寻龙传说');
INSERT INTO `comment` VALUES ('打五星的是真没看过好电影！', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2639035790.webp', 'https://img2.doubanio.com/icon/u174823400-12.jpg', '蟹老板', '2021-05-18 05:23:10', '这篇剧评可能有剧透真的特别失望，最失望的是各路高分评价，我真怀疑这帮人是真没看过好电影还是从小没读过好故事？男主一开始是个倒霉的白莲花到最后竟然还是个倒霉的白莲花，所以安排男主进监狱的意义何在？监狱里杀人的意义又何在？神秘的27号一开始竟然只是个卧底的普通探员，到最后还是个...', '2', '', '0回应', 22, '发财日记');
INSERT INTO `comment` VALUES ('东北人观影后的几点吐槽', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2641614433.webp', 'https://img3.doubanio.com/icon/u2348106-11.jpg', '信豸君', '2021-05-18 23:23:28', '可能不太重要，但是不吐不快剧情让人无法投入，无法共情。首先落地在冬天东北的荒原里，大家都穿成球了，但是每个人都干干净净的。小兰在镜头里更是干净漂亮，完全让人想不到她居然也是行动里的一名特工。冬天啊，荒野里，下着大雪，围巾都不挡脸，没有一点受冻的感觉。脸蛋...', '2', '', '0回应', 23, '曼克');
INSERT INTO `comment` VALUES ('生是为人父母的原罪', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555295759.webp', 'https://img3.doubanio.com/icon/u167544194-21.jpg', 'Aolmes', '2021-05-18 12:16:05', '《何以为家》的中文海报，上面印着一行很有意思的字：我要控告我的父母，因为他们生下了我。恐怕每一个看见这句话的中国人都会在心中冒出一句“大逆不道”，因为在我们的传统观念里，恩情莫大于生养，而生养我们的人是父母。但是当我看完这个影片后，我却不得不去想：赐予孩童...', '2', '', '2回应', 24, '弓蕉园的秘密');
INSERT INTO `comment` VALUES ('《文明人》', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624607255.webp', 'https://img2.doubanio.com/icon/u195800135-3.jpg', '苏小坡是也', '2021-05-18 23:19:01', '这里面的所谓“文明人”根本不文明，甚至比原始人一家还要野蛮。他们披着文明的外衣，但是实际上是靠掠夺他人（电影里的猴子）的水源来变的“文明”的，和西方的强盗文化简直如出一辙。讽刺的是，电影最后创造了一个假想敌，一个现实中压根没有的“怪物”，让这些“文明人”拯...', '1', '', '0回应', 25, '号犯人');
INSERT INTO `comment` VALUES ('About我的感受 乱说一气', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2272563445.webp', 'https://img3.doubanio.com/icon/u162811224-60.jpg', '懒汉的白日梦', '2021-05-17 00:27:24', '看完了，好久没有看电视剧了，因为一旦看起来就会没日没夜地追，这次控制地还好惹。好看！明明有很多想讲的但突然就不知道该讲什么了！很喜欢善宇和宝拉，前者在剧里有很明显的成长过程，拥有我所欣赏的男孩子的一切品质！过早的懂事又让人心疼（当然要是再痞坏一些就更好了，...', '3', '', '0回应', 26, '发掘');
INSERT INTO `comment` VALUES ('永远为中土热泪盈眶', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642829472.webp', 'https://img2.doubanio.com/icon/u209744181-2.jpg', '青薏', '2021-05-18 00:14:54', '从初中第一次看就被美轮美奂的中土世界震撼，到如今终于在大荧幕上欣赏它，我多年的心愿终于得偿。即使深知自己的文笔只够应付高考800字作文，我也忍不住为它写下人生中的第一篇长篇影评。很难再找到一部电影给我如此多印象深刻的场景。雪山、烽火与骑士；广袤的平原上飞奔的...', '1', '', '0回应', 27, '除暴');
INSERT INTO `comment` VALUES ('胶片时代的爱情，娓娓道来的诗意', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2268713497.webp', 'https://img3.doubanio.com/icon/u201046633-1.jpg', '二十.', '2021-05-16 02:01:03', '这篇影评可能有剧透在拍影片《庆州》的时候，张律导演在电影上所做的创新达到了一个新的高度，而这种创新却并未延续到这部实验性更加浓厚的《胶片时代的爱情》之中，反而是回到了自己最擅长的空镜头语言表述，做到了另一种形式上的突破。第一场：爱黑白画质下的精神病院显得压抑又沉闷，老人闭...', '5', '', '0回应', 28, '爱与怪物');
INSERT INTO `comment` VALUES ('电视剧里的穷人果然都是精致风的“伪穷人”', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623496825.webp', 'https://img3.doubanio.com/icon/u225458647-1.jpg', '飒飒的圆子', '2021-05-16 21:31:25', '实在很少打一星，打两星吧。文琪妹子在这部剧的造型不好看，显得眼距太宽。编剧不接地气，花六千租房，北京上海月薪两三万的都不一定舍得，毕竟还有日常开销娱乐消费。这种单亲母亲，收入低有孩子的，不是住郊区自建房，就是市区半地下或者跟人合租。举个简单真实案例，易烊千...', '3', '', '6回应', 29, '无声');
INSERT INTO `comment` VALUES ('谁的情话 传颂千年', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2645106865.webp', 'https://img9.doubanio.com/icon/u88211846-15.jpg', '玄黄天', '2021-05-15 16:42:27', '受邀看完戏剧（粤剧）电影-《白蛇传情》了，泪目了三次，全场浸入式体验梅花奖得主曾老师的戏剧魅力，这次中国古典戏剧体验完美满分结束。全程粤语听的人极度舒适，说腔和唱腔的搭配让人回到小时候坐在电视机前看白蛇传的感动。音乐转折即经典喜剧有氛围又有交响乐团和国际顶...', '13', '', '2回应', 30, '菊石');
INSERT INTO `comment` VALUES ('一个吐槽', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2646758688.webp', 'https://img2.doubanio.com/icon/u226897173-2.jpg', 'Mengmeng', '2021-05-16 19:17:18', '上映第一天就跑去看了，看的时候哭了几次，看完之后越想越后悔。主题明明是抗灾，为什么两个主角都散发着偶像剧男女主的气质？为什么影片里会出现“医生你救得了我的命，救不了我的心”这样狗血言情剧台词？主角怀着身孕还跑出去淋雨，快生了又跑出去，最后都还要麻烦医护人员...', '4', '', '3回应', 31, '我是大哥大电影版');
INSERT INTO `comment` VALUES ('哪是啥「人之怒」，这分明「就是玩」︱徐元专栏', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642842673.webp', 'https://img3.doubanio.com/icon/u167697869-1.jpg', '枪稿', '2021-05-17 20:35:26', '这篇影评可能有剧透盖里奇，真顽皮文/徐元作者简介：电影媒体人，现为自媒体公号“枪稿”主编，曾任《电影世界》主编、《大众电影》副主编。1盖·里奇的新片《人之怒》上画了，评价日渐走低，统而言之，坊间的看法主要说它虎头蛇尾，根本不够爽。按照传统或者说标准的眼光看，如此评判《人之...', '2', '', '0回应', 32, '金刚川');
INSERT INTO `comment` VALUES ('。。。', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2641614433.webp', 'https://img9.doubanio.com/icon/u182022498-5.jpg', '石子儿', '2021-05-18 11:08:38', '后悔起了个大早坐在电影院里浪费我的两个小时。这都什么剧情?一般来着这类影片我是抱着积极态度看的，没想到这部看完我内心没啥波澜，甚至看的时候就觉得有些地方好无语。小兰这个角色存在的意义是啥？电影画面她出现的时候都是眨着大大的眼睛，委委屈屈地哭，收拾得精致体面...', '1', '', '0回应', 33, '姜子牙');
INSERT INTO `comment` VALUES ('只有孤独是你永远的朋友', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2274320140.webp', 'https://img2.doubanio.com/icon/u174772269-3.jpg', '二斤牛肉一斤酒', '2021-05-19 00:06:23', '这篇影评可能有剧透年少的时候喜欢看王家卫，看他的风花雪月和求而不得。在我看来王家卫的电影就像是侠客的出鞘利刃，随心所欲，快意恩仇，有着随时为爱牺牲的疯狂。而贾樟柯常常让我觉得是一把老猎手的柴刀，它属于普通的小人物，看上去锈迹斑斑，极不起眼。只有真的在社会上摸滚打爬，受过了毒...', '1', '', '1回应', 34, '剧场');
INSERT INTO `comment` VALUES ('忍不住要逼逼两句', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642842673.webp', 'https://img2.doubanio.com/icon/u152008635-2.jpg', '整活儿达里奥', '2021-05-18 01:25:07', '这片儿多少有点失望的，有几个点看完之后真的忍不住相当想吐槽。1.为啥郭达要睡那个女的？搜出来钱之后竟然只是恐吓一下，以为后面会有反转，没想到那女的真的啥事没有2.就是死不了，先是看着儿子被爆头，自己中六枪屁事没有；然后再说抢仓库，还专门派一个人看着他，反正都死...', '2', '', '2回应', 35, '星期一');
INSERT INTO `comment` VALUES ('观后感', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642829472.webp', 'https://img3.doubanio.com/icon/u153401909-1.jpg', '風風', '2021-05-17 12:20:40', '感谢CGS中国巨幕极佳的观影体验，《指环王3：王者归来》观影完毕，三部曲总时长10个小时，它不冗长，我再次沉浸其中，就像一次史诗冒险。当年是看着希优顿的阵前演说以及骑兵冲锋，还有亡灵大军血虐兽人，这极大满足自己的中二幻想，现在觉得两个霍比特人的故事线更吸引人。弗...', '1', '', '0回应', 36, '灰猎犬号');
INSERT INTO `comment` VALUES ('这是什么浪漫的东西！！', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2167119775.webp', 'https://img9.doubanio.com/icon/u173019137-36.jpg', '车儿澈儿', '2021-05-17 17:48:02', '这篇影评可能有剧透书上说戈达尔自己并不十分喜欢这部电影，因为“它带有法西斯主义的味道，这表现为它一味地拒绝社会关系，并宣扬一个逃离现实社会关系之外求取生活的神话”。——没有啊，米歇尔最后不是死了吗，我以为它是讲神话的幻灭。帕特丽夏的胆怯让她既不开心也不自由。一个选择悲伤，一...', '1', '', '0回应', 37, '担保');
INSERT INTO `comment` VALUES ('爱是生活的答案吗？', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p456703618.webp', 'https://img2.doubanio.com/icon/u198676481-2.jpg', 'firework', '2021-05-18 19:45:21', '这篇影评可能有剧透东京教父是我见过全景用的最多的电影之一，画面中渺小的人身后，是灯火通明的高楼大厦，加上俯拍镜头，使人在城市中显得微不足道。城市是冰冷的，它会把人分成三六九等，有的人身居高位，有的人有体面的工作，有的人无家可归，露宿街头，人们互相画好圈子，鄙视圈外的人，但无...', '1', '', '0回应', 38, '乡下人的悲歌');
INSERT INTO `comment` VALUES ('Netflix韓劇丨《我是遺物整理師》：每個亡者背後，都有一段不為人知的故事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641916348.webp', 'https://img1.doubanio.com/icon/u185084570-8.jpg', 'Puff', '2021-05-15 18:45:11', 'Netflix上線當日，就衝著李帝勳以及該題材，一口氣連看了6集，1季花2天食畢，非常喜歡！整部劇以患有亞斯伯格症的遺物整理師的視角出發，看待別人的生離死別，解構亡者所要傳達的無形訊息，一直到最後一集才又回到角色身上，看待自身親人的死去，解構親人留給他的訊息。該劇對...', '4', '1', '0回应', 39, '世界新闻');
INSERT INTO `comment` VALUES ('一些简单的感慨', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570235120.webp', 'https://img9.doubanio.com/icon/u155558394-5.jpg', 'Marin', '2021-05-17 18:41:15', '导演视听水平还可以，但指导演员水平不行，母亲听到建和把女生肚子搞大的时候，那个反应镜头的力度没到，但他用的推加侧移算是把分量提了一些，但还是不够。那个镜头很重要，就这一个镜头还是能看出来，导演的能力也许还撑不起这种比较挣扎的心理戏，陈建和分量够，但感觉...', '1', '', '0回应', 40, '一点就到家');
INSERT INTO `comment` VALUES ('才华、热情、不惧寂寞的坚强', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2572814647.webp', 'https://img1.doubanio.com/icon/u193002947-7.jpg', '十八摸一定申遗', '2021-05-17 19:03:50', '并非是剧评，只是单纯记录一些触动，而简短评论又有字数限制。也许因为心境缘故，看了之后超乎寻常的喜欢。很早前就看过漫画，其实对于这部漫画倒是没有什么强烈的印象，虽然一本正经朗诵官能小说这个情节的确很有意思。与其说喜欢耽美、喜欢感情线，不如说是纯粹喜爱木岛理生...', '1', '', '0回应', 41, '波拉特');
INSERT INTO `comment` VALUES ('高空扁带酷炸了！', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2635113603.webp', 'https://img2.doubanio.com/icon/u186460716-2.jpg', 'Shane_山羊', '2021-05-18 16:02:26', '这篇剧评可能有剧透这部纪录片带我换了一个视角，一起沉浸于山海，漫游世界。极限运动+自然人文，是这部纪录片的主要看点，纪录片通过一些小众的极限运动，去讲那些背后的人文故事。其中我最喜欢的就是第五集关于高空扁带这项运动，其实也是出于我的某种猎奇心理吧哈哈哈。之前只是听说过高空扁带...', '2', '', '0回应', 42, '晴雅集');
INSERT INTO `comment` VALUES ('马戏之王的影评，个人粗见', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2511346392.webp', 'https://img1.doubanio.com/icon/u220602029-18.jpg', '吴京（打拳中', '2021-05-18 18:26:03', '这篇影评可能有剧透俗套的故事流畅的叙事昨天看的第二遍，没有第一遍看得开心也不知道为什么。我太喜欢这部电影的前十分钟盛大的歌舞落幕之后时间回到男主幼年音乐真的不用再夸了，音乐就是最原始的情绪，每个鼓点都刚刚好。嗨，我特喜欢男主小时候这一段和喜欢的人在水边私定终身太浪漫了...', '1', '', '0回应', 43, '里夫金的电影节');
INSERT INTO `comment` VALUES ('飞逝的时光', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2187822907.webp', 'https://img9.doubanio.com/icon/u160535182-4.jpg', '幽闭公主', '2021-05-18 13:05:36', '看老友记看了一遍又一遍，发觉前几季都在日常，大家耍宝，工作，不停的约会，试错。反省。接触各种各样的人。然后在莫妮卡和钱德结婚后，时间似乎变得飞快而无法挽回。乔伊不再一直试镜，而是当了电影明星。瑞秋怀孕生子。菲比结婚。大家都好像在无数的试错中找到了自己的方...', '1', '', '0回应', 44, '名侦探柯南：绯色的不在场证明');
INSERT INTO `comment` VALUES ('军师联盟|啦啦啦，黑猫警长！-第16集', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2468698085.webp', 'https://img2.doubanio.com/icon/u170225145-3.jpg', '馒头渣炒蛋', '2021-05-17 21:50:18', '这篇剧评可能有剧透（以下文字随便搬运，无需署名）你能为你的梦想付出的最大代价是什么？性命吗？错！是成为一个平凡的人。如果你想到这个答案，恭喜你，你是标准搞事人，此生注定不平凡。因为，司马懿为了平凡，耗尽心机。他把他的野心隐藏的很好。父亲，大哥都供职曹氏集团，他没有托...', '1', '', '0回应', 45, '熊出没·狂野大陆');
INSERT INTO `comment` VALUES ('有人说它浮夸，可是我挺喜欢它', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2626880626.webp', 'https://img1.doubanio.com/icon/u2167251-8.jpg', '人间指难', '2021-05-18 21:44:50', '就是这样一部片子，竟然看到落泪。特别是拔叔怒砸洗手间的时候，好像又回到了之前看迷雾剧场，沉默的真相里江阳丢了钱包，一下子突然撑不下去的感觉。至于剧情，很难说，有人看到了枪战，有人看到了搞笑，还有极客啥的，感触最深的还是治愈，父女间的亲情和释怀，费老大...', '1', '', '0回应', 46, '贩肤走卒');
INSERT INTO `comment` VALUES ('第一次看到群像这么完整的党史正剧', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2645784468.webp', 'https://img3.doubanio.com/icon/u62897159-1.jpg', '千里之外', '2021-05-18 13:00:54', '播到第九集了，我最大的感慨就是对每个人物的细致刻画。不像是以前的有些电视剧以几位领头人为主角然后展开讲述。我觉得是相对来说客观的，但又整体的去塑造了各个不同的人物。印象比较深刻的是一大南湖会议的一些细节吧。首先是张国焘在会议上对组织工作表露出来的野心，还有...', '62', '', '7回应', 47, '新秩序');
INSERT INTO `comment` VALUES ('S6E1目前找到的梗（补充关于“echo”的猜测）', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2645092056.webp', 'https://img3.doubanio.com/icon/u141721066-11.jpg', 'atopos_612', '2021-05-11 15:59:09', '肯定不全，在豆瓣上也存一下，坐等其他大佬找梗。1.角色是commediadell’arte梗，都带面具，且最主要的pantalone、innamorati、capitano、zanni都有。实际上台词里也出现了，只不过这版字幕错译了，commediadell’arte是意大利即兴喜剧。包括剧中提到的递情书的“支线任...', '92', '', '57回应', 48, '逃跑');
INSERT INTO `comment` VALUES ('？？？？', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2603037344.webp', 'https://img3.doubanio.com/icon/u82344861-10.jpg', '[己注销]', '2021-05-15 18:00:53', '这篇剧评可能有剧透看了点这剧，本以为是外来妹2021，结果根本不是。最有意思的是，剧情让我想起我大概小学初中时期胡乱写的一部当然非常不成熟且根本没有完成的小说（开头）。小说（开头）内容大概是这样的：一个土土的弱弱的但聪明又倔强的小姑娘，独自一人到了大城市，到达的第一天，就出了点...', '6', '', '0回应', 49, '胜利号');
INSERT INTO `comment` VALUES ('《觉醒年代》：“铁肩担道义，妙手著文章。”', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631873666.webp', 'https://img2.doubanio.com/icon/u169852627-3.jpg', '张诗婉', '2021-05-16 21:03:58', '这篇剧评可能有剧透[觉醒年代]“铁肩担道义，妙手著文章”这篇文章真的是写了又删，删了又写……因为到现在为止，我都无法用一个比较贴切的词语或是一段话去形容守常先生，一切美好的词语形容他都不为过，他对于中国共产党的产生与发展有着不可磨灭的烙印，他对于当时那个低迷的时代、对于那个...', '6', '', '0回应', 50, '砍人快乐');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('https://img3.doubanio.com/view/group/sqxs/public/ce9cf903bd47971.jpg', '「米飯大好き」', 1, '(7428)');
INSERT INTO `group` VALUES ('https://img2.doubanio.com/view/group/sqxs/public/07f8aa518fd770f.jpg', '美剧fans', 2, '(351830)');
INSERT INTO `group` VALUES ('https://img1.doubanio.com/view/group/sqxs/public/1cb4886ba7627a7.jpg', '日剧fans', 3, '(356793)');
INSERT INTO `group` VALUES ('https://img3.doubanio.com/icon/g68535-1.jpg', '看日剧过生活', 4, '(28308)');
INSERT INTO `group` VALUES ('https://img3.doubanio.com/icon/g11112-1.jpg', 'AllaboutBBC\n', 5, '(83507)');
INSERT INTO `group` VALUES ('https://img9.doubanio.com/view/group/sqxs/public/f7e8f68dc30a704.jpg', '爱看电影', 6, '(353981)');
INSERT INTO `group` VALUES ('https://img2.doubanio.com/icon/g12330-3.jpg', 'johnnys事务所', 7, '(11669)');
INSERT INTO `group` VALUES ('https://img9.doubanio.com/icon/g16565-4.jpg', '康熙来了', 8, '(163080)');
INSERT INTO `group` VALUES ('https://img3.doubanio.com/view/group/sqxs/public/97f257c04693edd.jpg', '二宫和也', 9, '(7287)');
INSERT INTO `group` VALUES ('https://img3.doubanio.com/icon/g11509-1.jpg', '日本电影', 10, '(45644)');
INSERT INTO `group` VALUES ('https://img1.doubanio.com/view/group/sqxs/public/05d2ea0daaea209.jpg', '日本OST配乐&音乐人', 11, '(8665)');
INSERT INTO `group` VALUES ('https://img3.doubanio.com/view/group/sqxs/public/3426b0acddd831e.jpg', '狂愛TVB', 12, '(188320)');

-- ----------------------------
-- Table structure for movielists
-- ----------------------------
DROP TABLE IF EXISTS `movielists`;
CREATE TABLE `movielists`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tabs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 339 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movielists
-- ----------------------------
INSERT INTO `movielists` VALUES ('鬼灭之刃剧场版无限列车篇', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623798236.jpg', '8.1', 1, 'hot');
INSERT INTO `movielists` VALUES ('唐人街探案', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2622388983.jpg', '5.5', 2, 'hot');
INSERT INTO `movielists` VALUES ('角头外传：浪流连', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2570793762.jpg', '6.0', 3, 'hot');
INSERT INTO `movielists` VALUES ('氧气危机', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642895723.jpg', '6.3', 4, 'hot');
INSERT INTO `movielists` VALUES ('黑道与家族', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2625912897.jpg', '7.8', 5, 'hot');
INSERT INTO `movielists` VALUES ('酒精计划', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628440526.jpg', '7.7', 6, 'hot');
INSERT INTO `movielists` VALUES ('小人物', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633966702.jpg', '7.9', 7, 'hot');
INSERT INTO `movielists` VALUES ('人潮汹涌', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2632862664.jpg', '6.8', 8, 'hot');
INSERT INTO `movielists` VALUES ('智能大反攻', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2637896820.jpg', '7.5', 9, 'hot');
INSERT INTO `movielists` VALUES ('无依之地', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630453887.jpg', '8.3', 10, 'hot');
INSERT INTO `movielists` VALUES ('扎克·施奈德版正义联盟', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634360594.jpg', '8.3', 11, 'hot');
INSERT INTO `movielists` VALUES ('你好，李焕英', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629056068.jpg', '8.0', 12, 'hot');
INSERT INTO `movielists` VALUES ('新神榜：哪吒重生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631711326.jpg', '7.1', 13, 'hot');
INSERT INTO `movielists` VALUES ('徐福', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2625736779.jpg', '5.9', 14, 'hot');
INSERT INTO `movielists` VALUES ('我的姐姐', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2630463690.jpg', '7.1', 15, 'hot');
INSERT INTO `movielists` VALUES ('冷血悍将', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2638872429.jpg', '5.5', 16, 'hot');
INSERT INTO `movielists` VALUES ('侍神令', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2629260713.jpg', '5.6', 17, 'hot');
INSERT INTO `movielists` VALUES ('又见奈良', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2634228191.jpg', '7.5', 18, 'hot');
INSERT INTO `movielists` VALUES ('兹山鱼谱', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634797286.jpg', '8.5', 19, 'hot');
INSERT INTO `movielists` VALUES ('一秒钟', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2628373757.jpg', '7.8', 20, 'hot');
INSERT INTO `movielists` VALUES ('浅田家！', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2614188527.jpg', '8.3', 21, 'hot');
INSERT INTO `movielists` VALUES ('罪之声', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2617715563.jpg', '7.2', 22, 'hot');
INSERT INTO `movielists` VALUES ('芝加哥七君子审判', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2620161520.jpg', '8.6', 23, 'hot');
INSERT INTO `movielists` VALUES ('有答案的男子', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2630521150.jpg', '7.7', 24, 'hot');
INSERT INTO `movielists` VALUES ('命运理发师', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2641806535.jpg', '7.6', 25, 'hot');
INSERT INTO `movielists` VALUES ('大师', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2636832800.jpg', '6.1', 26, 'hot');
INSERT INTO `movielists` VALUES ('哆啦A梦：伴我同行', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2641407963.jpg', '7.7', 27, 'hot');
INSERT INTO `movielists` VALUES ('信条', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2618403186.jpg', '7.7', 28, 'hot');
INSERT INTO `movielists` VALUES ('哥斯拉大战金刚', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634253484.jpg', '6.4', 29, 'hot');
INSERT INTO `movielists` VALUES ('孤味', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2623646280.jpg', '8.0', 30, 'hot');
INSERT INTO `movielists` VALUES ('同学麦娜丝', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623673142.jpg', '7.9', 31, 'hot');
INSERT INTO `movielists` VALUES ('心灵奇旅', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2626308994.jpg', '8.8', 32, 'hot');
INSERT INTO `movielists` VALUES ('缉魂', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2629413230.jpg', '7.0', 33, 'hot');
INSERT INTO `movielists` VALUES ('无声', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2619399682.jpg', '7.7', 34, 'hot');
INSERT INTO `movielists` VALUES ('送你一朵小红花', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2618247457.jpg', '7.4', 35, 'hot');
INSERT INTO `movielists` VALUES ('三国志新解', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2624681380.jpg', '5.2', 36, 'hot');
INSERT INTO `movielists` VALUES ('亲爱的同志', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630627669.jpg', '8.5', 37, 'hot');
INSERT INTO `movielists` VALUES ('打开心世界', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632936000.jpg', '8.2', 38, 'hot');
INSERT INTO `movielists` VALUES ('夺冠', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2620083313.jpg', '7.3', 39, 'hot');
INSERT INTO `movielists` VALUES ('混沌行走', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2626247562.jpg', '5.3', 40, 'hot');
INSERT INTO `movielists` VALUES ('吉祥如意', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632185061.jpg', '7.9', 41, 'high');
INSERT INTO `movielists` VALUES ('八佰', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2615992304.jpg', '7.6', 42, 'high');
INSERT INTO `movielists` VALUES ('玫瑰岛的不可思议的历史', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624341545.jpg', '8.0', 43, 'high');
INSERT INTO `movielists` VALUES ('命运之夜——天之杯Ⅲ：春之歌', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2616507920.jpg', '8.5', 44, 'high');
INSERT INTO `movielists` VALUES ('我和我的家乡', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2620453443.jpg', '7.2', 45, 'high');
INSERT INTO `movielists` VALUES ('紧急救援', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2627025706.jpg', '6.1', 46, 'high');
INSERT INTO `movielists` VALUES ('犹大与黑弥赛亚', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2632634812.jpg', '7.2', 47, 'high');
INSERT INTO `movielists` VALUES ('鬼灭之刃那田蜘蛛山篇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2623518158.jpg', '9.2', 48, 'high');
INSERT INTO `movielists` VALUES ('疯狂原始人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624607255.jpg', '7.9', 49, 'high');
INSERT INTO `movielists` VALUES ('神奇女侠', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2626959989.jpg', '6.2', 50, 'high');
INSERT INTO `movielists` VALUES ('兴安岭猎人传说', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2635669599.jpg', '6.1', 51, 'hot');
INSERT INTO `movielists` VALUES ('白虎', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631140996.jpg', '7.6', 52, 'hot');
INSERT INTO `movielists` VALUES ('电话', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2625879789.jpg', '7.6', 53, 'hot');
INSERT INTO `movielists` VALUES ('拆弹专家', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2621379901.jpg', '7.6', 54, 'hot');
INSERT INTO `movielists` VALUES ('哆啦A梦：大雄的新恐龙', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624375776.jpg', '7.3', 55, 'hot');
INSERT INTO `movielists` VALUES ('许愿神龙', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2626260539.jpg', '6.6', 56, 'hot');
INSERT INTO `movielists` VALUES ('蜡笔小新：激战！涂鸦王国和约四位勇士', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2615830700.jpg', '8.6', 57, 'hot');
INSERT INTO `movielists` VALUES ('沿路而下', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2633150167.jpg', '7.0', 58, 'hot');
INSERT INTO `movielists` VALUES ('女人的碎片', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2625877469.jpg', '7.7', 59, 'hot');
INSERT INTO `movielists` VALUES ('你的眼睛在追问', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2614171682.jpg', '7.2', 60, 'hot');
INSERT INTO `movielists` VALUES ('寻龙传说', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2633531206.jpg', '7.2', 61, 'hot');
INSERT INTO `movielists` VALUES ('发财日记', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632091530.jpg', '6.0', 62, 'hot');
INSERT INTO `movielists` VALUES ('曼克', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623412955.jpg', '7.4', 63, 'hot');
INSERT INTO `movielists` VALUES ('弓蕉园的秘密', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2639379745.jpg', '7.1', 64, 'hot');
INSERT INTO `movielists` VALUES ('号犯人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2627392971.jpg', '7.3', 65, 'hot');
INSERT INTO `movielists` VALUES ('发掘', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2627529751.jpg', '7.8', 66, 'hot');
INSERT INTO `movielists` VALUES ('除暴', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2625777429.jpg', '6.3', 67, 'hot');
INSERT INTO `movielists` VALUES ('爱与怪物', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2640310332.jpg', '7.2', 68, 'hot');
INSERT INTO `movielists` VALUES ('无声', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2621016058.jpg', '7.3', 69, 'hot');
INSERT INTO `movielists` VALUES ('菊石', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631726396.jpg', '7.1', 70, 'hot');
INSERT INTO `movielists` VALUES ('我是大哥大电影版', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2595471914.jpg', '7.9', 71, 'hot');
INSERT INTO `movielists` VALUES ('金刚川', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2623301908.jpg', '6.5', 72, 'hot');
INSERT INTO `movielists` VALUES ('姜子牙', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2621219978.jpg', '6.7', 73, 'hot');
INSERT INTO `movielists` VALUES ('鬼灭之刃柱众会议・蝶屋敷篇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2632682629.jpg', '8.3', 74, 'hot');
INSERT INTO `movielists` VALUES ('蛛丝马迹', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2628906317.jpg', '6.5', 75, 'hot');
INSERT INTO `movielists` VALUES ('风平浪静', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2626255103.jpg', '6.2', 76, 'hot');
INSERT INTO `movielists` VALUES ('腿', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2621401958.jpg', '6.3', 77, 'hot');
INSERT INTO `movielists` VALUES ('猫和老鼠', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632043260.jpg', '5.4', 78, 'hot');
INSERT INTO `movielists` VALUES ('温暖的抱抱', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2618446242.jpg', '5.5', 79, 'hot');
INSERT INTO `movielists` VALUES ('艾达，怎么了？', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2621425792.jpg', '7.8', 80, 'hot');
INSERT INTO `movielists` VALUES ('沐浴之王', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2627788612.jpg', '6.1', 81, 'hot');
INSERT INTO `movielists` VALUES ('乐园之夜', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2637429022.jpg', '6.6', 82, 'hot');
INSERT INTO `movielists` VALUES ('正义协会：二战', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2634040881.jpg', '5.9', 83, 'cold');
INSERT INTO `movielists` VALUES ('狼行者', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2646447162.jpg', '7.8', 84, 'cold');
INSERT INTO `movielists` VALUES ('海边的异邦人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2616484920.jpg', '7.2', 85, 'cold');
INSERT INTO `movielists` VALUES ('较量', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2633604200.jpg', '7.5', 86, 'cold');
INSERT INTO `movielists` VALUES ('蓝调天后', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2623338779.jpg', '6.5', 87, 'cold');
INSERT INTO `movielists` VALUES ('行骗天下JP：公主篇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2610002857.jpg', '7.3', 88, 'cold');
INSERT INTO `movielists` VALUES ('消失的情人节', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2618456760.jpg', '7.2', 89, 'cold');
INSERT INTO `movielists` VALUES ('血腥地狱', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2630884254.jpg', '7.0', 90, 'cold');
INSERT INTO `movielists` VALUES ('穷途鼠的奶酪梦', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2586418907.jpg', '7.6', 91, 'cold');
INSERT INTO `movielists` VALUES ('亲爱的房客', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2617989427.jpg', '7.5', 92, 'cold');
INSERT INTO `movielists` VALUES ('不日成婚', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2639843077.jpg', '5.6', 93, 'cold');
INSERT INTO `movielists` VALUES ('从邪恶中拯救我', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2612814747.jpg', '7.2', 94, 'cold');
INSERT INTO `movielists` VALUES ('我很在乎', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2630607691.jpg', '6.3', 95, 'cold');
INSERT INTO `movielists` VALUES ('神枪手', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2631071497.jpg', '5.4', 96, 'cold');
INSERT INTO `movielists` VALUES ('寻找见习魔女', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2590269606.jpg', '7.3', 97, 'cold');
INSERT INTO `movielists` VALUES ('进击的巨人：编年史', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2606366038.jpg', '8.6', 98, 'cold');
INSERT INTO `movielists` VALUES ('西游记之再世妖王', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2637771301.jpg', '5.5', 99, 'cold');
INSERT INTO `movielists` VALUES ('线', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2611735341.jpg', '6.9', 100, 'cold');
INSERT INTO `movielists` VALUES ('年盛夏', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2609300674.jpg', '6.9', 101, 'cold');
INSERT INTO `movielists` VALUES ('最后的前线', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2603405556.jpg', '7.5', 102, 'cold');
INSERT INTO `movielists` VALUES ('谢里', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2630607784.jpg', '6.6', 103, 'classics');
INSERT INTO `movielists` VALUES ('我在时间尽头等你', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2614225081.jpg', '5.5', 104, 'classics');
INSERT INTO `movielists` VALUES ('女生要革命', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2632592932.jpg', '7.6', 105, 'classics');
INSERT INTO `movielists` VALUES ('希望', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2603841986.jpg', '7.0', 106, 'classics');
INSERT INTO `movielists` VALUES ('可不可以，你也刚好喜欢我', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2618134458.jpg', '6.2', 107, 'classics');
INSERT INTO `movielists` VALUES ('剧场', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2610788779.jpg', '7.9', 108, 'classics');
INSERT INTO `movielists` VALUES ('星期一', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2635190311.jpg', '5.5', 109, 'classics');
INSERT INTO `movielists` VALUES ('灰猎犬号', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2591289975.jpg', '7.9', 110, 'classics');
INSERT INTO `movielists` VALUES ('担保', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2616180034.jpg', '7.8', 111, 'classics');
INSERT INTO `movielists` VALUES ('乡下人的悲歌', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624443564.jpg', '7.6', 112, 'classics');
INSERT INTO `movielists` VALUES ('世界新闻', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2623549939.jpg', '7.1', 113, 'classics');
INSERT INTO `movielists` VALUES ('一点就到家', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2621101922.jpg', '6.7', 114, 'classics');
INSERT INTO `movielists` VALUES ('波拉特', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2621751023.jpg', '7.1', 115, 'classics');
INSERT INTO `movielists` VALUES ('晴雅集', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2622484010.jpg', '5.1', 116, 'classics');
INSERT INTO `movielists` VALUES ('里夫金的电影节', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2619170443.jpg', '7.3', 117, 'classics');
INSERT INTO `movielists` VALUES ('名侦探柯南：绯色的不在场证明', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2631088441.jpg', '6.8', 118, 'classics');
INSERT INTO `movielists` VALUES ('熊出没·狂野大陆', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2631708261.jpg', '6.5', 119, 'classics');
INSERT INTO `movielists` VALUES ('贩肤走卒', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2639588576.jpg', '6.9', 120, 'classics');
INSERT INTO `movielists` VALUES ('新秩序', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2621425700.jpg', '7.0', 121, 'classics');
INSERT INTO `movielists` VALUES ('逃跑', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2587085523.jpg', '6.7', 122, 'classics');
INSERT INTO `movielists` VALUES ('胜利号', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630539409.jpg', '6.5', 123, 'hot');
INSERT INTO `movielists` VALUES ('砍人快乐', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2627618398.jpg', '6.1', 124, 'hot');
INSERT INTO `movielists` VALUES ('紫罗兰永恒花园剧场版', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2611203679.jpg', '8.2', 125, 'hot');
INSERT INTO `movielists` VALUES ('浴血无名川', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2636337478.jpg', '6.3', 126, 'hot');
INSERT INTO `movielists` VALUES ('晨曦将至', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2588296209.jpg', '7.1', 127, 'hot');
INSERT INTO `movielists` VALUES ('最幸福的季节', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2625245511.jpg', '7.1', 128, 'hot');
INSERT INTO `movielists` VALUES ('前哨', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2607219972.jpg', '7.1', 129, 'hot');
INSERT INTO `movielists` VALUES ('超新星', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629862197.jpg', '7.3', 130, 'hot');
INSERT INTO `movielists` VALUES ('猎谎者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2611124274.jpg', '7.0', 131, 'hot');
INSERT INTO `movielists` VALUES ('工作细胞：细胞大作战', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2635186282.jpg', '7.0', 132, 'hot');
INSERT INTO `movielists` VALUES ('剧场版假面骑士零一REAL×TIME', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633360972.jpg', '8.7', 133, 'hot');
INSERT INTO `movielists` VALUES ('神弃之地', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2619322729.jpg', '7.0', 134, 'hot');
INSERT INTO `movielists` VALUES ('地牢女孩', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2634312670.jpg', '6.2', 135, 'hot');
INSERT INTO `movielists` VALUES ('妙先生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614234255.jpg', '6.4', 136, 'hot');
INSERT INTO `movielists` VALUES ('邻居', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629440848.jpg', '6.7', 137, 'hot');
INSERT INTO `movielists` VALUES ('大地', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628845704.jpg', '6.8', 138, 'hot');
INSERT INTO `movielists` VALUES ('女巫', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2621884130.jpg', '5.8', 139, 'hot');
INSERT INTO `movielists` VALUES ('我想结束这一切', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2619279677.jpg', '7.3', 140, 'hot');
INSERT INTO `movielists` VALUES ('母亲', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2599858573.jpg', '6.2', 141, 'hot');
INSERT INTO `movielists` VALUES ('所言所行', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2634036698.jpg', '7.7', 142, 'hot');
INSERT INTO `movielists` VALUES ('致命弯道', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628525496.jpg', '5.7', 143, 'hot');
INSERT INTO `movielists` VALUES ('尤巴县突发新闻', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2630551385.jpg', '6.6', 144, 'hot');
INSERT INTO `movielists` VALUES ('去死', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628834126.jpg', '7.2', 145, 'hot');
INSERT INTO `movielists` VALUES ('釜山行：半岛', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2610358497.jpg', '5.1', 146, 'hot');
INSERT INTO `movielists` VALUES ('鲍勃的圣诞礼物', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2622755001.jpg', '7.5', 147, 'hot');
INSERT INTO `movielists` VALUES ('福尔摩斯小姐：失踪的侯爵', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2617666143.jpg', '6.1', 148, 'hot');
INSERT INTO `movielists` VALUES ('末日逃生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2626067725.jpg', '5.5', 149, 'hot');
INSERT INTO `movielists` VALUES ('马尔科姆与玛丽', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2632596629.jpg', '7.2', 150, 'hot');
INSERT INTO `movielists` VALUES ('三振集团英语托业班', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2621592672.jpg', '7.2', 151, 'new');
INSERT INTO `movielists` VALUES ('骗骗爱上你', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629407129.jpg', '7.1', 152, 'new');
INSERT INTO `movielists` VALUES ('帕尔默', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2628557937.jpg', '7.6', 153, 'new');
INSERT INTO `movielists` VALUES ('学徒', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2619842466.jpg', '6.9', 154, 'new');
INSERT INTO `movielists` VALUES ('经纪人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2632193705.jpg', '6.7', 155, 'new');
INSERT INTO `movielists` VALUES ('未知时间的爱', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2616529540.jpg', '6.7', 156, 'new');
INSERT INTO `movielists` VALUES ('侵入者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2608495324.jpg', '6.5', 157, 'new');
INSERT INTO `movielists` VALUES ('威利的游乐园', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2630762063.jpg', '5.5', 158, 'new');
INSERT INTO `movielists` VALUES ('克劳德夫人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2637657801.jpg', '6.1', 159, 'new');
INSERT INTO `movielists` VALUES ('埃舍尔街的红色邮筒', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2622575142.jpg', '7.7', 160, 'new');
INSERT INTO `movielists` VALUES ('午夜天空', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2627465353.jpg', '5.9', 161, 'new');
INSERT INTO `movielists` VALUES ('在回家之后重新开始', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2607822901.jpg', '6.6', 162, 'new');
INSERT INTO `movielists` VALUES ('欢快的鬼魂', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2589064180.jpg', '6.0', 163, 'new');
INSERT INTO `movielists` VALUES ('战争幽灵', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2559277527.jpg', '6.7', 164, 'new');
INSERT INTO `movielists` VALUES ('飞奔去月球', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621020634.jpg', '6.2', 165, 'new');
INSERT INTO `movielists` VALUES ('别对映像研出手！', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2592746783.jpg', '6.4', 166, 'new');
INSERT INTO `movielists` VALUES ('致所有的男孩：爱你永远', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634122234.jpg', '6.7', 167, 'new');
INSERT INTO `movielists` VALUES ('#活着', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2604626010.jpg', '5.7', 168, 'new');
INSERT INTO `movielists` VALUES ('云上情歌', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2619822570.jpg', '7.7', 169, 'new');
INSERT INTO `movielists` VALUES ('恋途未卜', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2577135811.jpg', '6.7', 170, 'new');
INSERT INTO `movielists` VALUES ('常春藤', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2625120378.jpg', '7.2', 171, 'new');
INSERT INTO `movielists` VALUES ('小确幸地图', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2631549048.jpg', '6.9', 172, 'new');
INSERT INTO `movielists` VALUES ('海绵宝宝：营救大冒险', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574153046.jpg', '6.2', 173, 'new');
INSERT INTO `movielists` VALUES ('何塞', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621323275.jpg', '7.4', 174, 'new');
INSERT INTO `movielists` VALUES ('想哭的我戴上了猫的面具', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2601636217.jpg', '6.4', 175, 'new');
INSERT INTO `movielists` VALUES ('马卡卢索往事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2616451240.jpg', '7.2', 176, 'new');
INSERT INTO `movielists` VALUES ('GIVEN被赠与的未来剧场版', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2593545360.jpg', '8.2', 177, 'new');
INSERT INTO `movielists` VALUES ('边缘状态', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2637714679.jpg', '7.5', 178, 'new');
INSERT INTO `movielists` VALUES ('之后', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2614275079.jpg', '5.8', 179, 'new');
INSERT INTO `movielists` VALUES ('奇奇怪怪：整容液', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2616803984.jpg', '6.2', 180, 'new');
INSERT INTO `movielists` VALUES ('天堂的张望', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623879042.jpg', '7.0', 181, 'new');
INSERT INTO `movielists` VALUES ('科拉深孔', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2610801415.jpg', '5.5', 182, 'new');
INSERT INTO `movielists` VALUES ('绝密档案', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2608156973.jpg', '6.8', 183, 'new');
INSERT INTO `movielists` VALUES ('迈阿密的一夜', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2626069243.jpg', '6.4', 184, 'new');
INSERT INTO `movielists` VALUES ('阴声', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2615711261.jpg', '6.3', 185, 'new');
INSERT INTO `movielists` VALUES ('美国诉比莉·哈乐黛', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630413627.jpg', '5.9', 186, 'new');
INSERT INTO `movielists` VALUES ('育蝇奇谭', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2622317489.jpg', '6.6', 187, 'new');
INSERT INTO `movielists` VALUES ('脚步', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2612195569.jpg', '7.6', 188, 'new');
INSERT INTO `movielists` VALUES ('双层肉排', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2633977758.jpg', '6.5', 189, 'new');
INSERT INTO `movielists` VALUES ('花束般的恋爱', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623936924.jpg', '8.5', 190, 'new');
INSERT INTO `movielists` VALUES ('人数之町', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2612867967.jpg', '6.3', 191, 'new');
INSERT INTO `movielists` VALUES ('馗降：粽邪', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2613127431.jpg', '5.9', 192, 'new');
INSERT INTO `movielists` VALUES ('顺其自然的日子', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2626255877.jpg', '6.7', 193, 'new');
INSERT INTO `movielists` VALUES ('我所有的朋友都死了', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2629943145.jpg', '6.5', 194, 'new');
INSERT INTO `movielists` VALUES ('永生守卫', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2613387966.jpg', '6.3', 195, 'new');
INSERT INTO `movielists` VALUES ('哦！文姬', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2619191892.jpg', '7.2', 196, 'new');
INSERT INTO `movielists` VALUES ('飙速宅男', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2611588399.jpg', '6.9', 197, 'new');
INSERT INTO `movielists` VALUES ('千顷澄碧的时代', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633777522.jpg', '6.1', 198, 'cold');
INSERT INTO `movielists` VALUES ('捕鲸男孩', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2619215566.jpg', '7.2', 199, 'cold');
INSERT INTO `movielists` VALUES ('咱们裸熊：电影版', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2604993774.jpg', '7.5', 200, 'cold');
INSERT INTO `movielists` VALUES ('让他们说吧', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2625712624.jpg', '6.5', 201, 'cold');
INSERT INTO `movielists` VALUES ('来玩', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2618618510.jpg', '6.2', 202, 'cold');
INSERT INTO `movielists` VALUES ('父子变形记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621925315.jpg', '5.7', 203, 'cold');
INSERT INTO `movielists` VALUES ('天后小助理', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2628309253.jpg', '6.3', 204, 'cold');
INSERT INTO `movielists` VALUES ('再见吧！少年', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2621618083.jpg', '6.9', 205, 'cold');
INSERT INTO `movielists` VALUES ('凶宅怪谈', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2604585245.jpg', '5.4', 206, 'cold');
INSERT INTO `movielists` VALUES ('危机', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2631622179.jpg', '5.8', 207, 'cold');
INSERT INTO `movielists` VALUES ('零度以下', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2617750490.jpg', '6.4', 208, 'cold');
INSERT INTO `movielists` VALUES ('碧蓝之海', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2589432121.jpg', '6.6', 209, 'cold');
INSERT INTO `movielists` VALUES ('精神错乱', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2608174457.jpg', '6.2', 210, 'cold');
INSERT INTO `movielists` VALUES ('沉默东京', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2614280961.jpg', '5.4', 211, 'cold');
INSERT INTO `movielists` VALUES ('OK老板娘', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2616000909.jpg', '6.5', 212, 'cold');
INSERT INTO `movielists` VALUES ('浴室墙上的字', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2614346848.jpg', '7.0', 213, 'cold');
INSERT INTO `movielists` VALUES ('少年侦探', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2622841648.jpg', '7.1', 214, 'cold');
INSERT INTO `movielists` VALUES ('澪之料理帖', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2592452748.jpg', '6.7', 215, 'cold');
INSERT INTO `movielists` VALUES ('清白', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2583398530.jpg', '6.8', 216, 'cold');
INSERT INTO `movielists` VALUES ('夺魂连线', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2615652585.jpg', '6.2', 217, 'cold');
INSERT INTO `movielists` VALUES ('不可抗拒', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2588939222.jpg', '7.4', 218, 'cold');
INSERT INTO `movielists` VALUES ('夏日国度', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2591805351.jpg', '7.4', 219, 'cold');
INSERT INTO `movielists` VALUES ('拍拖故事', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2607605327.jpg', '7.4', 220, 'cold');
INSERT INTO `movielists` VALUES ('银河守门员', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2614947343.jpg', '6.0', 221, 'cold');
INSERT INTO `movielists` VALUES ('新年前夜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2626684967.jpg', '5.8', 222, 'cold');
INSERT INTO `movielists` VALUES ('亲吻亭', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2604000449.jpg', '6.2', 223, 'cold');
INSERT INTO `movielists` VALUES ('毕业舞会', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2627517148.jpg', '6.3', 224, 'cold');
INSERT INTO `movielists` VALUES ('安乐死医师的遗产', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2616822703.jpg', '5.5', 225, 'cold');
INSERT INTO `movielists` VALUES ('亲爱的她', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2603714542.jpg', '6.7', 226, 'cold');
INSERT INTO `movielists` VALUES ('南巫', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2635906761.jpg', '7.7', 227, 'cold');
INSERT INTO `movielists` VALUES ('蝴蝶梦', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621747994.jpg', '5.5', 228, 'cold');
INSERT INTO `movielists` VALUES ('俄罗斯突袭', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2627416281.jpg', '5.5', 229, 'cold');
INSERT INTO `movielists` VALUES ('Jose与虎与鱼们', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2625763596.jpg', '6.5', 230, 'cold');
INSERT INTO `movielists` VALUES ('让他走', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2617947560.jpg', '7.0', 231, 'cold');
INSERT INTO `movielists` VALUES ('新王加冕', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2627320224.jpg', '7.6', 232, 'cold');
INSERT INTO `movielists` VALUES ('铁雨：首脑峰会', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2611996958.jpg', '5.8', 233, 'cold');
INSERT INTO `movielists` VALUES ('应承', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2626077915.jpg', '6.4', 234, 'cold');
INSERT INTO `movielists` VALUES ('假日约会', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2621603060.jpg', '5.8', 235, 'cold');
INSERT INTO `movielists` VALUES ('夺金营救', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2615856924.jpg', '5.7', 236, 'cold');
INSERT INTO `movielists` VALUES ('极限网红', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2617238268.jpg', '5.9', 237, 'cold');
INSERT INTO `movielists` VALUES ('我死之日', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623352215.jpg', '6.7', 238, 'cold');
INSERT INTO `movielists` VALUES ('独一无二的伊万', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2613338041.jpg', '6.7', 239, 'cold');
INSERT INTO `movielists` VALUES ('来日方长', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2623473508.jpg', '6.8', 240, 'cold');
INSERT INTO `movielists` VALUES ('野马分鬃', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2620180759.jpg', '7.0', 241, 'cold');
INSERT INTO `movielists` VALUES ('一切为了杰克森', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623855114.jpg', '6.3', 242, 'cold');
INSERT INTO `movielists` VALUES ('怪胎', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2613241995.jpg', '7.1', 243, 'cold');
INSERT INTO `movielists` VALUES ('超能计划', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614190404.jpg', '5.7', 244, 'cold');
INSERT INTO `movielists` VALUES ('史泰登岛国王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2600026575.jpg', '7.3', 245, 'cold');
INSERT INTO `movielists` VALUES ('校园大逃杀', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2630759444.jpg', '5.9', 246, 'cold');
INSERT INTO `movielists` VALUES ('扫黑英雄', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2630457764.jpg', '6.1', 247, 'cold');
INSERT INTO `movielists` VALUES ('食运', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2618711906.jpg', '5.8', 248, 'cold');
INSERT INTO `movielists` VALUES ('有求必应日', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632772050.jpg', '6.0', 249, 'cold');
INSERT INTO `movielists` VALUES ('极乐', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2633055774.jpg', '5.9', 250, 'cold');
INSERT INTO `movielists` VALUES ('朝颜', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2617518233.jpg', '6.9', 251, 'cold');
INSERT INTO `movielists` VALUES ('孤身', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2616483998.jpg', '5.8', 252, 'cold');
INSERT INTO `movielists` VALUES ('可能的任务', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2632095592.jpg', '5.7', 253, 'cold');
INSERT INTO `movielists` VALUES ('誓血五人组', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2604552976.jpg', '6.1', 254, 'cold');
INSERT INTO `movielists` VALUES ('躯壳', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623100023.jpg', '5.6', 255, 'cold');
INSERT INTO `movielists` VALUES ('反击', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2631923710.jpg', '4.8', 256, 'cold');
INSERT INTO `movielists` VALUES ('迷盲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2629618511.jpg', '6.1', 257, 'cold');
INSERT INTO `movielists` VALUES ('血书', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2616827712.jpg', '5.9', 258, 'cold');
INSERT INTO `movielists` VALUES ('企鹅布鲁姆', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2631141091.jpg', '6.9', 259, 'cold');
INSERT INTO `movielists` VALUES ('圣诞速配', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628196596.jpg', '7.1', 260, 'cold');
INSERT INTO `movielists` VALUES ('永不消逝的电波高清放映', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571585094.jpg', '9.4', 261, 'cold');
INSERT INTO `movielists` VALUES ('烈阳天道', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2615551979.jpg', '6.0', 262, 'cold');
INSERT INTO `movielists` VALUES ('陈翔六点半之民间高手', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2629465650.jpg', '6.3', 263, 'cold');
INSERT INTO `movielists` VALUES ('泰迦奥特曼剧场版：新生代之巅', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2579798643.jpg', '6.5', 264, 'cold');
INSERT INTO `movielists` VALUES ('魔法教母', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2626353226.jpg', '6.5', 265, 'cold');
INSERT INTO `movielists` VALUES ('星期三消失了', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2585394695.jpg', '6.9', 266, 'cold');
INSERT INTO `movielists` VALUES ('人造怪物', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2617431601.jpg', '5.8', 267, 'cold');
INSERT INTO `movielists` VALUES ('祖孙大战', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2617781525.jpg', '6.1', 268, 'high');
INSERT INTO `movielists` VALUES ('内战前', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2589506495.jpg', '6.4', 269, 'high');
INSERT INTO `movielists` VALUES ('中国飞侠', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2628416332.jpg', '6.2', 270, 'high');
INSERT INTO `movielists` VALUES ('黑神驹', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2625214666.jpg', '7.1', 271, 'high');
INSERT INTO `movielists` VALUES ('摇滚红与黑', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2617621407.jpg', '8.3', 272, 'high');
INSERT INTO `movielists` VALUES ('老大不小', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2612798743.jpg', '6.9', 273, 'high');
INSERT INTO `movielists` VALUES ('触礁', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2619930239.jpg', '6.6', 274, 'high');
INSERT INTO `movielists` VALUES ('成真', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623507795.jpg', '5.6', 275, 'high');
INSERT INTO `movielists` VALUES ('巴布与斯塔尔的维斯塔德尔玛之旅', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2577459963.jpg', '5.7', 276, 'high');
INSERT INTO `movielists` VALUES ('悲喜交加', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2623820040.jpg', '6.6', 277, 'high');
INSERT INTO `movielists` VALUES ('欧洲歌唱大赛：火焰传说', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2608079562.jpg', '6.6', 278, 'high');
INSERT INTO `movielists` VALUES ('辣手保姆：女王蜂', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2618617399.jpg', '5.6', 279, 'high');
INSERT INTO `movielists` VALUES ('幸运电梯', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2630036420.jpg', '5.5', 280, 'high');
INSERT INTO `movielists` VALUES ('宇宙中最明亮的屋顶', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2609209362.jpg', '7.0', 281, 'high');
INSERT INTO `movielists` VALUES ('狂鼠列车', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629017097.jpg', '3.8', 282, 'high');
INSERT INTO `movielists` VALUES ('没有过不去的年', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628762684.jpg', '5.7', 283, 'high');
INSERT INTO `movielists` VALUES ('东北往事：我叫刘海柱', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2617291342.jpg', '5.3', 284, 'high');
INSERT INTO `movielists` VALUES ('平行森林', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2612481747.jpg', '6.4', 285, 'high');
INSERT INTO `movielists` VALUES ('逃狱兄弟', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2628012137.jpg', '6.0', 286, 'high');
INSERT INTO `movielists` VALUES ('秘密花园', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2586685657.jpg', '5.5', 287, 'high');
INSERT INTO `movielists` VALUES ('星之子', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2617097818.jpg', '5.5', 288, 'high');
INSERT INTO `movielists` VALUES ('征途', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2613925251.jpg', '5.1', 289, 'high');
INSERT INTO `movielists` VALUES ('剑客', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2620507048.jpg', '6.0', 290, 'high');
INSERT INTO `movielists` VALUES ('约束的罪行', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2620498291.jpg', '7.1', 291, 'high');
INSERT INTO `movielists` VALUES ('我的一生', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2622809143.jpg', '6.2', 292, 'high');
INSERT INTO `movielists` VALUES ('恶棍之都', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623523542.jpg', '6.6', 293, 'high');
INSERT INTO `movielists` VALUES ('失恋反攻队', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2627862075.jpg', '5.7', 294, 'high');
INSERT INTO `movielists` VALUES ('弗洛拉与尤利西斯', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633807302.jpg', '5.9', 295, 'high');
INSERT INTO `movielists` VALUES ('一呼百应', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2627278442.jpg', '6.1', 296, 'high');
INSERT INTO `movielists` VALUES ('地平线', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2622918683.jpg', '5.7', 297, 'high');
INSERT INTO `movielists` VALUES ('蝙蝠侠：家庭之死', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632381141.jpg', '7.3', 298, 'high');
INSERT INTO `movielists` VALUES ('由宇子的天平', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2620180338.jpg', '7.6', 299, 'high');
INSERT INTO `movielists` VALUES ('比尔和泰德寻歌记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614961955.jpg', '5.8', 300, 'high');
INSERT INTO `movielists` VALUES ('黑暗轨迹', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2627035409.jpg', '6.9', 301, 'high');
INSERT INTO `movielists` VALUES ('汪汪队立大功之超能救援', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2624458010.jpg', '6.1', 302, 'high');
INSERT INTO `movielists` VALUES ('意大利制造', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2612140333.jpg', '6.6', 303, 'high');
INSERT INTO `movielists` VALUES ('黑暗与邪恶', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2619892712.jpg', '5.6', 304, 'high');
INSERT INTO `movielists` VALUES ('未怀孕', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2617781422.jpg', '6.8', 305, 'high');
INSERT INTO `movielists` VALUES ('丝绸之路', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631627985.jpg', '5.9', 306, 'classics');
INSERT INTO `movielists` VALUES ('秀美人生', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2619211363.jpg', '7.3', 307, 'classics');
INSERT INTO `movielists` VALUES ('租来的朋友', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2616903233.jpg', '6.1', 308, 'classics');
INSERT INTO `movielists` VALUES ('索命咒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2621805920.jpg', '5.9', 309, 'classics');
INSERT INTO `movielists` VALUES ('爆炸', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2622505020.jpg', '6.1', 310, 'classics');
INSERT INTO `movielists` VALUES (NULL, 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2619841443.jpg', '5.2', 311, 'classics');
INSERT INTO `movielists` VALUES ('麒麟幻镇', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2630957930.jpg', '5.3', 312, 'classics');
INSERT INTO `movielists` VALUES ('超人：明日之子', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2617266045.jpg', '6.0', 313, 'classics');
INSERT INTO `movielists` VALUES ('沉默', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2610789507.jpg', '6.0', 314, 'classics');
INSERT INTO `movielists` VALUES ('罪证子弹', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2606913994.jpg', '6.3', 315, 'classics');
INSERT INTO `movielists` VALUES ('黑盒子', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2620586557.jpg', '6.3', 316, 'classics');
INSERT INTO `movielists` VALUES ('海底小纵队：火焰之环', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2626707853.jpg', '7.0', 317, 'classics');
INSERT INTO `movielists` VALUES ('杀手柔情', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2635233028.jpg', '5.3', 318, 'classics');
INSERT INTO `movielists` VALUES ('夜曲', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2620541580.jpg', '5.6', 319, 'classics');
INSERT INTO `movielists` VALUES ('美国泡菜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2615442468.jpg', '5.7', 320, 'classics');
INSERT INTO `movielists` VALUES ('化学心脏', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2615960204.jpg', '6.4', 321, 'classics');
INSERT INTO `movielists` VALUES ('蝙蝠侠：龙之魂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2630490645.jpg', '5.9', 322, 'classics');
INSERT INTO `movielists` VALUES ('爆笑虫子之冒险岛大电影', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2615224475.jpg', '7.6', 323, 'classics');
INSERT INTO `movielists` VALUES ('半条棉被', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2619202748.jpg', '5.2', 324, 'classics');
INSERT INTO `movielists` VALUES ('妖怪人贝拉', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624419664.jpg', '6.4', 325, 'classics');
INSERT INTO `movielists` VALUES ('我们保守的秘密', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2617515146.jpg', '6.3', 326, 'classics');
INSERT INTO `movielists` VALUES ('孩子不想理解', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2581848411.jpg', '7.8', 327, 'classics');
INSERT INTO `movielists` VALUES ('凝视猎物', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2608423923.jpg', '5.9', 328, 'classics');
INSERT INTO `movielists` VALUES ('周围有婴儿的哭声吗？', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2617040496.jpg', '6.8', 329, 'classics');
INSERT INTO `movielists` VALUES ('护理师', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2615570169.jpg', '5.8', 330, 'classics');
INSERT INTO `movielists` VALUES ('开始', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2622097724.jpg', '6.2', 331, 'classics');
INSERT INTO `movielists` VALUES ('别告诉任何人', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2625831120.jpg', '5.5', 332, 'classics');
INSERT INTO `movielists` VALUES ('兴风作浪', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631714315.jpg', '5.3', 333, 'classics');
INSERT INTO `movielists` VALUES ('我不好惹', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2608013130.jpg', '5.5', 334, 'classics');
INSERT INTO `movielists` VALUES ('天方异谈', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2619821036.jpg', '5.5', 335, 'classics');
INSERT INTO `movielists` VALUES ('人狼恶', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2624440101.jpg', '5.7', 336, 'classics');
INSERT INTO `movielists` VALUES ('欲望跳台', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2617950810.jpg', '5.5', 337, 'classics');
INSERT INTO `movielists` VALUES ('艺术死了', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2611820311.jpg', '7.3', 338, 'hot');

-- ----------------------------
-- Table structure for movietv
-- ----------------------------
DROP TABLE IF EXISTS `movietv`;
CREATE TABLE `movietv`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movietv
-- ----------------------------
INSERT INTO `movietv` VALUES ('御赐小仵作', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642490384.jpg', '8.4', 1, 'HOT');
INSERT INTO `movietv` VALUES ('爱，死亡和机器人第二季', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641221021.jpg', '6.9', 2, 'HOT');
INSERT INTO `movietv` VALUES ('书画里的中国', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2641812962.jpg', '7.2', 3, 'HOT');
INSERT INTO `movietv` VALUES ('金钱通解', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2648107836.jpg', '8.1', 4, 'HOT');
INSERT INTO `movietv` VALUES ('声梦传奇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2649160417.jpg', '8.4', 5, 'HOT');
INSERT INTO `movietv` VALUES ('禁忌女孩', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2567702923.jpg', '9.3', 6, 'HOT');
INSERT INTO `movietv` VALUES ('觉醒年代', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631873666.jpg', '8.4', 7, 'HOT');
INSERT INTO `movietv` VALUES ('无罪之最', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2639035790.jpg', '8.6', 8, 'HOT');
INSERT INTO `movietv` VALUES ('禁忌女孩', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641113370.jpg', '8.4', 9, 'HOT');
INSERT INTO `movietv` VALUES ('东城梦魇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2637878518.jpg', '9.0', 10, 'HOT');
INSERT INTO `movietv` VALUES ('生活家暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623496825.jpg', '9.2', 11, 'HOT');
INSERT INTO `movietv` VALUES ('窥探', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2639385663.jpg', '9.2', 12, 'HOT');
INSERT INTO `movietv` VALUES ('9号秘事第六季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2645092056.jpg', '8.5', 13, 'HOT');
INSERT INTO `movietv` VALUES ('MovetoHeaven：我是遗物整理师', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641916348.jpg', '7.9', 14, 'HOT');
INSERT INTO `movietv` VALUES ('大豆田永久子与三名前夫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2642879178.jpg', '8.4', 15, 'HOT');
INSERT INTO `movietv` VALUES ('向往的生活第五季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2643199694.jpg', '9.1', 16, 'HOT');
INSERT INTO `movietv` VALUES ('短剧开始啦', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641570601.jpg', '9.1', 17, 'HOT');
INSERT INTO `movietv` VALUES ('乌鸦小姐与蜥蜴先生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2641609906.jpg', '8.9', 18, 'HOT');
INSERT INTO `movietv` VALUES ('某天，灭亡从我家玄关进来了', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2641097260.jpg', '4.1', 19, 'HOT');
INSERT INTO `movietv` VALUES ('遇龙暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2615897926.jpg', '7.4', 20, 'HOT');
INSERT INTO `movietv` VALUES ('五月的青春', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2639324951.jpg', '6.7', 21, 'HOT');
INSERT INTO `movietv` VALUES ('山河令', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2633696791.jpg', '8.6', 22, 'HOT');
INSERT INTO `movietv` VALUES ('恰好是少年', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2636874360.jpg', '8.6', 23, 'HOT');
INSERT INTO `movietv` VALUES ('城市的边缘', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642657106.jpg', '8.6', 24, 'HOT');
INSERT INTO `movietv` VALUES ('时光代理人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2626881037.jpg', '8.2', 25, 'HOT');
INSERT INTO `movietv` VALUES ('春季露营', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2643367766.jpg', '8.3', 26, 'HOT');
INSERT INTO `movietv` VALUES ('灵笼', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2510980927.jpg', '9.8', 27, 'HOT');
INSERT INTO `movietv` VALUES ('窥探：捕食者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2643224105.jpg', '8.0', 28, 'HOT');
INSERT INTO `movietv` VALUES ('长歌行', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2637797413.jpg', '9.1', 29, 'HOT');
INSERT INTO `movietv` VALUES ('逆天奇案', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2642488652.jpg', '6.2', 30, 'HOT');
INSERT INTO `movietv` VALUES ('皮囊之下暂无评分', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2646080300.jpg', '9.5', 31, 'HOT');
INSERT INTO `movietv` VALUES ('小舍得', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2639891494.jpg', '9.2', 32, 'HOT');
INSERT INTO `movietv` VALUES ('致不灭的你', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2632657962.jpg', '6.7', 33, 'HOT');
INSERT INTO `movietv` VALUES ('理想照耀中国暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642192924.jpg', '8.4', 34, 'HOT');
INSERT INTO `movietv` VALUES ('明星大侦探之名侦探学院第四季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2640274177.jpg', '9.3', 35, 'HOT');
INSERT INTO `movietv` VALUES ('完美的他暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2645492344.jpg', '9.4', 36, 'HOT');
INSERT INTO `movietv` VALUES ('模范出租车', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2637459961.jpg', '9.6', 37, 'HOT');
INSERT INTO `movietv` VALUES ('密室大逃脱第三季暂无评分', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2643169882.jpg', '7.6', 38, 'HOT');
INSERT INTO `movietv` VALUES ('非正式会谈第季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2645180055.jpg', '8.5', 39, 'USA');
INSERT INTO `movietv` VALUES ('我的', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641603537.jpg', '7.4', 40, 'USA');
INSERT INTO `movietv` VALUES ('司藤', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634831926.jpg', '8.6', 41, 'USA');
INSERT INTO `movietv` VALUES ('啊摇篮暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628877486.jpg', '8.6', 42, 'USA');
INSERT INTO `movietv` VALUES ('画江湖之不良人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2619010287.jpg', '5.9', 43, 'USA');
INSERT INTO `movietv` VALUES ('温暖的味道暂无评分', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2648948943.jpg', '8.1', 44, 'USA');
INSERT INTO `movietv` VALUES ('奇巧计程车', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2631090442.jpg', '7.4', 45, 'USA');
INSERT INTO `movietv` VALUES ('至上之法', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642524306.jpg', '8.8', 46, 'USA');
INSERT INTO `movietv` VALUES ('锵锵行天下第二季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2632433599.jpg', '9.2', 47, 'USA');
INSERT INTO `movietv` VALUES ('骊歌行', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2639859281.jpg', '8.2', 48, 'USA');
INSERT INTO `movietv` VALUES ('密室大逃脱大神版第三季暂无评分', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2647255907.jpg', '8.8', 49, 'USA');
INSERT INTO `movietv` VALUES ('伍六七之玄武国篇', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2631154727.jpg', '8.0', 50, 'USA');
INSERT INTO `movietv` VALUES ('侯斯顿', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642331586.jpg', '8.0', 51, 'USA');
INSERT INTO `movietv` VALUES ('离婚活动', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2643245925.jpg', '7.7', 52, 'USA');
INSERT INTO `movietv` VALUES ('骇人来电', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2634460351.jpg', '8.2', 53, 'USA');
INSERT INTO `movietv` VALUES ('咒术回战', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2620216005.jpg', '9.0', 54, 'USA');
INSERT INTO `movietv` VALUES ('大宋少年志', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559266281.jpg', '8.2', 55, 'USA');
INSERT INTO `movietv` VALUES ('HIStory-近距离爱上你', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2632152878.jpg', '9.7', 56, 'USA');
INSERT INTO `movietv` VALUES ('号手就位暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2640038045.jpg', '9.0', 57, 'USA');
INSERT INTO `movietv` VALUES ('彷徨之刃', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2645284481.jpg', '9.1', 58, 'USA');
INSERT INTO `movietv` VALUES ('盛装恋爱有理由', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641945679.jpg', '9.1', 59, 'USA');
INSERT INTO `movietv` VALUES ('请回答', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2272563445.jpg', '9.3', 60, 'USA');
INSERT INTO `movietv` VALUES ('火神的眼泪', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2637408818.jpg', '9.4', 61, 'USA');
INSERT INTO `movietv` VALUES ('使女的故事第四季', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2638359310.jpg', '9.1', 62, 'ENG');
INSERT INTO `movietv` VALUES ('龙樱', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642893965.jpg', '9.5', 63, 'ENG');
INSERT INTO `movietv` VALUES ('沉默的真相', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2620780603.jpg', '6.9', 64, 'ENG');
INSERT INTO `movietv` VALUES ('文森佐', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633307533.jpg', '9.4', 65, 'ENG');
INSERT INTO `movietv` VALUES ('旺达幻视', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2628036511.jpg', '9.2', 66, 'ENG');
INSERT INTO `movietv` VALUES ('如蝶翩翩', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2633280000.jpg', '9.2', 67, 'ENG');
INSERT INTO `movietv` VALUES ('以你的心诠释我的爱', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2622131925.jpg', '7.5', 68, 'ENG');
INSERT INTO `movietv` VALUES ('怪物', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633508552.jpg', '9.4', 69, 'ENG');
INSERT INTO `movietv` VALUES ('后翼弃兵', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621201524.jpg', '8.5', 70, 'ENG');
INSERT INTO `movietv` VALUES ('年A班：从现在起，大家都是人质', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2604157029.jpg', '9.4', 71, 'ENG');
INSERT INTO `movietv` VALUES ('机甲拳击第二季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2631627815.jpg', '7.6', 72, 'ENG');
INSERT INTO `movietv` VALUES ('致命女人第一季', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566967861.jpg', '8.5', 73, 'ENG');
INSERT INTO `movietv` VALUES ('我的漂亮朋友暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2603037344.jpg', '9.1', 74, 'ENG');
INSERT INTO `movietv` VALUES ('闪闪发光的你', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2642724969.jpg', '5.9', 75, 'ENG');
INSERT INTO `movietv` VALUES ('恶魔城第四季', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2640523042.jpg', '9.0', 76, 'ENG');
INSERT INTO `movietv` VALUES ('山海情', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630904628.jpg', '6.6', 77, 'ENG');
INSERT INTO `movietv` VALUES ('薇薇-萤石眼之歌-', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2634118310.jpg', '9.5', 78, 'ENG');
INSERT INTO `movietv` VALUES ('机智医生生活', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2586800409.jpg', '9.4', 79, 'ENG');
INSERT INTO `movietv` VALUES ('小谢尔顿第四季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2569867115.jpg', '7.7', 80, 'ENG');
INSERT INTO `movietv` VALUES ('无敌少侠第一季', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2633263610.jpg', '9.1', 81, 'ENG');
INSERT INTO `movietv` VALUES ('大发不动产', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2638102044.jpg', '9.2', 82, 'ENG');
INSERT INTO `movietv` VALUES ('瑞克和莫蒂第四季', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2607141792.jpg', '7.7', 83, 'ENG');
INSERT INTO `movietv` VALUES ('你是我的城池营垒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2635182901.jpg', '9.7', 84, 'ENG');
INSERT INTO `movietv` VALUES ('琅琊榜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2271982968.jpg', '9.1', 85, 'ENG');
INSERT INTO `movietv` VALUES ('十三邀第五季', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2627783930.jpg', '8.8', 86, 'ENG');
INSERT INTO `movietv` VALUES ('去他*的世界第二季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2573147295.jpg', '9.3', 87, 'ENG');
INSERT INTO `movietv` VALUES ('我亲爱的“小洁癖”暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2632976766.jpg', '9.3', 88, 'ENG');
INSERT INTO `movietv` VALUES ('秦岭神树', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2635517102.jpg', '8.5', 89, 'ENG');
INSERT INTO `movietv` VALUES ('隐秘而伟大', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2517672847.jpg', '8.1', 90, 'ENG');
INSERT INTO `movietv` VALUES ('顶楼', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623361633.jpg', '8.8', 91, 'ENG');
INSERT INTO `movietv` VALUES ('编辑部的故事', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2255590045.jpg', '9.4', 92, 'ENG');
INSERT INTO `movietv` VALUES ('想见你', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2576977981.jpg', '9.1', 93, 'ENG');
INSERT INTO `movietv` VALUES ('女巫', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2620272883.jpg', '9.4', 94, 'ENG');
INSERT INTO `movietv` VALUES ('浴血黑帮第五季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571504716.jpg', '8.6', 95, 'ENG');
INSERT INTO `movietv` VALUES ('若是一个人', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2635389328.jpg', '9.8', 96, 'ENG');
INSERT INTO `movietv` VALUES ('黑镜第五季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2558381556.jpg', '9.4', 97, 'ENG');
INSERT INTO `movietv` VALUES ('八零九零暂无评分', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641105367.jpg', '9.2', 98, 'ENG');
INSERT INTO `movietv` VALUES ('独活女子的推荐', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2636889191.jpg', '9.6', 99, 'ENG');
INSERT INTO `movietv` VALUES ('戏剧新生活', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2630822201.jpg', '9.0', 100, 'ENG');
INSERT INTO `movietv` VALUES ('非自然死亡', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2510604929.jpg', '9.5', 101, 'ENG');
INSERT INTO `movietv` VALUES ('隐秘的角落', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2609064048.jpg', '9.7', 102, 'ENG');
INSERT INTO `movietv` VALUES ('大浪淘沙暂无评分', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2645784468.jpg', '9.2', 103, 'ENG');
INSERT INTO `movietv` VALUES ('如果那时候接吻的话', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2639388275.jpg', '8.1', 104, 'ENG');
INSERT INTO `movietv` VALUES ('不朽者', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2636604275.jpg', '8.0', 105, 'ENG');
INSERT INTO `movietv` VALUES ('天呐！你真高第二季暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2639209845.jpg', '8.9', 106, 'ENG');
INSERT INTO `movietv` VALUES ('海贼王', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2197828404.jpg', '9.7', 107, 'ENG');
INSERT INTO `movietv` VALUES ('暴风眼', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2549533685.jpg', '8.7', 108, 'ENG');
INSERT INTO `movietv` VALUES ('后宫·甄嬛传', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p1480046723.jpg', '8.3', 109, 'HOT');
INSERT INTO `movietv` VALUES ('王冠第四季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2623426228.jpg', '8.0', 110, 'HOT');
INSERT INTO `movietv` VALUES ('风暴舞', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2642844436.jpg', '7.6', 111, 'HOT');
INSERT INTO `movietv` VALUES ('恶之花', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2606299262.jpg', '7.6', 112, 'HOT');
INSERT INTO `movietv` VALUES ('机智牢房生活', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2506561091.jpg', '6.8', 113, 'HOT');
INSERT INTO `movietv` VALUES ('大明王朝', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2444453078.jpg', '9.6', 114, 'HOT');
INSERT INTO `movietv` VALUES ('老友记第十季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2187822907.jpg', '9.4', 115, 'HOT');
INSERT INTO `movietv` VALUES ('棋魂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623880325.jpg', '9.1', 116, 'HOT');
INSERT INTO `movietv` VALUES ('鬼灭之刃', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2551222097.jpg', '7.6', 117, 'HOT');
INSERT INTO `movietv` VALUES ('性爱自修室第二季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2588072875.jpg', '8.0', 118, 'HOT');
INSERT INTO `movietv` VALUES ('顶楼第二季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2633508588.jpg', '4.8', 119, 'HOT');
INSERT INTO `movietv` VALUES ('终极笔记', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2628058192.jpg', '8.3', 120, 'HOT');
INSERT INTO `movietv` VALUES ('武林外传', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2529669661.jpg', '9.5', 121, 'HOT');
INSERT INTO `movietv` VALUES ('正常人', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2595064425.jpg', '9.4', 122, 'HOT');
INSERT INTO `movietv` VALUES ('钢之炼金术师FA', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2225808366.jpg', '8.8', 123, 'HOT');
INSERT INTO `movietv` VALUES ('我们的法兰西岁月', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2264946501.jpg', '9.2', 124, 'HOT');
INSERT INTO `movietv` VALUES ('猎鹰与冬兵', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2632487996.jpg', '9.1', 125, 'HOT');
INSERT INTO `movietv` VALUES ('星球大战：残次品', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2637713071.jpg', '9.2', 126, 'HOT');
INSERT INTO `movietv` VALUES ('出差十五夜', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634927024.jpg', '7.7', 127, 'HOT');
INSERT INTO `movietv` VALUES ('奔跑吧第五季暂无评分', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641982828.jpg', '9.1', 128, 'HOT');
INSERT INTO `movietv` VALUES ('谁是宝藏歌手', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2641974524.jpg', '6.1', 129, 'USA');
INSERT INTO `movietv` VALUES ('悬崖', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1355529574.jpg', '9.2', 130, 'USA');
INSERT INTO `movietv` VALUES ('斗破苍穹第四季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2633789069.jpg', '9.5', 131, 'USA');
INSERT INTO `movietv` VALUES ('小欢喜', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2564832427.jpg', '9.2', 132, 'USA');
INSERT INTO `movietv` VALUES ('当你沉睡时', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2499430366.jpg', '9.3', 133, 'USA');
INSERT INTO `movietv` VALUES ('陈情令', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2563766934.jpg', '9.1', 134, 'USA');
INSERT INTO `movietv` VALUES ('俗女养成记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2566987435.jpg', '7.5', 135, 'USA');
INSERT INTO `movietv` VALUES ('走向共和', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2328449064.jpg', '9.4', 136, 'USA');
INSERT INTO `movietv` VALUES ('一把青', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2398696296.jpg', '9.6', 137, 'USA');
INSERT INTO `movietv` VALUES ('风犬少年的天空', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2620379341.jpg', '8.1', 138, 'USA');
INSERT INTO `movietv` VALUES ('少年游之一寸相思', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2606589900.jpg', '8.9', 139, 'USA');
INSERT INTO `movietv` VALUES ('我的事说来话长', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571980507.jpg', '9.4', 140, 'USA');
INSERT INTO `movietv` VALUES ('疑犯追踪第五季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2340869957.jpg', '9.4', 141, 'USA');
INSERT INTO `movietv` VALUES ('庆余年第一季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2575362797.jpg', '8.1', 142, 'USA');
INSERT INTO `movietv` VALUES ('我，到点下班', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2553865222.jpg', '8.3', 143, 'USA');
INSERT INTO `movietv` VALUES ('良辰美景好时光', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2639228506.jpg', '9.0', 144, 'USA');
INSERT INTO `movietv` VALUES ('秘密森林', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2460119184.jpg', '9.0', 145, 'USA');
INSERT INTO `movietv` VALUES ('理智派生活', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2637031305.jpg', '6.4', 146, 'USA');
INSERT INTO `movietv` VALUES ('风声', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2629002703.jpg', '9.7', 147, 'USA');
INSERT INTO `movietv` VALUES ('姿态第三季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2639093447.jpg', '9.7', 148, 'USA');
INSERT INTO `movietv` VALUES ('名侦探柯南', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2235972558.jpg', '5.3', 149, 'USA');
INSERT INTO `movietv` VALUES ('孤单又灿烂的神：鬼怪', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2402645080.jpg', '9.2', 150, 'USA');
INSERT INTO `movietv` VALUES ('我的大叔', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2520568437.jpg', '8.3', 151, 'USA');
INSERT INTO `movietv` VALUES ('极限挑战第七季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2638597544.jpg', '8.4', 152, 'USA');
INSERT INTO `movietv` VALUES ('小小少年', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2634439082.jpg', '7.4', 153, 'USA');
INSERT INTO `movietv` VALUES ('信号', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2304228229.jpg', '8.2', 154, 'USA');
INSERT INTO `movietv` VALUES ('毛骗第一季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2265236159.jpg', '9.0', 155, 'CHA');
INSERT INTO `movietv` VALUES ('罗小黑战记', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2496903956.jpg', '9.4', 156, 'CHA');
INSERT INTO `movietv` VALUES ('我们的父辈', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2182571149.jpg', '8.1', 157, 'CHA');
INSERT INTO `movietv` VALUES ('半泽直树', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2411814194.jpg', '9.5', 158, 'CHA');
INSERT INTO `movietv` VALUES ('传闻中的陈芊芊', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2602398693.jpg', '7.8', 159, 'CHA');
INSERT INTO `movietv` VALUES ('爱的迫降', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2573288350.jpg', '8.8', 160, 'CHA');
INSERT INTO `movietv` VALUES ('典籍里的中国', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2634927073.jpg', '8.8', 161, 'CHA');
INSERT INTO `movietv` VALUES ('红楼梦', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2554030915.jpg', '9.2', 162, 'CHA');
INSERT INTO `movietv` VALUES ('约翰·威尔逊的十万个怎么做第一季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2622123346.jpg', '8.0', 163, 'CHA');
INSERT INTO `movietv` VALUES ('赘婿', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2633779065.jpg', '9.6', 164, 'CHA');
INSERT INTO `movietv` VALUES ('侠探简不知', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2594350517.jpg', '9.3', 165, 'CHA');
INSERT INTO `movietv` VALUES ('匹诺曹', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209805848.jpg', '6.1', 166, 'CHA');
INSERT INTO `movietv` VALUES ('我们与恶的距离', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2554916825.jpg', '8.4', 167, 'CHA');
INSERT INTO `movietv` VALUES ('白夜追凶', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2483150767.jpg', '9.6', 168, 'CHA');
INSERT INTO `movietv` VALUES ('破产姐妹第六季', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2426595773.jpg', '8.6', 169, 'CHA');
INSERT INTO `movietv` VALUES ('进击的巨人最终季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2605274206.jpg', '9.2', 170, 'CHA');
INSERT INTO `movietv` VALUES ('绝命毒师第五季', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p1579021082.jpg', '7.8', 171, 'CHA');
INSERT INTO `movietv` VALUES ('弥留之国的爱丽丝第一季', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2624050592.jpg', '8.3', 172, 'CHA');
INSERT INTO `movietv` VALUES ('暗黑第三季', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2609692563.jpg', '9.5', 173, 'CHA');
INSERT INTO `movietv` VALUES ('毛骗第二季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1355808564.jpg', '8.9', 174, 'CHA');
INSERT INTO `movietv` VALUES ('地下铁道暂无评分', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2641229566.jpg', '8.3', 175, 'CHA');
INSERT INTO `movietv` VALUES ('他在逆光中告白', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2638846876.jpg', '8.4', 176, 'CHA');
INSERT INTO `movietv` VALUES ('我的小尾巴', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2636836354.jpg', '9.2', 177, 'CHA');
INSERT INTO `movietv` VALUES ('好兆头', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2558290974.jpg', '7.0', 178, 'CHA');
INSERT INTO `movietv` VALUES ('战长沙', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2186299818.jpg', '6.5', 179, 'CHA');
INSERT INTO `movietv` VALUES ('数到十就亲亲你', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633975372.jpg', '8.5', 180, 'CHA');
INSERT INTO `movietv` VALUES ('关于性', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2619759527.jpg', '8.0', 181, 'CHA');
INSERT INTO `movietv` VALUES ('龙樱', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2257010200.jpg', '7.4', 182, 'CHA');
INSERT INTO `movietv` VALUES ('东京爱情故事', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2554261701.jpg', '8.8', 183, 'CHA');
INSERT INTO `movietv` VALUES ('锵锵行天下第一季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2534078057.jpg', '8.9', 184, 'CHA');
INSERT INTO `movietv` VALUES ('穿越火线', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614202895.jpg', '9.7', 185, 'CHA');
INSERT INTO `movietv` VALUES ('我的团长我的团', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1826590030.jpg', '8.7', 186, 'CHA');
INSERT INTO `movietv` VALUES ('毛骗终结篇', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2480805230.jpg', '8.3', 187, 'CHA');
INSERT INTO `movietv` VALUES ('知否知否应是绿肥红瘦', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2537131688.jpg', '8.0', 188, 'CHA');
INSERT INTO `movietv` VALUES ('刺客伍六七', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2522418171.jpg', '7.6', 189, 'CHA');
INSERT INTO `movietv` VALUES ('真相捕捉第一季', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2568719989.jpg', '7.6', 190, 'CHA');
INSERT INTO `movietv` VALUES ('凪的新生活', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562503627.jpg', '6.8', 191, 'CHA');
INSERT INTO `movietv` VALUES ('权力的游戏第八季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2552503815.jpg', '9.6', 192, 'CHA');
INSERT INTO `movietv` VALUES ('银魂', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2212435762.jpg', '9.4', 193, 'CHA');
INSERT INTO `movietv` VALUES ('天道', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2374798402.jpg', '9.1', 194, 'CHA');
INSERT INTO `movietv` VALUES ('最好的我们', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2299407300.jpg', '7.6', 195, 'CHA');
INSERT INTO `movietv` VALUES ('西部世界第三季', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2585693570.jpg', '8.0', 196, 'CHA');
INSERT INTO `movietv` VALUES ('都挺好', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2549148229.jpg', '4.8', 197, 'CHA');
INSERT INTO `movietv` VALUES ('我的天才女友第二季', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2583759735.jpg', '8.3', 198, 'CHA');
INSERT INTO `movietv` VALUES ('长安十二时辰', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2562953341.jpg', '9.5', 199, 'CHA');
INSERT INTO `movietv` VALUES ('到了岁还是处男，似乎会变成魔法师', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2622449274.jpg', '9.4', 200, 'CHA');

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES ('第十一回/如是你闻/刹车问题', '2019-04(北京国际电影节) / 2021-04-02(中国大陆) / 陈建斌 / 周迅 / 大鹏 / 窦靖童 / 春夏 / 王学兵 / 宋佳 / 牛犇 / 刘金山 / 于谦 / 贾冰 / 黄建新 / 史航 / 方龄 / 李九霄 / 张隽溢 / 吴恩璇 / 李路琦 / 中国大陆 / 陈建斌 / 117分钟 / 剧情 / 喜剧...', 1, '(142826人评价)', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2637603645.webp', '7.4');
INSERT INTO `rank` VALUES ('鬼灭之刃剧场版无限列车篇/Demon Slayer -Kimetsu No Yaiba- The Movie: Mugen Train / Kimetsu no Yaiba: Mugen Ressha-Hen', '2020-10-16(日本) / 花江夏树 / 鬼头明里 / 下野纮 / 松冈祯丞 / 日野聪 / 平川大辅 / 石田彰 / 樱井孝宏 / 小西克幸 / 早见沙织 / 铃村健一 / 关智一 / 杉田智和 / 森川智之 / 佐藤利奈 / 三木真一郎 / 桑岛法子 / 本渡枫 / 大地叶 / 小原好美...', 2, '(43489人评价)', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623798236.webp', '8.1');
INSERT INTO `rank` VALUES ('活死人军团/不死丧军(港) / 活尸大军(台)', '2021-05-14(美国) / 2021-05-21(美国网络) / 戴夫·巴蒂斯塔 / 艾拉·珀内尔 / 安娜·德拉·雷古拉 / 马提亚斯·施维赫夫 / 诺拉·阿娜泽德尔 / 真田广之 / 劳尔·卡斯提洛 / 迈克尔·卡西迪 / 加瑞特·迪拉胡特 / 萨曼塔·若 / 西奥·罗西 / 欧玛瑞·哈德威克...', 3, '(892148人评价)', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2643872011.webp', '5.4');
INSERT INTO `rank` VALUES ('地球改变之年/这一年，地球变得不一样(台)', '2021-04-16(美国) / 大卫·爱登堡 / 英国 / 汤姆·比尔德 / 地球改变之年 / 48分钟 / 地球改变之年 / 纪录片 / 英语', 4, '(9763人评价)', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2638827823.webp', '9.2');
INSERT INTO `rank` VALUES ('小人物/杀神NOBODY(港) / 无名弑(台)', '2021-03-26(美国) / 鲍勃·奥登科克 / 阿列克谢·谢列布里亚科夫 / 康妮·尼尔森 / 克里斯托弗·洛伊德 / 迈克尔·艾恩塞德 / 科林·萨蒙 / 罗伯特·菲茨杰拉德·迪格斯 / 比利·麦克莱伦 / 阿拉亚·门格沙 / 盖奇·芒罗 / 佩斯利·卡多拉思...', 5, '(68095人评价)', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2633966702.webp', '7.9');
INSERT INTO `rank` VALUES ('窗里的女人/窥密(港) / 窥探(台)', '2021-05-14(美国网络) / 艾米·亚当斯 / 加里·奥德曼 / 安东尼·麦凯 / 朱丽安·摩尔 / 詹妮弗·杰森·李 / 怀亚特·罗素 / 弗莱德·赫钦格 / 布莱恩·泰里·亨利 / 珍妮·塞拉尔斯 / 莉莎·科伦-扎亚斯 / 安娜‧卡梅隆 / 本杰明·杰伊·戴维斯...', 6, '(3061人评价)', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2639263452.webp', '6.1');
INSERT INTO `rank` VALUES ('酒精计划/醉美的一课(港) / 醉好的时光(台)', '2020-09-12(多伦多电影节) / 2020-09-24(丹麦) / 麦斯·米科尔森 / 托玛斯·博·拉森 / 马格努斯·米兰 / 拉斯·兰特 / 玛利亚·邦妮薇 / 海伦娜·赖因科德·纳曼 / 苏西·沃德 / 艾伯特·鲁德贝克·林哈特 / 弗莱德瑞克·温瑟·拉斯穆森 / 多尔特·回斯特德...', 7, '(36848人评价)', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628440526.webp', '7.7');
INSERT INTO `rank` VALUES ('智能大反攻 /The Mitchells vs. The Machines', '2021-04-30(美国网络) / 奥利维娅·科尔曼 / 埃里克·安德烈 / 玛娅·鲁道夫 / 查琳·易 / 丹尼·麦克布莱德 / 艾比·雅各布森 / 弗莱德·阿米森 / 克莉丝汀·泰根 / 玛德琳·麦格劳 / 亚历克斯·赫什 / 柯南·奥布莱恩 / 萨西尔·扎玛塔 / 约翰·传奇...', 8, '(7231人评价)', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2637896820.webp', '7.5');
INSERT INTO `rank` VALUES ('兹山鱼谱/The Book of Fish', '2021-03-31(韩国) / 薛景求 / 卞约汉 / 李姃垠 / 敏度希 / 柳承龙 / 林成宰 / 金成俊 / 车顺裴 / 赵宇镇 / 尹敬浩 / 韩国 / 李濬益 / 126分钟 / 兹山鱼谱 / 剧情 / 历史 / 古装 / 金世谦 Sa-gyeom Kim / 金郑勋 Jeong-hoon Kim / 韩语', 9, '(5094人评价)', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634797286.webp', '8.5');
INSERT INTO `rank` VALUES (' 非常保镖', '2021-05-23(中国大陆) / 邵庄 / 安宁 / 大牛 / 包志强 / 中国大陆 / 邢冬冬 / 103分钟 / 喜剧 / 悬疑 / 汉语普通话', 10, '(1737人评价)', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2624536793.webp', '7.1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `psw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (44, 'zhangsan', '123456');

SET FOREIGN_KEY_CHECKS = 1;
