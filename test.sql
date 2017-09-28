/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-28 13:30:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_09_22_133704_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000001_create_oauth_auth_codes_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000002_create_oauth_access_tokens_table', '2');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000003_create_oauth_refresh_tokens_table', '2');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000004_create_oauth_clients_table', '2');
INSERT INTO `migrations` VALUES ('8', '2016_06_01_000005_create_oauth_personal_access_clients_table', '2');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'Rerum autem beatae voluptas est.', 'Magnam ducimus cum nisi dolor saepe. Provident in velit et tempora voluptatum tempora laudantium non. Et sed ducimus ut dolor ea est. Et atque ipsam voluptates inventore.', '2', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('2', 'Maxime nihil eum ea dolor itaque voluptatum quae.', 'Deserunt ea quo commodi quis. Et aliquam dolores quae magni eligendi quo ut. Odit voluptatem quaerat distinctio aspernatur ratione quibusdam ea. Consectetur non eveniet perspiciatis sunt ut delectus quia.', '3', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('3', 'Ut ea aut nesciunt quae molestiae.', 'Voluptas nihil aliquid laboriosam. Quam asperiores quia reiciendis minima eum et iusto doloremque. Blanditiis aut ad sit vel accusamus sunt sint. Exercitationem qui deleniti quidem aut itaque.', '4', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('4', 'Voluptatem rerum adipisci hic quos sed.', 'Ut quia non sed aut quaerat itaque. Pariatur recusandae quo vero quis. Deserunt vel expedita commodi sequi cum earum omnis eligendi. Porro rerum corporis deserunt eligendi ratione.', '5', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('5', 'Sunt molestias qui explicabo est.', 'Ut nemo animi rerum ea. Aut dolorem voluptatum minus. Aspernatur et sit rerum et cum. Libero laboriosam in consequuntur qui eius.', '6', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('6', 'Tempore suscipit natus aut hic a eum dolor.', 'Voluptatem aut provident consequuntur praesentium deserunt. Cumque cum exercitationem temporibus voluptates perspiciatis. Aliquam vel quia enim. Ex est voluptates consequuntur ducimus.', '7', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('7', 'Sunt voluptatem eveniet et sed corrupti eaque occaecati.', 'Totam odit pariatur fuga. Aut aut sed totam sed. Odit omnis eos molestias iste aspernatur unde id. Nemo exercitationem quas architecto sed sed perspiciatis. Aut cumque ipsam ut reiciendis aut amet consequatur.', '8', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('8', 'Qui qui recusandae voluptas fuga perspiciatis eum.', 'At officia esse officia aut. Et dolorem optio ipsum soluta quas qui sed. Ea labore voluptate et quam voluptatem praesentium. Est minus aperiam veniam soluta commodi voluptas nulla.', '9', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('9', 'Autem voluptate maiores eius atque delectus ad.', 'Est vel nisi harum est ipsa excepturi qui. Id eos vitae sint est ut veniam asperiores. Nisi placeat exercitationem quaerat quas.', '10', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('10', 'Et animi labore similique non cumque ut consequuntur.', 'Aut provident aspernatur sit distinctio rerum laboriosam. Minus dolor id voluptatem deserunt dolorem. Adipisci et ab eaque nobis quibusdam eos autem. Id earum id qui eos cum nemo eveniet.', '11', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('11', 'Ipsam quae eum voluptas inventore.', 'Odio quae qui corporis et delectus voluptas autem. Aliquam vel iure cum et necessitatibus. Enim praesentium maiores quo unde optio rem.', '12', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('12', 'Aperiam debitis placeat quaerat qui inventore sapiente voluptatum.', 'Deserunt est eum voluptate et natus temporibus rerum. Voluptatum repellat aut qui error. In quo laudantium sit aliquid ad temporibus non. Quibusdam autem dolor perferendis magnam dolores.', '13', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('13', 'Non non dolor qui maiores.', 'Commodi animi necessitatibus nihil sed eius. Enim porro aut deleniti voluptas. Veniam provident nostrum molestiae quos est molestiae. Aliquid voluptatum quam modi quaerat omnis et.', '14', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('14', 'Eveniet officia nesciunt et et rerum sit in.', 'Consectetur consequatur quidem repellendus vel maxime nesciunt ad facere. Magni quia suscipit vero ratione. Ea animi omnis voluptatem aut qui consectetur.', '15', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('15', 'Voluptatem velit excepturi qui animi animi qui molestias rerum.', 'Nesciunt omnis cumque dolor dolores. Ut assumenda architecto ut quod. Rerum laboriosam reprehenderit accusamus harum. Provident quae qui sint.', '16', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('16', 'Temporibus autem voluptatem nihil consequatur praesentium enim.', 'Consequuntur ad aut voluptatem saepe fuga ipsam. Optio et praesentium nam voluptatum officia commodi. Aut consequuntur aspernatur dolore numquam aut. Animi dolor ut velit autem.', '17', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('17', 'Eveniet blanditiis esse praesentium alias fuga.', 'Dicta quis nam velit. Explicabo ipsam aut tempore iure expedita temporibus eum odio. Animi quod mollitia consequatur ullam ut eius voluptatibus.', '18', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('18', 'Blanditiis illum quidem laudantium sit eius aliquid nostrum.', 'Quod eligendi sit et distinctio. Tempora molestias in praesentium. Nam sed omnis accusantium quis corporis. Fugit et qui neque quia ex.', '19', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('19', 'Ut dolor aliquid enim ut.', 'Sunt fuga eaque autem ut et dolorum velit hic. Quas voluptas sunt unde corporis voluptates exercitationem animi et. Quia natus ducimus est et hic vel qui.', '20', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('20', 'Assumenda pariatur eius sed dolore vitae.', 'Perferendis quidem omnis deleniti iusto perspiciatis accusamus. Temporibus et sed dolor odio doloribus voluptas. Quia amet et corrupti dolores ullam et. Sed explicabo iusto qui qui ab.', '21', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('21', 'Et labore deserunt ut consequuntur eaque quod est.', 'Nam non et sapiente provident numquam. Officia suscipit quo vel illum aut. Impedit voluptas doloremque sint omnis porro.', '22', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('22', 'Tempora nam modi reprehenderit eos.', 'Dolore consequatur tempore et nulla dolorem. Magni molestiae tempora ut odit iste. Dicta earum dolores alias. Qui et illo rem. Ea omnis quaerat in aliquid.', '23', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('23', 'Voluptates quia quod voluptas doloremque qui vitae.', 'Dicta aperiam quia accusantium animi repellendus ullam. Harum qui dolorum sint aperiam voluptatibus. In sed necessitatibus et dolorem aliquam earum.', '24', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('24', 'Sunt eos aut in aperiam et et sed.', 'Sequi libero id maxime eos officiis mollitia qui. Maiores expedita enim eum quia voluptas provident numquam. Ipsum qui debitis in ducimus suscipit laborum qui.', '25', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('25', 'Cupiditate et amet perferendis qui.', 'Cumque excepturi aliquam dolorem voluptates facere. Doloribus incidunt id provident distinctio nihil et. Officiis libero expedita numquam hic ut deleniti temporibus. Officia et ut distinctio dicta perferendis.', '26', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('26', 'Earum repellat voluptatum nostrum tempore est aliquam.', 'Veritatis sit sit reiciendis quos sequi facere. Autem enim enim molestiae perferendis. Porro illo molestiae est. Ea nobis perferendis quis. Corporis tempore debitis harum amet aliquam ea nulla iste.', '27', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('27', 'Vero sapiente sequi sunt neque est.', 'Facere necessitatibus dolor earum et. Unde totam qui soluta similique similique dicta. Architecto aut quis sit magni.', '28', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('28', 'Nisi quia consequatur sint magni aut.', 'At sit atque consequuntur. Quidem dignissimos ea deserunt. Et sunt quia maxime soluta.', '29', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('29', 'Non dolorem itaque magni voluptatem maxime.', 'Reprehenderit in et a esse. Veritatis enim voluptas consequatur totam minus quia vero eum. Saepe repellendus natus dicta facere dolorum. Quia consequatur corporis et doloribus ipsum voluptas ipsa.', '30', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('30', 'Odio eum ut cumque doloribus voluptas maiores.', 'Culpa consequatur rerum accusamus et. Eius facilis cupiditate unde eius unde. Aut illo voluptates magnam unde officiis. Dolorum est labore et aperiam impedit.', '31', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('31', 'Modi quia eos aut aspernatur enim aliquam hic sapiente.', 'Et ut sit fugiat iste excepturi nihil sit. Nostrum repellat beatae illo fuga veniam ut vel culpa.', '32', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('32', 'Eveniet ratione ut dicta culpa rerum sit aliquam.', 'Occaecati distinctio adipisci voluptate ut. Voluptates possimus vitae odit cupiditate fugiat dolores reiciendis. Ab atque molestiae et vero et. Aut laudantium voluptates nihil voluptatem odit quia consequatur.', '33', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('33', 'Illum fuga repudiandae qui.', 'Ducimus vel recusandae nihil possimus a accusamus quidem. At praesentium rerum eligendi perspiciatis minus ipsam.', '34', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('34', 'Vel est ut ab illum.', 'Accusamus ad quidem illum pariatur id. Sunt non aliquam id delectus et. Nam eum nesciunt culpa.', '35', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('35', 'Harum cumque velit et nulla ullam ea molestiae.', 'Laborum quia quia et praesentium officiis consequatur. Quia velit quia in eum sit. Quis sunt alias ut. Dolor ullam aut in quod.', '36', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('36', 'Repellendus voluptas non est quae et asperiores.', 'Explicabo numquam aut laudantium. Et fugiat sunt natus non esse rerum aut. Labore dolor aut qui sint quasi et magni similique. Quae natus aperiam autem sed doloremque natus qui voluptas.', '37', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('37', 'Aliquam quos quis et eum ipsum dicta optio.', 'Aut nesciunt eveniet eius fugit quia. Et molestiae impedit nobis consequatur laboriosam. Quam quia nihil et aut non quod porro. Labore odio dolorum ut vitae ut et dicta. Quia consequatur qui sunt iusto neque.', '38', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('38', 'Eligendi impedit inventore optio beatae.', 'Rerum quo rerum unde cumque cumque voluptates quod. Quo quia sint quam placeat voluptatem sed repellendus exercitationem. Quia commodi et omnis quam unde sed architecto est. Architecto dolorem culpa vel eaque tempora.', '39', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('39', 'Et eius placeat itaque itaque.', 'Doloribus dicta beatae amet excepturi porro eos itaque labore. Delectus omnis eum illum ipsa beatae sequi. Architecto quibusdam harum sed id aut.', '40', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('40', 'Adipisci quia qui et.', 'Repellat ut excepturi cum. Natus voluptatem ea sit temporibus nisi voluptas quod animi. Expedita eligendi molestias voluptatibus sapiente nesciunt explicabo.', '41', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('41', 'In fugit qui sint hic quia quia incidunt.', 'Porro quae nesciunt quasi ex animi perferendis veritatis. Eos eveniet perferendis quam sint. Qui consequuntur sit quidem optio minus. Corrupti cumque veritatis veniam asperiores qui.', '42', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('42', 'Ut error tenetur incidunt nulla explicabo et est.', 'Est et aut et velit ut nemo nulla. Deleniti esse delectus labore. Aut similique occaecati in non maxime id eius molestiae. Est alias vel dolorum debitis enim quam iste.', '43', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('43', 'Optio voluptate est repudiandae non aliquid iure quibusdam.', 'Laboriosam possimus et dignissimos sed minima cumque possimus. Est libero sit natus suscipit magnam qui. Totam laborum deleniti asperiores enim rem doloribus qui est. Quod animi mollitia non sit. Repellat magnam laboriosam cum quidem ullam iste rem.', '44', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('44', 'Voluptas quo explicabo qui quae iste neque.', 'Ut voluptatem cupiditate voluptatem qui voluptatem totam corporis. Culpa natus rem ut eum quod aut molestias. Qui autem ut consequatur et ea alias facere.', '45', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('45', 'Officiis veritatis aut et maiores voluptatem dolor.', 'Non explicabo nisi necessitatibus nisi cum dolorem reiciendis. Eos perferendis quia cum reprehenderit consectetur consectetur. Dicta mollitia molestiae reprehenderit ab impedit dolor numquam eveniet.', '46', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('46', 'Nostrum tempora id tenetur.', 'Ab culpa omnis culpa quo eius et. Aut alias minus minima voluptatum asperiores. Non veniam ut aut quae distinctio provident porro. Quis vitae ea voluptatem necessitatibus id perferendis.', '47', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('47', 'Vero officiis eligendi sunt ratione.', 'Eos aliquid amet qui. Sed sed natus laudantium. Itaque facere sed deserunt rerum nam nihil. Sit adipisci consectetur est cumque fugit fuga modi.', '48', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('48', 'Modi qui sed et ut atque.', 'Eos quam quo quasi fugit. Sapiente aut repellendus necessitatibus laboriosam aut quae. Sunt non quisquam pariatur necessitatibus consectetur sed nihil sed.', '49', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('49', 'Provident velit pariatur facilis reiciendis voluptas distinctio.', 'Nihil nesciunt quia molestiae velit nostrum doloribus tempore. Vitae tempore commodi in sunt. Fugit quia quo dolor nemo qui qui mollitia iste. Autem rerum dolorem sapiente ab iste eius.', '50', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('50', 'Qui nobis veniam reiciendis esse commodi esse.', 'Itaque iure vel quia pariatur maxime. Numquam eos facere qui. Quo sint a ad rerum est.', '51', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('51', 'Sequi quis consectetur saepe.', 'Sed occaecati quis enim. Eum aperiam ut rerum dolorum facere. Velit iure cum consequatur dolor dolor quod autem enim.', '52', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('52', 'Sed et non qui dolores reprehenderit.', 'Facilis deserunt iusto ut quibusdam iste qui. Odit iure sint tempore molestiae minima.', '53', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('53', 'Illum voluptatibus quos eos voluptates optio.', 'Dolores quam sunt nam laborum voluptatem ratione soluta. Voluptas aliquid molestias non vero ut numquam. Natus soluta nobis perspiciatis reprehenderit. Vel tempora culpa dolore vero.', '54', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('54', 'Ut quis voluptatem voluptas sit quaerat sequi dolor.', 'Voluptatum sunt est qui qui. Deleniti quidem pariatur quaerat sint quia. Illum nihil fugit voluptas sed. Quia quo sunt cupiditate.', '55', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `posts` VALUES ('55', 'Et praesentium voluptate deserunt architecto.', 'Explicabo iure rem aut sit sequi. Harum sequi provident et ullam voluptas totam quae unde. Rerum voluptate harum voluptas commodi. A repellendus minus excepturi deserunt qui provident delectus.', '56', '2017-09-23 03:34:52', '2017-09-23 03:34:52');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Trystan Kerluke I', 'huel.breanna@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'ILRftSvpEV', '2017-09-23 03:34:35', '2017-09-23 03:34:35');
INSERT INTO `users` VALUES ('2', 'Narciso Bahringer PhD', 'west.diamond@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'lLXVfNC3uq', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('3', 'Ezequiel Reilly', 'koelpin.winston@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'PaTSilx3zp', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('4', 'Nathan Bartoletti II', 'schultz.myrtice@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'Fca1jQIFt2', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('5', 'Prof. Wallace Weimann DDS', 'williamson.telly@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'd0vFqeC5ZL', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('6', 'Dr. Maegan Schimmel III', 'elbert72@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'wE345xcSVN', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('7', 'Alexa Breitenberg', 'kuphal.shanel@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'FoDNcM4rHq', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('8', 'Mr. Reyes Ledner', 'arden72@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'A1imunqPYu', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('9', 'Megane Kunze', 'wharber@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'wbV7n2Qvyp', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('10', 'Milo Ondricka', 'domenick.quitzon@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'azOqzDgUQJ', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('11', 'Melba Orn', 'lilian.gleason@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'R9CzZImtPN', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('12', 'Ms. Coralie Cartwright Sr.', 'schneider.monroe@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'VcsLBEBopS', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('13', 'Stanford Kautzer DVM', 'orie34@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'LUrgY22rRH', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('14', 'Dell Skiles', 'hbreitenberg@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'AQLGc9fee4', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('15', 'Sam Labadie', 'ressie.windler@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'GugoTwaIP8', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('16', 'Matt Block', 'psawayn@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'OVMgw6XmbX', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('17', 'Mrs. Anastasia Bosco V', 'effertz.marianne@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'EqzNmXIBXj', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('18', 'Kimberly West', 'annabelle85@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'eQPc4ZXunL', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('19', 'Dr. Eric Auer', 'beatty.leatha@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'rioz2yZilQ', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('20', 'Shaylee Conroy', 'kuvalis.muriel@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'dS6asEDzGL', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('21', 'Lon Gislason II', 'wilmer.heaney@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'DGnUITjsoS', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('22', 'Anabelle Walker', 'chaz.stanton@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'bMswT0FuOL', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('23', 'Juana Frami', 'murphy.alanna@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'C8QghJ9by2', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('24', 'Nick Ebert', 'garnet.luettgen@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'jnRm2Ga5Fi', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('25', 'Ms. Ramona Cole', 'alene25@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', '0cSxcweTPg', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('26', 'Prof. Jasper Roberts', 'conn.tyree@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'OcCE9m98zH', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('27', 'Zoie Nikolaus DDS', 'eddie05@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'tdjXjCqtko', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('28', 'Kaylie Stark', 'prohaska.heidi@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'dRe1EnepHm', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('29', 'Tanner Vandervort', 'smitham.ethelyn@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', '3D0CLP2osW', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('30', 'Levi Ernser', 'jgleason@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', '2o4QyiLDCx', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('31', 'Sammie Wilderman', 'mazie.dooley@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'szVukIZf6I', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('32', 'Prof. Chanel Stiedemann V', 'bcruickshank@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'ahkbsulZjW', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('33', 'Rachel Cartwright DVM', 'alexane65@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'ikzOyNAjyx', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('34', 'Miss Anahi Fadel IV', 'bartell.alysa@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'QXxXK1GsJs', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('35', 'Sherman Wilkinson', 'vida02@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', '1R7PVVIf1Z', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('36', 'Ethan Corwin', 'flehner@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'VcqNX57g4T', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('37', 'Prof. Mortimer Hand', 'ignatius18@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'v64BSlIex0', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('38', 'Guido Runolfsson DDS', 'justyn43@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'GY5X0fZWAB', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('39', 'Neva Treutel', 'garrick.bechtelar@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'eFEezb845N', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('40', 'Giovani Hackett', 'auer.gino@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'hnyJ3bj9sZ', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('41', 'Dr. Cesar Glover DVM', 'nader.amanda@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'C08CyTPvD5', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('42', 'Mrs. Leanna Bergnaum DDS', 'ggutmann@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'OWqUlRL6X6', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('43', 'Rusty Bogisich', 'kswift@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'fiWHFnbXVU', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('44', 'Nettie Jacobson', 'zrussel@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'aJgR2CDqcS', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('45', 'Lukas Cummings', 'ocarter@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'Uhn35nrUMV', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('46', 'Noemi Senger', 'zane62@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'RgT6MbfnPb', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('47', 'Mr. Barton Hackett', 'donald.reinger@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'do6vVWlPFY', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('48', 'Prof. Ramiro Konopelski PhD', 'stanton.devon@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', '3BYVnosrbI', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('49', 'Prof. Norberto Green', 'giovani.kilback@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'K7UiDXJlUa', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('50', 'Ferne Rutherford', 'dicki.grayce@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'U80Gje3wSX', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('51', 'Tania Sanford', 'cschoen@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'SCOclL4dYF', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('52', 'Margot Wilderman', 'bauer@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'TJNbSOKM7q', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('53', 'Everett Kihn', 'okoelpin@example.net', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', '1JFyoi6EdW', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('54', 'Larissa Swift', 'lou.reichel@example.com', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'nXIHtDwX9a', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('55', 'Rodrick Dietrich IV', 'langosh.norma@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'GMITHsZlxC', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('56', 'Sydni Carter', 'ycassin@example.org', '$2y$10$QPiZ5CYcbUJm30y5RJ/kWuNpW7j4basLOLAj94/phsTZPlTTq/gvy', '0', 'xsjCeK43qA', '2017-09-23 03:34:52', '2017-09-23 03:34:52');
INSERT INTO `users` VALUES ('91', 'weiyao', '853043009@qq.com', '$2y$10$rStB/LAcyMdJiRkJ2TSFF.u7REFUMeAZEUrlACBjdtegke5Sv50vK', '1', null, '2017-09-27 05:58:37', '2017-09-27 05:58:37');
INSERT INTO `users` VALUES ('93', 'weiyao1', 'lidaemail@qq.com', '$2y$10$.JxYKFPVHsHwNmSmAZaNluGc3GsAIAPXQEc8CiAjZuNbsUnx0eowy', '0', null, '2017-09-27 10:17:53', '2017-09-27 10:17:53');
