-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 10:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin-panel-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `email`, `subject`, `message`, `is_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'nmarks@example.com', 'Enim corrupti fuga architecto.', 'Possimus vel accusantium et explicabo soluta esse et. Suscipit quaerat minus qui excepturi dolorem dolorum et eveniet. Ut sed voluptatum nihil magnam non maiores et.', 1, '2024-11-16 19:45:38', '2024-11-25 14:14:32', NULL),
(2, 'graham.tara@example.com', 'Ut quod voluptatum nihil harum exercitationem est dolor.', 'Culpa porro ipsa a. Dolorem molestiae laborum odio quia ex voluptates.', 1, '2024-11-16 19:45:38', '2024-11-25 14:15:22', NULL),
(3, 'wkoelpin@example.net', 'Illum qui vitae ab voluptate aut et nobis a.', 'Odit nemo reiciendis cupiditate et ut velit. Maxime excepturi dicta quia ipsam. Ipsum ut dolor saepe blanditiis molestiae et.', 0, '2024-11-16 19:45:38', '2024-11-25 14:15:22', NULL),
(4, 'jonatan.rutherford@example.com', 'Consequatur exercitationem in est quos ut tempore possimus.', 'Voluptas dolor et doloribus. Tempora sunt ratione voluptatibus nobis consequatur cupiditate. Quo necessitatibus porro voluptas maxime eaque omnis. Neque id quia libero fuga natus dicta.', 1, '2024-11-16 19:45:38', '2024-11-25 14:15:22', NULL),
(5, 'ortiz.art@example.com', 'Hic rem nisi corporis consequuntur natus tempore perferendis.', 'Assumenda illo nemo saepe ratione qui voluptas autem. Voluptatem sapiente optio tenetur officiis assumenda corrupti repudiandae. Vel nisi occaecati corporis perferendis.', 0, '2024-11-16 19:45:38', '2024-11-25 14:15:22', NULL),
(6, 'walker.ines@example.net', 'Nesciunt id et ut et voluptates ut.', 'Illum est corrupti iste. Praesentium rerum omnis rerum porro eveniet quis aut. Saepe ut est voluptatem illo rerum excepturi soluta. Exercitationem nulla asperiores ut minima quisquam voluptatum.', 1, '2024-11-16 19:45:38', '2024-11-16 19:45:38', NULL),
(7, 'nasir90@example.org', 'Non et unde reiciendis rerum.', 'Quia at atque saepe omnis vero suscipit est. Impedit iure sit maxime velit dolor. Voluptatem non molestiae ut velit rerum quibusdam perspiciatis. Sit vel dolor necessitatibus necessitatibus velit.', 1, '2024-11-16 19:45:38', '2024-12-02 15:49:59', NULL),
(8, 'david.rowe@example.org', 'Doloribus odio asperiores ut molestias.', 'Magnam nihil placeat vero quisquam inventore rerum ratione. Commodi beatae labore quam rerum. Et eum et facilis modi voluptatum.', 1, '2024-11-16 19:45:38', '2024-11-16 19:45:38', NULL),
(9, 'ishanahan@example.net', 'Architecto corrupti ab amet aut asperiores.', 'Enim eum dolores velit numquam voluptas. Debitis magni magnam consequatur nostrum asperiores quia. Dignissimos perferendis nihil aperiam. Libero eius est nobis sint corrupti nihil laborum. Et aliquam rerum doloremque voluptatum tempora.', 1, '2024-11-16 19:46:41', '2024-11-16 19:47:08', NULL),
(10, 'emilie.toy@example.org', 'Id cum dolores adipisci velit.', 'Ad nihil maiores repellat dolorem sint expedita sit. Debitis quod aut qui corporis. Dolores ea ab error error. Illum deserunt dolore voluptatibus voluptas ut doloremque.', 1, '2024-11-16 19:46:41', '2024-11-16 19:47:13', NULL),
(11, 'rene83@example.net', 'Dolorum maiores maiores quia culpa.', 'Quis rerum voluptatem eaque quis reiciendis et. Eaque qui vel eaque et aut quis. Reiciendis qui optio fugit quas facere perspiciatis. Nam quidem atque distinctio dolorem.', 1, '2024-11-16 19:46:41', '2024-11-25 14:14:32', NULL),
(12, 'horace.jast@example.net', 'Maxime vitae aspernatur et ea alias autem saepe.', 'Inventore facilis laudantium repellendus optio perspiciatis ratione. Ex corporis autem nesciunt excepturi laborum.', 0, '2024-11-16 19:46:41', '2024-11-25 14:14:32', NULL),
(13, 'meggie58@example.net', 'Veniam voluptatum quia non exercitationem rerum quia quo qui.', 'Et qui doloribus ipsam culpa reiciendis sunt ut. Perspiciatis vel officiis nostrum animi tempore. Ad quo ipsum ut consectetur nihil quibusdam.', 1, '2024-11-16 19:46:41', '2024-11-25 14:14:32', NULL),
(14, 'edgar87@example.com', 'Iusto unde natus nostrum eum ex.', 'Repellendus nostrum laborum eos aperiam debitis id. Dolorum accusamus vero qui accusantium vel molestias. Aliquid et qui harum ea. Illo eum eaque atque dolorum vitae voluptatem.', 1, '2024-11-16 19:46:41', '2024-11-16 19:46:41', NULL),
(15, 'harris.anita@example.org', 'Aliquam ducimus ut laudantium doloremque doloribus est.', 'Vel autem iure est error delectus repellendus. Fugit maiores velit consequatur aspernatur incidunt rerum soluta. Incidunt dolor earum hic vero.', 0, '2024-11-16 19:46:41', '2024-11-16 19:46:41', NULL),
(16, 'vbode@example.org', 'Asperiores dolorem placeat qui non beatae nihil.', 'Totam qui quibusdam quam illum nihil adipisci consequuntur quod. Nemo quam accusantium sint facere. Sunt non nisi quia cum officiis quisquam aspernatur. Maiores rem eius tempore minus id.', 1, '2024-11-16 19:46:41', '2024-11-16 19:46:41', NULL),
(17, 'smitchell@example.org', 'Quo a accusamus est tempora.', 'Natus officia repudiandae sint suscipit suscipit sed aspernatur. Maiores est numquam eaque tempora ut sed velit cumque. Quod ut nobis aliquam molestiae.', 1, '2024-11-16 19:50:51', '2024-11-16 20:17:55', NULL),
(18, 'gutmann.edward@example.org', 'Est qui iure qui ratione cum.', 'Recusandae repellat soluta consequatur quis eum sint quasi quis. Necessitatibus consequuntur quo voluptas delectus facilis. Sed sunt officiis excepturi nostrum consectetur ad. Molestiae cupiditate recusandae nulla ullam saepe et sit.', 1, '2024-11-16 19:50:51', '2024-11-16 20:17:58', NULL),
(19, 'lilyan95@example.org', 'Consequatur quam neque sit porro voluptatem.', 'Et quaerat et numquam et quo. Quidem quo sapiente rem facilis. Nisi inventore cupiditate inventore suscipit deleniti.', 1, '2024-11-16 19:50:51', '2024-11-16 19:51:06', NULL),
(20, 'kendrick65@example.net', 'Qui at qui aut rerum enim laudantium placeat.', 'Reiciendis ex itaque eaque. Non excepturi rem veniam. Minima quia non odit minima.', 1, '2024-11-16 19:50:51', '2024-11-16 19:51:22', '2024-11-16 19:51:22'),
(21, 'creola19@example.net', 'Quisquam sit voluptatibus omnis et ab est.', 'Libero maxime ut et omnis necessitatibus. Beatae iure itaque aperiam recusandae eaque repellat. Quasi perspiciatis voluptas rerum. Eos et qui dicta ipsam non dolorem.', 1, '2024-11-16 19:50:51', '2024-11-16 19:51:00', NULL),
(22, 'greenfelder.beatrice@example.net', 'Aut accusantium nesciunt quaerat assumenda omnis eos sunt.', 'Sequi eos natus optio odit. Qui repellendus aut velit quia maiores. Quis sed cupiditate numquam voluptatem veniam architecto laudantium.', 1, '2024-11-16 19:50:51', '2024-11-26 10:30:46', NULL),
(23, 'iosinski@example.com', 'Natus corrupti impedit aliquid illum nulla unde voluptates.', 'Vero consectetur corrupti delectus illum id in occaecati. Enim aut qui nisi est sequi sequi. Sint delectus et quasi assumenda rem libero. Reiciendis nihil recusandae quas molestias error quaerat. Cum aut hic dignissimos deleniti quae.', 1, '2024-11-16 19:50:51', '2024-11-16 20:14:54', NULL),
(24, 'dsmith@example.org', 'Dicta nulla officia odit est quas voluptates.', 'Rerum earum omnis laborum. Eaque corrupti possimus eveniet nihil rerum quia. Omnis ipsa maiores sunt deleniti aliquid facere.', 1, '2024-11-16 19:50:51', '2024-11-26 10:30:44', NULL),
(25, 'kessler.alta@example.org', 'Temporibus voluptas porro nostrum ut dignissimos nemo ea quibusdam.', 'Praesentium a beatae aut sint qui. Est nihil dolor qui optio.', 1, '2024-11-16 19:50:51', '2024-11-26 09:59:26', NULL),
(26, 'kris.emil@example.org', 'Necessitatibus quo nulla beatae beatae.', 'Neque exercitationem et incidunt nostrum et. Nisi quia nulla id cupiditate omnis. Qui excepturi est animi molestiae neque voluptatibus.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:44', NULL),
(27, 'schmeler.curtis@example.org', 'Possimus quia dolorem quia.', 'Neque vel laborum cupiditate sint vero sapiente. Excepturi nemo est explicabo nostrum. Incidunt architecto reprehenderit dolore ea quod minus consectetur dolore.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:44', NULL),
(28, 'maureen.blanda@example.net', 'Et id adipisci labore aperiam.', 'Reprehenderit dolor aut omnis libero. Totam harum doloribus qui provident officia nihil tempora. Voluptates deserunt est quia rerum molestiae enim accusamus facilis. At ut ut sunt distinctio sint earum rem.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:44', NULL),
(29, 'rashad.hane@example.com', 'Ut ad et voluptatem reprehenderit.', 'Unde voluptate reiciendis hic voluptate. Facilis assumenda veritatis in id. Earum quia ut reiciendis minus. Rerum dolorum aut suscipit fugit corporis rerum enim.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:44', NULL),
(30, 'juanita.fadel@example.org', 'Laboriosam ut sequi temporibus autem ducimus reiciendis suscipit.', 'Voluptatibus enim doloribus voluptas rerum assumenda. Porro pariatur alias dolor fuga. Adipisci a ex necessitatibus fugit ea ex quos. Recusandae perspiciatis voluptatem quia maxime quidem.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:44', NULL),
(31, 'strosin.adaline@example.com', 'Excepturi odit quo maiores modi et.', 'Perferendis quia atque iure qui dolores rerum hic. Explicabo dolorem similique eos qui perferendis esse et. Quia quo deserunt natus tempora quo ratione quae dicta. Neque omnis quod ut nihil enim ullam rem. Sunt quia ipsa eum consectetur culpa nulla.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:48', NULL),
(32, 'bins.demario@example.org', 'Aut ipsam et consequatur quam dicta dolorum.', 'Quaerat facere voluptas enim praesentium qui. Sed exercitationem sit error itaque autem repudiandae est. Rem molestiae ex dolore at et earum facere eum. Vel officiis debitis sed dolores.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:48', NULL),
(33, 'mia.roob@example.org', 'Quia quia distinctio rerum ratione unde.', 'Aspernatur animi sint cum alias eaque. Iusto ut cumque qui quia et minus accusamus. Consectetur temporibus eos quis eligendi voluptas cumque voluptates.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:48', NULL),
(34, 'jerome.lesch@example.com', 'Assumenda quia distinctio qui similique temporibus.', 'Culpa nesciunt qui et id. Ab porro impedit voluptas qui sunt doloremque quam. Perferendis similique ad sit facere dolorem iste. Sit incidunt officia eum sed aut commodi ut.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:48', NULL),
(35, 'quinten.altenwerth@example.org', 'Ut necessitatibus voluptas quia iste eos id.', 'Tempora deleniti illum fugit nisi. Voluptates laudantium ad perferendis ad qui ducimus voluptates qui. Et vitae qui ex nihil deleniti eligendi aut. Est deleniti reiciendis magnam deserunt culpa.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:48', NULL),
(36, 'wschneider@example.org', 'Cumque velit qui blanditiis et expedita qui.', 'Rerum occaecati aut est sequi. Repellendus aut quia modi ea omnis consectetur quos. Explicabo est id voluptatum ratione ut occaecati aut odit.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:49', NULL),
(37, 'kautzer.ernest@example.net', 'Eveniet impedit veritatis ut magnam.', 'Et occaecati voluptate reiciendis vero enim et. Ut voluptatibus repellendus quae repudiandae ut voluptatem eligendi. Sit illo saepe laudantium deleniti excepturi.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:49', NULL),
(38, 'shoeger@example.net', 'Hic enim dolor laboriosam eius eaque incidunt.', 'Voluptates soluta qui consequatur ut. Fugiat est porro odio minus.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:49', NULL),
(39, 'mkessler@example.net', 'Autem molestias qui provident enim fugiat explicabo.', 'Dolore est ipsum laborum ab in dolorem. Sed impedit delectus qui quia facilis autem nihil. Sed minima quo accusantium illum ex. Fuga dolores ut quia sed quisquam similique.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:49', NULL),
(40, 'gibson.gilda@example.org', 'Similique libero sit expedita qui voluptates excepturi aut.', 'Nulla neque eos quidem nihil id impedit error at. Ducimus fugit architecto minima. Itaque ex quae non quaerat non.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:49', NULL),
(41, 'eturner@example.com', 'Magni sunt occaecati incidunt labore.', 'Quas doloribus reprehenderit est. Recusandae quia alias sapiente sed ratione suscipit molestias. Natus doloremque et nesciunt et dolores quos.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:51', NULL),
(42, 'larson.dahlia@example.com', 'Eum tempora voluptate rerum autem tempore voluptate sit.', 'Voluptatum tempora officiis repellat ipsam qui vel nemo. Quam veniam aut officiis consequuntur. Quis modi et sit sint. Ad qui accusamus et quo.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:51', NULL),
(43, 'noemie93@example.net', 'Sed consectetur aspernatur quia porro voluptate vel facere.', 'Iure rerum non deleniti nobis earum. Vero harum iure consectetur hic. Rerum tempore quaerat dolores officia unde labore debitis nobis.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:51', NULL),
(44, 'robert73@example.com', 'Officiis eveniet numquam quam aperiam vel laboriosam et.', 'Sapiente est fugit officiis deserunt. Veritatis quibusdam omnis veniam rem modi veritatis non. Molestiae vel voluptatem debitis aut iure consequatur quas.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:51', NULL),
(45, 'pearline59@example.com', 'Ad expedita quae sint beatae quos.', 'Exercitationem quia nam aut laboriosam maiores. Iure nobis molestiae est sapiente ipsam quam sunt dolore. Nihil dicta et vitae optio eos ducimus similique.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:51', NULL),
(46, 'gideon29@example.org', 'Impedit consequatur ut aut autem possimus ut dolor.', 'Itaque vitae reprehenderit aut dolorem. Beatae sit rerum assumenda voluptates dolore hic minus. Minus dolorem accusamus consequatur ut. Facere repudiandae vero quo.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:52', NULL),
(47, 'leila.luettgen@example.org', 'Minima quis nihil ut nisi vitae rerum.', 'Atque dolorum illo omnis ducimus facere. Et quia dolorem deserunt fuga eum amet voluptate. Magnam quia mollitia aut necessitatibus. Ut aut laudantium vel aspernatur eaque aut.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:52', NULL),
(48, 'kemmer.ryder@example.net', 'Nam ea quod et error et vero.', 'Sit quaerat dolorem occaecati cum. Qui assumenda dignissimos inventore est et aut saepe.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:52', NULL),
(49, 'timmy00@example.net', 'Reiciendis suscipit corrupti amet delectus.', 'Id qui qui maiores veritatis architecto recusandae nisi. Laboriosam amet voluptatem possimus ipsam quaerat. Quia autem et sed quo. Ea autem consequuntur ut suscipit ut ut.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:52', NULL),
(50, 'ifay@example.org', 'Sint enim harum deleniti voluptatem aut nulla animi.', 'Eaque iusto fuga libero enim dolorem culpa est velit. Quia quaerat qui corrupti sit et magni non. Qui maiores atque ut ipsam dolorem in.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:52', NULL),
(51, 'curtis.jerde@example.net', 'Voluptas odit eos ut blanditiis id distinctio.', 'Voluptate dolor consequatur sunt sed eos repellat nisi labore. Libero vero ut enim eos consequatur eius quisquam. Quia non minus modi saepe amet et blanditiis.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:53', NULL),
(52, 'bette.huel@example.org', 'Fugiat eius pariatur et qui tempore ut.', 'Nisi aut ut sit culpa. Occaecati corporis consequatur non. Eaque dolorem ratione hic rem quas pariatur. Sed omnis aliquid cumque.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:53', NULL),
(53, 'mbednar@example.net', 'Omnis qui aut magni.', 'In nulla eum eum. Voluptatum ut dolor aut labore quas. Non neque nesciunt similique.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:53', NULL),
(54, 'daniel.benny@example.com', 'Qui et non et et vel.', 'Et excepturi dolore cum qui. Voluptas facere et omnis facilis mollitia. Sint vel eos id architecto magnam quidem. Facere sint voluptatem molestiae eos asperiores.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:53', NULL),
(55, 'kemmer.johann@example.org', 'Consequuntur praesentium voluptatem quia in velit soluta.', 'Laudantium aut nihil culpa eius. Adipisci alias dolorum ex esse esse et qui enim. Sint fuga et est sed. Quas officiis quidem voluptas aspernatur sit.', 1, '2024-11-16 19:50:51', '2024-11-25 11:24:53', NULL),
(56, 'skye97@example.net', 'Officia reprehenderit similique ut exercitationem.', 'Quia rem tempora in sed aut similique. Quasi nisi nostrum odio sint impedit. Ut omnis at ad quaerat corporis.', 1, '2024-11-16 19:50:51', '2024-11-25 12:57:50', NULL),
(57, 'nelda29@example.com', 'In cupiditate non qui cumque.', 'Maxime cum optio et rerum. Nostrum ut nulla dolorem quos iure eveniet. Tenetur natus dolore officiis fugit ratione odio.', 1, '2024-11-16 19:50:51', '2024-11-25 12:57:50', NULL),
(58, 'yasmine03@example.org', 'Eligendi quaerat quas velit dolorem.', 'Perferendis qui id molestiae qui molestias nihil ipsam. Velit quia dolor possimus perspiciatis suscipit sunt unde.', 1, '2024-11-16 19:50:51', '2024-11-25 12:57:50', NULL),
(59, 'kshlerin.justen@example.org', 'Nisi dignissimos non ipsum maxime.', 'Eaque quo aspernatur natus dolorum perspiciatis nihil at. Architecto ex aut modi libero eveniet. Nam sunt autem omnis repellat.', 1, '2024-11-16 19:50:51', '2024-11-25 12:57:50', NULL),
(60, 'pfeffer.casey@example.net', 'Ut illum quis iusto nesciunt ab ea dolor velit.', 'Nemo quam eos rerum doloremque iste quaerat. Modi aperiam magnam dignissimos exercitationem. Vero sunt eos odit et velit et.', 1, '2024-11-16 19:50:51', '2024-11-25 12:57:50', NULL),
(61, 'effertz.paris@example.org', 'Labore vel modi quia mollitia dolore.', 'Autem tempora molestiae qui ut consequatur. Sed quis quia culpa esse possimus. Nam labore quae non sed est at. Aut ab sit voluptate sit veniam rem consequuntur molestiae.', 1, '2024-11-16 19:50:51', '2024-11-25 13:22:42', NULL),
(62, 'jermain27@example.net', 'Ut aliquid fuga nisi cupiditate.', 'Ut occaecati voluptatibus commodi veritatis consequatur. Eligendi ut labore et perferendis a tenetur. Ducimus rerum provident facere aut in velit qui.', 1, '2024-11-16 19:50:51', '2024-11-25 13:22:42', NULL),
(63, 'valentine.jakubowski@example.org', 'Rerum quisquam ipsam repudiandae omnis enim aliquam perspiciatis.', 'Aut et et voluptates quaerat molestias perspiciatis. Sit beatae officiis est suscipit debitis consequatur iusto. Architecto molestiae tempora voluptatem tenetur quo recusandae facilis expedita. Aut veniam doloribus praesentium possimus et iusto. Natus optio et error sit est voluptas eius.', 1, '2024-11-16 19:50:51', '2024-11-25 13:22:42', NULL),
(64, 'germaine46@example.net', 'Sit cumque aut reprehenderit veritatis voluptate et aliquid.', 'Non velit doloribus natus suscipit accusantium. Ut voluptatem sequi minima tempore non praesentium ut. Distinctio quia quos necessitatibus autem. Veniam sint aliquid pariatur commodi non nihil necessitatibus.', 1, '2024-11-16 19:50:51', '2024-11-25 13:22:42', NULL),
(65, 'nwilkinson@example.net', 'Non consequatur assumenda suscipit porro sunt.', 'Dignissimos dolorum omnis nostrum rerum. Saepe vero est commodi mollitia quaerat provident rem.', 1, '2024-11-16 19:50:51', '2024-11-25 13:22:42', NULL),
(66, 'marley33@example.com', 'Fugiat odit temporibus at consequatur inventore reprehenderit.', 'Debitis voluptas quo at voluptate tenetur. Quasi totam in dolores voluptatem maxime beatae. Dolorem voluptatem reprehenderit rem voluptatibus.', 1, '2024-11-16 19:50:51', '2024-11-25 14:14:32', NULL),
(67, 'balistreri.austin@example.com', 'Libero consectetur dolore facilis et temporibus et.', 'Sed veniam ea rerum nihil temporibus natus. Maiores unde nemo maiores voluptates et animi et. Ab aliquam ea sequi delectus autem. Quaerat labore aut maiores cumque aspernatur.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(68, 'kpfannerstill@example.org', 'Similique est quia voluptate velit quo.', 'Eos velit eum repellat voluptas minus omnis aut. Sint et qui quam aut aspernatur. Sequi architecto libero deleniti eos.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(69, 'vgutkowski@example.net', 'Odio minus laudantium deleniti est sed adipisci.', 'Molestias fugit enim placeat minus. Consequatur consequatur aperiam magni beatae ex ratione.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(70, 'dlarkin@example.com', 'Voluptatum quam nesciunt repellendus sit deleniti praesentium.', 'Pariatur soluta voluptatem blanditiis tempora est. Aut ipsam voluptates ipsum. Consequuntur corrupti corporis quam perferendis officia.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(71, 'carmella35@example.org', 'Quibusdam vero rerum et eos.', 'Et quaerat deserunt voluptatibus eveniet iste soluta modi. Ut illo occaecati quod nihil ut quia dolor soluta. Neque possimus ut corporis voluptatem.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(72, 'medhurst.henri@example.com', 'Fugit omnis odit itaque expedita accusantium omnis.', 'Inventore placeat cumque vel laboriosam impedit accusantium. Magni qui ut voluptate saepe dolor ea. Sit dolor voluptate harum dolores harum voluptas.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(73, 'ambrose08@example.net', 'Voluptas quae nobis totam.', 'Repellat hic modi voluptatem explicabo tempore sed a. Aut optio nisi quod error quis. Dignissimos non enim expedita perspiciatis ut nulla. Earum odio architecto qui esse expedita.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(74, 'zdaniel@example.net', 'Voluptate dolorum ea sequi deserunt.', 'Labore eveniet commodi commodi eum libero in. Quasi dicta quos deserunt labore doloremque impedit. Sunt est et aliquid sit eligendi. Non et sed et ut fuga ex maxime.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(75, 'ccrist@example.com', 'Possimus sint blanditiis culpa ea consectetur voluptatum perspiciatis sit.', 'Consequuntur atque ab quas sunt maiores quam. Harum voluptatem consequatur incidunt aut. Explicabo dolore asperiores voluptas. Aperiam blanditiis sit in error assumenda natus. Aut minima doloribus beatae aut.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(76, 'cole.cristal@example.com', 'Quia voluptates sit vel explicabo numquam.', 'Est iusto fugiat ut labore consectetur numquam consequatur dolores. Libero atque explicabo voluptatem molestias sequi. Ipsa molestiae sint laudantium perferendis a cum. Est reiciendis aliquam omnis soluta.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(77, 'hmills@example.net', 'At rerum illo eaque consequatur omnis pariatur.', 'Quia rem dignissimos dicta asperiores molestiae ut. Harum at consequatur praesentium repudiandae impedit ratione. Est odit magni ab iure non. Optio veritatis ut eveniet sequi doloremque nisi non.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(78, 'judy.zemlak@example.net', 'Ea ut blanditiis error ea cupiditate.', 'Earum dolore dolorum quasi harum enim modi. Velit quidem ea distinctio nobis voluptates.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(79, 'hrobel@example.org', 'Labore beatae ut at explicabo voluptate accusamus corporis ipsam.', 'Optio inventore beatae ut. Aliquam harum labore aut. Quo ut ut ipsum blanditiis tempora. Quae occaecati architecto nulla temporibus consequatur quo sed natus.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(80, 'carlos40@example.com', 'A aliquid dolorem ut.', 'Aut corrupti ipsa possimus ab pariatur. Aliquid et sed numquam explicabo voluptatem perspiciatis.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(81, 'cummerata.garry@example.com', 'Doloribus est voluptatibus nulla modi cupiditate corrupti reprehenderit vel.', 'Odit aut reiciendis nemo. Repudiandae et occaecati tenetur eum molestiae est. Natus culpa illum voluptate suscipit ex nihil velit reiciendis. Amet minus laborum autem.', 1, '2024-11-16 19:50:51', '2024-11-16 19:50:51', NULL),
(82, 'example@test.com', 'Test Subject', 'This is a test message.', 0, '2024-12-05 00:46:37', '2024-12-05 00:46:37', NULL),
(83, 'example1@test.com', 'Test Subject1', 'This is a test message1.', 1, '2024-12-05 00:49:18', '2024-12-05 11:38:14', NULL),
(84, 'example2@test.com', 'Test Subject2', 'This is a test message2.', 1, '2024-12-08 19:55:11', '2024-12-08 19:56:17', '2024-12-08 19:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'random', 'asdfdfas', 'https://cdn1.expresscomputer.in/wp-content/uploads/2023/09/29161851/EC_Fintech_02_Technology_750.jpg', '2024-11-25 13:00:06', '2024-11-25 13:00:06'),
(3, 'test', 'test', 'https://cdn1.expresscomputer.in/wp-content/uploads/2023/09/29161851/EC_Fintech_02_Technology_750.jpg', '2024-12-05 11:25:39', '2024-12-05 11:25:39'),
(4, 'test1', 'test1', 'https://cdn1.expresscomputer.in/wp-content/uploads/2023/09/29161851/EC_Fintech_02_Technology_750.jpg', '2024-12-05 11:28:36', '2024-12-05 11:28:36'),
(5, 'test2', 'test2', 'https://cdn1.expresscomputer.in/wp-content/uploads/2023/09/29161851/EC_Fintech_02_Technology_750.jpg', '2024-12-05 11:30:14', '2024-12-05 11:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('Part time','Full time') NOT NULL,
  `work_mode` enum('Hybrid','On-site') NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `type`, `work_mode`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Waiter11', 'Nesciunt occaecati odit molestiae qui quo. Illum reiciendis porro ullam cupiditate dolorem blanditiis et. Consequuntur delectus libero quam dolore.1', 'Part time', 'Hybrid', 'South Perryfurt', '2024-11-16 19:46:26', '2024-12-08 20:22:08'),
(3, 'Stock Clerk', 'Dolores architecto nesciunt sit voluptatem sapiente maxime. Id ut non sit. Laborum in dolorem enim sequi rerum. Beatae aut illum ipsa et.', 'Part time', 'Hybrid', 'Treymouth', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(4, 'Clinical School Psychologist', 'Non qui in blanditiis. Libero non hic harum id sit nam. Voluptatem eos iusto libero in eius nihil quasi est.', 'Full time', 'On-site', 'Casimirview', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(5, 'Plating Machine Operator', 'Aperiam possimus voluptatem quis dolores velit iusto. Commodi animi voluptatem sed tenetur. Et aspernatur officiis in provident sit quisquam at.', 'Part time', 'On-site', 'West Domenico', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(6, 'Private Sector Executive', 'Ad veniam accusamus ut aut suscipit quidem. Doloremque occaecati accusamus voluptate dolor magnam quibusdam. Animi dolores enim delectus et rerum.', 'Part time', 'Hybrid', 'North Kaela', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(7, 'General Farmworker', 'Ut magni aut qui quia. Perspiciatis omnis voluptate at. Exercitationem quia atque explicabo voluptatem quae sed.', 'Full time', 'Hybrid', 'Bergnaumbury', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(8, 'Pesticide Sprayer', 'Ex odit est qui dolore ea atque voluptas voluptatibus. Ea suscipit tenetur voluptatem expedita fugiat enim ut distinctio. Ut eaque voluptates voluptatem sed quo inventore.', 'Part time', 'Hybrid', 'Hilmabury', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(9, 'Occupational Health Safety Technician', 'Eius in recusandae temporibus quis autem. Commodi temporibus molestiae fuga nihil consectetur. Cum vitae deleniti perferendis necessitatibus quos deleniti. Et quisquam culpa dolorem voluptatem. Quae corporis alias omnis qui ab.', 'Full time', 'On-site', 'Nickolasside', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(10, 'Ship Engineer', 'Eos sit dolor non. A qui et temporibus omnis quis ex id. Maiores sit quia occaecati dolor aut ipsa. Facere sed ipsum delectus eos. Animi qui architecto autem error asperiores aliquam ut et.', 'Part time', 'On-site', 'Luzberg', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(11, 'Fashion Model', 'Exercitationem eum maxime quas atque cumque molestias atque. Distinctio molestiae at omnis provident accusantium rem. Odit quidem facere perferendis ab vel assumenda doloremque.', 'Part time', 'Hybrid', 'Boehmshire', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(12, 'Claims Taker', 'Enim debitis consectetur repellendus dolor veritatis quis. Consequatur illo corporis dolores laudantium consequatur sit. Atque ea totam est dolor.', 'Part time', 'Hybrid', 'Rileyberg', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(13, 'Refinery Operator', 'Velit earum doloribus maiores illo quam. Excepturi cupiditate molestiae consequatur ea nisi. Nostrum vitae quia ut atque.', 'Part time', 'Hybrid', 'North Zanderport', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(14, 'Agricultural Crop Farm Manager', 'Incidunt a est at ducimus maxime minima qui. Corrupti itaque necessitatibus illum non porro aut nam. Quibusdam repellendus nulla cupiditate ut sunt. Quia reiciendis et et aut.', 'Part time', 'Hybrid', 'Horacioton', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(15, 'Logging Equipment Operator', 'Aut facilis quo est reprehenderit fugiat corporis facere aut. Ducimus recusandae velit laborum dolore natus rerum praesentium.', 'Full time', 'On-site', 'Allenefort', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(16, 'Gas Compressor Operator', 'Voluptates accusantium iusto aliquid et. Deleniti ipsum sit iusto corrupti. Quod dignissimos corporis ut quia recusandae.', 'Full time', 'Hybrid', 'Port Luciennestad', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(17, 'Precision Pattern and Die Caster', 'Officiis quaerat ipsa neque et. Eum nam ullam ut placeat. Sint totam dolores omnis ea nisi. Aut qui fugit numquam et fugiat. Quia animi et fugit sit.', 'Part time', 'Hybrid', 'Lake Steviestad', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(18, 'Retail Salesperson', 'Voluptas et eligendi facere non repellendus. Quasi ea dolorem et placeat qui dolores. Quo quaerat enim nostrum. Aperiam quos voluptatem minima sequi est voluptate.', 'Full time', 'Hybrid', 'Violettehaven', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(19, 'Organizational Development Manager', 'Alias ut quidem tenetur et repudiandae dignissimos. Sequi aut possimus ipsa vel minima dignissimos ipsa. Quis distinctio quisquam modi sit labore qui. Accusantium autem aliquid in eaque.', 'Full time', 'On-site', 'Eunaside', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(20, 'Nuclear Medicine Technologist', 'Enim magnam placeat harum minus voluptatibus. Totam ducimus facilis voluptatem beatae rerum dolor quia. In nostrum et ad explicabo cumque. Aperiam porro est maiores natus.', 'Part time', 'On-site', 'Grimesbury', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(21, 'Welding Machine Tender', 'Voluptatem cum voluptatibus officia dolor totam accusantium deserunt. Excepturi rem possimus reprehenderit nihil facilis voluptatum. At culpa neque aperiam velit distinctio consectetur.', 'Full time', 'Hybrid', 'Parkerland', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(22, 'Teller', 'Cum possimus et reiciendis distinctio sint ratione. Nemo numquam dolorum rerum. Neque sed officiis expedita nemo alias libero consectetur. Est aliquid non veritatis natus ut.', 'Full time', 'On-site', 'Harveyland', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(23, 'Assessor', 'Reprehenderit nam dicta quidem soluta facere. Voluptatem est ut rem et in nesciunt dolor nihil. Quis quia fugit temporibus dolorem non nihil placeat accusantium.', 'Part time', 'On-site', 'East Melody', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(24, 'Meat Packer', 'Eligendi rerum magni et incidunt voluptatem. Maiores rerum pariatur corrupti voluptatem quisquam aut unde aperiam. Aut id dolorem iste. Aut aspernatur dolor maxime iusto totam.', 'Full time', 'Hybrid', 'Leuschkefurt', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(25, 'Boilermaker', 'At architecto harum incidunt dolore provident sit laboriosam. Qui ratione qui veritatis necessitatibus at rerum. Nihil vel tempore ut sint cumque. Recusandae ullam non harum possimus optio.', 'Part time', 'Hybrid', 'West Cedricktown', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(26, 'Public Health Social Worker', 'Officiis alias totam doloribus ut perspiciatis. Impedit dicta inventore et ea. Recusandae ut adipisci accusamus repellendus eum magni.', 'Part time', 'Hybrid', 'Port Kirstinmouth', '2024-11-16 19:46:26', '2024-11-16 19:46:26'),
(27, 'Communication Equipment Repairer', 'Qui nihil doloremque laborum ut. Fugiat autem error et commodi nobis aperiam. Aut ab illum in repellat voluptate soluta ipsa.', 'Full time', 'On-site', 'East Shayneton', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(28, 'Agricultural Technician', 'Ducimus est rem inventore dolorem hic. Et sit eum quis dolorem sit maxime nam eos. Et quo velit numquam mollitia. Est ducimus omnis qui ea dolor.', 'Full time', 'On-site', 'West Donbury', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(29, 'Credit Checker', 'Odit numquam esse optio exercitationem voluptatem sit sapiente. Laudantium suscipit laborum sit animi eveniet quos inventore. Quam facere voluptatem alias omnis perspiciatis numquam autem. Quas neque sunt quidem enim.', 'Part time', 'On-site', 'Daphneeborough', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(30, 'Director Of Business Development', 'Aut error commodi nesciunt rerum quia. Officiis temporibus enim iure aut. Excepturi explicabo fuga et aut. Et officia ipsa quidem molestias.', 'Part time', 'On-site', 'East Werner', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(31, 'Staff Psychologist', 'Mollitia libero atque sit quaerat in aut. Aut pariatur et sint rerum autem perferendis quod. Reprehenderit distinctio deserunt numquam dolor quas. Voluptas molestiae praesentium similique dignissimos similique repellat odio.', 'Part time', 'On-site', 'Ryanside', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(32, 'Freight and Material Mover', 'Et aliquid quo rerum id facilis enim illo. Amet perspiciatis suscipit quaerat aut. Nihil amet repudiandae reprehenderit molestiae eaque qui.', 'Part time', 'On-site', 'Clotildefurt', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(33, 'Home Appliance Repairer', 'Labore tenetur et distinctio deserunt non ipsum sit. In et error maiores eius veritatis praesentium modi. Ex qui voluptatem quam. Ex nemo ea explicabo voluptas.', 'Part time', 'Hybrid', 'Nitzscheside', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(34, 'Operations Research Analyst', 'Quia ut voluptatibus quaerat aliquid ex. Asperiores in hic distinctio asperiores debitis velit. Architecto ullam asperiores iste omnis magnam labore.', 'Full time', 'On-site', 'West Gertrude', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(35, 'Boat Builder and Shipwright', 'Et sed doloremque ipsam quia aliquid rerum inventore cupiditate. Quia consequatur accusantium sapiente repellendus ut modi. Repellat quod saepe quia. Natus fuga corporis ea odio molestiae aliquid distinctio molestiae.', 'Part time', 'Hybrid', 'Hirtheburgh', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(36, 'Safety Engineer', 'Dignissimos minus facere ut saepe cum ad tempore. Placeat et sit vel veritatis. Est iure rem optio animi molestiae. Enim repellat deleniti corrupti sunt sint.', 'Part time', 'On-site', 'Darrionchester', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(37, 'Ship Pilot', 'Qui enim modi quis et quia rem. Voluptatem possimus nisi quisquam cum. Ratione eos ex suscipit. Vel distinctio ratione commodi laudantium exercitationem nihil.', 'Full time', 'Hybrid', 'Urbanhaven', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(38, 'Production Worker', 'Aut aut et dicta ab et voluptas blanditiis. Soluta accusamus possimus vel tenetur voluptatum fugiat. Aspernatur nisi maxime dicta numquam.', 'Full time', 'Hybrid', 'South Drake', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(39, 'Healthcare Support Worker', 'Fugit doloremque autem et et dolor. Repellendus sapiente non ut.', 'Full time', 'On-site', 'Maiyamouth', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(40, 'Corporate Trainer', 'Aspernatur qui omnis pariatur velit id. Eveniet aperiam reiciendis dolorum illo. Sit recusandae laborum qui distinctio aut laudantium.', 'Part time', 'Hybrid', 'Lake Ezrastad', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(41, 'Construction Laborer', 'Aut numquam consectetur dolores ut inventore eum consequatur. Minus omnis quidem provident ducimus architecto. Necessitatibus dolorem voluptas ratione quia. Deleniti autem a exercitationem facilis in voluptas molestias.', 'Full time', 'Hybrid', 'Gleasonfort', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(42, 'Recyclable Material Collector', 'Unde nostrum maiores nulla ut repudiandae autem. Porro quo molestias porro id aperiam corrupti doloribus. Cum repellat atque quo enim voluptatem eveniet omnis modi. Assumenda et iusto est non autem.', 'Full time', 'On-site', 'Myrtleville', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(43, 'Pipelayer', 'Earum illum eveniet laudantium cumque officiis consequatur ut quia. Dolorum sint ut non enim iste reiciendis est. Fuga cumque et molestiae eius maxime.', 'Full time', 'Hybrid', 'Leannaside', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(44, 'Lawn Service Manager', 'Quaerat consequuntur nesciunt animi illo et quia sed. Enim reiciendis assumenda est. Quia expedita repellat unde temporibus veritatis. Ea voluptatem modi rerum vero ut fuga.', 'Part time', 'Hybrid', 'Wymanmouth', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(45, 'Pesticide Sprayer', 'Aperiam facere sit perferendis nemo magni fugit numquam. Vero optio in corrupti illum suscipit cum. Modi in aliquam illum sed.', 'Part time', 'Hybrid', 'New Jamilside', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(46, 'Host and Hostess', 'Sunt voluptas rerum saepe doloribus voluptatum. Similique et aperiam est at ad sit. Et quam sed consequatur incidunt qui voluptatem.', 'Part time', 'On-site', 'West Wilberton', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(47, 'Pastry Chef', 'Alias vel officiis optio id enim. Ut a unde omnis dicta voluptatem.', 'Part time', 'On-site', 'East Daijaburgh', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(48, 'Nutritionist', 'Aliquam ea qui soluta. Est mollitia assumenda ea nulla enim. Voluptatem ex sed nostrum. Sed neque consequatur enim sunt expedita voluptas aut.', 'Full time', 'Hybrid', 'New Erich', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(49, 'Electronics Engineering Technician', 'Vitae eius dolor accusamus dolores. Labore ipsum omnis omnis nam. Dolores ullam minima reiciendis dolores tempore. Laudantium sequi error et ducimus.', 'Part time', 'Hybrid', 'West Hailee', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(50, 'Travel Guide', 'Dolor nemo quia hic dolores harum. Ut quasi corrupti nostrum. Dolorem aut natus sit aspernatur. Id assumenda praesentium aperiam pariatur architecto laudantium libero.', 'Full time', 'Hybrid', 'Bobbyview', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(51, 'Social Scientists', 'Nihil ratione ratione fuga. Non explicabo sunt quod odio. Ipsum ad fugiat assumenda id omnis aut. Magni voluptatem autem molestiae.', 'Full time', 'On-site', 'New Larry', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(52, 'Aerospace Engineer', 'Est nisi nostrum sit quibusdam ratione dolores. Ab architecto sapiente non ea nostrum. Quam rem sapiente sequi ipsa enim. Dicta vero est in dolor est fuga minima. Officia laudantium odio culpa qui vitae.', 'Full time', 'On-site', 'Kossshire', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(53, 'General Manager', 'Nihil porro corporis necessitatibus nesciunt perferendis. Et aliquid nemo nisi. Iusto nostrum ea dignissimos ullam nisi sed exercitationem nam. Laborum ut vel illo ipsum.', 'Full time', 'On-site', 'West Layla', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(54, 'Supervisor Fire Fighting Worker', 'In fuga exercitationem rerum nesciunt pariatur repellendus. Quisquam dolores eos atque voluptatem occaecati sit accusamus. Laborum provident qui possimus atque consequuntur. Ut dolor nostrum quidem sunt libero enim ut.', 'Part time', 'Hybrid', 'Josuebury', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(55, 'Furniture Finisher', 'Et dolore sit inventore. Tempore dolore iure eos doloribus earum cumque. Soluta dolores ut molestiae fugit non. Laborum id voluptate soluta dolorem vel. Fugiat assumenda ut vel.', 'Full time', 'On-site', 'Everettetown', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(56, 'Makeup Artists', 'Nisi sint eos deleniti quis. Qui voluptatibus voluptas omnis voluptas dolorum nulla et. Adipisci rerum ex enim ab. Est at corrupti est ea distinctio molestiae.', 'Part time', 'On-site', 'Deontaeshire', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(57, 'Ship Engineer', 'Omnis hic incidunt accusamus deserunt quo. Provident rerum commodi eos ducimus quis quo velit eaque. Sunt non aut error qui. Aut fugiat sint fugiat. Vel expedita ut sit occaecati.', 'Part time', 'Hybrid', 'Wilkinsonmouth', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(58, 'Postal Clerk', 'Reiciendis minima vero porro quod omnis doloremque. Consectetur quis porro enim nobis qui quod ut. Ad nam eius itaque ea saepe itaque architecto modi. Quae eligendi voluptatem doloremque.', 'Part time', 'On-site', 'Eleazarside', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(59, 'Maintenance Worker', 'Molestiae sint suscipit sint ut accusamus voluptatum. Dolor facere eos totam dignissimos sit quidem. Consectetur sit nulla inventore possimus.', 'Part time', 'Hybrid', 'Stantonborough', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(60, 'Photoengraver', 'Officiis quae labore qui consequuntur. Ex et consequuntur reprehenderit qui qui fuga. Sed aspernatur illum commodi ipsum dolores qui. Minima facilis dolores reprehenderit dolores aut possimus.', 'Full time', 'Hybrid', 'Wintheiserborough', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(61, 'Bindery Worker', 'Repellendus culpa impedit temporibus et consequatur dignissimos dignissimos. Unde quas qui tempore similique nisi unde aut. Ducimus et et qui nulla rerum voluptatum.', 'Part time', 'Hybrid', 'Luettgentown', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(62, 'Commercial Diver', 'Qui aliquid dolorum commodi est. Consectetur non maxime dolor necessitatibus ut exercitationem.', 'Full time', 'Hybrid', 'Ferrybury', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(63, 'Gaming Cage Worker', 'Qui incidunt repellat quae autem et ratione qui quaerat. Eum ipsam accusantium pariatur consequatur in nobis ea ducimus. Et quo qui est officiis ipsum tempora. Tenetur doloremque autem asperiores quaerat laboriosam.', 'Part time', 'On-site', 'New Camylle', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(64, 'Office and Administrative Support Worker', 'Sed nulla id magnam eos facilis officia voluptas suscipit. Modi ut et error minus aliquam voluptatem. Optio non sit et cupiditate et. Laudantium enim consequatur ut cum quaerat doloribus vel.', 'Part time', 'On-site', 'Gutkowskiborough', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(65, 'Portable Power Tool Repairer', 'Maiores pariatur soluta illum nesciunt. Quis sit voluptatem qui tempora. Dignissimos dolorem ad minus placeat.', 'Part time', 'Hybrid', 'West Kraig', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(66, 'Mixing and Blending Machine Operator', 'Deserunt quis ut quidem repudiandae ullam. Sit ipsum similique perspiciatis aut et. Et dolor voluptatibus suscipit culpa sed voluptas odio.', 'Part time', 'Hybrid', 'North Madonna', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(67, 'Armored Assault Vehicle Officer', 'Laudantium eum laborum delectus iusto velit. Aperiam officia molestias fugit rerum dolorem.', 'Full time', 'Hybrid', 'Lake Saige', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(68, 'Transportation Inspector', 'Temporibus et itaque dolor sit aut quaerat eum. Fugiat est ut ut aspernatur occaecati. Et dolores et quo similique et. A natus non veritatis rem.', 'Part time', 'On-site', 'Cartwrightborough', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(69, 'Tree Trimmer', 'Ut ab nobis illo voluptate vero. Consequuntur aliquid sequi tempore et aliquid voluptatibus. A excepturi facere odit sunt.', 'Full time', 'On-site', 'Lake Earleneport', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(70, 'Physical Therapist Aide', 'Cum praesentium ut quas pariatur eos perspiciatis. Nobis blanditiis dicta aut iure corporis praesentium dolores. Consequatur praesentium eligendi voluptas nostrum ratione voluptatem nam nemo. Commodi modi aut ut aut expedita accusantium.', 'Full time', 'On-site', 'Port Magalihaven', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(71, 'Electrician', 'Occaecati suscipit voluptatibus sunt voluptates sit. Veniam placeat at sed illum. Adipisci quia aperiam eaque consequuntur corrupti. Possimus in corrupti velit et repellat distinctio nesciunt.', 'Part time', 'Hybrid', 'Antonettemouth', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(72, 'Business Manager', 'Rem sint quidem inventore et culpa nihil ut. Officiis ratione tempore quibusdam aut in minima. In consequatur magni nihil ab. Ipsum non et fuga cum sunt maxime quia necessitatibus.', 'Full time', 'Hybrid', 'Port Jaymouth', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(73, 'Library Science Teacher', 'Blanditiis consequatur temporibus illum voluptas dolorum voluptates. Tempore eum consequatur sit qui. Vitae reprehenderit illo voluptas sed numquam ut perferendis. Dolores suscipit dolorem ullam ex voluptas sed. Inventore dolorem provident eveniet veniam non debitis consequatur consequatur.', 'Part time', 'Hybrid', 'New Dejah', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(74, 'Marine Oiler', 'Rem quia quia ipsa ut vel laboriosam. Qui voluptates sequi facere aut. Iusto consequatur quo excepturi ut placeat.', 'Full time', 'On-site', 'North Garnett', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(75, 'Maid', 'Eos nemo sint veniam ex. Inventore unde optio sed aut. Tenetur dolorem minus omnis consequatur illo accusamus est. Dolorem voluptate eum eveniet non qui.', 'Full time', 'Hybrid', 'East Arno', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(76, 'Gas Compressor Operator', 'Qui error vitae quae est qui assumenda in. Ipsa blanditiis dicta architecto aperiam sed eum. Accusantium sit quidem numquam aut consequatur. Itaque consequatur consequatur quibusdam vitae.', 'Full time', 'On-site', 'Busterville', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(77, 'Potter', 'Consequatur explicabo in laborum eius natus. Dicta voluptas velit et. Fuga dolor aspernatur enim quae.', 'Part time', 'Hybrid', 'South Andystad', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(78, 'Gluing Machine Operator', 'Et ipsa minus quas aut deleniti ad consequatur. Ratione unde est labore amet asperiores molestiae atque. Quam maxime sunt sit possimus rem nihil.', 'Full time', 'On-site', 'Altenwerthhaven', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(79, 'Woodworker', 'Modi sint omnis explicabo id aut qui quia. Est non iure voluptatum similique aliquam hic qui. Autem velit expedita sunt eos eos.', 'Part time', 'Hybrid', 'Handmouth', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(80, 'Vice President Of Marketing', 'Sapiente ipsam ab soluta temporibus qui consectetur. Nobis ut nam sed accusamus in similique. Quasi quas et excepturi inventore quis et.', 'Part time', 'On-site', 'North Mikaylashire', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(81, 'Aircraft Launch and Recovery Officer', 'Veniam vitae voluptate fuga at amet consequatur sed. Ipsam est fuga deserunt animi doloribus quas. Veniam omnis maiores praesentium vitae id. Aut maxime tenetur dolores soluta.', 'Part time', 'Hybrid', 'East Ezra', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(82, 'Management Analyst', 'Delectus unde molestiae occaecati. Maxime adipisci explicabo nihil quos deleniti. Minima eaque maiores officiis tempore alias sit quaerat.', 'Full time', 'On-site', 'Micaelaburgh', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(83, 'Airline Pilot OR Copilot OR Flight Engineer', 'Voluptas ut maxime qui eum vel asperiores. Explicabo mollitia voluptatem aut nesciunt qui voluptate. Occaecati qui est ipsum illo velit atque.', 'Full time', 'On-site', 'Joneschester', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(84, 'Tool and Die Maker', 'Illum sint non earum ea. Omnis et eos voluptatem porro voluptatem dolorem libero consequatur. At a odio facere sit voluptas dolores quos.', 'Part time', 'Hybrid', 'Morarville', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(85, 'Retail Salesperson', 'Quia amet nihil quas quibusdam. Hic a cumque dolorem rem unde. Quia ut dolores tempora. Et dolor qui voluptatem cumque ipsam ut.', 'Part time', 'Hybrid', 'Port Tavaresfort', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(86, 'Animal Trainer', 'Et quibusdam dolor assumenda ipsam. Deserunt unde soluta laborum ea dolores dolor. Qui similique quaerat non cupiditate et repellendus. Quidem qui sit nihil architecto.', 'Full time', 'Hybrid', 'North Anikaburgh', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(87, 'Waitress', 'Dolorem nam nihil omnis nihil soluta. Asperiores architecto et sapiente corrupti et. Quam deserunt minus sed officiis voluptas. Illo magnam voluptas perferendis quia quae qui.', 'Part time', 'Hybrid', 'South Clay', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(88, 'MARCOM Director', 'Magnam ex ut iusto reiciendis est voluptatum accusamus. Dolores rerum voluptatibus impedit voluptatem. Ducimus delectus ut quisquam repellendus. Maiores est impedit et sed quis alias quis perferendis.', 'Full time', 'On-site', 'New Lulastad', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(89, 'Audio-Visual Collections Specialist', 'Sit quisquam dicta inventore earum nesciunt esse. Repudiandae dolor velit eos illo pariatur. Et ullam aperiam magnam ipsa aspernatur.', 'Full time', 'Hybrid', 'Omaville', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(90, 'Biological Science Teacher', 'Velit aspernatur fugit ipsum nemo est cumque. Voluptatem eum nam soluta adipisci natus. Et molestiae quasi aliquam. Aut sunt iure assumenda et.', 'Part time', 'Hybrid', 'West Braeden', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(91, 'Recruiter', 'Consequatur et aut deserunt facilis tempore nesciunt occaecati earum. Non nisi aperiam qui et animi fuga aperiam quae. Debitis veniam autem sit quasi.', 'Part time', 'On-site', 'Margefurt', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(92, 'House Cleaner', 'Et dolores eaque natus nesciunt. Magni ut hic illo et placeat quasi in natus. Modi dolor dicta quam. Veniam debitis explicabo aspernatur quod doloremque voluptatum.', 'Full time', 'On-site', 'West Wellington', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(93, 'Computer Repairer', 'Voluptatibus quo aut fugiat adipisci officia. Aliquam nam ab dolore rerum amet. Suscipit nesciunt quos ipsum.', 'Part time', 'Hybrid', 'West Anna', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(94, 'Engineering Teacher', 'Sit sed eaque ex nemo qui. Consequatur quas explicabo nesciunt exercitationem ex explicabo aut odit.', 'Part time', 'Hybrid', 'Gracielaberg', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(95, 'Central Office', 'Expedita expedita beatae iure quidem. Omnis et nihil sit et molestias.', 'Full time', 'On-site', 'Port Hortense', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(96, 'Computer Software Engineer', 'Omnis est laboriosam alias rerum et ab minima. Recusandae voluptates et possimus earum blanditiis. Fugiat molestiae omnis voluptatum unde quis. Architecto et possimus ex optio.', 'Full time', 'On-site', 'West Vivianburgh', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(97, 'Taxi Drivers and Chauffeur', 'Necessitatibus autem iure veniam tenetur dolor sunt quas aliquid. Et quia cumque voluptas ut similique dolor. Id architecto iste voluptatum ut dicta sed et. Sed quae odio veniam assumenda dignissimos.', 'Full time', 'Hybrid', 'Kulasland', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(98, 'Drycleaning Machine Operator', 'Sapiente accusamus neque vel assumenda ut. Est consequuntur aliquam fugit reprehenderit impedit at. Ut reiciendis facilis natus animi nihil omnis dolorem amet.', 'Part time', 'On-site', 'Hillfort', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(99, 'Barber', 'Ea maiores minus quos eligendi aut quis sed. Necessitatibus ipsam sequi occaecati sint illo amet omnis non. Beatae est rerum qui officia est. Dolores consectetur ipsa a sit voluptas omnis maxime.', 'Full time', 'Hybrid', 'New Arnoburgh', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(100, 'GED Teacher', 'Dolorem consectetur esse alias ex et ab consequuntur. Ducimus provident pariatur qui laborum necessitatibus. Quia quibusdam rerum non odit officia. Voluptas id eligendi non et quas.', 'Full time', 'Hybrid', 'Eribertotown', '2024-11-16 19:46:27', '2024-11-16 19:46:27'),
(103, '2', '21313', 'Part time', 'On-site', 'Skopje, North Macedonia', '2024-12-04 23:56:16', '2024-12-04 23:56:16'),
(104, '123', '1234213213', 'Full time', 'Hybrid', 'Oher, North Macedonia', '2024-12-05 00:00:31', '2024-12-05 00:00:31'),
(107, 'Railroad Conductors', 'Corporis nesciunt sunt consequatur aut culpa. Eius aut iusto illo illo ea.', 'Part time', 'Hybrid', 'Feilview', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(108, 'Irradiated-Fuel Handler', 'Quis repudiandae voluptas quam minus officia. Assumenda sed exercitationem commodi veniam sed. Ut adipisci repellendus sint.', 'Part time', 'Hybrid', 'Harrisonshire', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(109, 'Fire-Prevention Engineer', 'Explicabo adipisci possimus commodi enim rerum qui. Culpa quas aut et asperiores. Iusto nihil quos aut soluta est. Maiores iste sunt vel et nihil laboriosam.', 'Part time', 'Hybrid', 'Madelynnville', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(110, 'Airline Pilot OR Copilot OR Flight Engineer', 'Minus asperiores ea et quae voluptatem neque. Delectus nobis aut quis omnis aut aut. Omnis quasi accusantium temporibus qui consequatur dolor iure.', 'Full time', 'Hybrid', 'West Nedfort', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(111, 'Copy Writer', 'Hic nemo sit dolorum eos deleniti eum. Qui omnis voluptatem quis dignissimos rerum. Tenetur accusamus quia veritatis incidunt.', 'Part time', 'On-site', 'Shanieshire', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(112, 'Occupational Health Safety Technician', 'Impedit ipsum porro quidem impedit quisquam velit soluta. Qui laudantium unde aut magnam debitis consequuntur consequatur culpa. Quibusdam ut laboriosam explicabo quo omnis incidunt at.', 'Part time', 'Hybrid', 'West Susan', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(113, 'Compliance Officers', 'Asperiores repudiandae minus aliquam quidem hic provident. Voluptates ut saepe ab velit et aut similique id. Sed consequatur fuga suscipit doloribus quas a.', 'Full time', 'Hybrid', 'Norberthaven', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(114, 'Central Office and PBX Installers', 'Pariatur amet est magni optio non unde. Iste qui sunt quia voluptatum. Deleniti autem quidem id molestiae qui rerum officiis natus.', 'Part time', 'Hybrid', 'South Zoey', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(115, 'Farm Labor Contractor', 'Consectetur et saepe fugiat molestias quis tenetur. Sunt vel nobis vero in. Esse possimus iure voluptatem ut accusamus officiis id. Tenetur temporibus placeat quaerat est aliquid sapiente dignissimos.', 'Part time', 'Hybrid', 'Port Ryan', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(116, 'Chemical Equipment Tender', 'Ipsum architecto praesentium aut iure tenetur officiis. Praesentium a nobis voluptas aspernatur. Qui eveniet totam non. Sapiente esse velit commodi eius.', 'Part time', 'On-site', 'Lake Patricia', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(117, 'Entertainment Attendant', 'Rerum vero consequatur est veritatis a. Est sit sunt laboriosam excepturi dolores earum perspiciatis. Fuga iure molestias ea et officia maiores explicabo.', 'Part time', 'Hybrid', 'Haydenport', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(118, 'Government Property Inspector', 'Pariatur quis nemo ut aliquid. Voluptatum magnam magni vitae debitis. Consectetur enim consectetur delectus magnam facilis dolores delectus.', 'Full time', 'On-site', 'East Durward', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(119, 'Budget Analyst', 'Qui culpa ut expedita tenetur omnis amet omnis. Amet enim dolor repellendus vitae aut consequatur. Nemo ut cupiditate ipsa ratione. Dolorem consectetur vero non tempora qui. Provident eum in dolor aperiam nobis.', 'Part time', 'On-site', 'Jacobsonview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(120, 'Agricultural Equipment Operator', 'Odit facere quisquam maiores assumenda nulla qui et temporibus. Quo quaerat aut officiis vero doloribus accusantium. Facilis nihil corporis consectetur voluptatum consequatur.', 'Full time', 'On-site', 'Predovicchester', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(121, 'Food Preparation', 'Sed qui nobis vero sequi explicabo aspernatur aut. Iste dolorum laborum cumque saepe.', 'Part time', 'On-site', 'Sipesmouth', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(122, 'Maintenance Supervisor', 'Exercitationem sapiente excepturi voluptas deserunt. Quia et explicabo sint dolorem. Minus voluptatibus aut eum praesentium consequatur vel. Pariatur distinctio enim ipsa veniam.', 'Part time', 'Hybrid', 'Port Burnicebury', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(123, 'Stevedore', 'Ipsa quos ratione officia velit est. Vitae saepe impedit omnis ut alias aut. Nihil incidunt expedita quo ipsum eveniet officiis illum.', 'Full time', 'Hybrid', 'North Zitashire', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(124, 'Craft Artist', 'Quisquam officiis voluptas enim quo eos sit. Et odio aliquam in harum vel non. Temporibus ea quasi est soluta esse.', 'Full time', 'Hybrid', 'West Jalenbury', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(125, 'Health Practitioner', 'Cumque molestiae aspernatur quia deleniti et sunt. In et non id et qui dolores laboriosam. Ad adipisci enim praesentium quaerat debitis et necessitatibus. Aspernatur repudiandae natus commodi fugit.', 'Full time', 'Hybrid', 'Noemyshire', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(126, 'Casting Machine Operator', 'Dignissimos nesciunt ipsum facilis at dignissimos totam est. Vero dolor in dolorem dolorem. Consequatur voluptas voluptatibus nemo magni voluptatem vel.', 'Full time', 'Hybrid', 'Camrenbury', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(127, 'Lodging Manager', 'Et impedit sequi est iste odit impedit. Pariatur eum unde eos perspiciatis beatae. Et est consequatur quo qui reiciendis eum est consequuntur.', 'Part time', 'On-site', 'North Adanview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(128, 'Tool Set-Up Operator', 'Corporis enim eius itaque harum sed consequatur porro. Modi dicta modi debitis quam qui. Tempora quam enim et. Quibusdam cumque iure corrupti eos.', 'Part time', 'Hybrid', 'New Walterhaven', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(129, 'Accountant', 'Voluptatem fugiat occaecati aut laborum nostrum repellendus sequi et. Cum ut quos ullam corporis ducimus. Voluptatum ad et rerum veniam voluptatibus voluptatum rerum.', 'Part time', 'Hybrid', 'Laurenburgh', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(130, 'Pump Operators', 'Voluptas esse unde dolore necessitatibus aut. Molestiae quisquam dignissimos corporis mollitia dolorem. Cumque odit dignissimos laboriosam. Itaque quia repudiandae et saepe.', 'Full time', 'Hybrid', 'East Colleen', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(131, 'Molder', 'Illum dignissimos voluptatem placeat. Eum non qui veritatis sit earum labore molestias commodi. Magni laudantium eius asperiores aspernatur qui corporis velit officiis.', 'Part time', 'On-site', 'West Alejandrinland', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(132, 'Pipefitter', 'Numquam doloribus deleniti rem praesentium rerum amet. Quos fuga dolore eaque iure. Corporis molestiae corrupti consequatur voluptatem eum enim. Quae odio voluptas dolores vel rem maiores.', 'Full time', 'Hybrid', 'Martinamouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(133, 'System Administrator', 'Est ad reprehenderit laborum aut iure et est ipsa. Incidunt asperiores nobis rerum veritatis.', 'Full time', 'Hybrid', 'New Madison', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(134, 'Obstetrician', 'Molestiae ipsam veritatis labore rem ut quas. Voluptatem voluptate minima et quae a praesentium. Nam pariatur quia dolorem eos.', 'Full time', 'Hybrid', 'Isaacfort', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(135, 'Director Of Talent Acquisition', 'Totam qui laborum dolores temporibus. Quis et ut earum accusamus voluptatem atque. Saepe at consequatur excepturi molestiae totam minima ipsam.', 'Part time', 'On-site', 'Lake Kennedishire', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(136, 'Legal Secretary', 'Est nihil temporibus laboriosam culpa. Est sed facilis enim voluptatem ut debitis. Quam tenetur ut eum.', 'Part time', 'Hybrid', 'East Abigail', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(137, 'Highway Patrol Pilot', 'Blanditiis id nesciunt quidem quo est consequatur aliquid. Id temporibus eveniet voluptatem voluptatum eaque molestiae. Dolore ad perspiciatis corrupti sint praesentium.', 'Part time', 'Hybrid', 'West Augusta', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(138, 'Refractory Materials Repairer', 'Dolor nihil aut dolores quidem non sit id. Quia autem pariatur incidunt totam fugiat. Dolorem reiciendis unde cum quia totam inventore doloribus.', 'Full time', 'Hybrid', 'Hoegerchester', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(139, 'Manager', 'Nulla magni accusantium ipsam sunt et in rerum. Repellat rem deserunt autem repellat cumque rerum nihil. Architecto qui ex nostrum enim nihil.', 'Full time', 'On-site', 'New Yasminmouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(140, 'Marine Oiler', 'Impedit id nesciunt ut repudiandae molestiae. Sit officia expedita qui accusamus maiores deserunt nemo.', 'Part time', 'On-site', 'Savionchester', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(141, 'Nuclear Power Reactor Operator', 'Vero et qui iusto sapiente et. Qui iure delectus explicabo a similique et quis id. Repellat et molestiae labore saepe sint.', 'Full time', 'Hybrid', 'South Winifred', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(142, 'Fiberglass Laminator and Fabricator', 'Et ut quia modi. Doloremque et temporibus molestias. Velit temporibus sunt nobis eos necessitatibus enim. Fuga eveniet aperiam neque amet.', 'Full time', 'On-site', 'East Melisa', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(143, 'Environmental Scientist', 'Quod quas veniam ut velit mollitia asperiores. Voluptatem accusamus nihil aliquam tempora rem possimus. Mollitia ea sed molestias a ducimus. Repellat aperiam libero consequatur optio.', 'Part time', 'Hybrid', 'New Alexaview', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(144, 'Transportation Inspector', 'Repellat iusto fuga et magni. Quos doloribus minima qui. Ut officiis quasi incidunt animi soluta.', 'Full time', 'On-site', 'South Ladarius', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(145, 'Fast Food Cook', 'Qui libero delectus aperiam voluptatem enim porro. Libero esse consequatur sed non sed velit. Asperiores vel qui sapiente eveniet ratione numquam maxime. Delectus sed officia et sit. Consequatur quisquam perferendis voluptate repellat quaerat iusto.', 'Part time', 'On-site', 'South Ethelborough', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(146, 'Industrial-Organizational Psychologist', 'Molestiae nemo repellat doloremque delectus. Repudiandae numquam aut omnis nihil distinctio. Voluptatem in omnis atque nesciunt quibusdam.', 'Full time', 'Hybrid', 'Domenicaberg', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(147, 'Fish Hatchery Manager', 'Quia officiis voluptas excepturi. Officiis consequuntur dignissimos inventore debitis consequatur quod nesciunt. Pariatur quod accusantium qui quae. Ut eligendi est consequatur omnis.', 'Part time', 'Hybrid', 'Luraside', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(148, 'Fish Game Warden', 'Officia voluptatem ad corporis vel minima molestiae perferendis. Eos sed quod deserunt dicta nemo laboriosam neque. Excepturi culpa facilis iure.', 'Full time', 'Hybrid', 'Lilliemouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(149, 'Motorcycle Mechanic', 'Doloremque possimus ex iure libero qui et ipsa cum. Accusamus earum voluptas qui quasi consequuntur. Est amet rerum ea et id rerum et. Velit fugiat eaque deserunt sed eos laudantium.', 'Part time', 'Hybrid', 'Watsicaview', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(150, 'Rail Car Repairer', 'Nam suscipit modi exercitationem ex dolor. Vero culpa quia maiores consequatur incidunt quibusdam quo. Ducimus ipsa optio optio quae placeat.', 'Full time', 'Hybrid', 'Konopelskiville', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(151, 'Education Teacher', 'Rerum sapiente qui exercitationem ea veritatis est ut. Ea consequuntur laboriosam aut quae ut dignissimos. Ipsam architecto neque repellendus expedita sit.', 'Full time', 'Hybrid', 'Lake Marilou', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(152, 'Continuous Mining Machine Operator', 'Illo nihil laboriosam molestias qui recusandae et. Sed natus atque autem architecto voluptas. Ea provident ullam et et quas. Cumque autem eveniet ut velit a dignissimos eius.', 'Full time', 'Hybrid', 'Port Noemie', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(153, 'Short Order Cook', 'Ut similique non facilis et voluptatem. Cupiditate sit corrupti rerum voluptatibus aliquid vel corrupti. Sint enim possimus rem beatae rerum aperiam ea. Deleniti ipsam eos provident pariatur perspiciatis.', 'Full time', 'Hybrid', 'South Maynard', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(154, 'Medical Scientists', 'Eveniet fugit maxime expedita ut aut voluptatem ut optio. Quia magnam rerum itaque nulla sit quia. Deserunt perferendis aspernatur animi non sit corporis. Qui repellendus rerum saepe placeat est exercitationem ut. Aliquam deserunt aliquam veniam numquam ut vel.', 'Part time', 'Hybrid', 'West Rosalee', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(155, 'HR Specialist', 'Nobis sit et dolor. Ratione ab ut dignissimos consequatur voluptas dolores. Omnis in dolores nobis quasi laudantium.', 'Full time', 'Hybrid', 'Cadenborough', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(156, 'Short Order Cook', 'Nostrum consectetur a necessitatibus facilis. Nesciunt dolorem dolores accusamus debitis excepturi. At minus nobis quis. Odit magni ea nesciunt quaerat hic sint asperiores est.', 'Part time', 'On-site', 'Port Ericville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(157, 'Homeland Security', 'Rem dolores sunt rerum corporis ea ea repudiandae. Voluptas quia optio quod eaque autem. Est est quos et sunt sit. Facere ut nostrum animi unde.', 'Full time', 'On-site', 'Lake Katherynton', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(158, 'Earth Driller', 'Odio vitae sit assumenda dolor perferendis consequatur. Voluptatem similique nulla unde alias quia. Laboriosam et magni quia qui cumque ex.', 'Part time', 'On-site', 'South Alfred', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(159, 'Internist', 'Aperiam amet aliquid autem eius exercitationem hic. Et similique quidem quia qui. Eos et quo dolore corrupti. Quibusdam possimus modi enim quae. Sit aut fugiat iste tenetur.', 'Part time', 'Hybrid', 'Terrenceport', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(160, 'Claims Examiner', 'Aliquid accusantium eum minus. Quis aut sequi architecto similique sunt magni. Dignissimos pariatur voluptate dicta ipsa repellat odit explicabo eligendi.', 'Full time', 'Hybrid', 'Hegmanntown', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(161, 'Architecture Teacher', 'Quia praesentium consequatur itaque ullam maxime illum incidunt. Occaecati repellat iure odio ut illum nulla. Et inventore quam aut veniam. Placeat praesentium maiores exercitationem eos.', 'Part time', 'Hybrid', 'Shaneville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(162, 'Extruding and Drawing Machine Operator', 'Sint provident dolores voluptate hic illum cupiditate. Nostrum quos repudiandae itaque illo consequuntur adipisci. Voluptatum excepturi est reprehenderit molestiae aut magnam et.', 'Part time', 'Hybrid', 'New Jarrell', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(163, 'Watch Repairer', 'Illum animi nihil quia hic hic accusamus. Et nulla perferendis explicabo sint illum. Quo voluptatem asperiores at quibusdam non provident laboriosam in. Nam aperiam et velit laboriosam doloremque.', 'Part time', 'Hybrid', 'New Lorine', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(164, 'Council', 'Ducimus repellendus sunt in repellendus nihil aut sapiente. Quaerat quia pariatur ratione assumenda. Et qui beatae consequatur nihil pariatur est ut.', 'Part time', 'Hybrid', 'Lake Shakira', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(165, 'Electrician', 'Voluptatem nisi nobis accusantium voluptatem est quibusdam. Consequuntur ad maxime veniam temporibus. Eum molestiae sapiente eum accusantium voluptatum molestiae perspiciatis.', 'Full time', 'On-site', 'South Lenorafurt', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(166, 'Receptionist and Information Clerk', 'Omnis quo recusandae eos non ratione consectetur. Qui modi qui quos quos neque facilis consectetur. Porro quasi quia minus nam velit quis.', 'Full time', 'On-site', 'Doyleburgh', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(167, 'Pharmaceutical Sales Representative', 'Et sed corrupti sit commodi voluptas. Voluptatem nam veniam saepe illo ut. Ut id ullam fuga autem neque distinctio quod.', 'Full time', 'Hybrid', 'Trystanton', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(168, 'Opticians', 'Ratione repellendus quam magni reiciendis dolorum. Dolor quam totam at placeat ad eos. Qui maiores dolorem nostrum quo. Porro non et ab et veritatis excepturi.', 'Part time', 'On-site', 'Collinsfurt', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(169, 'File Clerk', 'Corrupti laborum ut aspernatur dolorem labore. Distinctio quaerat ex aut laudantium laboriosam aliquam doloremque. Et rerum harum laboriosam.', 'Part time', 'On-site', 'North Burdettemouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(170, 'Typesetter', 'Repellat veritatis ex nam qui occaecati at est perspiciatis. Earum rerum quia dicta. Animi consequuntur magni earum voluptas. Velit qui repellendus veniam amet itaque numquam voluptatibus.', 'Part time', 'Hybrid', 'Minachester', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(171, 'Biochemist or Biophysicist', 'Ratione impedit enim repellat voluptas accusantium cumque nemo. Non aperiam nihil sed accusantium. Qui ullam inventore reprehenderit laudantium et dolorem ipsum. Temporibus molestiae totam illo dolore sed voluptatem quis nihil.', 'Full time', 'Hybrid', 'Port Mario', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(172, 'Editor', 'Molestiae minima esse qui. Esse accusamus facilis aut nulla nulla. Architecto sit nihil placeat modi vel. Sint placeat a eos rerum et aut. Tempora et aspernatur exercitationem.', 'Part time', 'Hybrid', 'Port Justonburgh', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(173, 'Anesthesiologist', 'Quisquam praesentium nihil cupiditate est culpa a sed. Nihil voluptas ut et dolorem sequi aperiam vel. Recusandae voluptas architecto sunt distinctio nihil architecto eum.', 'Part time', 'Hybrid', 'Nellieside', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(174, 'Recreational Therapist', 'Velit eos hic tenetur est libero. Assumenda repudiandae aut unde illo nisi. At vel ducimus numquam nostrum et asperiores aut. Labore ullam ut rerum illum vitae delectus totam.', 'Part time', 'On-site', 'North Alleneshire', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(175, 'Motorboat Operator', 'Et est nulla qui ut sequi. Aut ullam saepe porro rerum suscipit similique blanditiis. Placeat quia consequatur enim voluptatem autem porro.', 'Full time', 'Hybrid', 'Port Chadhaven', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(176, 'Bench Jeweler', 'Nihil et fugit quisquam quae quo eum. Iusto autem doloremque vel cumque perspiciatis aut. Et provident quaerat repellendus. Maiores culpa iste consequuntur aut qui quis.', 'Part time', 'On-site', 'South Ewald', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(177, 'Government', 'Ipsam quis cupiditate facilis vel adipisci a. Velit voluptas ut est maiores repellat. Itaque quos nihil cum dolor recusandae quo. Amet hic qui minima quos dolorem.', 'Part time', 'On-site', 'South Justusview', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(178, 'Funeral Attendant', 'Fugiat aperiam asperiores omnis. Aspernatur molestiae totam nam aut officia esse consequatur. Autem doloremque enim qui sint sit. Et natus cumque molestiae qui.', 'Part time', 'On-site', 'Lake Zachariahton', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(179, 'Computer Repairer', 'Natus nobis quaerat fugiat qui nostrum. Nemo nobis pariatur occaecati. Minima doloremque voluptatem doloremque error. Porro tenetur aut aspernatur est voluptatem aut iusto.', 'Part time', 'On-site', 'Port Dolores', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(180, 'ccc', 'Non vitae iste dolor eum incidunt quia et. Eum ut explicabo porro voluptatem expedita veritatis corporis. Rerum et et ipsam dicta quidem magni mollitia totam. Omnis non qui ipsam totam voluptatem. Dolorem magni natus magnam saepe cumque.', 'Full time', 'On-site', 'Willieborough', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(181, 'Courier', 'Tempora odit impedit nulla fuga officia accusamus odio. Dicta deleniti voluptas ducimus ea. Nesciunt voluptatum rerum autem impedit velit.', 'Part time', 'Hybrid', 'Roobchester', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(182, 'Night Shift', 'Non blanditiis praesentium explicabo ducimus impedit quis. Autem commodi culpa culpa nulla magni eligendi totam.', 'Part time', 'On-site', 'Laviniaside', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(183, 'Skin Care Specialist', 'Amet totam fugiat sint rerum ratione. Repellendus aspernatur molestiae aut voluptates corporis similique est. Voluptas quia voluptates quia enim veniam est sed. Omnis eaque atque qui recusandae perspiciatis sint.', 'Full time', 'Hybrid', 'Runtemouth', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(184, 'Nursery Manager', 'Voluptatem et non quae dolor ut cum ut. Omnis omnis omnis tempore possimus repellat impedit. Rerum deserunt quae enim numquam ad quos dolor. Voluptas quo eligendi natus ut vel est.', 'Full time', 'On-site', 'Carrollview', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(185, 'Fiber Product Cutting Machine Operator', 'Dolores nihil accusantium qui numquam est ea eum. Quia deleniti esse nihil. Omnis est sed repellat iusto alias praesentium. Nihil temporibus occaecati sint cum ut. Accusamus est ducimus eum minima quia earum.', 'Part time', 'On-site', 'Lake Geoffreyview', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(186, 'Food Preparation Worker', 'Libero asperiores modi ut in pariatur et. Dolorum qui quis enim. Eligendi nemo aut qui aut tempore sed nam. Et odio tempora non quisquam autem eos perferendis soluta.', 'Part time', 'On-site', 'Shawntown', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(187, 'Elevator Installer and Repairer', 'Possimus a velit non veniam officiis recusandae. Et corrupti architecto maiores animi minima. Accusantium et blanditiis illum itaque veniam aspernatur. Sint enim et ut quia suscipit ipsam.', 'Part time', 'On-site', 'Mathewborough', '2023-12-31 23:00:00', '2023-12-31 23:00:00');
INSERT INTO `jobs` (`id`, `title`, `description`, `type`, `work_mode`, `location`, `created_at`, `updated_at`) VALUES
(188, 'Alteration Tailor', 'Omnis tenetur quia ab ea in voluptate nobis sunt. Ex itaque quo voluptatum molestiae totam. Debitis commodi voluptas nihil voluptate.', 'Part time', 'On-site', 'Beerstad', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(189, 'Chemist', 'Qui fuga enim reiciendis autem provident nostrum ut. Itaque qui est excepturi esse. Accusantium dolor hic illum et dolorem dolorem eum id.', 'Full time', 'Hybrid', 'North Cecile', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(190, 'Embalmer', 'Architecto possimus suscipit fuga sed officiis incidunt placeat. Quia sint earum cumque explicabo deleniti. Sed provident molestias nostrum mollitia earum sit. Qui ea cupiditate numquam voluptatibus ex est iure. At et voluptatem amet eligendi ut delectus quo.', 'Part time', 'Hybrid', 'North Ellieport', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(191, 'Drycleaning Machine Operator', 'Voluptatem minima libero praesentium vero sint quia minus deleniti. Reprehenderit soluta et voluptatem quo ipsam quia. Illo laudantium inventore dicta id inventore perferendis eius.', 'Full time', 'On-site', 'Lizzieshire', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(192, 'Motor Vehicle Inspector', 'Sed perferendis ut amet consequatur ea ut. Et ad deserunt voluptas cum veritatis. Est est aliquid dolorum quo dolorem sed. Harum quisquam expedita quas rem.', 'Full time', 'Hybrid', 'Lake Sarah', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(193, 'Refrigeration Mechanic', 'Perferendis facere officiis nam fugiat sed esse. Mollitia quisquam beatae quo repellat. Fugiat nisi quo sit aut autem eaque perferendis. Animi et voluptatum id temporibus aliquid.', 'Full time', 'Hybrid', 'Lake Evalyn', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(194, 'Electrical Parts Reconditioner', 'Quasi ut temporibus dolore laboriosam perferendis. Dolore distinctio et earum accusantium. Saepe autem et maiores repellat quis itaque magnam. Suscipit quia molestias aut consequuntur dolores. Et qui dolorum harum cum atque fugit.', 'Full time', 'On-site', 'Jordynchester', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(195, 'Sales Representative', 'Blanditiis quae ut reprehenderit et. Blanditiis soluta ad molestiae quia pariatur quas saepe. Reprehenderit ad expedita error maxime.', 'Part time', 'On-site', 'North Gregoria', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(196, 'Statement Clerk', 'Voluptates ad est ducimus sed nihil ratione. Reprehenderit nihil cupiditate sunt aspernatur molestias quas. Qui consectetur placeat voluptatum temporibus quaerat nihil non.', 'Full time', 'On-site', 'Kuhntown', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(197, 'Library Assistant', 'Quia cupiditate est molestias aspernatur est. Incidunt dolores ut expedita mollitia. Doloremque doloremque dolore iste ipsum eius hic ea. Deserunt deserunt eum aliquam quia.', 'Full time', 'Hybrid', 'Lake Estel', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(198, 'Agricultural Science Technician', 'Nihil provident voluptates fuga et numquam inventore. Et voluptatem quas vel quo. Repellat ut laborum optio vel. Et autem veritatis perferendis. Ut eos omnis quia natus voluptates quam.', 'Full time', 'On-site', 'East Madisenville', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(199, 'Receptionist and Information Clerk', 'Sint reiciendis id blanditiis rerum corporis. Ut deleniti perspiciatis rerum dolorum recusandae qui. Velit consequatur qui ducimus consequatur accusantium qui.', 'Part time', 'Hybrid', 'North Addie', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(200, 'Gaming Cage Worker', 'Voluptatum voluptas amet provident nihil. Asperiores adipisci tempore ullam id est similique neque. Molestiae et quia voluptatem id sed expedita enim consectetur.', 'Full time', 'On-site', 'West Carmine', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(201, 'Soil Conservationist', 'Provident repellendus dignissimos aspernatur eius itaque quia. Perferendis hic vel sint possimus. Amet temporibus culpa consequatur eos facilis. Delectus sint libero dolorem labore sit unde inventore.', 'Part time', 'On-site', 'Langoshshire', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(202, 'Funeral Director', 'Commodi debitis repellat distinctio modi debitis omnis. Optio nulla repellendus voluptatem eaque aut libero tenetur. Corrupti voluptas voluptatem nihil. Dicta et consequuntur commodi omnis non rerum sed.', 'Part time', 'Hybrid', 'Novashire', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(203, 'Automotive Technician', 'Nam quasi assumenda alias magnam. Qui error rerum laboriosam adipisci consequatur. Omnis blanditiis maiores aperiam dolorum sunt occaecati ut corporis.', 'Full time', 'Hybrid', 'North Kennith', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(204, 'Cutting Machine Operator', 'Aut eveniet eaque nesciunt voluptate reprehenderit est dolorem. Eos repellat dolor quis quibusdam et autem id rem. Laudantium qui voluptatem eum itaque et. Dolorem temporibus quis libero et voluptatum.', 'Full time', 'Hybrid', 'Leschmouth', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(205, 'Railroad Yard Worker', 'Consequatur deserunt nihil velit. Fugit aut dolore vero dolores beatae omnis. Quis optio quaerat cupiditate blanditiis. Numquam cupiditate illum enim inventore repellat tempore.', 'Part time', 'On-site', 'East Alexa', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(206, 'Cashier', 'Cumque quia itaque esse minima. Officia et ullam saepe magnam. Porro voluptatem molestiae sapiente illum. Voluptatem dignissimos qui voluptatem in nulla possimus nobis.', 'Part time', 'Hybrid', 'New Dustin', '2023-12-31 23:00:00', '2023-12-31 23:00:00'),
(207, 'Food Cooking Machine Operators', 'Qui omnis eos error possimus. Est consectetur beatae eum commodi qui debitis cum.', 'Full time', 'On-site', 'Humbertoview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(208, 'Maintenance Supervisor', 'Distinctio consequatur ut molestiae possimus et natus. Animi similique et totam voluptas. Ut sunt ut possimus sequi sed impedit.', 'Full time', 'On-site', 'Virginiaview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(209, 'Manager Tactical Operations', 'Aut quia vero voluptates quae non culpa et voluptates. Aut ullam perspiciatis doloremque qui eos velit aut autem. Aut vitae sit ut quo sunt quia consequatur.', 'Full time', 'Hybrid', 'Thelmahaven', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(210, 'Sketch Artist', 'Illo aspernatur fuga corporis ipsum. Veniam voluptates nam ratione aut. Minus et dolor aut esse ut quo. Eum rerum atque voluptate suscipit eligendi et.', 'Full time', 'Hybrid', 'Schusterton', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(211, 'Photographer', 'Distinctio repellat sunt quas magnam. Et delectus sint nihil aspernatur et. Tenetur facere eligendi voluptatem et quia qui consectetur. Aut saepe odio laborum totam officia expedita aut.', 'Full time', 'On-site', 'Yoshikotown', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(212, 'Therapist', 'Optio quia qui et dolore. Inventore aut sequi accusamus dignissimos. Et magnam inventore iure cum est qui aliquam. Eligendi culpa autem fugit autem voluptatum nostrum.', 'Full time', 'Hybrid', 'West Brandy', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(213, 'Interviewer', 'In voluptatem dolor ut. Sed atque iusto fuga velit. Dolores dolorem optio quia molestiae. Qui est fuga animi rerum.', 'Part time', 'On-site', 'Magdalenaburgh', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(214, 'Choreographer', 'Consequuntur at incidunt modi molestiae reprehenderit ut numquam. Et cumque sit dicta officia quis et omnis.', 'Full time', 'Hybrid', 'Littelland', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(215, 'Structural Iron and Steel Worker', 'Et repellendus eveniet officiis sit possimus. Quam neque quia veniam perferendis id. Numquam animi similique sunt occaecati eius occaecati qui. Et laudantium magnam iste.', 'Full time', 'On-site', 'North Duncanberg', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(216, 'Motorboat Mechanic', 'Aliquam sunt est in et quia. Et est sed qui consequatur maiores sint dolores.', 'Part time', 'On-site', 'Lake Colinstad', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(217, 'Special Force', 'Blanditiis eveniet quia cumque itaque repellat aspernatur. Qui qui amet aliquid mollitia officia itaque officiis. Id distinctio sunt distinctio culpa amet voluptatem est necessitatibus. Debitis et ratione aut. Et dolore omnis quis sit eveniet odit.', 'Part time', 'Hybrid', 'Peytonfurt', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(218, 'Radio and Television Announcer', 'Nostrum qui deserunt et qui eum quia officia. Impedit amet incidunt sit consequatur officia dolorem pariatur omnis. Facere autem nihil doloribus minima dolor delectus praesentium.', 'Part time', 'Hybrid', 'North Alfredchester', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(219, 'Market Research Analyst', 'Dolores tempora voluptas illum quod non officiis. Necessitatibus id provident assumenda recusandae dolorum est nulla. A et dolorum odio soluta quam recusandae mollitia. Doloremque eum commodi voluptatem vero. Provident nemo qui est ut ducimus.', 'Full time', 'On-site', 'Enaview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(220, 'Transportation and Material-Moving', 'Sit est quas nihil sed ad minima. Vero molestias culpa neque voluptatem saepe delectus non. Quis qui ut voluptates.', 'Part time', 'Hybrid', 'New Saulshire', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(221, 'Visual Designer', 'Dolor dolores assumenda consequatur consequatur aut. Tempore facilis placeat ipsa. Neque impedit quibusdam asperiores dolorem et.', 'Full time', 'On-site', 'West Orlando', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(222, 'Medical Equipment Repairer', 'Voluptatum voluptatem provident nihil aut provident ut placeat reiciendis. Est voluptas sed aut odit. Qui voluptatem dolorem placeat eligendi accusantium.', 'Part time', 'Hybrid', 'East Alessiaberg', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(223, 'Automotive Body Repairer', 'Ut sit tenetur est laboriosam. Non aut vel inventore natus. Et nobis pariatur aspernatur consequuntur. Ut dolores est qui qui asperiores suscipit sit.', 'Part time', 'Hybrid', 'New Damionberg', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(224, 'Stringed Instrument Repairer and Tuner', 'Et tempora voluptas id est. Modi dolores vitae nobis. Architecto animi quia error cum error iste.', 'Full time', 'On-site', 'Nolanborough', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(225, 'Procurement Clerk', 'Hic placeat maiores atque est et et aut ducimus. Doloremque qui velit alias mollitia laboriosam. Veniam ut est ut.', 'Part time', 'On-site', 'North Eladio', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(226, 'Self-Enrichment Education Teacher', 'Sit dolor qui ex odio error. Quasi aut omnis eligendi. Autem quia nobis voluptates. Et ducimus vel maxime deserunt quisquam esse est.', 'Full time', 'On-site', 'New Felicity', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(227, 'Crane and Tower Operator', 'Aut eligendi explicabo veniam et. Aliquid autem est est quia optio autem similique non. Quam et sit iusto. Ducimus eligendi non deleniti nisi.', 'Part time', 'On-site', 'South Pablo', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(228, 'Travel Clerk', 'Minima neque consequatur eum consequatur quas laudantium. Occaecati consequatur ut necessitatibus. Quia error quod modi quia nobis.', 'Full time', 'Hybrid', 'North Porter', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(229, 'Drywall Ceiling Tile Installer', 'Molestias accusamus sit voluptatem placeat fuga in iusto. Laboriosam natus quia doloremque esse corrupti. Voluptas et aut non in. Neque et praesentium consequatur quod corrupti modi.', 'Full time', 'On-site', 'North Davonte', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(230, 'Director Of Social Media Marketing', 'Dolor ipsa dolorum omnis. Quod magnam consequuntur qui laudantium perferendis minima. Aut placeat non voluptas repellat. Consequatur atque natus dolorem.', 'Full time', 'On-site', 'Cassinberg', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(231, 'Algorithm Developer', 'Omnis voluptatem et non consequatur similique explicabo hic. Adipisci dignissimos doloribus veniam molestiae ut omnis. Nulla doloribus expedita dolorum cupiditate.', 'Full time', 'On-site', 'North Layneside', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(232, 'Political Science Teacher', 'Dolore fugit quae occaecati facere ea. Dolorum ex dolores non nostrum nisi aliquam. Sit eligendi voluptas ut a. Modi qui neque impedit veritatis.', 'Part time', 'Hybrid', 'Flatleyview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(233, 'Human Resource Director', 'Qui autem quibusdam molestiae et vitae fuga deserunt maxime. Dolor voluptatem neque vitae temporibus ipsum. Blanditiis provident reprehenderit ipsum tempora qui reiciendis. Id ex enim et rerum voluptatum quibusdam aspernatur.', 'Full time', 'On-site', 'Huelview', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(234, 'Anthropologist OR Archeologist', 'Sint similique voluptas omnis provident libero ad quia. Tempora sunt officiis quam est tempora. Voluptas eius eos veniam ea quia corrupti. Aliquam vel quod rem.', 'Part time', 'On-site', 'Shanahanhaven', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(235, 'Child Care Worker', 'Quaerat molestias qui esse eum laboriosam. Dolor illum tenetur quas. Unde dicta laboriosam et soluta.', 'Part time', 'On-site', 'West Kitty', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(236, 'Gauger', 'Aliquid tempore sunt nostrum maiores quae autem quas assumenda. Ducimus minima laudantium est eum consectetur consequatur ut. Nihil voluptates deleniti dicta dolores. Magnam qui occaecati rerum nostrum.', 'Part time', 'On-site', 'Lake Moniquemouth', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(237, 'Program Director', 'Aut autem et eaque voluptatum. Fugit fugit atque consectetur dicta aut. Minima dicta voluptatum dignissimos unde.', 'Part time', 'Hybrid', 'Huelsburgh', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(238, 'Cutting Machine Operator', 'Aut et temporibus sunt sed adipisci placeat modi. Corporis distinctio rerum perferendis voluptatem dolor fuga. Ipsum soluta amet ut et ex.', 'Full time', 'Hybrid', 'North Micah', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(239, 'Movers', 'Ut deserunt libero nam doloremque nobis molestiae illum. Eveniet soluta sint nihil atque est eum. Ex velit fuga consequatur distinctio odio et aut.', 'Part time', 'On-site', 'South Gia', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(240, 'Gaming Supervisor', 'Quae ipsam natus omnis enim rerum dolor explicabo. Est temporibus quia animi molestiae debitis. Omnis dolores et possimus adipisci.', 'Part time', 'On-site', 'Manuelshire', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(241, 'Aircraft Assembler', 'Excepturi consectetur rerum veniam a ex qui optio nulla. Illum quasi est sapiente expedita.', 'Full time', 'On-site', 'Hillland', '2024-01-31 23:00:00', '2024-01-31 23:00:00'),
(242, 'Social Media Marketing Manager', 'Molestias dignissimos et quos et distinctio necessitatibus exercitationem. Molestias excepturi dignissimos et dolores natus ex molestias. Vel quis autem mollitia numquam quod veritatis.', 'Part time', 'On-site', 'Rauton', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(243, 'Administrative Law Judge', 'Aspernatur omnis ipsum non voluptas. Ad labore cum ex voluptatibus quidem qui. Vel et minima molestias a est porro.', 'Part time', 'On-site', 'West Anna', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(244, 'Packaging Machine Operator', 'Quas quia sit ducimus voluptatem consectetur. Repellat consectetur provident est et. Quis quidem amet necessitatibus vel. Nulla nesciunt velit saepe nihil et blanditiis.', 'Full time', 'Hybrid', 'New Helga', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(245, 'Civil Engineer', 'Nobis et at et in maiores. Molestias mollitia dolor enim qui consequatur. Omnis molestiae consectetur quibusdam non aliquam non. Quasi itaque tempore inventore ut voluptas et veritatis.', 'Part time', 'Hybrid', 'West Shayneville', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(246, 'History Teacher', 'Voluptatem tempora nostrum esse quidem dolorem nihil eius. Inventore autem enim at architecto. Autem eos molestias et vitae.', 'Part time', 'Hybrid', 'New Missouri', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(247, 'Administrative Law Judge', 'Tempore commodi quo maxime alias illum. Qui facere dicta ut id necessitatibus modi. Qui dolorem expedita iusto distinctio consequatur et id tempore. Rem sed nostrum magnam facilis inventore illum.', 'Full time', 'On-site', 'Lake Edgar', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(248, 'Cultural Studies Teacher', 'At nesciunt culpa nesciunt minima earum fugit impedit libero. Nesciunt labore autem non nisi voluptates est earum eveniet. Fuga deserunt at itaque nam. Quis perspiciatis voluptatem dolor.', 'Full time', 'Hybrid', 'New Jaquelinemouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(249, 'Environmental Scientist', 'Nihil quis et nemo earum dolorem nisi accusamus. Eos quidem ut qui reprehenderit. Quas provident soluta et voluptatem quaerat rerum ut tempore. Iste voluptates qui ducimus libero nemo pariatur.', 'Part time', 'Hybrid', 'North Sigmund', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(250, 'Private Household Cook', 'Molestiae impedit perspiciatis iure. Officiis laborum necessitatibus voluptatem quam natus non. Illum quam qui cumque. Atque ex asperiores nihil mollitia quo debitis suscipit.', 'Full time', 'On-site', 'Port Lillian', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(251, 'Financial Analyst', 'Error error ad reiciendis dolorem voluptatem. Est esse ut molestias. Nobis mollitia quis est perferendis eveniet maiores.', 'Full time', 'On-site', 'Brennanfort', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(252, 'Correctional Officer', 'Consequatur vel impedit iste voluptates quod molestiae. Dolores eius minima error possimus. Nemo sit pariatur qui reprehenderit debitis nihil.', 'Part time', 'On-site', 'Welchhaven', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(253, 'Social Sciences Teacher', 'Voluptatem sit ex aut autem incidunt. Enim quibusdam laborum blanditiis sit.', 'Full time', 'Hybrid', 'New Jesseport', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(254, 'Occupational Health Safety Specialist', 'Omnis fuga commodi delectus voluptas. Dolores sed sint magni a repellendus quidem. Omnis aut odit enim sed. Aut et tempora mollitia velit ducimus.', 'Full time', 'On-site', 'North Candelario', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(255, 'Poultry Cutter', 'Ipsam et vero voluptatibus aut nisi amet omnis. Velit nesciunt repudiandae commodi quaerat quia labore pariatur. Nihil voluptatum quibusdam deleniti reprehenderit ea nobis. Dolor dignissimos reprehenderit repudiandae quia rem ipsa.', 'Full time', 'Hybrid', 'Lake Onie', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(256, 'Interior Designer', 'Illum saepe commodi aliquid excepturi quos harum. Expedita modi est id voluptatem est recusandae ullam sint. Exercitationem et nostrum unde ipsam magni voluptatem.', 'Full time', 'Hybrid', 'South Leanne', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(257, 'Anthropologist', 'Est mollitia possimus et pariatur. Saepe commodi quisquam nihil et et fugiat mollitia enim. Sit eligendi omnis autem qui.', 'Part time', 'On-site', 'Chesleyshire', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(258, 'Reporters OR Correspondent', 'Ea non et eligendi perspiciatis voluptas. Culpa deleniti excepturi repellat a id accusamus. Porro explicabo maiores sit cum labore. Optio et quis eveniet quaerat autem illum dolores cumque.', 'Full time', 'Hybrid', 'Durganshire', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(259, 'Taper', 'Eligendi est dolorem et asperiores veniam sit eveniet. Voluptatum velit eum voluptatem qui autem vitae molestias. Necessitatibus reiciendis culpa molestiae ut tenetur quo.', 'Full time', 'Hybrid', 'Myrtlefurt', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(260, 'Insulation Worker', 'Architecto laboriosam consequatur delectus dolore. Minus dicta rerum ut itaque corporis sit totam. Eum velit dolores tempora possimus.', 'Full time', 'Hybrid', 'Ondrickamouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(261, 'Maid', 'Perspiciatis ratione quae aut recusandae alias non non. Mollitia officia necessitatibus ullam. Aspernatur sit nihil at recusandae voluptas pariatur et. Et qui nostrum blanditiis soluta dolor.', 'Part time', 'Hybrid', 'Dickinsonland', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(262, 'Highway Patrol Pilot', 'Eaque nulla deserunt veniam laborum quas sunt. Quis numquam quidem voluptas ut voluptatem veniam. Quaerat sint et est optio a laboriosam earum.', 'Part time', 'On-site', 'Linwoodburgh', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(263, 'Communication Equipment Repairer', 'Consequatur reiciendis impedit assumenda quaerat libero et dignissimos. Facilis quia qui laudantium est sunt accusamus. Enim repellat consectetur aut.', 'Part time', 'Hybrid', 'Daishaside', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(264, 'Diagnostic Medical Sonographer', 'Illum ipsa at debitis at nihil magnam. Cumque eos velit ut voluptate voluptatem dolores rerum molestiae. Inventore voluptates dolorum aliquid ipsa nesciunt. Veritatis sit rerum accusantium rerum aperiam fuga.', 'Full time', 'Hybrid', 'Port Moisesstad', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(265, 'Correspondence Clerk', 'Dolorem aspernatur odio similique ullam et magnam velit. Non voluptas qui vel unde facilis.', 'Full time', 'Hybrid', 'Joesphfort', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(266, 'Forest Fire Fighter', 'Asperiores architecto doloribus veritatis. Error eos et nihil in nostrum sit. Quos illum alias sint.', 'Part time', 'On-site', 'South Chaim', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(267, 'Head Nurse', 'Ea qui iure sint. Et impedit neque ducimus qui sit est velit consequatur.', 'Part time', 'Hybrid', 'South Avis', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(268, 'Jewelry Model OR Mold Makers', 'Tenetur explicabo in ut sed id. Culpa sint et dolores at. Et incidunt nihil iure sed. Similique id voluptates eos tempore vel nesciunt fugit aperiam.', 'Full time', 'Hybrid', 'Domenickport', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(269, 'Purchasing Manager', 'Alias velit molestias culpa sed. Quaerat natus molestias inventore corrupti saepe nam omnis. Aliquid consequatur est officiis aut.', 'Full time', 'On-site', 'Francescaborough', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(270, 'Extruding Machine Operator', 'Quia rerum sequi temporibus. Dolorem cum ut ut alias dolorem. Eligendi illo eveniet facere non praesentium.', 'Part time', 'On-site', 'North Twila', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(271, 'Forest and Conservation Worker', 'Qui aspernatur praesentium repellendus ut culpa et. Libero ut dolor et eligendi et adipisci. Ea et minus itaque numquam omnis corrupti quam et. Molestiae a qui libero tempore est iste incidunt.', 'Part time', 'Hybrid', 'North Earlene', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(272, 'Entertainer and Performer', 'Autem exercitationem neque officiis velit rem sed. Dolores ipsum voluptatem repellat expedita. Quam voluptatem sed ratione non laudantium omnis voluptatem. Nihil dolores suscipit voluptas.', 'Part time', 'Hybrid', 'Ovaside', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(273, 'Solderer', 'Qui voluptas autem molestiae deserunt. Incidunt saepe est possimus ut et voluptatem. Aspernatur aut et commodi sequi eveniet quis. Dolor nesciunt ratione tempora dolor eligendi.', 'Full time', 'Hybrid', 'Stantonberg', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(274, 'Park Naturalist', 'Illo libero aliquid sit nemo. Consequatur quaerat voluptas suscipit qui qui sequi quis. Rem voluptatem mollitia sed veniam quas vel quos. Ut ullam excepturi et amet rerum.', 'Part time', 'Hybrid', 'South Tanya', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(275, 'Reporters OR Correspondent', 'In maxime nesciunt quam magni. Fugit vitae tenetur nihil dolorem.', 'Full time', 'Hybrid', 'New Sabrinamouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(276, 'Clergy', 'Sit libero officia sunt omnis. Et et voluptatibus doloribus atque nobis est voluptatem expedita. Repellendus optio sequi consequatur et illum.', 'Part time', 'On-site', 'South Kaseybury', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(277, 'Sales Engineer', 'Eos et quas sit ipsam. Illo eveniet quo sequi fuga labore. Dignissimos exercitationem sapiente dolorum minima qui rerum deleniti. Et voluptas dolore corporis laboriosam libero.', 'Part time', 'Hybrid', 'Macejkovicmouth', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(278, 'Concierge', 'Velit voluptas architecto cumque culpa. Vel quas quo ducimus ut numquam soluta rerum. Aut at soluta et quia itaque eos laborum.', 'Part time', 'On-site', 'Wehnerchester', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(279, 'Restaurant Cook', 'Ex voluptatem eos ducimus sapiente saepe. Magni et assumenda dolores non. Iusto possimus voluptas adipisci sed animi illum quaerat.', 'Part time', 'On-site', 'Eldonview', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(280, 'Detective', 'Eaque facere autem ad non ad accusantium voluptas. Magni laudantium est et sit corporis non quia exercitationem. Earum quia ut autem non culpa molestiae autem.', 'Part time', 'Hybrid', 'South Jayde', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(281, 'Order Filler', 'Cum voluptatibus quisquam voluptas voluptas similique incidunt rerum. Adipisci odit placeat nostrum facilis. Sint ut tenetur odit.', 'Part time', 'On-site', 'Hilltown', '2024-02-29 23:00:00', '2024-02-29 23:00:00'),
(282, 'PR Manager', 'Dolor est eum autem magni est. Et occaecati qui vel esse. Quia magni sint ut unde veniam ipsam tempore doloremque.', 'Full time', 'On-site', 'Cornellberg', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(283, 'Storage Manager OR Distribution Manager', 'Corrupti et in et ducimus ex quae suscipit laborum. Veritatis ipsam dolorum eaque omnis repudiandae debitis.', 'Full time', 'Hybrid', 'Nitzscheville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(284, 'Rolling Machine Setter', 'Laborum aut qui et recusandae omnis rerum. Eius dolorem ut mollitia earum. Sit non non quasi sed.', 'Part time', 'Hybrid', 'Jaskolskihaven', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(285, 'Ceiling Tile Installer', 'Minus deserunt doloremque ipsam tempora. Aperiam exercitationem maiores omnis. Repellendus maxime eligendi est qui harum. Voluptatum sapiente et iure veritatis similique ducimus dolorem.', 'Full time', 'On-site', 'West Raeborough', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(286, 'Home Appliance Repairer', 'Voluptatum voluptatum laudantium eos iusto laborum vitae. Eius voluptatem aspernatur eaque natus eum. Reiciendis autem voluptatem provident. Aperiam quaerat ex illum alias est voluptas non.', 'Part time', 'On-site', 'Ludwigfort', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(287, 'Home Health Aide', 'Maiores repellendus libero consectetur adipisci sit. Ipsa rerum optio suscipit ad. Officiis aut et qui consectetur.', 'Full time', 'On-site', 'East Susie', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(288, 'Shipping and Receiving Clerk', 'Ex eum non omnis illo ipsum in. Sed quasi maiores quis architecto. Velit facere optio error doloremque enim cupiditate voluptas rem. Aut nihil hic quo minus.', 'Full time', 'Hybrid', 'New Alexis', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(289, 'Cartographer', 'Quo quas et aut. Et voluptatem nostrum iste provident eum rerum et ut. In dolorum ullam quod delectus quos.', 'Full time', 'On-site', 'Moorehaven', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(290, 'Health Services Manager', 'At incidunt aut laboriosam molestias tempore qui possimus. Amet debitis quae sed fugiat aut. Nihil veniam et distinctio. Illo impedit adipisci quos ut consequuntur.', 'Part time', 'On-site', 'Johnathonstad', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(291, 'Music Arranger and Orchestrator', 'Blanditiis esse aliquid unde culpa non atque modi. Eligendi id voluptas odio minima ex. Et est pariatur asperiores tenetur sit consequatur magnam. Vel esse laboriosam eum et pariatur et.', 'Full time', 'On-site', 'Starkville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(292, 'Real Estate Sales Agent', 'Hic id ex minus ea aut aliquid nihil dolore. Quaerat eos quas aut. Distinctio corrupti sint natus fugit nesciunt esse non unde.', 'Part time', 'On-site', 'Lake Tanyamouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(293, 'Jeweler', 'Aut explicabo ipsa quia facilis fugit iste. Blanditiis dolores dicta at veritatis.', 'Full time', 'On-site', 'Cassandremouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(294, 'Mapping Technician', 'Dolor distinctio similique iste nulla velit omnis qui. Minus sint asperiores omnis explicabo sint porro est. Vitae placeat consequatur et impedit porro explicabo.', 'Full time', 'Hybrid', 'Trompland', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(295, 'Fire Fighter', 'Aperiam eius porro exercitationem recusandae et quisquam consectetur. Corrupti velit rerum unde optio fuga. Ratione rerum ut perspiciatis assumenda quibusdam earum. Ut iure omnis quia laborum labore pariatur quis. Et rem harum ullam dolores quia aut quia quia.', 'Part time', 'Hybrid', 'North Lisetteshire', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(296, 'Aircraft Engine Specialist', 'Quo sed blanditiis maxime nobis ratione. Labore voluptatem optio omnis. Praesentium laborum velit neque porro placeat et ut.', 'Part time', 'Hybrid', 'Lake Enid', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(297, 'Civil Drafter', 'Ab suscipit dolore iure et. Nihil nesciunt est voluptatum quo velit quidem maiores. Cumque quod aut ullam dolore.', 'Full time', 'On-site', 'Ortizmouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(298, 'Library Technician', 'Voluptatem delectus consequatur a assumenda nulla. Dignissimos laborum ab provident modi aut molestiae quis.', 'Part time', 'On-site', 'Goyetteport', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(299, 'Lawyer', 'Quos nesciunt quis ipsa sed ab quia aut. Nobis minus eos aspernatur et dignissimos tempore voluptatem. Et aut vero eligendi iure suscipit et. Numquam provident et facilis ipsum magni.', 'Full time', 'On-site', 'West Elizabeth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(300, 'Alteration Tailor', 'Quia autem eos pariatur et. Repudiandae pariatur vel ea velit ipsam et. Ad eum autem expedita illum quasi rerum. Non amet quae exercitationem qui harum.', 'Part time', 'Hybrid', 'New Jarredmouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(301, 'Naval Architects', 'Rerum tempore adipisci harum neque optio. Aut animi et doloremque quaerat.', 'Part time', 'Hybrid', 'Kevonfurt', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(302, 'Model Maker', 'Adipisci facere occaecati repellat et omnis vitae illo. Eos qui distinctio repellendus quo quia sed. Ea quod et iure numquam quis at. Quia accusantium qui quia quibusdam ipsa.', 'Full time', 'Hybrid', 'Reichertville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(303, 'Tile Setter OR Marble Setter', 'Optio enim fugit deserunt. Excepturi autem ab quos et vitae ut ea. Magni sed sunt voluptatem fugiat labore at et. Asperiores voluptatem eum atque libero eius architecto.', 'Part time', 'Hybrid', 'East Retaville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(304, 'Aircraft Launch and Recovery Officer', 'Quia iusto veritatis et cumque et. Non est eum rerum et ab molestias fuga. Ut provident hic dolores quos.', 'Full time', 'On-site', 'Marvinfort', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(305, 'Film Laboratory Technician', 'Pariatur tempore qui ea soluta aut. Quasi maxime ut in. Voluptate fugiat possimus doloribus architecto ut quis ea. Consequatur ea quae error explicabo hic excepturi in ipsa.', 'Full time', 'On-site', 'Dasiamouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(306, 'Healthcare Practitioner', 'Quia voluptatem eos aperiam assumenda voluptas error blanditiis sunt. Et eum commodi aliquam. Omnis sunt sit ut dolorum neque. Autem aut iste omnis.', 'Part time', 'On-site', 'New Keshawn', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(307, 'Algorithm Developer', 'Exercitationem consequuntur quidem excepturi voluptatem sapiente iusto recusandae. Hic nihil eos voluptate est ullam. Molestiae reiciendis molestias est itaque suscipit impedit. Vitae et sit qui consequatur omnis repellendus.', 'Part time', 'On-site', 'Revaton', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(308, 'Personal Care Worker', 'Voluptate voluptatibus a sapiente. Doloribus adipisci dolorum voluptas omnis debitis commodi. Aut velit autem architecto. Aperiam illum consequuntur dolorum voluptatem impedit error hic.', 'Part time', 'On-site', 'Millsfurt', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(309, 'Geography Teacher', 'Aut commodi voluptatem rerum vel id exercitationem vero. Adipisci in consectetur officia eaque. Quia dolorem eligendi modi id. Corrupti est voluptas explicabo voluptas.', 'Part time', 'Hybrid', 'Lake Brandon', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(310, 'Parking Lot Attendant', 'Accusamus harum pariatur sit debitis. Veritatis aut voluptas qui et. Voluptatibus quam repellat autem. Et et iure asperiores aut alias quo voluptas.', 'Full time', 'On-site', 'Lake Cleveland', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(311, 'Emergency Management Specialist', 'Pariatur voluptas sunt facere architecto. Quis tenetur dignissimos molestias. Libero recusandae ut est et repellat iste.', 'Part time', 'Hybrid', 'Paucekton', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(312, 'Animal Breeder', 'Id fuga molestias earum quia. Officia deserunt blanditiis sint commodi veniam fuga ut. Enim et quasi in commodi maxime qui voluptas. Est dolore aut tempora necessitatibus vitae.', 'Full time', 'Hybrid', 'Cristtown', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(313, 'Precision Lens Grinders and Polisher', 'Ut illo ipsam vel animi sit nostrum. Sed et aut et distinctio repudiandae. Fugiat minus et quidem sed optio voluptatum. Molestiae in minus nam esse aut.', 'Part time', 'Hybrid', 'Denesikview', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(314, 'Automotive Technician', 'Eum ducimus sit consequatur explicabo ab. Recusandae est fuga sit. Sed et qui rem earum ad repellendus in voluptate. Animi dolores animi unde cumque quibusdam.', 'Full time', 'Hybrid', 'Clarabelleton', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(315, 'Crane and Tower Operator', 'Dignissimos qui iure ipsam eum. Maxime ut voluptate officiis et atque blanditiis. Qui dignissimos doloribus amet molestiae facilis accusantium quasi. Illum iste in veritatis consequatur voluptatem officia.', 'Full time', 'On-site', 'East Grayceton', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(316, 'Host and Hostess', 'Praesentium sit sint sed quas at. Id rerum odio illum quae. Est incidunt doloremque qui nulla. Nihil quo iure maiores officia.', 'Full time', 'On-site', 'Hayesburgh', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(317, 'Boat Builder and Shipwright', 'Facilis aut consequatur vel quasi totam necessitatibus. Non delectus molestias atque et eum ut. Vel quidem fugit excepturi dicta veritatis praesentium ex.', 'Full time', 'On-site', 'Gottliebmouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(318, 'Photoengraver', 'Earum commodi non incidunt cupiditate voluptate. Nisi et omnis laudantium. Deserunt soluta minima optio omnis fugit. Sit eum sed alias voluptate ut nostrum.', 'Part time', 'Hybrid', 'North Caitlynhaven', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(319, 'Mail Clerk', 'Delectus qui rem quia harum minus voluptatem mollitia voluptas. Eum magnam rem reiciendis quia iste. Et et atque nobis illum.', 'Full time', 'On-site', 'New Whitney', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(320, 'Petroleum Technician', 'Eum optio commodi asperiores provident. Similique voluptates non atque ab illo omnis et vero. Temporibus sed tempora repellendus vel a qui. Soluta qui qui explicabo magnam alias ut omnis veritatis.', 'Full time', 'Hybrid', 'North Mose', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(321, 'Cost Estimator', 'Quia ut sed atque. Possimus magni totam facilis temporibus quaerat perferendis aut neque. Consequuntur voluptatibus corporis laborum sapiente quia.', 'Part time', 'Hybrid', 'Nataliemouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(322, 'Librarian', 'Delectus corrupti veritatis et animi ea ullam. Ducimus est qui odio sit aperiam. Sint perferendis commodi quo quam totam harum. Iure sunt et sequi nemo repellendus ipsa. Pariatur quod iure quisquam rerum voluptatem consequatur ipsa.', 'Full time', 'On-site', 'Parkerside', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(323, 'Stationary Engineer', 'Sunt doloribus et est voluptatibus facilis. Accusamus libero ullam quisquam ipsam qui molestiae voluptate. Soluta rerum iusto deserunt rerum asperiores.', 'Full time', 'Hybrid', 'New Wandafort', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(324, 'Bartender', 'Atque eum et ducimus sint natus. Quia molestiae non nihil aliquam hic. Sit officiis ut laborum eligendi molestiae laudantium.', 'Part time', 'On-site', 'Joyside', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(325, 'Gas Pumping Station Operator', 'Mollitia molestias sint et facilis aliquid autem voluptatibus. Reiciendis mollitia iste possimus et sequi ea consequatur.', 'Part time', 'On-site', 'West Kevon', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(326, 'Millwright', 'Quia sit qui ea aut voluptatem tempora ex. Et possimus magni sint fugiat ut dolorem. Dignissimos asperiores voluptas inventore qui et. Nobis autem sed natus cumque quo id.', 'Full time', 'Hybrid', 'Ozellamouth', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(327, 'Automotive Glass Installers', 'Voluptatibus quas dolorem quasi nihil. Laborum corporis ipsa a cupiditate nostrum fugit molestiae qui. Excepturi in corrupti debitis odit quisquam.', 'Part time', 'On-site', 'Demetriusview', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(328, 'Tool and Die Maker', 'Non et molestias esse aut distinctio sed. Maiores dolores aut praesentium corrupti qui minima eos. Ratione dolor quasi quas et illo iure eius. Sunt explicabo veritatis totam maiores voluptas.', 'Part time', 'On-site', 'New Vincenzoburgh', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(329, 'Metal Pourer and Caster', 'Fugit et et dolores et. Maiores a libero distinctio aut. Impedit id labore autem illo.', 'Part time', 'On-site', 'Ambroseville', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(330, 'Education Teacher', 'Ut consectetur quos at consequuntur voluptatem. Quae non voluptas voluptatem id quia autem.', 'Full time', 'Hybrid', 'Volkmanland', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(331, 'Recreation and Fitness Studies Teacher', 'Dolorum nostrum sapiente at corporis harum. Autem eum quae ut doloribus ea. Minus est alias sunt quo harum rerum.', 'Part time', 'On-site', 'Dessiestad', '2024-03-31 22:00:00', '2024-03-31 22:00:00'),
(332, 'Grounds Maintenance Worker', 'Repudiandae saepe aperiam quaerat modi nulla itaque qui natus. Illum voluptatum laboriosam placeat ad suscipit. Perspiciatis placeat dolores perspiciatis eius. Perferendis nostrum unde ut inventore minima.', 'Full time', 'Hybrid', 'Jaskolskiville', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(333, 'Welder and Cutter', 'Et sit mollitia libero numquam cupiditate natus eum. Unde omnis et ea in qui hic. Optio vero voluptatem vero rerum odit rerum earum. Repellendus qui eos voluptatem nobis.', 'Part time', 'Hybrid', 'South Diamond', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(334, 'Transit Police OR Railroad Police', 'Debitis qui atque ea possimus. Soluta eligendi necessitatibus eum aliquid et necessitatibus quibusdam. Sint omnis voluptatem ad cupiditate odio ullam.', 'Full time', 'On-site', 'Bernierland', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(335, 'Ceiling Tile Installer', 'Sit rerum commodi ut inventore. Consequatur ad necessitatibus est maiores.', 'Full time', 'On-site', 'Moorestad', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(336, 'Architectural Drafter', 'Magnam ut autem voluptas possimus aut. Unde quidem et magnam vitae. Placeat unde sunt et ipsam.', 'Part time', 'Hybrid', 'Mannchester', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(337, 'Food Preparation and Serving Worker', 'Nihil debitis et illo recusandae modi consequuntur sint. Id esse necessitatibus aliquam. Neque voluptates sed sint consequatur sit.', 'Full time', 'On-site', 'Port Norma', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(338, 'Mining Machine Operator', 'Laborum deserunt ipsam ullam est est totam. Et quisquam a nulla sit dolore provident exercitationem praesentium. Assumenda voluptatem eum aliquam et cupiditate. Molestias consequatur cum deleniti tempora cumque maiores. Quis officia veniam facilis dolor temporibus recusandae.', 'Full time', 'On-site', 'South Vivianneberg', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(339, 'Terrazzo Workes and Finisher', 'Fugiat occaecati enim nisi. Velit saepe natus necessitatibus ipsam doloribus inventore corporis. Eaque porro sint reiciendis repellendus. Est iusto dicta voluptas non quia omnis qui.', 'Part time', 'On-site', 'West Johnathon', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(340, 'Teacher Assistant', 'Aut adipisci consequatur qui nostrum. Deserunt soluta sunt id nostrum quisquam. Ut dolorem et id quis enim maiores. Veniam sint animi aut assumenda culpa nisi.', 'Full time', 'Hybrid', 'New Lukasmouth', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(341, 'Bookkeeper', 'Doloremque mollitia dolorem corporis voluptatem. Blanditiis autem fuga perspiciatis ut fugit et.', 'Part time', 'Hybrid', 'West Ella', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(342, 'Soil Conservationist', 'Sint nulla eos ut laboriosam quibusdam. Voluptas culpa eos voluptatem sed incidunt non aliquam. Rerum fugit earum voluptates nobis. Nemo sit tempora sit veritatis sit. Expedita earum deserunt necessitatibus sit.', 'Part time', 'On-site', 'East Montyfort', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(343, 'Hydrologist', 'Debitis totam ab sunt explicabo omnis libero. Consectetur deleniti aut nemo qui maiores soluta in sunt. Est autem nisi iure ex dolorem eos. Ullam voluptatem totam sit et.', 'Full time', 'Hybrid', 'Imanimouth', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(344, 'Bartender', 'Ut minima voluptatum illum quasi expedita debitis cumque veritatis. Mollitia consequatur ut aut eum voluptas velit. Perspiciatis sit eveniet nam dignissimos laudantium adipisci.', 'Part time', 'Hybrid', 'Kohlerville', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(345, 'Tire Builder', 'Quibusdam eum eos laboriosam. Temporibus voluptas inventore in soluta nulla qui exercitationem. Corrupti nobis molestias inventore consequatur omnis voluptatem.', 'Full time', 'On-site', 'Lake Keithmouth', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(346, 'Middle School Teacher', 'Deleniti culpa commodi ut voluptas sed perferendis officiis vitae. Ab quisquam aspernatur perferendis labore. Ullam quia dolor ut velit totam.', 'Part time', 'Hybrid', 'Olsonmouth', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(347, 'Medical Equipment Repairer', 'Dolore minima facere natus autem possimus. Iusto odit et dignissimos alias sit. Suscipit laborum molestias tempore iusto.', 'Full time', 'On-site', 'Port Lisandro', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(348, 'Public Relations Specialist', 'Minima inventore ea natus corporis officiis sapiente illo. Et quos ea voluptatem qui recusandae ab quidem. Expedita rerum eius qui.', 'Part time', 'Hybrid', 'New Desiree', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(349, 'Physics Teacher', 'Praesentium vel sint voluptates molestiae. Commodi quae iure eaque saepe qui suscipit provident. Provident enim est dolorum quia nemo vero.', 'Part time', 'On-site', 'Felicityshire', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(350, 'Musical Instrument Tuner', 'Quia qui sunt optio et aperiam veniam. Aut et quam dolor ratione. Cum quidem sequi est iusto iusto.', 'Part time', 'On-site', 'Paytonhaven', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(351, 'Social Scientists', 'Dolorem qui sequi molestiae qui laudantium commodi dolores. Molestiae adipisci fugit non aut. Dignissimos et eos fugiat facere repellendus et. Voluptatem exercitationem ut minus voluptas dolorem dolores architecto.', 'Part time', 'On-site', 'North Shyanne', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(352, 'General Manager', 'Ullam voluptatem qui aperiam dolores. Maxime pariatur modi quibusdam vel tenetur in. Fugit nisi pariatur et est suscipit mollitia tenetur.', 'Full time', 'Hybrid', 'Bednarhaven', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(353, 'Environmental Engineer', 'Incidunt possimus ab numquam aut nam. Eius deserunt et et veniam. Nisi a ut accusamus et delectus voluptate et et. Voluptate possimus impedit quia quidem iusto.', 'Part time', 'Hybrid', 'New Weldonfort', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(354, 'Washing Equipment Operator', 'Dolores repellat dolorem hic magnam. Ipsum sequi quia eligendi velit et enim. Quo dolorum sit aspernatur expedita officia. Similique et pariatur neque magnam et autem est rerum.', 'Part time', 'Hybrid', 'Mikelberg', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(355, 'Coaches and Scout', 'Aperiam modi et fuga expedita dolorem. Dolore ut beatae distinctio accusamus deleniti dolores. Fuga enim nihil omnis adipisci.', 'Full time', 'Hybrid', 'Torphyborough', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(356, 'Maintenance Worker', 'Temporibus dolorem recusandae ullam est labore. Perspiciatis unde vitae autem provident provident placeat quasi.', 'Full time', 'On-site', 'Harberberg', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(357, 'Fitter', 'Doloremque fugiat aut eos voluptates velit. Pariatur eaque eum laboriosam. Accusantium voluptatem minus consequatur et laborum porro doloribus. Facilis aut quam provident qui omnis maiores fugiat.', 'Full time', 'On-site', 'Port Janefurt', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(358, 'Waiter', 'Dolorum iste similique neque libero expedita ut autem. Veniam voluptates exercitationem aliquam unde. Sapiente voluptatem nesciunt vel rerum nam rerum.', 'Full time', 'On-site', 'Watersview', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(359, 'Automotive Glass Installers', 'Accusantium ut enim possimus. Et distinctio soluta molestias omnis excepturi. Quod aperiam velit vero deserunt architecto sint harum ducimus.', 'Full time', 'On-site', 'Maxineview', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(360, 'Financial Analyst', 'Aspernatur dolorem sint laudantium nihil animi porro adipisci. Natus repellat praesentium deserunt tempore explicabo quaerat suscipit cumque. Maiores et et totam alias eligendi quo. Sunt sed est laudantium suscipit qui et.', 'Full time', 'On-site', 'Lake Elnorashire', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(361, 'Ship Mates', 'Doloremque exercitationem rem quia voluptas. Quia sunt maiores laboriosam repudiandae suscipit eaque dignissimos. Ut sed asperiores id vel officia quisquam.', 'Full time', 'Hybrid', 'Lourdesborough', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(362, 'Gas Plant Operator', 'Et a laborum reprehenderit. Ducimus et aut ut tenetur tenetur et. Molestiae sunt et dolor quisquam.', 'Full time', 'Hybrid', 'South Gregoriatown', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(363, 'Railroad Switch Operator', 'Sunt doloremque aut et. Itaque nihil omnis eos. Rerum labore ut minus quia iure atque atque.', 'Full time', 'Hybrid', 'South Judy', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(364, 'Segmental Paver', 'Voluptatem officiis et placeat dolor sed ut enim quo. Pariatur nemo enim rerum exercitationem. Veritatis consectetur eos et.', 'Full time', 'Hybrid', 'North Philipchester', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(365, 'Electronic Masking System Operator', 'Sint porro accusamus nesciunt enim et nesciunt. Tempora consequatur dolores vitae sed beatae nulla. Amet qui voluptatibus dolorum nam dolor. In minima amet porro sunt dolorem voluptatem aut.', 'Part time', 'Hybrid', 'Lake Jimmyville', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(366, 'Semiconductor Processor', 'Voluptates enim velit eligendi voluptatibus quia quasi esse. Sed cupiditate et hic cum veritatis. Iste id non eius ut nostrum aspernatur doloremque.', 'Full time', 'On-site', 'Jaredburgh', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(367, 'Locomotive Firer', 'Et commodi quidem distinctio illum. Et aspernatur qui eaque iusto. Ut fugiat hic rem dolores nisi ea. Sed occaecati cum deserunt sed maxime id animi corporis. Enim aliquam laboriosam vitae consequatur veritatis blanditiis.', 'Part time', 'Hybrid', 'South Presley', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(368, 'Clergy', 'Beatae quo enim in inventore molestiae sed nulla. A sit voluptatem et est. Aut et vero molestiae et et voluptatem autem. Quisquam ad magnam alias.', 'Part time', 'On-site', 'North Lincoln', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(369, 'Industrial Equipment Maintenance', 'Dolores quod et minus maxime. Ut itaque deserunt delectus officiis quia. Quo sed ipsum minima quidem voluptatem.', 'Part time', 'On-site', 'McDermottborough', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(370, 'Transportation Manager', 'Sequi unde et sit eligendi perferendis id. Ut tempore voluptatem quis occaecati et architecto. Dicta eum tenetur est optio. Adipisci id sed ab deserunt.', 'Part time', 'Hybrid', 'South Ansley', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(371, 'Agricultural Engineer', 'Tenetur sunt libero totam. Illo culpa maiores molestiae autem perspiciatis eos vitae. Aliquid dicta odit et sit architecto.', 'Part time', 'Hybrid', 'Lake Earlside', '2024-04-30 22:00:00', '2024-04-30 22:00:00');
INSERT INTO `jobs` (`id`, `title`, `description`, `type`, `work_mode`, `location`, `created_at`, `updated_at`) VALUES
(372, 'Surveyor', 'Et rem perspiciatis et beatae ea eos commodi. Alias vero fuga aperiam perferendis sed perferendis sunt.', 'Part time', 'Hybrid', 'North Jamey', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(373, 'Parking Enforcement Worker', 'Sed repellendus possimus dolorem iste ut et. Ratione praesentium recusandae explicabo odio rerum autem. Error quia aut ipsum reiciendis dicta hic. Ut est quos sed quisquam.', 'Full time', 'On-site', 'North Zellafort', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(374, 'Graphic Designer', 'Impedit possimus perspiciatis similique et pariatur unde. Repudiandae impedit est voluptatem cum. Libero illo rerum debitis sint nobis delectus temporibus.', 'Part time', 'On-site', 'Kendricktown', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(375, 'Precision Devices Inspector', 'Voluptas a illum nam maiores consectetur neque tenetur. Quod ex consequuntur ipsa voluptatum sunt. Est animi natus ea error in velit officiis.', 'Part time', 'On-site', 'West Shanashire', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(376, 'Vice President Of Marketing', 'Incidunt et eos consectetur. Recusandae maxime et et velit. Temporibus ipsam fugiat sint doloremque eligendi consequatur molestiae. Et cum officia expedita amet unde vel.', 'Full time', 'Hybrid', 'New Stacyfurt', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(377, 'Transportation and Material-Moving', 'Nobis illum placeat non. Non quasi temporibus adipisci rem quisquam non. Dolores possimus aut sed eveniet doloribus dolores porro.', 'Full time', 'Hybrid', 'East Megane', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(378, 'Annealing Machine Operator', 'Quia quaerat officiis quia in possimus corporis. Cum magnam quia sunt consequatur quia quos aut autem. Et corporis provident voluptatem consectetur sapiente. Laboriosam est id voluptatem nostrum cum temporibus quis omnis.', 'Full time', 'On-site', 'Jordonport', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(379, 'Soil Scientist', 'Ab quas reiciendis minus animi et laudantium sit. Laudantium deleniti placeat quo commodi autem. Ea et rerum accusamus dolores aut quae. Id ab et nesciunt.', 'Part time', 'Hybrid', 'Lindchester', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(380, 'Title Examiner', 'Quo accusantium et eius in ab. Fuga excepturi quo est nihil corrupti.', 'Part time', 'On-site', 'Lake Willyport', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(381, 'Boat Builder and Shipwright', 'Voluptatem aut repudiandae suscipit. Debitis nihil optio maiores assumenda debitis esse. Voluptatibus neque optio consequatur autem. Enim doloribus minus provident fugiat magnam ipsam qui.', 'Part time', 'Hybrid', 'Angelicafort', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(382, 'General Manager', 'Et ullam exercitationem officia. Officia impedit quam ducimus cumque inventore tempore. Repellendus tempora voluptate illo sint.', 'Part time', 'Hybrid', 'East Clarefort', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(383, 'Actor', 'Modi itaque aspernatur odit similique. Corrupti enim tempore repellendus et placeat. Unde nisi qui omnis mollitia.', 'Part time', 'On-site', 'Abelardomouth', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(384, 'Animal Control Worker', 'Placeat voluptatibus atque est id est eos unde velit. Nemo neque autem perferendis autem vero quo incidunt. Quo et dolor enim ullam at veniam reiciendis.', 'Part time', 'Hybrid', 'Port Ginaview', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(385, 'Job Printer', 'Esse neque ut enim. Nesciunt velit tempore possimus quas. Non et ad consectetur occaecati asperiores sed quasi.', 'Part time', 'Hybrid', 'North Taya', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(386, 'Record Clerk', 'Aut mollitia iste fugiat vel voluptatem exercitationem. Sit repudiandae consequatur velit commodi velit. Esse illum enim facere aliquam dolorem. Laudantium aspernatur laborum modi et necessitatibus.', 'Full time', 'On-site', 'Carleyberg', '2024-04-30 22:00:00', '2024-04-30 22:00:00'),
(387, 'Parts Salesperson', 'Consequatur debitis odit quos dolorum porro quibusdam perferendis. Veritatis provident vitae officiis iste sit amet eum possimus. Vitae corporis sit placeat porro reiciendis reprehenderit. Laboriosam necessitatibus nihil quibusdam praesentium nemo libero saepe voluptatem. Et autem necessitatibus illo aperiam.', 'Full time', 'On-site', 'North Margarete', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(388, 'Plating Operator', 'Ex et culpa fuga provident nisi. Eveniet dolores aut nesciunt officia. Facere quibusdam dolorem veniam perspiciatis.', 'Part time', 'Hybrid', 'Lake Ernestina', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(389, 'Carver', 'Adipisci quo aut aut quae odit. Ab rerum dolorem sint est excepturi voluptas. Neque animi consequatur placeat voluptatem est.', 'Part time', 'On-site', 'Port Emely', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(390, 'Bindery Worker', 'Fuga ipsum quia velit aperiam ducimus nisi itaque quos. Ipsum eos ea non rerum nemo dolore voluptate. Possimus eum ex ab id. Ex nobis quae consequatur dolorem quis quasi accusantium. Asperiores laborum reprehenderit et dolore minima corrupti sequi.', 'Part time', 'Hybrid', 'Andersonborough', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(391, 'Industrial Engineer', 'Quo aut repudiandae repellendus molestiae sunt. Labore temporibus adipisci voluptates necessitatibus perspiciatis. A saepe ab cum.', 'Part time', 'On-site', 'Deckowville', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(392, 'Biological Science Teacher', 'Et quam sed nam fuga. Recusandae quod voluptas consequuntur et commodi ut autem molestiae. Et ipsum totam sit est incidunt. Quo saepe voluptatum fuga ullam a voluptatibus in.', 'Part time', 'On-site', 'Kentonport', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(393, 'Patternmaker', 'Qui qui iure accusamus voluptates non at tempora. Ea accusantium rerum expedita ut recusandae. Non exercitationem cumque cum dolores sunt ex. Ea ratione nam tenetur. Voluptas natus quam voluptas ipsum.', 'Full time', 'Hybrid', 'Pacochafort', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(394, 'Recreation Worker', 'Dolores omnis aut voluptatibus adipisci itaque reprehenderit nihil. Facere distinctio est error rem consequatur est deserunt. Quia labore enim enim culpa excepturi. Expedita necessitatibus quia culpa.', 'Part time', 'On-site', 'East Sabrina', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(395, 'Ophthalmic Laboratory Technician', 'Voluptatem magni error et possimus vel sint omnis et. Neque repellat perferendis sunt minima et aut blanditiis.', 'Part time', 'On-site', 'Erachester', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(396, 'Storage Manager OR Distribution Manager', 'Ducimus consectetur temporibus illo voluptas. Sed velit repellat aliquid enim. Aperiam aut occaecati illo quo recusandae placeat magnam.', 'Full time', 'On-site', 'Port Keven', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(397, 'Architectural Drafter OR Civil Drafter', 'Incidunt adipisci recusandae quisquam tenetur magni. Dolorem et ut dignissimos. Eaque ratione dignissimos hic eum. Est nihil aut qui modi. Et et voluptates consequatur dignissimos qui qui ipsum.', 'Full time', 'Hybrid', 'Port Ruthe', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(398, 'Life Scientists', 'Quisquam voluptas molestiae molestiae aliquid. Dicta commodi ut non eligendi est molestias et omnis. Quasi maiores dolorum dicta ut fugiat est in. Nulla ut praesentium reiciendis numquam eius et consequatur.', 'Full time', 'On-site', 'Lake Camilleview', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(399, 'Airline Pilot OR Copilot OR Flight Engineer', 'Voluptatem quo voluptatum quia doloremque nesciunt. Consequuntur autem alias eos consequatur occaecati recusandae. Aperiam sed sequi consequatur quasi cupiditate pariatur omnis.', 'Full time', 'On-site', 'Marcelinoburgh', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(400, 'Clinical Laboratory Technician', 'Repellat inventore quo itaque enim dolor. Cumque temporibus tempora dolore autem. Asperiores veritatis voluptatem magni expedita nihil veniam voluptatum. Quos eos aut quis magnam voluptas id cum.', 'Full time', 'On-site', 'Desireefort', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(401, 'Landscape Artist', 'Occaecati numquam voluptatem assumenda rerum fugit quisquam. Ipsam soluta velit ullam. Sunt odio animi accusamus ipsam corporis et atque.', 'Part time', 'On-site', 'North Rhiannon', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(402, 'Recyclable Material Collector', 'Pariatur voluptatum aut consequuntur quis hic sint. Tenetur quis dolorum et eos est dolore. Nulla praesentium error nulla aut ipsa. Consequatur ea suscipit veritatis magni.', 'Part time', 'Hybrid', 'Felicityport', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(403, 'General Practitioner', 'Dolor repudiandae eum ut id veniam et omnis est. Ratione sint non ducimus voluptas consectetur. Ut minima incidunt modi reiciendis eos. Aperiam sit laudantium omnis nesciunt molestias ratione quasi veritatis. Corporis id neque aut.', 'Full time', 'On-site', 'New Shanieview', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(404, 'Stone Sawyer', 'Quo veritatis et deserunt optio voluptas ipsa. Qui quia saepe iusto fuga aut. Beatae eius at suscipit quis earum.', 'Full time', 'On-site', 'Nicolaston', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(405, 'Precision Etcher and Engraver', 'In possimus ut vel consequatur. Ut velit quis ab non ut vitae. Numquam quaerat nulla assumenda cumque autem rerum. Et molestiae error aut molestias.', 'Part time', 'On-site', 'Lake Doris', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(406, 'Production Manager', 'Molestiae est et dolorem ut. Voluptatum ipsa id expedita cum officia aperiam. Cum corporis ab quia et aut aut.', 'Full time', 'On-site', 'Beckerville', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(407, 'Construction Equipment Operator', 'Maiores modi voluptatem corrupti unde maiores. Qui sunt voluptates aut. Doloribus ullam commodi esse suscipit facere occaecati in.', 'Part time', 'Hybrid', 'Cieloport', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(408, 'Numerical Control Machine Tool Operator', 'Est dolorum non ut deleniti pariatur quidem. Laudantium quam quia soluta tempora. Ut molestiae aut delectus cumque possimus.', 'Full time', 'On-site', 'Keeganland', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(409, 'Welding Machine Setter', 'Animi laudantium sunt impedit eius. Iste repudiandae veniam aut expedita. Quod libero repudiandae nesciunt inventore omnis temporibus alias minima. Et et dolores odit architecto placeat.', 'Full time', 'On-site', 'Port Mackenziechester', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(410, 'Fiberglass Laminator and Fabricator', 'Eaque doloribus consequatur voluptatem error laborum. Aut vel tempore ipsa voluptate itaque molestiae in. Eum nostrum nihil consequatur iure. Exercitationem quo non ut non quibusdam.', 'Full time', 'Hybrid', 'Port Noemi', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(411, 'Airframe Mechanic', 'Voluptatem quisquam quisquam deserunt possimus quidem placeat porro deleniti. Beatae quo qui et dolorem architecto eveniet labore reiciendis. Atque aliquam qui nisi porro delectus totam.', 'Part time', 'Hybrid', 'Jeremybury', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(412, 'Soil Scientist', 'Voluptas qui recusandae eius quaerat eius. Amet voluptatem quis non odit non cum ipsam.', 'Part time', 'Hybrid', 'Streichchester', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(413, 'Railroad Conductors', 'Impedit non et totam illum excepturi. Ut ipsa sit iure id at. Repellat corporis consequatur est deleniti quam.', 'Full time', 'On-site', 'Delphaland', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(414, 'Multiple Machine Tool Setter', 'Ad suscipit ut aut molestiae vel tempora. Dolores excepturi harum repudiandae ratione quo. Blanditiis nemo molestiae architecto sed at doloribus rem.', 'Part time', 'Hybrid', 'Mertzfurt', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(415, 'Logging Equipment Operator', 'Itaque impedit voluptatem consequatur quo neque et culpa rerum. Ut quo aperiam quo tenetur ut facilis cupiditate quaerat. Reiciendis expedita voluptatibus veniam deleniti ut quidem. Ea maiores natus tempore est.', 'Full time', 'On-site', 'Port Jaunitatown', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(416, 'Fire-Prevention Engineer', 'Iusto et adipisci consectetur placeat. Sequi eveniet eum voluptatibus sit dolorem ut. Sed veniam voluptas libero a sed. Tempora expedita commodi voluptate sapiente.', 'Full time', 'On-site', 'Giuseppeborough', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(417, 'Financial Specialist', 'Iusto repellendus esse similique ut commodi aliquam. Nihil maxime adipisci et ipsam voluptate quisquam ullam debitis. Nesciunt harum iusto et minus praesentium animi itaque.', 'Full time', 'Hybrid', 'South Morris', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(418, 'Farmer', 'Iste est reiciendis quidem beatae. Alias sunt sapiente voluptatem est. Quis modi molestiae vel maiores non aut.', 'Full time', 'Hybrid', 'Willowmouth', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(419, 'CSI', 'Aliquam aut neque esse quaerat et adipisci. Libero omnis et iure. Itaque sed non ut nisi et. Ad ut eum ut officia. Accusantium doloremque impedit possimus.', 'Full time', 'On-site', 'Jarentown', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(420, 'Watch Repairer', 'Laboriosam quas repellat quas. Pariatur molestiae ipsam quia repudiandae ut. Fuga sunt perspiciatis voluptatem fugit.', 'Part time', 'On-site', 'Turnershire', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(421, 'Flight Attendant', 'Exercitationem pariatur id qui ut aut eum atque voluptate. Consectetur et recusandae ducimus sint accusamus. Voluptatem error aliquam sint unde itaque. Distinctio aliquid similique fuga at. Enim enim praesentium omnis aut ullam.', 'Part time', 'Hybrid', 'Ignatiusberg', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(422, 'Mental Health Counselor', 'Omnis quo consequatur repudiandae sunt ducimus error dolorem aut. Recusandae veniam aut odit quia.', 'Part time', 'Hybrid', 'Lake Opheliafurt', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(423, 'Auditor', 'Totam dolorem consequatur eum reiciendis ut ipsam aut. Eaque reiciendis vitae fugiat debitis aut et nam. Error itaque earum voluptas animi.', 'Part time', 'Hybrid', 'West Jamaal', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(424, 'Carpenter', 'Molestias aspernatur eius maiores. Perspiciatis necessitatibus ut numquam voluptas. Placeat et enim ut eos. Laborum vel consequatur minima omnis earum.', 'Full time', 'On-site', 'Vernietown', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(425, 'Costume Attendant', 'Expedita qui facilis et libero rerum qui molestias. Quisquam asperiores consequatur adipisci qui odio. Qui enim velit amet debitis neque tempora quis et. Minus dolores est qui atque voluptatum fugiat.', 'Part time', 'On-site', 'Kihnstad', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(426, 'Self-Enrichment Education Teacher', 'Quisquam dicta perferendis ut sed dignissimos ut. Repellat repellat maxime voluptatibus qui velit molestiae est sit. Dolore sed ipsam occaecati.', 'Full time', 'On-site', 'Gottliebfurt', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(427, 'Credit Checkers Clerk', 'Officiis unde nemo reprehenderit doloribus. Maiores nobis magnam in exercitationem reprehenderit nulla velit et. Quibusdam atque atque voluptatibus voluptatem possimus totam.', 'Full time', 'On-site', 'North Heidiport', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(428, 'Welder and Cutter', 'Ut voluptatum rerum et nam natus vitae veniam. Ea debitis rerum ut dolorem. Possimus et animi ad tempore voluptatum impedit. Voluptatum sed nihil error iusto minus voluptatem blanditiis.', 'Part time', 'On-site', 'Port Clementinaport', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(429, 'Physical Therapist Assistant', 'Quos reiciendis maxime voluptates quo autem dolorem aut. Et sed deleniti impedit.', 'Full time', 'Hybrid', 'Genovevamouth', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(430, 'Garment', 'Iusto iusto officia dolores fugiat aut officia eveniet. Occaecati in vel mollitia voluptas omnis sit. Aperiam omnis saepe quia veniam. Sunt incidunt maxime corrupti quia aliquam ipsam similique.', 'Part time', 'Hybrid', 'Wolffmouth', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(431, 'Mail Machine Operator', 'Aperiam odit dignissimos incidunt sit assumenda. Qui in officia aliquam. Praesentium minima omnis voluptas tenetur et iure veniam error.', 'Full time', 'On-site', 'New Armani', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(432, 'Painter', 'Quas facilis quisquam consequuntur vitae. Voluptas commodi reprehenderit vitae fuga rerum voluptate non sequi. Hic quae nostrum debitis culpa enim voluptas. Vel repellat nam rerum numquam. Quam nihil et ea iste.', 'Part time', 'On-site', 'Kuhicshire', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(433, 'Farmworker', 'Rerum aliquid voluptas qui omnis asperiores suscipit. Voluptas velit dicta eaque laudantium illum. Aut quisquam vero reprehenderit non. Et ullam vitae quidem quidem molestias labore quaerat. Officia aspernatur quod est deleniti provident in.', 'Part time', 'Hybrid', 'Dulcechester', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(434, 'Credit Checkers Clerk', 'Veniam at deleniti magni odit soluta officia quas. Ut est doloremque nemo sit. Autem totam quis vel occaecati placeat earum. Eius rerum omnis incidunt eaque ad.', 'Part time', 'Hybrid', 'South Craig', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(435, 'Technical Program Manager', 'Officiis a aliquid ipsam ipsum quia. Autem tempora modi nobis fuga ab. Hic sunt quo sed.', 'Part time', 'Hybrid', 'East Virgie', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(436, 'Plant and System Operator', 'Blanditiis ullam voluptas ipsa. Ex autem dicta voluptatem voluptatum eos.', 'Part time', 'Hybrid', 'Davontefort', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(437, 'Occupational Therapist Aide', 'Praesentium optio error aut reprehenderit repellat quas. Sint debitis repellat officiis ratione voluptatem quisquam. Est enim sed porro unde quia. Exercitationem pariatur vel itaque sint quia.', 'Part time', 'Hybrid', 'Cecileberg', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(438, 'Boilermaker', 'Sed alias cum aut aspernatur enim. Consequuntur maiores est pariatur tenetur magnam in. Eos necessitatibus est sed est voluptates aliquid eum dolores.', 'Part time', 'Hybrid', 'South Moises', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(439, 'Public Health Social Worker', 'Magnam quo aut deserunt culpa. Fugiat eligendi dolorum aliquid aspernatur. Quis molestias suscipit ipsam molestiae ut ratione. Officia eaque vel et molestiae voluptatibus.', 'Full time', 'Hybrid', 'East Rodrick', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(440, 'Power Distributors OR Dispatcher', 'Eos accusantium nihil amet possimus est ipsa. Earum rerum dolor soluta repellendus rerum. Reprehenderit asperiores odio quam id alias.', 'Part time', 'On-site', 'Mannfort', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(441, 'Athletes and Sports Competitor', 'Aut corporis voluptas ipsum sint et. Adipisci quis aliquam at est nemo facere. Non est modi assumenda harum alias aliquam placeat. Laboriosam voluptates et tempore aspernatur aut voluptas.', 'Part time', 'On-site', 'West Santino', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(442, 'Chiropractor', 'Aut minus sed sit. Deleniti illum facilis odit velit. Voluptates explicabo labore in autem. Aut modi commodi non.', 'Full time', 'Hybrid', 'West Neomaport', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(443, 'Logging Worker', 'Voluptatum est quia voluptas eaque veritatis ipsam quo. Perferendis similique et voluptas vel. Velit est libero quia repellat. Sint qui vel consequatur non et assumenda illo ipsa.', 'Full time', 'Hybrid', 'Wilfredshire', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(444, 'Library Science Teacher', 'Velit ut asperiores sint dolorum. Quos illum vero cupiditate aspernatur aut. Officiis nam voluptas sit repellendus. Corrupti unde ipsam doloremque omnis dolorem repudiandae.', 'Full time', 'On-site', 'Rorytown', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(445, 'Petroleum Engineer', 'Sit tenetur exercitationem quia qui. Est est soluta consectetur ea. Eligendi laudantium sapiente repudiandae et.', 'Part time', 'Hybrid', 'Spinkamouth', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(446, 'Sales Person', 'Nihil ducimus ut sunt ab. Earum quis ut enim eaque ex.', 'Part time', 'Hybrid', 'West Titus', '2024-05-31 22:00:00', '2024-05-31 22:00:00'),
(447, 'Coaches and Scout', 'Perspiciatis quo minus vitae aut maiores recusandae. Accusantium est voluptas animi ratione amet harum.', 'Full time', 'On-site', 'Martinetown', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(448, 'Railroad Conductors', 'Eum libero et dolores excepturi. Molestiae ut sunt eius explicabo quidem maxime veniam. Et dolorem earum libero ratione.', 'Part time', 'On-site', 'Hiramberg', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(449, 'Machinist', 'Sint praesentium a eos velit perferendis recusandae. Qui fugit rerum magni cum. Et et quia voluptatum sunt eum.', 'Part time', 'On-site', 'Theronhaven', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(450, 'Procurement Clerk', 'Sapiente tempora id voluptatem. Quo vitae a animi et architecto quibusdam. Et explicabo eius sit perspiciatis.', 'Full time', 'Hybrid', 'Maritzatown', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(451, 'Warehouse', 'Odio qui laborum ducimus. Eum sed soluta vel quisquam. Impedit maiores aperiam qui officia.', 'Part time', 'Hybrid', 'Santinoport', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(452, 'Irradiated-Fuel Handler', 'Ab tempore cumque in. Non et necessitatibus et veritatis. Qui qui et et odio.', 'Full time', 'On-site', 'West Ozellaberg', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(453, 'Dental Laboratory Technician', 'Necessitatibus ratione eos labore possimus ut consequuntur error. Et quis quis itaque repellendus rerum. Libero dicta dolor dolores rerum quae omnis. Voluptatem odit eaque exercitationem ex sequi.', 'Part time', 'Hybrid', 'Hayesborough', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(454, 'Professor', 'Tempora deleniti dolorem adipisci. Totam adipisci ducimus quae veritatis hic dolorem quo. Ab quia et molestias consequatur. Est iure nulla cumque dolor nulla.', 'Part time', 'On-site', 'South Aurelie', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(455, 'Radio Operator', 'Est dicta quia quis ipsam pariatur. Fugiat deserunt quas ex ab et nulla vero. Dignissimos earum voluptas eum autem praesentium ut sequi et.', 'Full time', 'On-site', 'South Gordon', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(456, 'Armored Assault Vehicle Officer', 'Ratione consequatur dolorum ad aut corrupti velit aperiam. Atque esse doloremque consequuntur quos modi itaque.', 'Part time', 'On-site', 'South Stanton', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(457, 'Automotive Master Mechanic', 'Hic harum iusto vel id inventore porro alias quis. Tempora illum possimus nemo sed. Est quibusdam libero est.', 'Part time', 'On-site', 'New Desiree', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(458, 'Heat Treating Equipment Operator', 'Non quia nulla deleniti aliquid consectetur rerum. Porro ut doloribus eaque reprehenderit natus incidunt. Illum porro beatae praesentium dolores architecto autem incidunt. Ex itaque adipisci est aut animi nostrum consequatur.', 'Full time', 'Hybrid', 'Hirtheshire', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(459, 'Calibration Technician OR Instrumentation Technician', 'Alias quia necessitatibus consectetur totam voluptatem. Provident explicabo doloremque totam. Ea cum magnam consequatur quae in dolore non. Magni fugiat deserunt soluta blanditiis sit sunt.', 'Part time', 'Hybrid', 'North Nettieburgh', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(460, 'Brazer', 'Vel ut qui aut deleniti autem perferendis dolor. Reiciendis illum omnis est dolores autem alias sint. Et quaerat officia totam quis velit. Adipisci impedit nihil incidunt corrupti temporibus aut voluptatum.', 'Full time', 'Hybrid', 'Tremblaystad', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(461, 'Dragline Operator', 'Repellat dolor eum placeat qui voluptates iusto laudantium eos. Quis vitae laboriosam adipisci quia hic. Dolore animi non quia temporibus. Id in iure exercitationem minus autem. Velit et sed expedita rerum.', 'Part time', 'Hybrid', 'Trantowport', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(462, 'Nursing Instructor', 'In voluptate vel quidem libero et libero. Quaerat omnis delectus voluptas corporis nulla ut. Aut praesentium quasi asperiores sunt sit. Amet dolorem rerum soluta et dolorem cupiditate officiis.', 'Part time', 'On-site', 'West Judsonchester', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(463, 'Construction Manager', 'Eos aliquid accusantium a cum repellat. Similique labore aut voluptatem reprehenderit doloribus nemo sint ut. Omnis quia eius ad sed dolor rerum iste. Aut minus accusantium illum suscipit velit.', 'Part time', 'On-site', 'Pollichstad', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(464, 'Advertising Manager OR Promotions Manager', 'Maiores omnis maiores voluptatem exercitationem quo. Eos consequatur modi magnam et repellendus magnam. Tenetur voluptatem sit earum inventore maxime eum in. Aliquid sed molestiae repellendus sit similique id. Incidunt aut incidunt nesciunt suscipit.', 'Part time', 'Hybrid', 'Port Micahton', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(465, 'Mathematician', 'Perferendis vel sint consequuntur doloremque dolorem. Dolorem fuga animi nemo quaerat est exercitationem tenetur. Ad laboriosam et eos expedita.', 'Full time', 'Hybrid', 'West Mireilleville', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(466, 'Machine Feeder', 'Eos quia est tempora mollitia sint explicabo. Nihil qui a sunt eligendi. Tempore eveniet officiis similique ut pariatur velit est non.', 'Part time', 'Hybrid', 'Katlynnburgh', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(467, 'Transportation Worker', 'Et ut perferendis occaecati rem. Dolores autem iure ut excepturi sit.', 'Part time', 'Hybrid', 'Port Ezequielmouth', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(468, 'Philosophy and Religion Teacher', 'Nulla expedita dolor minus mollitia ea totam atque. Sit quam voluptate enim reiciendis. Incidunt enim non facere doloribus sit itaque dolores.', 'Full time', 'On-site', 'Kuhnview', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(469, 'Captain', 'Sit labore quisquam hic error. Vitae et ut architecto beatae. Eveniet doloribus et excepturi et eos dolores.', 'Part time', 'On-site', 'East Francesca', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(470, 'Advertising Sales Agent', 'Sed repellat iusto eaque reprehenderit. Rerum reprehenderit ut laborum aliquam. Enim modi amet dolores ut. Esse natus ut iusto deleniti nesciunt consequatur non.', 'Full time', 'On-site', 'Wizafurt', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(471, 'Hand Trimmer', 'Commodi dolores fuga dolorem est veniam sunt perferendis velit. Quis iste rerum ad minima qui voluptatum voluptas in.', 'Full time', 'On-site', 'Creolaland', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(472, 'Grips', 'Quia iusto dolorum consequuntur non. Perferendis fuga recusandae quaerat optio. Minus esse eaque id similique.', 'Full time', 'On-site', 'New Meghanland', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(473, 'Warehouse', 'In incidunt quidem perferendis itaque. Ducimus earum numquam amet mollitia repellat nulla. Quisquam ea adipisci laborum quo suscipit. Tenetur omnis dignissimos laboriosam et eum tempora et. Veritatis est quis quasi quia iure.', 'Full time', 'On-site', 'South Harveyton', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(474, 'Mechanical Inspector', 'Vel mollitia minima ea aut. In ratione laudantium facere qui voluptatem. Sunt est ipsam placeat sequi quo exercitationem. Blanditiis id quos exercitationem nulla totam.', 'Part time', 'On-site', 'Lennyberg', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(475, 'Aircraft Assembler', 'Quasi et animi voluptas. Sed ab nobis delectus asperiores. Qui earum quia rerum aliquid pariatur est rem. Et architecto ullam iusto nulla veniam rerum.', 'Full time', 'Hybrid', 'Bashirianview', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(476, 'Education Teacher', 'Qui nemo nemo maxime a architecto dolorem. Sunt consequuntur sint qui illo quidem at facere. Unde qui totam facilis quisquam cupiditate consequatur voluptas.', 'Full time', 'On-site', 'Alenechester', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(477, 'Government Service Executive', 'Qui sequi autem a quis qui sed. Et placeat recusandae aut aut enim. Neque illo qui possimus eum nesciunt maxime.', 'Full time', 'On-site', 'Lake Cecilia', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(478, 'Child Care Worker', 'Dolorum sint exercitationem fugiat. Laborum corrupti corrupti et et. Corporis deleniti porro eveniet fugit. Quisquam cupiditate voluptatem placeat rerum labore doloremque.', 'Full time', 'On-site', 'Wandaside', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(479, 'Fiber Product Cutting Machine Operator', 'Amet doloremque quam saepe quisquam et sunt praesentium. Et modi eius voluptatem nobis.', 'Part time', 'On-site', 'Mellieland', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(480, 'Postal Service Mail Carrier', 'Earum quis repudiandae id repudiandae architecto maiores accusantium dignissimos. Dolor asperiores quis et fugit aspernatur ea. Provident cupiditate nobis modi id sint maxime.', 'Full time', 'On-site', 'Port Kattiemouth', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(481, 'Biological Technician', 'Quisquam accusamus quia quibusdam corporis in nihil quia. A hic nihil vel unde.', 'Part time', 'On-site', 'New Mireilleville', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(482, 'Screen Printing Machine Operator', 'Cumque nostrum distinctio omnis blanditiis. Ab repellendus nemo ipsam voluptas iusto est hic. Quaerat dolores hic aliquam iusto non necessitatibus velit. Neque molestiae est consectetur tempora ut rerum sit.', 'Part time', 'Hybrid', 'Lake Molliechester', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(483, 'Forest Fire Fighter', 'Aut ullam eos cupiditate non et velit ea. Dolor voluptatibus maxime iure odit. Enim pariatur est voluptatem impedit.', 'Full time', 'Hybrid', 'Port Beulah', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(484, 'Lifeguard', 'Dolor saepe expedita animi incidunt necessitatibus officia. Qui et sunt quis omnis odit. Quia sit nam voluptatem vero sequi.', 'Part time', 'On-site', 'Alfredastad', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(485, 'Product Management Leader', 'Ratione assumenda voluptas et sed eum ut. Dolorem quo sapiente laboriosam est modi sunt qui. Praesentium qui saepe accusamus molestias consequatur.', 'Full time', 'On-site', 'Miloberg', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(486, 'Valve Repairer OR Regulator Repairer', 'Qui quia error hic a soluta quia. Ducimus delectus facere repellat corporis ipsum sint consequuntur.', 'Full time', 'On-site', 'Kleinville', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(487, 'Valve Repairer OR Regulator Repairer', 'Libero rerum non ratione blanditiis. Illum iure iste aut quis omnis rerum quia at. Non voluptatum ut eum molestias ab ea cupiditate.', 'Full time', 'Hybrid', 'New Isabellaville', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(488, 'Structural Metal Fabricator', 'Fuga error omnis necessitatibus nihil est est. Aut nostrum illum consequuntur laborum esse enim nihil assumenda. Sunt laborum optio eos autem dolor excepturi.', 'Part time', 'On-site', 'Parkerbury', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(489, 'Marine Architect', 'Sunt nesciunt qui ut quia nisi laudantium et. Est esse perferendis delectus laboriosam maxime quia commodi. Ut rerum quas nam temporibus. Autem qui quia non commodi reiciendis ipsa beatae.', 'Part time', 'Hybrid', 'East Krystalmouth', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(490, 'Carver', 'Inventore reiciendis corrupti eveniet incidunt et nobis praesentium. Sint fuga accusantium voluptates. Autem quo aperiam ullam magnam odio cum blanditiis illo. Sequi aliquid temporibus nobis saepe voluptatem necessitatibus. Ex pariatur magni et cumque id omnis error non.', 'Full time', 'On-site', 'Juniusfurt', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(491, 'Painting Machine Operator', 'Repellat vel ea non qui adipisci. Magni quasi dolores cumque atque magni vero laboriosam. Facere sequi molestias dolores laboriosam debitis. Et assumenda qui odit quam ea eveniet expedita.', 'Part time', 'Hybrid', 'Coraside', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(492, 'Answering Service', 'Accusamus odio praesentium cupiditate dolorem. Placeat iste maxime soluta. Magnam quae enim quia corrupti. Quibusdam doloribus quo debitis consequuntur facere aut.', 'Part time', 'On-site', 'Lake Adrain', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(493, 'Rehabilitation Counselor', 'Ducimus delectus pariatur corrupti consequatur aut nihil. Harum dolorem quis sunt ut alias exercitationem porro et.', 'Part time', 'Hybrid', 'New Paige', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(494, 'Traffic Technician', 'Id doloremque quod velit sint quia repellendus quae amet. Maiores ut omnis aperiam eius provident ut dolores. Et hic id quidem qui quo quam eius.', 'Full time', 'On-site', 'Marquardttown', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(495, 'Maintenance Worker', 'Ipsum eos optio et doloribus quas. Voluptatem possimus doloribus optio odit ut architecto sit. Quia maxime quod autem. Beatae nemo reiciendis doloribus itaque vero nihil.', 'Full time', 'On-site', 'Lake Hal', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(496, 'Medical Scientists', 'Est ut sit itaque aut amet hic quo quis. Alias modi ullam velit sunt. Alias aut consectetur molestiae quis aut id. Illo voluptas minima nobis repellat.', 'Part time', 'On-site', 'Port Kelton', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(497, 'School Bus Driver', 'Quisquam eos qui occaecati sint accusamus nihil error dignissimos. Hic quia et nemo quae blanditiis modi ut dolores. Blanditiis impedit ad et ducimus consectetur.', 'Full time', 'Hybrid', 'North Lila', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(498, 'Pharmaceutical Sales Representative', 'Quis adipisci ut dolore placeat. Sint exercitationem aut corporis voluptatem. Ab voluptas libero magnam libero autem quos deserunt. Similique exercitationem pariatur vel reprehenderit.', 'Part time', 'Hybrid', 'Wilkinsonfort', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(499, 'Gaming Manager', 'Consequatur accusamus ut ad iusto qui assumenda fugit sunt. Sit corrupti aut dignissimos pariatur. Sunt voluptatem nulla expedita harum rerum voluptatem. Similique omnis quibusdam ut molestias dolores fugiat nisi vero.', 'Part time', 'Hybrid', 'North Martymouth', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(500, 'Gaming Service Worker', 'Qui odit dolorem aspernatur perspiciatis. Quia aperiam sapiente nihil rerum consequuntur quo. Vel sed vel dolorem tempore est quia voluptas.', 'Part time', 'On-site', 'Elliottown', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(501, 'Residential Advisor', 'Iste ea aut voluptate omnis. Commodi modi ad debitis culpa. Eos iusto ipsum praesentium possimus et quos illo consequuntur. Nostrum velit quisquam commodi nulla rerum recusandae quos.', 'Part time', 'Hybrid', 'New Holdenport', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(502, 'Printing Press Machine Operator', 'Provident iste atque debitis dolorem officia dolores molestiae. Corporis accusantium vero sed excepturi modi qui quis. Distinctio aliquam quia at consectetur sunt. Quibusdam molestiae repellendus dolores dolor sunt.', 'Full time', 'Hybrid', 'South Gilbert', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(503, 'Counselor', 'Amet voluptate asperiores recusandae distinctio incidunt. Molestiae rerum error nulla ipsum totam expedita. Sit veniam alias aperiam cum consequuntur qui.', 'Part time', 'On-site', 'Port Angelita', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(504, 'Animal Care Workers', 'Et commodi voluptatum veniam rerum. Qui odit sint ut earum qui voluptatem facere nihil. Quos error natus voluptatum occaecati minima.', 'Part time', 'On-site', 'South Ricardoshire', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(505, 'Social Work Teacher', 'Sed temporibus et aliquid corrupti voluptas harum aut rerum. Iusto ab provident deleniti pariatur. Quis soluta optio eos velit quisquam.', 'Full time', 'On-site', 'East Noemy', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(506, 'Council', 'Corrupti labore iusto autem aspernatur adipisci. Illo perferendis adipisci fugiat molestiae. Quo officia quisquam excepturi et.', 'Part time', 'Hybrid', 'Skylamouth', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(507, 'Graduate Teaching Assistant', 'Error officia et optio ut neque. Et a voluptatem architecto doloremque et repellat rem.', 'Part time', 'On-site', 'West Camronport', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(508, 'Landscaper', 'Dolorem quibusdam mollitia quas. Illum eos accusamus iste ipsum placeat tenetur. Et est pariatur omnis accusamus laborum nemo hic. Voluptatem exercitationem et sit qui nostrum laudantium rerum.', 'Part time', 'On-site', 'New Olafview', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(509, 'Gas Plant Operator', 'Aut aut itaque ut necessitatibus assumenda iste. Tenetur adipisci aliquam omnis voluptas tempora aut a. Consequatur corporis error in molestiae voluptatem laborum perferendis.', 'Full time', 'On-site', 'Emardville', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(510, 'Travel Guide', 'Est sed ea harum voluptatum ea laudantium. Aspernatur sed et harum vitae eum ab soluta. Incidunt atque pariatur deleniti quos nesciunt voluptates qui. Temporibus alias culpa alias consequatur.', 'Full time', 'Hybrid', 'New Mayaville', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(511, 'Forestry Conservation Science Teacher', 'Mollitia ut et officia aut. Voluptate dolore corporis deserunt fuga eaque beatae. Minus quia architecto dolorem ut.', 'Full time', 'On-site', 'Schimmelberg', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(512, 'Chiropractor', 'Sunt nam et reprehenderit architecto labore blanditiis hic. Sequi assumenda nostrum eum voluptatibus ut dolor quaerat. Magni optio dolores dolore at dolorem tenetur eos. Quia nesciunt veniam consequatur reprehenderit officia rerum quo et.', 'Full time', 'On-site', 'Lake Peytonborough', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(513, 'Industrial-Organizational Psychologist', 'Tempore tempore occaecati dolorem possimus libero. Odit omnis praesentium perspiciatis autem id. Consequuntur omnis voluptate aut. Ut nostrum minima veniam nihil nihil ut et.', 'Part time', 'Hybrid', 'Muhammadview', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(514, 'Radio and Television Announcer', 'Voluptatem blanditiis quaerat quam saepe consequatur ratione consequatur. Repellendus rerum autem non qui voluptatem. Velit et quisquam adipisci laborum.', 'Full time', 'Hybrid', 'East Elbert', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(515, 'Plating Operator', 'Qui id non reiciendis nisi perferendis omnis. Minima omnis voluptas id asperiores ullam vero. Officia recusandae sed ab quia recusandae consequatur maxime. Voluptas reprehenderit ut nemo autem dolore similique saepe.', 'Full time', 'On-site', 'Port Peggie', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(516, 'Nuclear Medicine Technologist', 'Quidem non labore iusto voluptatibus. Mollitia illo quas odit delectus ea corporis ea. Ab adipisci officiis facere dolor sint. Sint veritatis exercitationem sed quo quasi quia sint. Ut cum quas qui autem sequi.', 'Part time', 'On-site', 'Effertzland', '2024-06-30 22:00:00', '2024-06-30 22:00:00'),
(517, 'Computer Systems Analyst', 'Aut voluptatem ipsam porro. Ab ipsum ex qui ratione. Voluptatem fuga non eveniet id.', 'Full time', 'Hybrid', 'North Ella', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(518, 'Clerk', 'Vero beatae et quia et. Tempora qui repellendus magni culpa qui tempore vitae.', 'Full time', 'On-site', 'Doyleville', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(519, 'Industrial Equipment Maintenance', 'Dolores iusto reprehenderit corporis nobis. Est sit animi a autem dignissimos pariatur laborum. Aut incidunt quo et aut ducimus sed doloribus repellat.', 'Full time', 'On-site', 'Port Desmondborough', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(520, 'Precious Stone Worker', 'Cum vero quas consequatur exercitationem. Ut a quo aspernatur est eaque. Ut quod delectus et est eaque recusandae aut. Nobis quod atque quaerat.', 'Part time', 'Hybrid', 'West Alden', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(521, 'Waste Treatment Plant Operator', 'Ducimus laboriosam ipsa iste quia ea accusamus dicta libero. Ipsa molestiae doloremque voluptatem dolorem fuga expedita. Odit qui laudantium itaque unde deleniti minus distinctio eveniet. Laudantium repellendus beatae dolores quos qui animi quia. Accusantium maiores eum et ea voluptatem.', 'Part time', 'Hybrid', 'Feeneychester', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(522, 'Sawing Machine Setter', 'Veniam similique sed illum qui consectetur. Fugit voluptatem et quod et est quod ipsum. Iure qui suscipit culpa ad et voluptatibus aut. Harum et laboriosam qui vitae provident.', 'Full time', 'Hybrid', 'East Katelinberg', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(523, 'Mail Machine Operator', 'Debitis quaerat corporis sunt rerum vero a perferendis. Nihil accusamus autem earum reiciendis. Ratione iure excepturi quos ut in.', 'Full time', 'Hybrid', 'Keanuview', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(524, 'Medical Equipment Repairer', 'A distinctio voluptatem nesciunt consequatur. Est enim quis porro aut omnis est. Aliquam architecto explicabo et nemo. Debitis omnis alias id.', 'Full time', 'On-site', 'Levishire', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(525, 'Loan Officer', 'Qui necessitatibus exercitationem et dolorem aspernatur deleniti. Ab eaque asperiores animi repellendus. Laudantium et id consequatur nihil sit distinctio.', 'Part time', 'On-site', 'Mantemouth', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(526, 'Special Forces Officer', 'Voluptates omnis consequatur iste quis. Architecto rem consequuntur commodi officiis sunt doloremque consectetur. Veniam et nulla dignissimos voluptatum unde assumenda quo.', 'Full time', 'On-site', 'Dibbertberg', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(527, 'Dot Etcher', 'Omnis temporibus autem accusamus culpa. Doloremque ab sapiente qui ratione. Voluptatibus aliquid dolore iusto quasi voluptatem iste iure sunt.', 'Part time', 'Hybrid', 'South Trystan', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(528, 'Floral Designer', 'Voluptas soluta voluptatem eos voluptas quasi doloribus. Qui sed delectus quo. Facere quisquam iste et numquam qui rerum non.', 'Part time', 'Hybrid', 'Hauckland', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(529, 'Electric Motor Repairer', 'Ab ex minus et et at quo molestiae. Repellendus corporis illum est repellendus earum atque dicta voluptas. Quia saepe voluptatem consectetur libero.', 'Full time', 'Hybrid', 'West Jeremybury', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(530, 'General Manager', 'Illo impedit ipsum non consequatur qui odio. Quibusdam quia eum similique inventore in. Fugit quia dolorum non.', 'Part time', 'On-site', 'Lake Adonisport', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(531, 'Information Systems Manager', 'Alias a voluptatibus suscipit necessitatibus eos placeat recusandae. Itaque delectus eius vel consequatur. Quae aperiam quo ipsam et. Eum eius est sint sequi magnam sed unde.', 'Full time', 'On-site', 'East Aileen', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(532, 'Stock Broker', 'Quibusdam sit ut voluptatum quibusdam vitae. Et nihil qui esse quia sint et. Dolores ut enim error eligendi.', 'Full time', 'Hybrid', 'South Zelda', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(533, 'Etcher', 'Id rerum veritatis assumenda id sit. Quasi officia et est. Nesciunt perferendis reiciendis beatae sed eum exercitationem et quibusdam.', 'Part time', 'On-site', 'West Jared', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(534, 'Logging Supervisor', 'Nesciunt modi voluptates assumenda vitae eum. Laudantium repudiandae saepe reiciendis quis ipsam quaerat distinctio. Ducimus repudiandae et quo pariatur natus omnis consequatur. Assumenda pariatur sed minima soluta optio officia.', 'Full time', 'On-site', 'Mariemouth', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(535, 'Forestry Conservation Science Teacher', 'Qui aut debitis cumque fuga. Esse autem quia id iusto. Suscipit est porro nesciunt vel voluptates est. Sed quisquam voluptatem sapiente adipisci.', 'Full time', 'On-site', 'Rosemarieton', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(536, 'Commercial and Industrial Designer', 'Asperiores doloremque quae et quod sapiente ipsam modi. Error delectus blanditiis doloribus et aut hic culpa et. Fuga quaerat consequatur quasi animi. Occaecati tempora iste aut maxime molestiae amet repellendus.', 'Part time', 'Hybrid', 'Jasenland', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(537, 'Travel Clerk', 'Est quia labore corrupti quia enim illo. Voluptatem inventore facere magnam deleniti. Aliquid aut id impedit non.', 'Full time', 'On-site', 'Cronatown', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(538, 'Logging Equipment Operator', 'Numquam inventore doloribus debitis ratione. Quo excepturi maxime velit et nesciunt. Tempora nihil est facere libero voluptate voluptas voluptatum deserunt.', 'Full time', 'On-site', 'South Arlieview', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(539, 'Battery Repairer', 'Assumenda animi consectetur consequatur dolor accusamus quibusdam. Dolor non et id voluptas quia. Illum laboriosam rerum recusandae recusandae. Id suscipit dignissimos minus saepe.', 'Full time', 'On-site', 'South Yasmine', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(540, 'Precision Dyer', 'Quod sequi consequatur qui ea omnis. Natus perspiciatis mollitia occaecati nulla ducimus laborum rerum saepe. Doloribus nesciunt et et aspernatur ullam iste. Aut distinctio in explicabo quia quam veniam ut.', 'Part time', 'Hybrid', 'Lake Jakeberg', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(541, 'Government Property Inspector', 'Consequatur esse aut est ut eveniet adipisci. Sint similique qui consectetur rem unde eligendi. Vel quia molestiae vero consequatur mollitia. Reiciendis nostrum et mollitia quis. Et ut ipsa molestiae dolor nam tempore.', 'Part time', 'On-site', 'Binsville', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(542, 'Healthcare Practitioner', 'Repellat quam illo adipisci voluptatibus voluptate est. Omnis recusandae laborum dolores neque ut tempora. Esse sunt labore optio. Aspernatur ut beatae eos maxime rerum. Quia repudiandae velit earum.', 'Part time', 'On-site', 'Bartolettiborough', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(543, 'Fishery Worker', 'Rerum corporis debitis autem asperiores eum voluptates. Nisi sint ut corrupti id commodi aut earum. Cumque nisi doloremque ea soluta aut quo id dolores. In ut voluptas similique quis consequuntur.', 'Full time', 'Hybrid', 'East Wendell', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(544, 'Bicycle Repairer', 'Aut hic ut rerum quidem aut. Eum recusandae veniam aspernatur et omnis vitae quis. Minima necessitatibus rerum sit quae culpa. Eaque rerum quo reiciendis autem nihil.', 'Full time', 'On-site', 'Lake Rex', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(545, 'Dot Etcher', 'Sint illo dolore corrupti temporibus. Adipisci nostrum alias ipsam aut voluptates laborum. Minus nulla neque ratione sit exercitationem blanditiis dolorum.', 'Full time', 'On-site', 'New Kamille', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(546, 'Medical Laboratory Technologist', 'Veniam unde qui distinctio cum molestias corporis. Non ipsum atque ab voluptates consequatur fuga.', 'Part time', 'Hybrid', 'North Claire', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(547, 'Logging Tractor Operator', 'Cumque exercitationem ullam repellat aut. Dolorem doloribus autem doloribus provident. Sunt expedita quisquam dolorem voluptas porro aspernatur architecto. Voluptatem laudantium enim vel reiciendis incidunt.', 'Part time', 'On-site', 'West Viviane', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(548, 'Team Assembler', 'Suscipit ut maxime est sint placeat eum repellat. Voluptatem vel in totam. Aut dolor dolores mollitia ipsam expedita rerum.', 'Full time', 'On-site', 'Port Estevanport', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(549, 'Dentist', 'Ut aut iusto eos doloribus id earum. Enim velit atque suscipit iusto. Sed vitae eos ex animi minima. Minus id atque sit quia.', 'Full time', 'Hybrid', 'Marksfurt', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(550, 'Naval Architects', 'Qui non corporis excepturi quaerat. Numquam et aspernatur ab rerum. Inventore voluptates quia eum libero aut sed autem.', 'Full time', 'On-site', 'North Caroline', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(551, 'Loan Officer', 'Consequuntur consequuntur in voluptatum voluptas qui. Repudiandae consequuntur autem tempora impedit pariatur quam. Autem est illo quod nulla recusandae suscipit atque. Cupiditate expedita fugiat veniam in quaerat nihil nam.', 'Part time', 'Hybrid', 'Lomaborough', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(552, 'First-Line Supervisor-Manager of Landscaping, Lawn Service, and Groundskeeping Worker', 'Similique labore quidem voluptatem placeat. Est ad consequatur quia. Atque asperiores laborum optio itaque accusantium quibusdam. Nam mollitia sed voluptates vel dolor numquam.', 'Part time', 'On-site', 'Devanstad', '2024-07-31 22:00:00', '2024-07-31 22:00:00');
INSERT INTO `jobs` (`id`, `title`, `description`, `type`, `work_mode`, `location`, `created_at`, `updated_at`) VALUES
(553, 'Food Servers', 'Consequatur quidem accusantium eos repellat. Saepe cupiditate soluta sit atque rem sit qui cumque.', 'Part time', 'Hybrid', 'Port Stephen', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(554, 'Rail Yard Engineer', 'Nam est rerum quas nihil. Molestiae quaerat repellendus porro modi nihil consequatur est blanditiis. Esse voluptatem ipsa aut maxime itaque. Illo maiores error rem asperiores dolore.', 'Full time', 'Hybrid', 'New Gudrun', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(555, 'Electric Motor Repairer', 'Dolorem voluptate deserunt qui odit laboriosam illum quis optio. Consequatur voluptas eius autem totam labore quos. Deserunt odit qui enim sit recusandae hic facilis.', 'Part time', 'On-site', 'New Jessica', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(556, 'Marketing Manager', 'Rerum id rerum sit. Ut quam voluptate ipsam repellendus dolorem occaecati. Quod nam ab quia ut praesentium quibusdam.', 'Part time', 'On-site', 'Jetttown', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(557, 'Power Generating Plant Operator', 'Iste quia commodi accusantium itaque veritatis facere. Quaerat ullam sed quidem quis consequatur. Et ipsam ipsa quae eum a voluptas. Voluptatem placeat porro molestiae nemo consequatur.', 'Full time', 'On-site', 'New Tess', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(558, 'Environmental Compliance Inspector', 'Quia in ipsa quis ut accusantium sit. Ratione minima omnis sit. Et excepturi sed optio soluta rerum blanditiis.', 'Part time', 'On-site', 'Catalinamouth', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(559, 'Correctional Officer', 'Repudiandae omnis quae dolorem et aperiam nemo et ad. Ut aspernatur qui dicta rem aspernatur eius. Dolor molestiae ea illum possimus. Sit laudantium in omnis ex sapiente.', 'Part time', 'On-site', 'Port Camryn', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(560, 'Ophthalmic Laboratory Technician', 'At quis dolorum aut alias. Alias id reiciendis doloribus. Aut voluptas suscipit velit asperiores sed hic molestiae. Ipsam exercitationem dolorem vero ab atque dolores optio blanditiis. Rerum cumque quia illo nobis vel eius.', 'Full time', 'Hybrid', 'Corwinbury', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(561, 'Reservation Agent OR Transportation Ticket Agent', 'Impedit non reprehenderit veniam praesentium quo. Incidunt dolor quae et non. Dolores unde amet ipsam quo iste accusantium et. Beatae molestiae eius deleniti et aut ut. Nostrum ut ipsa vel dignissimos sapiente voluptatem.', 'Full time', 'Hybrid', 'Elmorechester', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(562, 'Film Laboratory Technician', 'Non cum distinctio adipisci ut. Sequi ut quo sed ut enim. Et fugiat odio sit nihil deleniti. Dolore modi voluptas nostrum ea.', 'Full time', 'On-site', 'New Nova', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(563, 'Network Systems Analyst', 'Occaecati consectetur repellat dolorem nesciunt adipisci totam veritatis. Rerum voluptate sed ratione omnis. Est et quia deserunt error sed ad.', 'Full time', 'On-site', 'West Wilmashire', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(564, 'Infantry Officer', 'Repudiandae repellendus enim commodi saepe repellendus ipsam sint repellat. Quam eos facere fugiat et itaque amet eum. Perspiciatis commodi dolorem unde eveniet ab molestiae illum.', 'Part time', 'On-site', 'Geovannyshire', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(565, 'Board Of Directors', 'Voluptates sint voluptates sunt numquam. Error aliquid necessitatibus voluptates corporis sequi. Nisi aut veniam saepe assumenda. Praesentium voluptatem nostrum ea in at itaque.', 'Full time', 'Hybrid', 'Donfort', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(566, 'Head Nurse', 'Ipsam fuga iure amet minus officiis. Qui totam et dolor eligendi. Ut quia et fuga amet vero. Soluta et quo dolores qui. Laborum consectetur ut molestiae ipsum.', 'Full time', 'Hybrid', 'East Annabel', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(567, 'Pantograph Engraver', 'Et quia doloremque ut ab. Omnis repellendus eaque error vitae. Ut omnis vitae ratione vero. Sit animi quas adipisci exercitationem et soluta eum.', 'Full time', 'On-site', 'Volkmanbury', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(568, 'Manager of Air Crew', 'Dolores molestias cumque et. Quis laudantium possimus accusamus autem sint alias voluptatem est. Iusto dolores aut magnam sit non eum sequi velit. Nihil repudiandae consequuntur quo sit est.', 'Part time', 'Hybrid', 'Lake Alicia', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(569, 'Transportation and Material-Moving', 'Voluptatem aperiam omnis ipsum. Minima alias possimus odit sit quas.', 'Part time', 'Hybrid', 'Osinskiburgh', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(570, 'Anthropologist OR Archeologist', 'Ut doloribus maiores deserunt inventore voluptatem amet dolores. Et omnis reiciendis qui aut excepturi maxime sunt. Ducimus cumque eveniet dicta nesciunt voluptate ipsa et ut. Sed fugit qui repellendus quo quisquam natus. Quas saepe nulla dolor adipisci quibusdam doloribus reiciendis.', 'Full time', 'On-site', 'Lelafurt', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(571, 'Music Arranger and Orchestrator', 'Ea veritatis voluptatem quae et. Libero voluptas aspernatur veritatis totam vel quidem maiores.', 'Part time', 'Hybrid', 'Kendrafort', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(572, 'Occupational Health Safety Technician', 'Et id iste quis. Ducimus aut corrupti quia et velit cupiditate ipsum. Dicta ratione voluptate ut deleniti mollitia est neque.', 'Part time', 'Hybrid', 'Berenicebury', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(573, 'Landscaping', 'Asperiores quas ut unde est veritatis. Culpa mollitia deleniti quia qui voluptatibus. Et iusto est iste quis.', 'Part time', 'Hybrid', 'Ednamouth', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(574, 'Forest Fire Inspector', 'Similique cumque minus illum quo sit. Aliquid a quas accusantium ut qui sed. Eveniet earum cumque ea veritatis fuga voluptate numquam. Saepe officiis ipsa in porro nobis doloribus tempora. Enim ratione doloremque dignissimos esse est perferendis blanditiis doloribus.', 'Full time', 'On-site', 'Stephenstad', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(575, 'Electronic Engineering Technician', 'Aperiam aperiam ea consequuntur enim mollitia beatae nihil. Molestias voluptatibus quas repudiandae hic magnam sed. Architecto hic ut aut voluptatum corrupti hic rerum.', 'Part time', 'Hybrid', 'Weimannmouth', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(576, 'Aircraft Mechanics OR Aircraft Service Technician', 'Perferendis natus error temporibus natus omnis minima omnis. Dolor accusantium corrupti ea pariatur repellendus est est. Odio odio consequatur hic autem aliquam molestiae eligendi. Corporis eum reiciendis vel ut et reprehenderit similique.', 'Full time', 'Hybrid', 'Julesview', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(577, 'Transportation Inspector', 'Voluptatem aut doloremque commodi sequi vero ullam mollitia. Debitis ab et non ducimus soluta tempore. Rem recusandae soluta corrupti.', 'Part time', 'On-site', 'Paxtonborough', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(578, 'Radiologic Technologist', 'Numquam in aut quo incidunt unde ea. Voluptatem sunt asperiores voluptatem aut repellendus tenetur sit. Voluptatibus beatae et voluptas aperiam ducimus. Et tempora molestiae est.', 'Part time', 'Hybrid', 'West Dwighttown', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(579, 'Homeland Security', 'Eaque repellendus est et dolore modi. Dolores in dolor quo ea sunt numquam expedita tenetur. Vitae illo et iusto necessitatibus aut ut voluptatem. Sint inventore ut recusandae sed dolorem.', 'Part time', 'On-site', 'Vivienneville', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(580, 'Library Assistant', 'Quia et similique in quo dignissimos eius. Qui sit itaque odio.', 'Part time', 'On-site', 'East Kara', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(581, 'Product Specialist', 'Modi voluptatum aut fugiat labore voluptates et qui. Repellendus voluptatem itaque vitae cupiditate neque ut. Enim in nisi corporis aliquid. Quam ut ut ea illum aut aut.', 'Part time', 'Hybrid', 'Port Apriltown', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(582, 'State', 'In et consequatur aut aut accusantium. Ipsa nesciunt enim ipsam. Officiis aspernatur aliquam dolores possimus tempore.', 'Part time', 'Hybrid', 'Port Jacinthehaven', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(583, 'Locomotive Engineer', 'Ea est laudantium rerum quis saepe a atque. Dolor dicta repellendus aut id aut perspiciatis ut. Sapiente dicta esse omnis recusandae quis cumque.', 'Full time', 'Hybrid', 'West Xavier', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(584, 'Tax Examiner', 'Quae delectus provident assumenda earum ullam voluptatum consequatur. Ut aut nam quod et. Sed dolore in odio repellat sapiente. Voluptatibus nemo voluptatibus placeat ea.', 'Part time', 'Hybrid', 'Blickside', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(585, 'Conservation Scientist', 'Assumenda et ut exercitationem ex commodi voluptatem. Officiis dolorem dolorum expedita omnis dicta in dolor. Ipsum facere ipsa sapiente beatae aut ipsum. Deserunt consectetur quia eos reprehenderit animi.', 'Full time', 'Hybrid', 'Cristobalbury', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(586, 'Segmental Paver', 'Omnis eveniet in similique incidunt. Corrupti et rerum quia voluptatibus ut impedit aspernatur. Molestiae veniam sed distinctio debitis ipsa repudiandae. Voluptas dolor enim nobis nihil velit.', 'Part time', 'Hybrid', 'North Ursula', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(587, 'Electrical Power-Line Installer', 'Nemo quia rem libero praesentium inventore inventore sapiente. Aut repellendus beatae asperiores aut illum omnis. Assumenda nihil laboriosam nobis et autem rerum. Dolore sed atque dolorem sit.', 'Full time', 'On-site', 'Port Katherine', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(588, 'Concierge', 'Id officia doloremque soluta voluptatem. Est sequi fugiat fugit repellendus voluptas atque. Quaerat nostrum delectus velit.', 'Full time', 'Hybrid', 'Lake Wayne', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(589, 'Housekeeping Supervisor', 'Reiciendis aut nesciunt et. Ut quos consequatur debitis alias sed velit. Laudantium illo ipsam cum blanditiis tenetur sunt sint tenetur.', 'Part time', 'On-site', 'North Billymouth', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(590, 'Credit Checker', 'Voluptatem deleniti provident maxime autem facere soluta in. Commodi at maxime saepe laborum repudiandae autem veniam. Qui labore repudiandae quaerat iure.', 'Full time', 'Hybrid', 'Dejahberg', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(591, 'Professional Photographer', 'Fuga quo dolorum debitis dolores autem dolorem quia. Iste non necessitatibus blanditiis facilis praesentium minus quia.', 'Full time', 'Hybrid', 'Kaelynview', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(592, 'Funeral Director', 'Cum recusandae fuga unde et maiores. Iusto esse earum in voluptatum cum. Nihil ratione provident dolorum maxime eveniet. Ad reiciendis quia eveniet rem omnis quia voluptatem.', 'Part time', 'On-site', 'Jonesside', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(593, 'Environmental Engineer', 'Nesciunt reprehenderit quidem corporis rerum quidem et et. Cupiditate fuga qui nam dolores est esse. Ut quis doloribus dolore ducimus non. Accusamus quo sit dolores earum facilis.', 'Full time', 'Hybrid', 'Lake Candidoville', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(594, 'Nonfarm Animal Caretaker', 'Qui tempore magni sit facilis reprehenderit. Debitis dolor deserunt et occaecati ut consequuntur. Ex saepe earum quia distinctio accusantium modi vel.', 'Full time', 'On-site', 'Douglasstad', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(595, 'Bookkeeper', 'Dolor praesentium rem aut blanditiis in. Exercitationem explicabo accusamus eligendi nemo voluptas. Aut harum quidem amet cum autem.', 'Full time', 'Hybrid', 'Lincolnside', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(596, 'Power Generating Plant Operator', 'Aut distinctio quae voluptatem qui deleniti. Sed est unde corporis non excepturi dolorem impedit. Ea sunt labore sit. Dolorum asperiores et eos.', 'Part time', 'Hybrid', 'West Chadd', '2024-07-31 22:00:00', '2024-07-31 22:00:00'),
(597, 'Mold Maker', 'Id veritatis sed non voluptas consequatur est. Consequatur laboriosam molestiae consectetur iste.', 'Part time', 'On-site', 'Ferryside', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(598, 'Cashier', 'Consectetur deserunt minus qui sit voluptate unde. Commodi et sint eius perferendis quo doloribus voluptates cumque. Et eum magni nulla beatae et distinctio qui. Est nesciunt repellat quidem nihil voluptas velit. Illum error nemo cupiditate dignissimos repellat.', 'Full time', 'Hybrid', 'Lake Dinoside', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(599, 'Director Of Marketing', 'Quia enim quia ex et. Dolores qui possimus eos iusto. Dolor dolores nihil doloremque natus omnis. Dolore repellendus consequatur assumenda vitae ut quia harum sequi. Eligendi odio cupiditate nihil quia eos.', 'Part time', 'Hybrid', 'Lake Fabiola', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(600, 'Podiatrist', 'Minima id voluptas sunt tenetur. Nulla repellat voluptatem excepturi maiores accusamus. Occaecati labore omnis laboriosam adipisci illum occaecati quia.', 'Part time', 'Hybrid', 'Lake Kaden', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(601, 'Casting Machine Set-Up Operator', 'Itaque reiciendis eum explicabo et deserunt maiores quas. Odio rerum iure quo quo et. Sed atque animi facilis cumque repellendus.', 'Full time', 'Hybrid', 'Denesikburgh', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(602, 'Opticians', 'Vero nesciunt quos autem repellendus et quis adipisci iste. Distinctio illo culpa illo cum. Voluptates ut et omnis eaque doloribus. Ut iusto excepturi quasi et.', 'Full time', 'Hybrid', 'Shanytown', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(603, 'Shampooer', 'Sit deleniti nesciunt recusandae. Amet dolor voluptates qui exercitationem quia voluptates. Id quam vel quo ea recusandae.', 'Part time', 'Hybrid', 'North Enriquetown', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(604, 'Anthropology Teacher', 'Et qui quod aut et eos saepe non. Reprehenderit id dolorem sunt nobis deserunt in. Perspiciatis perferendis et numquam. Perspiciatis deleniti placeat pariatur adipisci voluptates perspiciatis.', 'Part time', 'Hybrid', 'Lake Connor', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(605, 'Postal Clerk', 'Molestias occaecati eveniet ut quo sapiente officia sed. Et et id quod rem labore exercitationem. Asperiores architecto id neque possimus vel et voluptate quas.', 'Part time', 'On-site', 'Elliemouth', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(606, 'Judge', 'Voluptatibus rerum veniam impedit nemo aliquam. Laudantium incidunt provident molestiae eaque sit. Enim illo est tempora. Aut repudiandae incidunt modi.', 'Full time', 'On-site', 'Port Joanniefort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(607, 'Hotel Desk Clerk', 'Accusantium culpa iste autem maxime. Modi omnis incidunt quia. Unde aut tempore totam qui illo sunt dolor. Velit tenetur soluta voluptatem molestiae.', 'Full time', 'On-site', 'North Rosemary', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(608, 'Distribution Manager', 'Necessitatibus quis ipsam et iure est est. Ut numquam itaque alias occaecati qui beatae suscipit. Assumenda porro exercitationem et veritatis est. Qui aliquam neque harum quos nostrum.', 'Part time', 'On-site', 'Brielleberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(609, 'Heaters', 'Tempore sed labore laborum. Quasi natus consectetur maiores hic sint quis. Nesciunt incidunt culpa nam neque.', 'Full time', 'Hybrid', 'Catharineberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(610, 'Forest Fire Inspector', 'Nihil libero enim excepturi omnis et voluptatibus. Fugiat eum sed exercitationem ea. Suscipit aperiam itaque possimus maiores temporibus sed. Voluptatem ipsum quia quidem occaecati commodi cumque voluptatibus.', 'Full time', 'Hybrid', 'Madysonfort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(611, 'Geography Teacher', 'At voluptatum saepe molestiae unde adipisci. Ea quia est aut rerum non cupiditate quia porro.', 'Part time', 'Hybrid', 'West Furman', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(612, 'Emergency Medical Technician and Paramedic', 'Sint nam natus voluptatem commodi aliquam qui aut quo. Quia eius voluptatem et ad est. Et pariatur et earum et rerum atque harum.', 'Full time', 'On-site', 'Port Genevieve', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(613, 'Floor Finisher', 'Reiciendis omnis repellat illum nobis consequuntur. Sit aut quibusdam dolore vel. Atque ut aut aut at nisi blanditiis. Et minima laudantium eos dolorem velit dignissimos quae animi.', 'Full time', 'Hybrid', 'North Maeganland', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(614, 'Eligibility Interviewer', 'Sit vel tempora asperiores expedita cum. Quo quos dolore molestiae. Illo voluptatum ut aut velit a.', 'Full time', 'Hybrid', 'Rowechester', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(615, 'Personal Care Worker', 'Blanditiis et dignissimos ipsum voluptatem totam. Ea dolores facilis fugiat mollitia beatae. Quas amet aliquam repudiandae non.', 'Part time', 'Hybrid', 'Nobleberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(616, 'Graphic Designer', 'Molestias dolore vitae dignissimos expedita ratione eum aliquam. Omnis fuga illum magnam id ut. A quo a aperiam quasi. Id quo sit natus. Eligendi architecto et velit dolores.', 'Full time', 'On-site', 'Lake Dorothea', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(617, 'Music Composer', 'Modi velit quam aliquam sit aliquam itaque. Quis aperiam voluptatem officiis minus expedita debitis excepturi.', 'Part time', 'On-site', 'Ginomouth', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(618, 'Furnace Operator', 'Sint asperiores et aut voluptas in. Blanditiis soluta consequatur id facilis hic. Ea voluptatem qui dolorum id odio. Repudiandae facere suscipit rem est fuga.', 'Full time', 'Hybrid', 'West Deltafort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(619, 'Grips', 'Possimus fugiat facilis nihil natus. Nostrum iste aspernatur sed in animi consequuntur dolorem nihil. Id voluptatem fuga est eos qui minus dolores.', 'Full time', 'Hybrid', 'Rustychester', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(620, 'Movers', 'Sunt sint nulla corrupti quod quia eius. Alias rem odit et ducimus necessitatibus. Qui aut quaerat et pariatur ex sit. Asperiores molestiae fuga asperiores architecto.', 'Full time', 'On-site', 'Hyattburgh', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(621, 'Shipping and Receiving Clerk', 'Magni ducimus ut sit natus. Expedita quis autem ipsum voluptas voluptatem voluptas. Dolor quod quis molestiae et est.', 'Full time', 'Hybrid', 'South Keyon', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(622, 'Marriage and Family Therapist', 'Rerum itaque est iusto dolores voluptatum. Eum ad sed distinctio illum voluptas qui qui odio. Quia autem ullam provident ipsum et. Incidunt voluptas quia est vel at repellendus quia.', 'Part time', 'On-site', 'Greenfelderton', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(623, 'Musician OR Singer', 'Id iusto laborum ad cupiditate sint culpa. Nemo assumenda amet aut iste. Laborum modi harum doloremque perferendis.', 'Full time', 'On-site', 'Grantfort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(624, 'Meter Mechanic', 'Animi nihil aut inventore esse sunt et aut. Delectus totam id enim porro veniam saepe culpa. Aut iusto et dolores vel dolores voluptas et. Sunt aut numquam unde sint fuga numquam. Est laborum officia aspernatur ut ipsam.', 'Full time', 'Hybrid', 'Tevinland', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(625, 'Gaming Surveillance Officer', 'Nulla explicabo quidem odio culpa qui eos itaque. Enim quae quia facere. Repellendus libero sed nulla aperiam nihil in aut. Veniam possimus voluptatum eos voluptates est nihil unde autem.', 'Full time', 'Hybrid', 'Schmittport', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(626, 'Web Developer', 'Quos quas aliquid veritatis asperiores accusamus magni sit. Fugiat ipsam repellendus ut minima occaecati. Aut facere ut delectus iure iste dolores non.', 'Part time', 'On-site', 'North Pasquale', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(627, 'Library Technician', 'Sed et inventore quam beatae. Omnis suscipit ipsam quod asperiores quidem enim fugit. Quisquam laudantium non a ut. Vel sint voluptatem possimus aliquid et.', 'Part time', 'Hybrid', 'Schroedermouth', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(628, 'Answering Service', 'Voluptatum magni porro eos ex et perferendis. Consectetur aut et et voluptas. Odio enim ea nulla repellat. Voluptatem et sed sequi occaecati fuga.', 'Part time', 'Hybrid', 'Beahanton', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(629, 'Hazardous Materials Removal Worker', 'Nesciunt rerum fuga labore eligendi aut. Fugiat distinctio at eligendi eos. Velit vitae dolores aut dolorem quasi est. Sed excepturi enim architecto laboriosam.', 'Full time', 'On-site', 'West Garlandfort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(630, 'Self-Enrichment Education Teacher', 'Omnis velit eos corporis ex incidunt cum repellat. Neque vitae at officiis nobis rerum. Sint cumque iste unde aspernatur suscipit quasi.', 'Full time', 'Hybrid', 'Port Jasperville', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(631, 'Veterinary Technician', 'Error sed similique dolor. Aut dolorem voluptate officiis odio labore et corrupti quidem. Doloremque quia quis aspernatur consequuntur. Cupiditate numquam repellat molestiae corrupti harum quibusdam ut.', 'Part time', 'On-site', 'Stammland', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(632, 'Dispatcher', 'Consequuntur quos recusandae quibusdam et sint. Architecto consequatur hic rerum nemo dolorem earum est.', 'Full time', 'Hybrid', 'South Zaria', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(633, 'Service Station Attendant', 'Et totam a aut magnam incidunt eaque tenetur. Pariatur adipisci assumenda nesciunt tempora animi. Corrupti pariatur soluta non voluptas ex corporis voluptas ab. Rerum alias autem dolorem eius nulla distinctio.', 'Full time', 'Hybrid', 'West Magdalen', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(634, 'Concierge', 'Quia consequatur consequatur hic nesciunt enim dolorem molestiae. Sit deleniti quod aut ratione et.', 'Part time', 'On-site', 'Aidenfort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(635, 'Geologist', 'Quibusdam omnis delectus eius praesentium quos est. Aliquid praesentium quasi illum. Sit aut repellendus eos non eius.', 'Part time', 'Hybrid', 'Marvinbury', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(636, 'Statement Clerk', 'Ipsa est et eligendi deleniti. Sed labore dolorem cum ut. Dolor eos ipsum molestiae. Excepturi iste sed molestias qui in minima optio.', 'Full time', 'On-site', 'Funkberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(637, 'Soldering Machine Setter', 'Facilis numquam ut repellendus quae. Placeat delectus eligendi odio in rerum. Et placeat amet non asperiores provident. Ab rerum vel est illo.', 'Part time', 'On-site', 'McDermottborough', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(638, 'Private Sector Executive', 'Voluptatem ullam quos vel amet autem id aspernatur. Labore unde nihil molestias inventore ducimus fugiat. Dolore sapiente quam quibusdam ut illum omnis. Mollitia voluptatem voluptates aut temporibus ex magni ex.', 'Full time', 'On-site', 'New Pearline', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(639, 'Pipe Fitter', 'Excepturi dolores laudantium corrupti. Non sint est nobis et laborum dolore. Quasi modi et iste voluptas occaecati eius quam.', 'Part time', 'Hybrid', 'Krajcikton', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(640, 'Therapist', 'Nobis quos omnis dolor tempora dolores cum consequatur. Aut dolorem sit itaque vel laboriosam hic.', 'Part time', 'Hybrid', 'Lake Jeffchester', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(641, 'Dentist', 'Eos officiis maiores sed quo perspiciatis dicta. Nihil suscipit tenetur aspernatur aliquam ullam. Suscipit culpa sed harum deleniti.', 'Full time', 'Hybrid', 'Ernsermouth', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(642, 'Technical Specialist', 'Deleniti reprehenderit id sit. Quis et voluptatem est quaerat. Exercitationem ad aut est.', 'Part time', 'Hybrid', 'Lake Emelia', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(643, 'Metal Molding Operator', 'Dolor optio numquam quis dolores et corporis. Omnis et saepe dolores exercitationem et. Fuga soluta illo at aliquam. Quibusdam voluptatem deserunt veniam adipisci porro consequatur voluptas.', 'Part time', 'On-site', 'South Ernestine', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(644, 'Production Inspector', 'Recusandae sit vero et nihil itaque assumenda quidem error. Illum nisi delectus atque temporibus. Impedit sequi voluptas ducimus quia et.', 'Part time', 'On-site', 'Hermanport', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(645, 'Civil Engineering Technician', 'Maxime ut est explicabo quia. Id deleniti consectetur harum eligendi nam. Rerum et impedit mollitia asperiores.', 'Full time', 'Hybrid', 'Pedrobury', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(646, 'Transportation and Material-Moving', 'Quo quas qui in soluta nihil accusantium. Ad et quos eaque non. Enim delectus aut animi voluptas ullam dicta quis et. Quia nihil voluptas soluta unde enim a atque.', 'Full time', 'Hybrid', 'Vonfort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(647, 'Anthropology Teacher', 'Itaque qui quaerat corporis velit a animi dolor. Sed molestias voluptatum tenetur sequi qui. Dicta ratione accusamus delectus soluta saepe ullam doloribus. Occaecati laboriosam sed id veniam.', 'Part time', 'Hybrid', 'North Jaquelineborough', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(648, 'Meter Mechanic', 'Blanditiis officiis id odit aperiam quaerat enim quod ut. Sit accusantium voluptas voluptatibus veniam asperiores possimus nobis qui. Repellat est tenetur exercitationem dolores.', 'Full time', 'Hybrid', 'Baileyberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(649, 'Glass Blower', 'Architecto laborum accusantium voluptatem facilis. Quia aspernatur illo repellendus aut. Nisi sed voluptatum veniam qui nostrum distinctio. A nam tenetur at aperiam nihil dolor.', 'Full time', 'Hybrid', 'Murielland', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(650, 'Locksmith', 'Dolorum vel saepe sed necessitatibus. Nesciunt quia et omnis nostrum quod sed sit. Ut maiores sapiente quos vitae modi quo magnam omnis.', 'Full time', 'Hybrid', 'Lake Merle', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(651, 'Offset Lithographic Press Operator', 'Quae officia aut est quas. Sed non a ipsam qui tempora amet. Aut porro asperiores nemo modi sit. Provident laborum libero explicabo veniam architecto.', 'Part time', 'Hybrid', 'Lydastad', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(652, 'Chemical Engineer', 'Quos delectus tenetur placeat aliquid delectus voluptates vero. Magnam atque rerum earum rerum voluptatem occaecati molestiae. Molestiae rerum fugit laudantium maxime consequatur.', 'Part time', 'On-site', 'Port Brady', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(653, 'Public Relations Specialist', 'Ipsa voluptatem suscipit optio tempora. Mollitia excepturi voluptatem libero doloribus.', 'Full time', 'On-site', 'Angeloside', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(654, 'Precision Mold and Pattern Caster', 'Vel ea ipsa quia ut qui laudantium. Qui ut earum adipisci laudantium harum. Et error inventore libero ut ut quos voluptate.', 'Part time', 'On-site', 'Rosannabury', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(655, 'Product Promoter', 'Veniam vel sit eum vero qui aut harum. Est ad repudiandae commodi est temporibus aut sequi ab.', 'Full time', 'Hybrid', 'Courtneyfort', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(656, 'Landscaper', 'Sit repudiandae eveniet enim in culpa. Quo aut a distinctio quisquam nulla molestiae voluptas. Et dolor dolor odio quo deleniti incidunt nisi. Ut commodi maiores quaerat saepe ea.', 'Part time', 'On-site', 'Barrettside', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(657, 'Lawyer', 'Omnis molestiae veniam ea. Nobis ab eum sed sint quia esse. Soluta hic rerum laboriosam voluptas optio dolores. Est est sit ducimus ipsa ratione nam consequatur.', 'Full time', 'Hybrid', 'Gorczanyborough', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(658, 'Aircraft Assembler', 'Quia mollitia ipsam doloremque molestiae nisi. Ut ex sed velit quia quod unde tempore qui. Omnis nulla aliquam quasi animi beatae soluta.', 'Full time', 'On-site', 'Brooklynberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(659, 'Horticultural Worker', 'Consequuntur sequi quia maiores consequatur reiciendis consequatur eveniet quisquam. Inventore dolorum eum facilis.', 'Part time', 'On-site', 'Port Deon', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(660, 'Recyclable Material Collector', 'Rerum officia perspiciatis aspernatur repudiandae. Corrupti corrupti sed et quaerat reiciendis ipsam recusandae. Fugit sapiente distinctio numquam voluptatem distinctio.', 'Part time', 'On-site', 'Shaunhaven', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(661, 'Postmasters', 'Et deleniti doloribus id qui distinctio temporibus corporis. Sit est quod pariatur dolor. Fugiat et rerum fugit molestiae sint non qui distinctio.', 'Part time', 'On-site', 'North Jayne', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(662, 'Opticians', 'Autem eos odio est sunt accusamus velit est. Maxime quae at soluta ut. Maxime maxime exercitationem quia maxime sed. Omnis asperiores expedita veritatis nemo mollitia eligendi.', 'Part time', 'Hybrid', 'North Ashleigh', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(663, 'Heating and Air Conditioning Mechanic', 'Voluptas dolore consequuntur vel aliquam. Omnis magnam assumenda et voluptate quos. Repellendus ut repudiandae vel enim consequatur. Distinctio quidem sint natus rerum rerum sed. Quidem aliquid aut debitis iure aut iure.', 'Part time', 'On-site', 'Millsland', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(664, 'Astronomer', 'Unde rem recusandae earum perferendis dolor beatae soluta impedit. Voluptas veritatis dolores cupiditate deleniti deleniti. Distinctio tempora provident quidem et ullam. Voluptas sed aut quo aut animi rerum. Debitis eum illo aspernatur atque delectus.', 'Part time', 'Hybrid', 'Marcelleton', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(665, 'Manufacturing Sales Representative', 'In accusantium autem porro eaque quibusdam dicta molestiae. Est ipsum repudiandae sed et. Reprehenderit enim quis iste. Nemo error dicta nemo voluptatem.', 'Part time', 'Hybrid', 'North Ara', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(666, 'Business Teacher', 'Voluptas asperiores a vitae et. Quo pariatur commodi maiores. Incidunt deleniti ut distinctio a. Veniam nulla laboriosam ad ratione enim cumque molestias. Quasi qui aut perspiciatis quod debitis.', 'Part time', 'On-site', 'South Gaetanochester', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(667, 'Transportation Manager', 'Est molestias dolorem officia debitis. Voluptatem odit dolorem quidem iure. Eum quis voluptatibus itaque exercitationem quidem.', 'Full time', 'Hybrid', 'Wilkinsonberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(668, 'Grinder OR Polisher', 'Sed hic ut nisi harum repellat. Ea rerum voluptas a id ab natus earum ut. Eveniet consequatur autem harum et magni pariatur.', 'Part time', 'Hybrid', 'Kuvaliston', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(669, 'Electrician', 'Sed qui voluptas distinctio tenetur quis a ut in. Quia impedit quia quasi suscipit sed nulla. Magnam consequatur tenetur temporibus est consectetur. Quibusdam eos aliquam placeat. Ea possimus quod tempora qui blanditiis.', 'Part time', 'Hybrid', 'Sengershire', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(670, 'Food Preparation and Serving Worker', 'Voluptatem eos dolorem minima consequatur eum. Assumenda quam ut consequuntur quia iusto dolor nemo. Quia ut velit autem adipisci in.', 'Part time', 'Hybrid', 'Quentinview', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(671, 'Real Estate Sales Agent', 'Quis id quam cupiditate repellendus. Odio mollitia reiciendis esse ab ut quia quia est. Quam animi natus temporibus ipsa. Corporis sed ipsum dolorum qui.', 'Part time', 'On-site', 'Port Sven', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(672, 'Education Teacher', 'Corrupti iusto quo molestiae temporibus. Corporis perspiciatis deserunt quasi hic. Reiciendis placeat dignissimos et sed consequatur et aperiam ut. Hic quod exercitationem temporibus sed ut quaerat et.', 'Part time', 'On-site', 'Medhurstburgh', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(673, 'Bill and Account Collector', 'Qui quia porro atque enim. Quod impedit tempora consectetur saepe atque et. Ducimus ipsum et esse quo.', 'Full time', 'On-site', 'Eltonhaven', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(674, 'Postal Clerk', 'Eaque quidem libero suscipit sit molestiae ut. Et qui dolore nesciunt. Est nulla nesciunt dolores voluptatem ut culpa. Ducimus ad totam aliquid dolores non quibusdam. Iusto labore earum dignissimos.', 'Part time', 'On-site', 'Roweburgh', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(675, 'Web Developer', 'Consectetur iure placeat laboriosam perferendis eos voluptatum itaque. Magni qui inventore consequuntur et rerum. Quia sed in similique non. Et sit eveniet doloremque eos quia iusto modi.', 'Part time', 'On-site', 'West Lacey', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(676, 'Software Engineer', 'Est optio et vero sit. Consequatur porro provident voluptatem provident. In et aut ullam perspiciatis vel repellat voluptatem. Saepe suscipit molestiae possimus sequi quaerat quia adipisci.', 'Part time', 'On-site', 'Mackberg', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(677, 'Welder and Cutter', 'Adipisci accusamus aspernatur laborum dolores. Numquam vel repellat dignissimos ducimus eum maxime ut.', 'Part time', 'Hybrid', 'Halvorsonborough', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(678, 'Tile Setter OR Marble Setter', 'Quaerat quo repellendus inventore reiciendis. Quas iste excepturi eos praesentium. Qui rerum incidunt cupiditate. Corporis eaque optio sed accusamus aut.', 'Part time', 'On-site', 'Cartwrightchester', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(679, 'Surveyor', 'Soluta labore perferendis hic iusto sed. Quis ab illo nobis. Dignissimos doloremque maxime voluptates repudiandae fuga.', 'Full time', 'On-site', 'New Brock', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(680, 'Electrotyper', 'Sapiente ab cumque recusandae voluptates assumenda dignissimos. Dignissimos laboriosam et sit fuga. Explicabo eum neque rerum aperiam quia labore. Suscipit explicabo est architecto incidunt eaque maiores perspiciatis. Et est minima officiis eum quisquam iste.', 'Part time', 'On-site', 'Luisport', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(681, 'Producer', 'Iste omnis velit sed rerum est numquam laborum. Est quibusdam qui et aut rerum. Aspernatur repellendus laudantium qui cupiditate sit. Pariatur a et voluptate dolorem aut eius eaque.', 'Part time', 'On-site', 'Vivienstad', '2024-08-31 22:00:00', '2024-08-31 22:00:00'),
(682, 'Library Science Teacher', 'Et non dolorem sed accusamus amet soluta at pariatur. Animi reprehenderit voluptates dolor qui sit praesentium. Amet magnam doloribus ipsum cum voluptate.', 'Part time', 'On-site', 'West Vernahaven', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(683, 'Precision Aircraft Systems Assemblers', 'Non commodi omnis tenetur nam similique harum. Nam repellendus corporis quaerat magni necessitatibus ut. Nisi deserunt similique similique iste accusamus eaque. Omnis eligendi adipisci iste.', 'Part time', 'On-site', 'O\'Connellmouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(684, 'Pharmacist', 'Ipsam nisi consectetur mollitia quod atque non. Veritatis blanditiis et quos optio. Dolore quod inventore voluptatem amet. Cupiditate et libero est necessitatibus ut.', 'Part time', 'Hybrid', 'Lexiland', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(685, 'Vocational Education Teacher', 'Et veniam sit exercitationem sed et libero quis quidem. Beatae totam reprehenderit ratione quos consequatur molestiae.', 'Part time', 'Hybrid', 'Lake Gay', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(686, 'Command Control Center Specialist', 'Aliquid ad officia quidem explicabo. Consequuntur voluptatem nobis voluptatem dolor ratione saepe aperiam. Voluptatem aut est quia occaecati quis aliquam.', 'Part time', 'On-site', 'Lowestad', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(687, 'Short Order Cook', 'Recusandae non sint sit veritatis autem. Qui voluptatem aut et molestiae quia non. Quo explicabo ducimus omnis minus est suscipit.', 'Full time', 'Hybrid', 'Lavinastad', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(688, 'Stonemason', 'Fugiat quia nam repudiandae sit suscipit facilis modi. Fuga tempore alias dolorum esse dolore ad.', 'Full time', 'Hybrid', 'Millertown', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(689, 'Correspondence Clerk', 'Qui quo non a magni tempore. Aspernatur et sit vel aut dolor qui et. Est aut non architecto earum officiis veniam. Iste voluptas fuga enim est accusantium.', 'Full time', 'On-site', 'Lake Codyton', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(690, 'Commercial Pilot', 'Aut autem accusamus modi. Sunt sint rem non quos voluptatem. Odit aut at quia aut repudiandae. Ut in in totam enim. Dolor tenetur qui magnam odit quidem doloremque.', 'Full time', 'On-site', 'Port Rodolfomouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(691, 'Marine Architect', 'Eligendi libero ipsa aut qui doloribus. Ipsam quia sit voluptates adipisci rerum ullam aut. Tempore est repudiandae maxime suscipit. Aut ullam iure reprehenderit eos sed.', 'Part time', 'On-site', 'South Vidashire', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(692, 'Pressure Vessel Inspector', 'Error fuga culpa nisi qui aut. Fugit aperiam dignissimos recusandae nam et. Eum unde sed animi vel reiciendis minus tempore.', 'Part time', 'Hybrid', 'Huelsport', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(693, 'Security Systems Installer OR Fire Alarm Systems Installer', 'Perferendis voluptates dicta optio vel quaerat. Voluptatem omnis est assumenda perspiciatis sunt a. Maiores est numquam est corporis perferendis dolore voluptatem fuga. A quasi molestiae neque magnam cupiditate molestiae excepturi. Quos in voluptatem quis saepe perferendis velit.', 'Part time', 'Hybrid', 'South Wilfrid', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(694, 'Welder', 'Et facere quae nesciunt iure amet. Similique ea alias eligendi aspernatur cum consequuntur. Neque sapiente consectetur repellat facilis deserunt neque maxime.', 'Full time', 'On-site', 'Elnaport', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(695, 'Private Detective and Investigator', 'Labore omnis et unde. Eum tempora ratione consequatur reiciendis. Totam quis maxime distinctio ut repudiandae repellendus dolores. Vitae quos aliquid quibusdam odio laudantium eos mollitia. Dolores libero est ex perferendis id ut provident.', 'Part time', 'Hybrid', 'East Madalinechester', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(696, 'Adjustment Clerk', 'Laborum sit debitis voluptatibus qui placeat. Nulla sint autem et. Dignissimos cupiditate sapiente fugiat voluptatem.', 'Full time', 'Hybrid', 'New Hanna', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(697, 'Landscape Architect', 'Est facilis placeat et non. Similique sit modi dolor quia accusamus. Est voluptas aliquam quae excepturi occaecati voluptatem ut. Dolor animi tempora voluptas doloribus voluptate. Et et quia eum sunt velit possimus incidunt.', 'Part time', 'Hybrid', 'Luellamouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(698, 'Postsecondary Education Administrators', 'Fugit delectus error aspernatur qui est voluptatem neque. Consectetur eum ducimus asperiores harum modi sit. Ex consequatur laboriosam non eos temporibus.', 'Part time', 'Hybrid', 'South Isidroside', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(699, 'Recyclable Material Collector', 'Est placeat quasi magni dolor quia. Inventore saepe culpa voluptas quam. Ut magnam illo debitis rerum maiores. Nobis iusto non vitae autem in officiis.', 'Part time', 'Hybrid', 'East Ernestina', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(700, 'Chemical Equipment Tender', 'Et necessitatibus omnis et qui unde consectetur. Quo iste nam id omnis. Minima temporibus quia ut debitis.', 'Full time', 'Hybrid', 'Kassulkehaven', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(701, 'Poet OR Lyricist', 'Aut quam quis architecto. Quaerat distinctio odit esse blanditiis exercitationem.', 'Part time', 'Hybrid', 'Port Mckenzieshire', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(702, 'Homeland Security', 'Quo vero omnis adipisci. Illo eum culpa enim laboriosam. Ex ipsum ut non nobis sunt qui. Nihil officia quo incidunt sed omnis minus.', 'Part time', 'On-site', 'Libbieport', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(703, 'Home Health Aide', 'Numquam deserunt qui iste eum. Dolores inventore animi quibusdam iure et. Eum velit dolorem delectus omnis nulla nobis. Explicabo ut dolor id iusto debitis libero harum quia.', 'Full time', 'Hybrid', 'Port Rubenton', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(704, 'Glass Blower', 'Doloribus tenetur doloribus soluta sequi iste ut. Doloremque nemo dicta et exercitationem sit qui. Molestiae id eius earum aut quas sed aut.', 'Full time', 'On-site', 'West Jeff', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(705, 'Commercial Pilot', 'Esse culpa tempore et voluptas fugiat quo. Ut beatae enim architecto nemo et doloremque eligendi. Aut velit aut tempora nihil. Dolores id hic temporibus.', 'Part time', 'Hybrid', 'Michelleville', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(706, 'Product Specialist', 'Quis corrupti aliquid architecto. Et ut voluptates et facere vitae a cumque. Tempore illum quidem ad. Ipsam expedita consequatur nihil illum necessitatibus ratione.', 'Full time', 'On-site', 'East Mavis', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(707, 'Credit Authorizer', 'Molestiae earum animi vitae dolore id sed iste. Eum facilis rerum quam possimus quisquam quo.', 'Full time', 'Hybrid', 'New Maximoside', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(708, 'Transportation Manager', 'Et quae quia et quas dolorem inventore. Similique sapiente quia eum commodi. Ut nihil et natus asperiores molestias molestiae.', 'Full time', 'On-site', 'North Damienburgh', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(709, 'Receptionist and Information Clerk', 'Quam eos iure perferendis quidem dolorum. Non aut eum deserunt facilis rerum. Officiis omnis est eaque et.', 'Full time', 'Hybrid', 'North Kavonburgh', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(710, 'Vice President Of Human Resources', 'Animi voluptatem quis rerum ea amet asperiores. Suscipit quaerat praesentium quos eos aut dolorem ullam. Voluptatibus dignissimos sequi quos debitis earum. Cupiditate veniam id cumque dolor ut.', 'Part time', 'On-site', 'Lake Joanie', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(711, 'Oil Service Unit Operator', 'Magnam qui nihil rerum. Voluptatem provident similique qui accusantium accusamus temporibus recusandae.', 'Part time', 'Hybrid', 'Lake Dianabury', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(712, 'Answering Service', 'Dolores dolore saepe qui vero ad qui. Quo quos odit in iusto. Ab ut et porro tempora aut dicta.', 'Full time', 'On-site', 'Hellerfort', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(713, 'Database Administrator', 'Quod qui quibusdam quia nihil amet dolor a. Voluptatem assumenda sed distinctio consequatur. Voluptate quam repellendus mollitia autem facilis.', 'Part time', 'Hybrid', 'South Leta', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(714, 'Command Control Center Officer', 'Distinctio doloribus est tenetur molestiae voluptas. Excepturi distinctio temporibus ea sed tempore et aspernatur. Beatae sequi eligendi est officiis voluptas non aliquam nam. Quasi amet a culpa corporis.', 'Part time', 'Hybrid', 'Deloresshire', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(715, 'Budget Analyst', 'Voluptas quis impedit natus aspernatur explicabo ratione dolor reiciendis. Eius fugiat vel in minima praesentium. Et ex quibusdam ratione hic rerum nihil. Expedita illo nisi dolore odio consequuntur.', 'Part time', 'On-site', 'North Stefanbury', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(716, 'Engineering Teacher', 'Facere quo voluptatem reprehenderit quae. Vel et quae dolorem sint similique. Dolores voluptatem et deleniti suscipit dolorem eaque amet. Atque sint sint omnis.', 'Part time', 'Hybrid', 'Ricestad', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(717, 'Audio-Visual Collections Specialist', 'Voluptatem et cupiditate sint nam doloremque corrupti dolores. Veritatis magni et excepturi. Incidunt sed incidunt ipsam dolorum.', 'Full time', 'Hybrid', 'Padbergburgh', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(718, 'Umpire and Referee', 'Perferendis saepe aspernatur nemo amet aut vel eveniet. Nisi magnam non maxime aut non temporibus maiores sed. Quos dolorum est vel in soluta. Sint atque dolores delectus autem esse.', 'Full time', 'On-site', 'North Katlynnborough', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(719, 'Creative Writer', 'Quas quia ad consectetur dolorum esse provident in. Ipsam in sit beatae dolorum nihil. Dolorem est ut ut repellat labore unde et.', 'Full time', 'Hybrid', 'New Zena', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(720, 'Stone Sawyer', 'Distinctio dolores porro occaecati. Rem veritatis est non corrupti iste iure. Possimus sed sint veniam nobis vel et. Ut sit sed est corrupti hic dolorem est.', 'Part time', 'On-site', 'Port Gavinfurt', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(721, 'Pile-Driver Operator', 'Autem qui error odio ea et quaerat cumque. Eum esse aliquam quia dolor. Impedit velit debitis numquam dignissimos laudantium. Omnis distinctio odit dolores esse voluptatem facilis.', 'Full time', 'On-site', 'Gradyland', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(722, 'User Experience Researcher', 'Molestias aut quia cupiditate veniam et quaerat. Nostrum vero laudantium non nam non recusandae praesentium explicabo. Consequatur illum et repudiandae deleniti sed facere.', 'Full time', 'Hybrid', 'Mathewbury', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(723, 'Credit Checker', 'Impedit ipsum fuga voluptatem fugit sint at ut. Necessitatibus facere cum expedita voluptatibus atque ipsa mollitia. Cupiditate rem qui voluptatem laboriosam placeat. Pariatur error dolores quas cum.', 'Part time', 'Hybrid', 'Mallorychester', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(724, 'Corporate Trainer', 'Ratione recusandae magni incidunt enim aut. Fugiat maiores voluptatum dolorem. Perspiciatis aut nisi velit accusantium cupiditate. Occaecati aut nisi odit et. Corporis natus nihil velit alias quae architecto cupiditate.', 'Part time', 'Hybrid', 'East Rita', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(725, 'Waitress', 'Dicta sed sint rerum quo quod quis. Dolorum corrupti dignissimos minima et ducimus ratione molestiae. Minus provident qui aut earum omnis eaque.', 'Full time', 'Hybrid', 'Lake Amir', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(726, 'Welfare Eligibility Clerk', 'Aut provident totam adipisci. Voluptatem omnis aut laborum. Est aliquam consectetur facilis ratione expedita rerum.', 'Part time', 'Hybrid', 'West Eleanoreland', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(727, 'Postal Service Mail Carrier', 'Rerum nihil sed amet amet. Inventore in cupiditate possimus dolorum sed corporis. Perferendis aspernatur provident magnam et in rerum sequi ut. Error blanditiis natus corporis id eveniet sunt.', 'Full time', 'On-site', 'Rexfort', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(728, 'Human Resource Director', 'Debitis nobis rerum quo itaque earum rem. Dolores laborum aut aut velit. Eius ex ducimus eaque ea assumenda nihil. Earum et autem voluptatem culpa.', 'Part time', 'On-site', 'Guschester', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(729, 'Earth Driller', 'Nihil et dolorem ea. Voluptatem sed quo perspiciatis consequatur autem ipsa accusantium. Magnam voluptas est architecto harum possimus. Veniam suscipit cumque eos beatae corporis reprehenderit neque.', 'Part time', 'On-site', 'Larkinhaven', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(730, 'Vice President Of Human Resources', 'Ad deleniti sint eum dolores doloribus laboriosam. Facilis cumque nostrum sint tempore deserunt veritatis. Et voluptas ea beatae sed facilis.', 'Part time', 'Hybrid', 'West Emmettmouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(731, 'Mail Clerk', 'Sunt voluptatem ut exercitationem quasi. Omnis suscipit pariatur quod vero voluptatem. Ea quis nobis recusandae impedit vel aut ut itaque.', 'Full time', 'On-site', 'Luettgenfort', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(732, 'Criminal Investigator', 'Magnam numquam ut quo blanditiis fugit voluptas exercitationem. Illum et dolores molestiae. Dolores quo dignissimos aut rem dolor voluptatum et. Non maxime voluptatem non voluptas porro.', 'Full time', 'On-site', 'Skilesfort', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(733, 'Welder-Fitter', 'Sapiente est explicabo sed pariatur aut quaerat. Officia impedit eveniet fugiat sed rerum voluptatem voluptatem dignissimos. Blanditiis perferendis totam vel delectus quod fuga commodi. Eius qui eum sunt reiciendis necessitatibus sed ab.', 'Full time', 'On-site', 'Port Babyhaven', '2024-09-30 22:00:00', '2024-09-30 22:00:00');
INSERT INTO `jobs` (`id`, `title`, `description`, `type`, `work_mode`, `location`, `created_at`, `updated_at`) VALUES
(734, 'Talent Acquisition Manager', 'Commodi laudantium quis officiis suscipit ex sunt. Maiores rerum voluptates iste assumenda. Totam omnis unde nam sit rerum.', 'Full time', 'Hybrid', 'Rippinport', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(735, 'Community Service Manager', 'Velit quidem tempora reprehenderit aut ut eos. Illo omnis iusto et suscipit tempora. Quasi eum iure officia.', 'Full time', 'Hybrid', 'Simonismouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(736, 'Courier', 'Quasi laborum nesciunt iusto dolorum assumenda consequatur natus. Aliquid sed qui et repellat omnis. Non fugiat quos cumque. Rerum sit facilis neque voluptatem quisquam odit autem.', 'Full time', 'On-site', 'West Amos', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(737, 'Gas Pumping Station Operator', 'Est voluptas veniam amet possimus. Voluptatum in adipisci asperiores illum voluptatibus vel eligendi repellendus. Exercitationem soluta quaerat tempora voluptas.', 'Part time', 'Hybrid', 'Port Robert', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(738, 'Atmospheric and Space Scientist', 'Laudantium sit in dolor et quasi velit est. Maxime nihil voluptate recusandae quia autem. Accusantium rem temporibus nesciunt sunt facilis quo itaque. Non voluptatum accusamus qui dicta doloribus.', 'Full time', 'On-site', 'Hellerview', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(739, 'Electrical Engineering Technician', 'Dicta nisi corrupti laudantium. Ad eum ullam blanditiis. Quidem cum dolorum aliquam dolores ipsum voluptas assumenda.', 'Full time', 'On-site', 'Willyhaven', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(740, 'Bindery Machine Operator', 'Eos quasi porro dolor ullam non provident eveniet. Natus qui magnam tempora iure molestiae delectus ducimus.', 'Part time', 'On-site', 'Norrisport', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(741, 'Payroll Clerk', 'Quam quo sed sit qui. Et culpa modi vel iste distinctio fugit perferendis eius. Ipsa quia unde exercitationem quis expedita impedit quaerat.', 'Part time', 'Hybrid', 'Ameliaberg', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(742, 'Substation Maintenance', 'Saepe est nam ipsum quod officia. Et facere repellat laborum ut exercitationem autem magnam. Ab ex pariatur hic.', 'Full time', 'On-site', 'Uptonchester', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(743, 'Anthropologist', 'Nisi quasi adipisci distinctio facere. Nam enim molestiae molestias tempore sit. Atque vitae ut voluptas inventore sit optio. Fugiat omnis est consequatur aut.', 'Full time', 'On-site', 'Rueckerport', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(744, 'Hand Presser', 'Quasi et doloribus non quae. Qui tenetur totam facere qui. Et rem accusamus quae tempore laborum officia dolores.', 'Part time', 'On-site', 'Maggiotown', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(745, 'Emergency Management Specialist', 'Qui aliquid sit id ipsum. Illum provident tempore quas iure. Saepe voluptatem rerum amet ut ut sed. Est molestias et error corrupti ipsam.', 'Full time', 'Hybrid', 'Johannamouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(746, 'Crushing Grinding Machine Operator', 'Molestiae qui non accusamus eius quis iure neque. Accusantium animi eum quaerat atque. Cupiditate magnam error officia et.', 'Part time', 'Hybrid', 'Antonioburgh', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(747, 'Real Estate Association Manager', 'Omnis sint fugiat amet fuga velit blanditiis atque. Odio laboriosam neque amet autem rerum voluptatem provident. Placeat harum velit tempora laborum sit. In voluptas et perspiciatis tempora nam sit iste.', 'Full time', 'Hybrid', 'Viviennechester', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(748, 'Bench Jeweler', 'Perferendis perspiciatis numquam aut adipisci. Dignissimos reiciendis odit provident sed sunt voluptatem nisi ducimus. Sit laudantium voluptas eos.', 'Part time', 'On-site', 'East Kurtstad', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(749, 'Ophthalmic Laboratory Technician', 'Tempore non modi enim dolores quia amet. Molestias qui aut sapiente molestiae nam ea qui.', 'Full time', 'Hybrid', 'Russelstad', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(750, 'Postal Service Mail Carrier', 'Nobis quibusdam id qui. Et tempora commodi sed maiores porro voluptatem sapiente.', 'Part time', 'On-site', 'Port Fayfurt', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(751, 'Annealing Machine Operator', 'Hic autem consequuntur quis sit. Qui qui inventore qui sed voluptas. Sit doloribus ab ex necessitatibus aliquam.', 'Full time', 'On-site', 'South Shaniyahaven', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(752, 'Clinical Psychologist', 'Repellat eligendi minus vitae occaecati sint et. Voluptatem iure officiis consectetur aliquid sit provident. Dolorum facilis voluptates distinctio quod quia repellendus dolor.', 'Full time', 'Hybrid', 'East Dino', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(753, 'Agricultural Engineer', 'Aut tenetur culpa et maxime aut voluptates. Quaerat omnis voluptatibus ipsam qui voluptatem esse non. Id et et molestias culpa et.', 'Part time', 'Hybrid', 'Ondrickastad', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(754, 'Spraying Machine Operator', 'Aut ut odit eveniet blanditiis. Eos debitis excepturi corporis impedit omnis. Nihil quis sed illo vitae. Et sint illum rerum quos dolorem. Aspernatur impedit eius quis adipisci officia libero praesentium esse.', 'Full time', 'On-site', 'West Brenden', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(755, 'MARCOM Director', 'Saepe a doloribus consectetur aut quasi adipisci. Eaque autem animi tempore ut. Asperiores autem et optio non eum sapiente. Molestiae ea temporibus voluptas temporibus earum itaque.', 'Part time', 'Hybrid', 'New Monroefurt', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(756, 'Earth Driller', 'Laboriosam eum mollitia quo ipsam quo quo aperiam. Et reiciendis aperiam quos. Dolor nesciunt consectetur dolorem recusandae corrupti.', 'Part time', 'Hybrid', 'Noemietown', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(757, 'Kindergarten Teacher', 'Aut eum inventore ipsa est quam. Ab dicta aut dolor ipsam. Accusamus maxime magni at nesciunt est.', 'Part time', 'On-site', 'Goyetteland', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(758, 'Database Manager', 'Qui architecto voluptatibus rerum aperiam aut. Odio voluptatum minima aut ullam. Maiores sed in eos voluptas. Sapiente quia eaque veniam omnis eos dolores. Sapiente saepe nam consequatur molestiae.', 'Full time', 'Hybrid', 'Emmiechester', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(759, 'Computer Scientist', 'Eos consectetur aut harum quia reiciendis quis aut ut. At minus totam aut explicabo tempora ut quibusdam. Sequi voluptatem odit omnis impedit sit ut.', 'Part time', 'Hybrid', 'South Ciceromouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(760, 'Creative Writer', 'Natus est in quisquam qui aspernatur. Doloribus aut perspiciatis natus ut quisquam. Similique cum beatae libero aut saepe ea.', 'Full time', 'On-site', 'West Margret', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(761, 'Anesthesiologist', 'Enim et ullam distinctio excepturi voluptas ratione. Pariatur deserunt odit aliquid et eius neque. Et et ea sint placeat ut.', 'Part time', 'On-site', 'Andreburgh', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(762, 'Washing Equipment Operator', 'Delectus omnis et magnam. Totam libero explicabo autem ullam hic natus voluptatibus. Laudantium exercitationem laboriosam alias quis. Aut dolore quo sequi.', 'Part time', 'On-site', 'New Kelsi', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(763, 'Amusement Attendant', 'Fuga perferendis eum rerum enim adipisci. Quaerat et repellat sint vitae voluptatem. Neque eveniet eum omnis ratione soluta nam eaque et. Quas vel incidunt harum. Sapiente tempora voluptate dolorem eveniet nesciunt explicabo esse.', 'Part time', 'On-site', 'Lelahside', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(764, 'Steel Worker', 'Ut voluptatibus sit inventore non fugit veritatis vel. Quasi tenetur tenetur nam tempore voluptas natus.', 'Part time', 'On-site', 'West Abelardo', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(765, 'Environmental Engineer', 'Unde illo necessitatibus sunt nobis molestias. Exercitationem quas deleniti exercitationem. Occaecati fugit laborum debitis cupiditate autem eos ullam.', 'Full time', 'On-site', 'New Allisonfort', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(766, 'Industrial Machinery Mechanic', 'Nisi consequatur alias et dolor quod est aut. Non ipsum et sunt rerum qui porro facere. Neque laboriosam fugit aut accusamus. Sapiente sint dignissimos aut inventore totam incidunt nam.', 'Full time', 'Hybrid', 'Port Camrynmouth', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(767, 'Elementary School Teacher', 'Magnam et ipsam exercitationem voluptas. Earum aut repellat qui et vero molestiae maiores. Aperiam officia accusantium ea occaecati ut dolores.', 'Full time', 'On-site', 'New Marlon', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(768, 'Veterinary Assistant OR Laboratory Animal Caretaker', 'Accusamus saepe rerum tempora officia ea consequatur voluptatem et. Voluptatem qui qui voluptatum aut. Iusto et aut autem aut odio est deserunt sint. Qui aut dolorem laboriosam magnam quis est consequatur. Mollitia nam aliquid numquam quae amet voluptatem aut alias.', 'Full time', 'Hybrid', 'Cummingsborough', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(769, 'Talent Acquisition Manager', 'Doloremque officiis saepe eum voluptate recusandae et aut. Maiores assumenda maxime sunt unde quibusdam voluptate esse. Sunt veritatis ducimus consequatur quos asperiores qui modi. Ut iure ipsa modi voluptas.', 'Full time', 'Hybrid', 'East Leone', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(770, 'Engineering Teacher', 'Voluptatem deleniti ad et temporibus quidem. Aspernatur mollitia et magni id.', 'Part time', 'Hybrid', 'Casperville', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(771, 'Animal Husbandry Worker', 'Suscipit est eum totam consequuntur unde aut molestiae. Voluptas autem quia assumenda quae. Corrupti corporis neque dolorem delectus possimus iste.', 'Part time', 'Hybrid', 'West Rod', '2024-09-30 22:00:00', '2024-09-30 22:00:00'),
(772, 'Operating Engineer', 'Hic quam ex et saepe unde non repudiandae. Deleniti esse ratione quod qui ut. Cupiditate perferendis accusamus incidunt.', 'Full time', 'On-site', 'South Araville', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(773, 'Claims Taker', 'Officia facere nulla distinctio qui nemo magni accusantium ullam. Harum perspiciatis quas magnam molestiae saepe unde qui. Corporis qui maiores vitae expedita aut cumque.', 'Full time', 'On-site', 'New Sammymouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(774, 'Receptionist and Information Clerk', 'Et beatae aspernatur quae quo. Quia qui magnam molestiae odio aperiam et. Nisi rerum tenetur voluptatem quo ut esse. Et rem sint et ea.', 'Full time', 'Hybrid', 'Tremblaystad', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(775, 'Biologist', 'Rem cumque voluptate accusantium tempore. Ut quibusdam tempore deserunt dolorem et. Hic quis aperiam consectetur tempore aut recusandae ad. Ea illo soluta maxime quam et.', 'Part time', 'Hybrid', 'Eugenebury', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(776, 'Natural Sciences Manager', 'Explicabo eos assumenda doloremque quasi ut. Quia ut suscipit quam numquam recusandae. Autem consequatur fuga dignissimos quisquam.', 'Part time', 'Hybrid', 'Predovicstad', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(777, 'Fashion Designer', 'Eos reiciendis ullam et. Et quam incidunt et quasi ea recusandae. Expedita libero aut omnis corporis expedita. Veritatis autem quas consectetur dolorum ea vel laboriosam.', 'Full time', 'Hybrid', 'Lake Cordie', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(778, 'Soldering Machine Setter', 'Porro quia facere et molestiae necessitatibus quaerat facere. Voluptas fugit molestiae placeat delectus quasi quia. Eligendi dolores voluptatum incidunt. At voluptas rerum assumenda iste autem.', 'Part time', 'Hybrid', 'South Roxane', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(779, 'Biological Technician', 'Quia voluptatum incidunt quae beatae at. Ducimus nam quae repellat sed et nisi temporibus totam. Numquam qui voluptas maiores amet. Magnam libero quod nostrum sunt odit officiis nam.', 'Part time', 'On-site', 'West Reyes', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(780, 'Fire Investigator', 'Sit et nesciunt ipsum impedit ea delectus temporibus. Omnis suscipit aut officia magni. Ea cupiditate et ut ex fugiat et. Similique nisi harum iste optio dolores blanditiis sit.', 'Full time', 'On-site', 'West Roelmouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(781, 'Casting Machine Operator', 'Aut dolore neque et sint. Qui dignissimos aliquam ipsam. Id consequatur sed rerum numquam voluptatem hic. Occaecati odio officia omnis et deserunt nulla provident.', 'Full time', 'Hybrid', 'West Karlee', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(782, 'Marine Cargo Inspector', 'Sit rerum nostrum facere qui ea explicabo alias. Consequatur debitis perferendis molestiae velit. Sint sit tempora iure maxime ab nam et doloremque. Quia recusandae dolores veniam quaerat qui.', 'Full time', 'Hybrid', 'East Kennedi', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(783, 'Sys Admin', 'Neque esse cumque porro quas repellat nostrum. Alias quod quibusdam amet voluptatem pariatur at consequuntur. Occaecati explicabo ut et quia blanditiis.', 'Part time', 'On-site', 'Fredrickmouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(784, 'Mail Clerk', 'In atque vero debitis et consequatur libero officiis. Quod atque vitae ab voluptas. Ut et iste provident delectus id rerum. Similique rerum libero occaecati laudantium quasi quaerat asperiores explicabo.', 'Part time', 'On-site', 'North Clint', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(785, 'Admin', 'Optio laudantium impedit quisquam perspiciatis iusto quo et et. Sunt labore possimus commodi accusantium itaque. Qui quod modi ea odit qui.', 'Full time', 'Hybrid', 'New Stellafort', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(786, 'Production Helper', 'Quia corporis excepturi cumque aut itaque est. Quos autem dolor quae magni dolorem. Ut dicta in facilis deleniti hic.', 'Part time', 'On-site', 'Wiegandton', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(787, 'Fiberglass Laminator and Fabricator', 'Explicabo laboriosam possimus sint assumenda praesentium. Et sint est ipsam vel placeat sed tempora a. Dignissimos et consequatur qui id ad aut excepturi.', 'Full time', 'Hybrid', 'East Dorothybury', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(788, 'Numerical Control Machine Tool Operator', 'Et saepe quia eaque in atque omnis. In animi ex nihil et rerum quis. Rerum qui aliquam accusantium excepturi porro. Rerum adipisci rem sapiente facere laboriosam et.', 'Part time', 'On-site', 'West Burnice', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(789, 'Jewelry Model OR Mold Makers', 'Ducimus laudantium perferendis at est autem excepturi quia quis. Doloremque dolor a qui aperiam enim. Numquam voluptatum assumenda ut rem earum ipsa. Voluptates corporis qui excepturi fugiat similique amet.', 'Full time', 'On-site', 'Murazikshire', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(790, 'Cooling and Freezing Equipment Operator', 'Optio veniam dolorum rerum. Neque voluptatum enim perferendis vel temporibus. Possimus nam optio voluptas velit molestias iste beatae.', 'Full time', 'On-site', 'North Mariloushire', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(791, 'Agricultural Sales Representative', 'Id ea magni itaque autem numquam eligendi nostrum nulla. Nihil et ad enim amet. Odio natus ipsam et. Magnam molestias eius sint voluptas atque mollitia temporibus.', 'Part time', 'Hybrid', 'Tyreemouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(792, 'Personnel Recruiter', 'Voluptatum totam possimus in eos omnis sed officia. Soluta nobis et consequuntur sed deserunt nisi. Iste voluptates cumque quisquam maiores delectus eum pariatur.', 'Full time', 'Hybrid', 'Kendrastad', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(793, 'Accountant', 'Et vel culpa dolores. Libero et ea et quaerat culpa.', 'Full time', 'On-site', 'Jaleelhaven', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(794, 'Fishery Worker', 'Possimus dolor cumque deleniti reiciendis et asperiores assumenda. Quaerat nam quo et voluptate id ipsa.', 'Full time', 'On-site', 'Effiemouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(795, 'Health Educator', 'Deleniti perspiciatis dolorum doloribus alias. Deleniti magni est ab ex reiciendis corrupti vel praesentium. Labore non illum sed reiciendis facere qui vero beatae. Aut ea voluptas quae molestias.', 'Part time', 'Hybrid', 'Port Marlene', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(796, 'Mechanical Drafter', 'Soluta earum voluptates adipisci. Quisquam repellat tempora rerum facere cupiditate est ea. Dignissimos assumenda a voluptate ipsam neque autem est.', 'Part time', 'Hybrid', 'Osborneshire', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(797, 'Forester', 'Non voluptatibus qui nesciunt voluptates neque aut ut. Reprehenderit sunt dolorum sequi aut soluta.', 'Full time', 'Hybrid', 'Huelsview', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(798, 'Air Crew Officer', 'Et non voluptatem sint est sit debitis quia. Rem eos et in consequatur magnam.', 'Part time', 'On-site', 'North Anyaberg', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(799, 'Locksmith', 'Temporibus vitae aut itaque voluptatem neque eum deserunt quia. Asperiores fugiat fuga sed voluptas alias ea. A totam veniam blanditiis amet.', 'Full time', 'On-site', 'Jessicaburgh', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(800, 'Infantry', 'Harum explicabo officia optio quibusdam qui ut labore. Est quo rerum quaerat quis sed accusamus. Magnam qui recusandae qui corporis eos nulla.', 'Full time', 'Hybrid', 'Lake Carolanne', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(801, 'Environmental Science Teacher', 'Corrupti et doloribus ipsum qui voluptates. Minima est ex similique sint omnis. Asperiores et vel laboriosam voluptatum voluptas minima. Omnis at illo nobis vel.', 'Full time', 'Hybrid', 'Port Angelo', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(802, 'Engine Assembler', 'Et qui magni omnis praesentium neque ad quidem. Consequatur numquam cupiditate quia saepe ad. Aut natus ut et aut repudiandae. Sit officia ullam dignissimos asperiores.', 'Full time', 'Hybrid', 'Lake Laviniachester', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(803, 'Fence Erector', 'Sit quo explicabo tempora saepe. Rerum occaecati temporibus atque dolorem soluta. Ipsa nobis aliquam sapiente. Numquam suscipit perferendis dolorem inventore inventore.', 'Part time', 'On-site', 'Aishatown', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(804, 'Excavating Machine Operator', 'Sit sapiente atque inventore qui cum numquam nihil exercitationem. Architecto atque deserunt vitae asperiores beatae corporis. Et ea asperiores voluptatem nesciunt reiciendis tempora odit.', 'Part time', 'On-site', 'New Regan', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(805, 'Environmental Compliance Inspector', 'Nihil voluptate asperiores eum cupiditate hic sint autem distinctio. Minima quia animi officia similique dolorem. Ut cupiditate dicta et nihil reprehenderit.', 'Part time', 'On-site', 'New Micaelamouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(806, 'Merchandise Displayer OR Window Trimmer', 'Mollitia sapiente amet quaerat sint culpa voluptas nihil. Repellat aut unde nulla consequuntur maxime. In aperiam aliquid nisi omnis qui. Quibusdam quia porro nisi accusantium.', 'Full time', 'Hybrid', 'Grantfort', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(807, 'Electrician', 'Labore repudiandae officiis est quia culpa. Consectetur facilis sed repellat dolorem veniam. Sequi ut deserunt enim alias. Occaecati et rerum eveniet.', 'Part time', 'Hybrid', 'Lamontport', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(808, 'Clinical Laboratory Technician', 'Delectus hic magnam in blanditiis quas id ea. Quis nulla molestiae amet et quam quia consequatur. Dolorum quod facilis eaque sunt at.', 'Full time', 'On-site', 'West Adityaland', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(809, 'Career Counselor', 'Tenetur placeat quia magnam a accusamus molestias. A consequatur possimus ut numquam esse similique natus. Voluptas itaque ipsum atque voluptas porro quo.', 'Full time', 'On-site', 'South Oceane', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(810, 'Food Servers', 'Rem molestiae autem eaque non similique at est. Repellendus qui voluptas vero eos expedita aliquam. Adipisci maiores non a labore repellendus aperiam. Voluptas adipisci impedit minus perspiciatis.', 'Full time', 'Hybrid', 'Port Price', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(811, 'Physician', 'Fugiat nulla quaerat qui sint exercitationem animi. Doloribus aut in magnam sint laborum labore. Iusto fugiat sed sunt.', 'Part time', 'On-site', 'Sophiehaven', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(812, 'Criminal Investigator', 'Ut consequatur placeat dolor illo eum. Dicta ut et voluptatem quis. Consequatur non aut sit ut ullam et.', 'Part time', 'On-site', 'Bernhardport', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(813, 'Welding Machine Tender', 'Voluptas rerum sint aut suscipit facilis nihil. Ut consectetur sit non exercitationem. Natus incidunt quod vero et quo sint. Asperiores nulla aut est repellat harum eum. Eum voluptas dolores ex sed sed voluptatem quo.', 'Part time', 'Hybrid', 'New Kylie', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(814, 'Public Relations Manager', 'Aut nam debitis id corrupti. Distinctio ea explicabo sed aliquam nam adipisci et. Labore quibusdam unde iure inventore culpa vitae ipsum. Aut laudantium earum sunt saepe eligendi.', 'Part time', 'On-site', 'Nicolaview', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(815, 'System Administrator', 'Velit dolorem vero quia dicta ut magnam. Velit voluptatem a et quaerat. Similique soluta reiciendis labore maiores quo est. Est eveniet et voluptatum.', 'Part time', 'On-site', 'Ruthiemouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(816, 'Casting Machine Set-Up Operator', 'Quasi dolor non consequatur sequi ut. Accusamus beatae inventore id expedita aliquam laboriosam odit. Sit voluptatum in id.', 'Part time', 'On-site', 'Berthaborough', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(817, 'Plumber OR Pipefitter OR Steamfitter', 'Quia beatae et vitae consectetur sed. Aut tenetur vel id non incidunt dolores qui. Laudantium maxime quia dolorem facilis cupiditate voluptas voluptatem.', 'Full time', 'On-site', 'East Hattie', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(818, 'Dental Hygienist', 'Itaque expedita animi eos consequatur quo dignissimos iure optio. Ut non nobis dignissimos. Aut quasi labore autem quaerat. Quam perspiciatis iusto voluptatum esse.', 'Full time', 'On-site', 'Lehnerville', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(819, 'Precious Stone Worker', 'Ut quo dolores officiis neque eos omnis sunt. Dolores iste reprehenderit neque sed. Temporibus incidunt consequatur sed officia non eaque facilis.', 'Part time', 'Hybrid', 'Moorefort', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(820, 'Payroll Clerk', 'Non eligendi omnis temporibus. Deserunt molestiae eaque quis reprehenderit est et ipsam. Pariatur vero ipsam fugit.', 'Part time', 'On-site', 'Lake Abdullahhaven', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(821, 'Homeland Security', 'Est velit delectus quas unde id molestiae placeat sunt. Quisquam blanditiis incidunt quia aliquid pariatur. Maxime et sunt et sit excepturi.', 'Full time', 'Hybrid', 'Volkmanview', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(822, 'Vocational Education Teacher', 'Aut ut rem accusamus. Et molestiae adipisci repellat molestiae nobis harum sed. Molestias molestiae voluptas tempora et rerum.', 'Full time', 'Hybrid', 'Lake Nia', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(823, 'Mathematical Science Teacher', 'Ipsa at animi veniam et ipsa in est dolores. Error quia eveniet eveniet dicta. Et harum tempore ipsam ut est deserunt sunt. Saepe sed praesentium maiores aut voluptatem.', 'Part time', 'On-site', 'North Aidenburgh', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(824, 'Personal Home Care Aide', 'Est accusantium quo sunt consequuntur porro expedita amet numquam. Cupiditate molestiae et quae non minus ratione eligendi dignissimos.', 'Part time', 'On-site', 'West Rowland', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(825, 'Registered Nurse', 'Tempora molestias voluptatem saepe non vitae. Dignissimos tenetur exercitationem consequatur. Pariatur quis et iusto vel dignissimos.', 'Part time', 'On-site', 'East Johan', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(826, 'Fashion Model', 'Ipsam corporis minima perferendis itaque vitae quia ea consequatur. Ex at repudiandae atque quibusdam. Voluptate quo velit et quae sint itaque mollitia. Aut non velit ipsam earum consequuntur soluta non qui.', 'Part time', 'Hybrid', 'Abernathyshire', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(827, 'Physical Therapist Assistant', 'Itaque distinctio adipisci rerum expedita iure incidunt. Quia accusamus quos veritatis fuga. Dignissimos ex aspernatur earum non architecto magnam.', 'Part time', 'On-site', 'South Ethel', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(828, 'Healthcare Practitioner', 'Ut expedita qui id iste. Nihil dignissimos nobis adipisci nihil. Accusamus tempore ad quia non ut.', 'Part time', 'On-site', 'New Emmy', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(829, 'Communication Equipment Worker', 'Voluptatem distinctio non error in. Et ut ut fugiat sed eaque quidem libero. At corporis velit eos numquam sit.', 'Part time', 'Hybrid', 'West Ethel', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(830, 'Paralegal', 'Fuga iste ex unde mollitia. Adipisci earum ut ducimus quibusdam. Repellendus quam tenetur ipsam sit qui et qui. Voluptatem vel placeat dolorum quae aut laboriosam voluptatum.', 'Full time', 'On-site', 'East Vernie', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(831, 'Nursing Instructor', 'Qui voluptatem beatae consequatur odit ea. Qui tempora est beatae amet eum cupiditate quo. Quaerat ut sequi sit voluptatem. Culpa unde sit eius et nam dicta facere ut.', 'Part time', 'Hybrid', 'Emmaleemouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(832, 'Physical Therapist Aide', 'Aut perferendis aliquid reiciendis optio. Et natus ex molestiae libero ad odit. Assumenda molestias voluptates illo et. Quo explicabo et et officiis. Cumque esse doloribus eius sunt atque vel.', 'Part time', 'On-site', 'Rylanville', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(833, 'Service Station Attendant', 'Molestiae occaecati placeat cum harum accusamus. Enim ipsum natus fugit consequatur deserunt. Asperiores temporibus quos quidem consequatur consectetur impedit voluptatibus necessitatibus. Et sint eum voluptas quia rem.', 'Part time', 'Hybrid', 'West Braedenton', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(834, 'CSI', 'Autem accusantium praesentium iste ea. Vel a laboriosam aut neque debitis soluta et.', 'Part time', 'On-site', 'Jonesstad', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(835, 'Graphic Designer', 'Quia quos placeat ut consequuntur. Inventore vitae ducimus corrupti sunt. Vero quae dolores porro hic quia debitis velit. Ducimus sit sed dignissimos fuga.', 'Part time', 'On-site', 'South Marilyne', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(836, 'Social and Human Service Assistant', 'Ad quod ducimus adipisci eaque cumque provident corporis. Tempora dolorem perferendis reprehenderit nam fugiat numquam. Nihil doloribus est nisi ullam sint molestiae consequatur.', 'Part time', 'Hybrid', 'Port Juwanside', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(837, 'Marking Machine Operator', 'Nam quidem est et in nisi ut. Reprehenderit deserunt commodi aut eos sed. Accusantium omnis velit impedit quidem sequi quia architecto. Numquam qui aspernatur inventore neque.', 'Part time', 'Hybrid', 'Turcottemouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(838, 'Engineering Technician', 'Quia itaque ut unde voluptatem. Accusantium ex beatae consectetur deleniti est. Iste vitae eos non deleniti illum facilis.', 'Full time', 'On-site', 'Lylaborough', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(839, 'Anthropology Teacher', 'Veritatis qui sed est non placeat suscipit id. Provident minus ut deleniti ea dolorem voluptates. In possimus explicabo est quia exercitationem itaque facilis.', 'Part time', 'On-site', 'Adelatown', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(840, 'Physicist', 'Placeat rerum laudantium aliquam deserunt. Modi aut et perspiciatis aperiam. Vitae autem ut excepturi est.', 'Full time', 'On-site', 'Langoshhaven', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(841, 'Video Editor', 'Rerum rerum voluptas et dolorum ratione ut ut. Velit et voluptas perspiciatis omnis in est provident. Aperiam et possimus et id non.', 'Part time', 'Hybrid', 'Terryfort', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(842, 'TSA', 'Enim consectetur rerum assumenda et. Vitae hic similique corrupti vitae. Cumque est eius molestiae eius. Eligendi deleniti rerum et praesentium quia hic voluptatem.', 'Part time', 'Hybrid', 'East Sheila', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(843, 'HR Specialist', 'Inventore qui velit aliquid qui enim corrupti voluptatum. Id qui iusto omnis asperiores quos animi est. Eaque distinctio dolores in voluptas necessitatibus.', 'Full time', 'Hybrid', 'East Vicenta', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(844, 'Mechanical Inspector', 'Quod modi dicta recusandae distinctio exercitationem ut. Quis quis ullam est repellendus vel tempora magnam. Ipsum assumenda natus inventore deserunt quod. Dolorem officiis quia voluptatum accusantium.', 'Full time', 'On-site', 'North Bettie', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(845, 'Database Manager', 'Voluptates laborum reiciendis natus quod id. Odio et omnis consequatur ut ut consequatur. Voluptates voluptate qui exercitationem totam minus.', 'Part time', 'On-site', 'Kihnmouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(846, 'First-Line Supervisor-Manager of Landscaping, Lawn Service, and Groundskeeping Worker', 'Nam in aut blanditiis nisi. Atque cupiditate porro repudiandae fugit magnam.', 'Part time', 'Hybrid', 'South Khalil', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(847, 'Dietetic Technician', 'Itaque possimus veritatis itaque voluptatem iste voluptas eveniet. Et enim atque voluptates excepturi dolores autem rerum. Rerum harum minima aliquam sit. Ea sed consequatur ipsum qui exercitationem. Assumenda fugiat dolor explicabo sint fugiat.', 'Full time', 'On-site', 'Kubstad', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(848, 'Cardiovascular Technologist', 'Et asperiores nostrum blanditiis corporis. Fugiat incidunt voluptatum fugiat incidunt voluptatem. Quia qui ratione voluptas omnis sed doloremque voluptate. Sunt necessitatibus voluptatem iste illo culpa quia.', 'Part time', 'On-site', 'Kubborough', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(849, 'Precision Printing Worker', 'Quod eum non tenetur rerum aliquid reiciendis. Inventore quis est delectus ratione eum porro voluptates. Voluptatibus quia porro ab veniam recusandae. Repellat dolor exercitationem illum animi quidem.', 'Part time', 'On-site', 'Elibury', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(850, 'Management Analyst', 'Nisi animi fugiat assumenda dolores aspernatur omnis qui ea. In tempore voluptate et placeat. Sapiente aperiam maiores asperiores deleniti aliquid sit. Laborum vero dolores aut.', 'Part time', 'Hybrid', 'Louieberg', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(851, 'Eligibility Interviewer', 'Quisquam repudiandae occaecati omnis excepturi qui. Soluta natus quis possimus nisi aut pariatur. Voluptatem et ut asperiores. Soluta placeat suscipit vel molestias.', 'Full time', 'On-site', 'Lorenstad', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(852, 'Shampooer', 'Culpa et harum eveniet quaerat vitae. Quo suscipit amet quam adipisci impedit et. Omnis tempora repellat enim animi ullam repellat cupiditate.', 'Part time', 'On-site', 'Skilesmouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(853, 'Optometrist', 'Vel doloremque possimus deserunt doloribus tenetur quo. Neque quia omnis fuga et ea est qui. Vel dolorem facere sint aut ad quam non quis. Iste et recusandae qui rerum optio.', 'Full time', 'On-site', 'South Augustine', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(854, 'Social Work Teacher', 'Mollitia rerum ea tempora sit nesciunt quis rerum. Suscipit repudiandae laudantium non aut quae pariatur possimus. Dignissimos accusamus in inventore harum.', 'Part time', 'Hybrid', 'South Myrtleport', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(855, 'Special Force', 'Quam veritatis esse dolores cumque optio eveniet voluptas quisquam. Rerum et laboriosam ea in eius. Modi minus rerum tempora cum veniam.', 'Part time', 'Hybrid', 'Koepptown', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(856, 'Oral Surgeon', 'Pariatur quod a totam eos deserunt. Consequatur porro ut similique et id. Ut iure est impedit voluptatem non impedit velit soluta.', 'Part time', 'Hybrid', 'Vernieberg', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(857, 'Rock Splitter', 'Et non dolorem blanditiis eligendi. Excepturi ut reiciendis veniam mollitia occaecati. Impedit id maxime placeat tempore.', 'Part time', 'On-site', 'Kirlinbury', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(858, 'Physician Assistant', 'Aperiam distinctio possimus impedit doloremque omnis vitae magni cupiditate. Est sapiente velit aut consectetur consequatur quos. Est odio dicta voluptate autem iste vero.', 'Part time', 'Hybrid', 'South Antoinette', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(859, 'Director Of Business Development', 'Sed non et consequatur consequuntur eos perferendis. Minus labore perferendis consequatur est accusantium. Non quaerat dolor voluptatem dolor.', 'Full time', 'On-site', 'Alizetown', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(860, 'Communications Equipment Operator', 'Rem ut dolores voluptatem voluptatem. Corrupti quo omnis sit explicabo. Eveniet quae enim cum dolores ullam modi placeat. Consequuntur voluptates nobis consequatur sed.', 'Part time', 'On-site', 'Lake Evangeline', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(861, 'Horticultural Worker', 'Quo ut dolore officia provident. Et ducimus qui voluptas odit deserunt animi laboriosam aliquid. Ab minima tempore omnis id dolorum numquam.', 'Part time', 'Hybrid', 'Lucianomouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(862, 'Occupational Health Safety Technician', 'Nemo velit est atque omnis. Ut porro maiores sint pariatur omnis et.', 'Part time', 'On-site', 'Lake Kristinside', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(863, 'Project Manager', 'Omnis corrupti ea at et facilis eum. Est et ducimus incidunt totam fuga qui porro. Modi dolores officiis aperiam nemo vel aliquid quisquam natus.', 'Part time', 'Hybrid', 'Bertrandmouth', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(864, 'Office Clerk', 'Ut nemo voluptas qui sed debitis odit. Aut magni doloribus id eum aut praesentium explicabo at. Officia sunt et illum illum rerum. Voluptatem vitae et vero aut molestiae voluptatem quam.', 'Full time', 'Hybrid', 'Huelsberg', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(865, 'Plate Finisher', 'Dolorem recusandae nostrum laborum quae. Provident vitae accusamus possimus explicabo quisquam. Velit quisquam et voluptatem et non expedita. Et dolores nulla aliquid in aut inventore esse.', 'Full time', 'On-site', 'North Erickton', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(866, 'Farmworker', 'Accusamus est quo recusandae id ut error est. Rerum numquam et sit expedita dolorum ipsum qui. Minima aliquam excepturi delectus eaque repellat et est assumenda.', 'Part time', 'On-site', 'Haleyshire', '2024-10-31 23:00:00', '2024-10-31 23:00:00'),
(867, 'Historian', 'Et aut aliquam occaecati doloremque. In nemo ea eveniet minima explicabo. Qui facilis excepturi ut commodi voluptatem.', 'Part time', 'Hybrid', 'Iciebury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(868, 'Manufactured Building Installer', 'Autem error eos odio ut ut eius quia. Inventore nesciunt earum illum harum occaecati nesciunt et. Consequatur architecto architecto accusamus voluptatem voluptates rerum dolore. Aut fugiat repellat esse voluptatum.', 'Full time', 'Hybrid', 'Ellieberg', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(869, 'Obstetrician', 'Repellendus enim cumque sunt ipsam et ad. Est ab est sapiente assumenda consequuntur autem. Et eos necessitatibus et ut. Ad omnis consectetur recusandae reprehenderit.', 'Full time', 'Hybrid', 'Schaeferland', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(870, 'Photographic Restorer', 'Soluta voluptatem accusamus quo beatae sit. Eos eum ipsum animi sunt. Voluptates minus enim reiciendis neque. Possimus rerum facilis qui accusamus consectetur saepe in.', 'Full time', 'On-site', 'New Maia', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(871, 'Home', 'Eos architecto nihil inventore odit vero debitis. Et accusamus molestiae voluptatem minus dolores. Quasi nesciunt doloribus et possimus mollitia quo. Numquam culpa qui explicabo eum incidunt neque.', 'Part time', 'Hybrid', 'Padbergmouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(872, 'Professional Photographer', 'Aut quis ducimus atque dolorem. Aut deleniti qui et voluptatem sed facilis. Illo quasi maiores velit est est accusamus minus expedita. Aliquam sit libero qui sed numquam voluptas vel.', 'Part time', 'Hybrid', 'Lorenaland', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(873, 'Library Worker', 'Aut voluptatibus id ut ut. Qui quas commodi impedit voluptatum non asperiores. Sunt nam inventore expedita sit aut aliquid est. Cupiditate omnis veniam perferendis dolorem saepe est.', 'Full time', 'Hybrid', 'Port Caterina', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(874, 'Psychology Teacher', 'Voluptatem non nesciunt non ut. Ipsum autem consectetur et harum adipisci. Non quibusdam incidunt nobis unde vel occaecati dolor. Sit minus sequi esse voluptatem omnis.', 'Part time', 'Hybrid', 'Beattyshire', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(875, 'Medical Equipment Repairer', 'Ullam non id ea rerum. Vero debitis sit accusamus veniam qui. Sit consectetur et illum modi.', 'Full time', 'Hybrid', 'Lake Kyle', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(876, 'City', 'Sit itaque voluptatibus ullam excepturi. Quo soluta quia et magnam corrupti consequatur laboriosam.', 'Part time', 'Hybrid', 'Douglasfort', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(877, 'Director Of Social Media Marketing', 'Iure porro aut rem earum. Voluptatibus provident fugit eos voluptatem quo nisi. Reiciendis animi et corporis.', 'Part time', 'On-site', 'Feestmouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(878, 'Insurance Policy Processing Clerk', 'Eaque veniam illo sed reiciendis et fugit rem. Culpa quidem exercitationem quia ducimus veritatis aut. Nihil facilis esse dicta adipisci odit dolorum. Totam nihil deserunt consequatur eum.', 'Part time', 'Hybrid', 'South Grady', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(879, 'Merchandise Displayer OR Window Trimmer', 'Officia consequatur et adipisci omnis autem. Consectetur fugit sapiente iure dolorem officia itaque reiciendis repudiandae. Aliquam consequatur in error omnis voluptate. Hic tenetur quia expedita accusantium explicabo aut modi beatae. Dolor est voluptatum dolores ea est.', 'Full time', 'On-site', 'North Clyde', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(880, 'Production Worker', 'Voluptas optio qui velit. Voluptatibus repudiandae est recusandae sint qui qui. Error qui sequi nobis dolorem.', 'Part time', 'On-site', 'Port Hoseafort', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(881, 'Materials Scientist', 'Qui ipsam accusantium harum debitis quisquam sit. Rerum blanditiis et et corporis quod. Officia eos debitis id rerum.', 'Part time', 'Hybrid', 'Port Terencehaven', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(882, 'Tank Car', 'Id omnis accusantium earum qui corporis quo. Tempore in occaecati consequatur ea temporibus ducimus. Distinctio vel quae maiores.', 'Full time', 'On-site', 'Port Ivystad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(883, 'Purchasing Manager', 'Ea animi accusantium rerum odio quisquam. Temporibus voluptatem odit et totam cumque tempore modi.', 'Full time', 'Hybrid', 'Mullermouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(884, 'Fishery Worker', 'Commodi et dolorem aspernatur iusto. Cumque occaecati vel iusto suscipit perferendis perferendis. Quam ratione amet et ut voluptatem qui. Voluptatem aut et voluptatem rerum. Modi qui voluptas vero qui.', 'Part time', 'Hybrid', 'West Katlynnstad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(885, 'Loan Interviewer', 'Optio nemo non non pariatur rem. Consequatur optio ipsum distinctio illo nesciunt totam. Fugit voluptatem dolorum ut. Deserunt dolore maxime qui quia enim nulla iste.', 'Full time', 'On-site', 'Hirtheville', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(886, 'Ship Mates', 'Corrupti sit iste autem velit minima id. Quibusdam tenetur fugiat ut nam. Itaque maiores commodi quibusdam odio fugit corporis maiores. Necessitatibus nemo vel ea in inventore et. Id accusantium ad delectus assumenda cum.', 'Full time', 'On-site', 'Marquardtbury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(887, 'Landscaping', 'Ut voluptatibus sint enim exercitationem. Ut quis assumenda adipisci non tempore quae. Sapiente distinctio id ut at.', 'Part time', 'On-site', 'South Raphaellefurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(888, 'Fraud Investigator', 'Eos nisi maxime natus et delectus rem incidunt. Adipisci aut tempore laudantium temporibus minima dolor. Iusto tenetur saepe consectetur molestiae sequi laboriosam aspernatur.', 'Part time', 'Hybrid', 'East Hershelfurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(889, 'Millwright', 'Quam est eos voluptatem. Eveniet voluptatem quod aut provident iusto omnis voluptatem. Officia nesciunt et et modi aspernatur veniam alias.', 'Full time', 'On-site', 'Elianview', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(890, 'Sawing Machine Tool Setter', 'Voluptas et vel consequatur ducimus. Ex dolor quia eum non doloribus vel. Officiis molestiae molestias nemo autem voluptatem. Ullam temporibus quia inventore eos voluptates quidem repellendus.', 'Part time', 'On-site', 'Dereckborough', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(891, 'Metal-Refining Furnace Operator', 'Et laboriosam earum nesciunt dolor. Suscipit repellendus et dolor natus. Repellendus et impedit debitis delectus. Aut accusantium sequi doloribus doloremque eaque nam et.', 'Part time', 'On-site', 'Ashleystad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(892, 'Environmental Compliance Inspector', 'Quis quasi autem voluptas totam tempora. Recusandae error ex dolorum molestiae. Distinctio tempora cum eos deserunt ut et. Aspernatur quasi incidunt magnam at nihil sint in.', 'Full time', 'Hybrid', 'West Agnes', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(893, 'Precision Lens Grinders and Polisher', 'Earum non aut soluta soluta ut est et laboriosam. Deserunt veritatis nam iusto est et sed praesentium et. Aliquid molestiae quam ipsam aut consequatur similique eos.', 'Full time', 'Hybrid', 'South Zoie', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(894, 'Pressure Vessel Inspector', 'Facere eum pariatur id consequuntur vel molestias. Qui nesciunt nostrum sit quisquam. Repellendus esse sunt suscipit totam voluptatem quia sit et. Odio eaque sed et.', 'Part time', 'Hybrid', 'Port Francesco', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(895, 'Separating Machine Operators', 'Quia qui dolore sed alias. Earum autem quaerat tempora voluptatem voluptatum. Labore omnis qui dolorum est. Sed sunt necessitatibus alias impedit. Dolorum eos aut consectetur nam deserunt et.', 'Full time', 'Hybrid', 'New Eddiehaven', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(896, 'Substance Abuse Social Worker', 'Omnis iste qui nihil voluptatum. Quis a autem saepe unde laboriosam quas. Adipisci voluptatem sunt temporibus fuga et vero officia totam. Est hic beatae earum aperiam voluptatem distinctio.', 'Full time', 'On-site', 'Aminashire', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(897, 'Compliance Officers', 'Accusamus distinctio voluptates odio. Velit aliquid impedit excepturi deleniti assumenda sit necessitatibus. Velit ad aut quasi qui praesentium impedit.', 'Part time', 'On-site', 'Port Dorian', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(898, 'Tire Builder', 'Natus voluptatem rerum enim. Nesciunt omnis et sint ut voluptas. Dolores assumenda voluptas voluptatem. Qui quod asperiores accusamus beatae saepe hic vero.', 'Part time', 'On-site', 'Willmsstad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(899, 'Police Detective', 'Quo eum beatae et illo dolorem ad est consequatur. Modi aliquam ut facilis possimus laudantium laboriosam et.', 'Part time', 'Hybrid', 'East Zoey', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(900, 'Lifeguard', 'Ipsam deserunt aspernatur ut aspernatur ea aliquam. Aliquid cum id repellat maiores. Est consequatur voluptate ratione modi labore corporis dolorum. In nostrum quia praesentium magni esse.', 'Full time', 'Hybrid', 'New Johnhaven', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(901, 'Mail Clerk', 'Adipisci tempore consectetur voluptate et et. Aut commodi quos quos dolorem consequuntur fugiat. Voluptatibus id voluptatem incidunt voluptatem aspernatur dolorum. Quam exercitationem nesciunt modi culpa et totam dolorum et.', 'Full time', 'Hybrid', 'Sebastianfurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(902, 'Captain', 'Iusto dolorem magni alias est qui. Sapiente neque quis id fugiat velit iure in. Ratione ea dicta nobis sunt eum.', 'Part time', 'On-site', 'Louiechester', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(903, 'Judge', 'Itaque fuga qui suscipit libero illum doloremque qui. Vitae porro quae itaque explicabo beatae et. Est dolorum maiores aut praesentium ut et.', 'Full time', 'Hybrid', 'East Sherman', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(904, 'Shampooer', 'Iure nemo exercitationem vero consequatur numquam. Facere sint voluptas enim est soluta et. Et dolor praesentium voluptatem est autem consequatur culpa.', 'Part time', 'On-site', 'Ryannmouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(905, 'Proofreaders and Copy Marker', 'Commodi voluptatibus itaque expedita ex laudantium optio rerum. Quis ea libero aut dolores temporibus. Velit delectus qui explicabo vitae sunt eaque quia.', 'Full time', 'On-site', 'East Kira', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(906, 'Nursing Instructor', 'Impedit et mollitia eos nihil non modi. Et enim officiis ex sit cupiditate velit. Et tempora occaecati quia voluptate aspernatur reiciendis repellat culpa. Amet quo eos earum vero eveniet quam omnis.', 'Part time', 'Hybrid', 'East Lucinda', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(907, 'Physician Assistant', 'Optio est mollitia repellat rem. Qui nobis unde quo laudantium eaque. Quis delectus voluptatibus voluptas rerum nam hic expedita. Nesciunt officia qui ea quo fuga.', 'Full time', 'On-site', 'Rohanstad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(908, 'Rolling Machine Setter', 'Aliquam sunt enim enim sit officia assumenda. Impedit nihil et corporis ipsum vel. Ut eum illo debitis nesciunt. Ut quasi inventore et sequi eligendi.', 'Part time', 'On-site', 'New Waylon', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(909, 'Stonemason', 'Officia tempore ipsa aut rerum consequatur illum. Quaerat soluta totam error. Delectus distinctio nobis est dolore voluptatem dolor error. Magni rem maxime saepe dolorem. Debitis modi vel accusantium.', 'Full time', 'Hybrid', 'North Leonfurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(910, 'Legal Support Worker', 'Quibusdam aliquid eaque neque voluptatum ut. Porro dignissimos eos similique nulla corrupti a. Dolor cupiditate facilis eum quas ut.', 'Part time', 'Hybrid', 'West Lambertmouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(911, 'Aircraft Rigging Assembler', 'Molestiae inventore illum consectetur magnam. Aliquid voluptas molestias libero voluptas laudantium et esse ut. Accusamus et est est non. Illum non natus qui consequatur.', 'Part time', 'On-site', 'West Evelynbury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(912, 'Heavy Equipment Mechanic', 'Quod animi quia tempora laudantium. Aliquid laboriosam molestias blanditiis eos cupiditate corrupti. Non ut sed quis quisquam cum aut veritatis.', 'Full time', 'On-site', 'Connerburgh', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(913, 'Event Planner', 'Cupiditate ab dolores molestiae quam id. Sunt in quasi reprehenderit consectetur beatae tempore repudiandae. Nulla porro dolore et itaque molestias dolore saepe officia.', 'Part time', 'Hybrid', 'Elishafurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(914, 'Teller', 'Voluptas placeat doloremque id ut dignissimos sapiente molestias. Nostrum nam eligendi sed aliquam pariatur cumque. Laborum molestiae est minima officiis. Sequi eum dolores delectus sed.', 'Full time', 'Hybrid', 'East Jabaritown', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(915, 'Historian', 'Dolorum pariatur qui voluptatem labore eos. Voluptatibus laboriosam modi harum nihil qui dignissimos quas. Omnis sequi fugiat possimus voluptatem quia voluptates magni non. Ut impedit ex praesentium debitis.', 'Full time', 'Hybrid', 'West Nikolasburgh', '2024-11-30 23:00:00', '2024-11-30 23:00:00');
INSERT INTO `jobs` (`id`, `title`, `description`, `type`, `work_mode`, `location`, `created_at`, `updated_at`) VALUES
(916, 'Nursery Worker', 'Dolorem alias incidunt cumque. Aut accusamus et mollitia corporis exercitationem veniam sed. Aliquam corrupti odit ut beatae. Ab eligendi suscipit ab repellendus dolores.', 'Part time', 'On-site', 'West Leola', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(917, 'Interaction Designer', 'In ex aspernatur ad sint sed. Tempora adipisci tempora consequatur. Est rem fuga commodi assumenda. Sint et corrupti dolores totam in a.', 'Part time', 'Hybrid', 'New Caryville', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(918, 'Visual Designer', 'Vero eum ut temporibus. Ut qui et modi cupiditate occaecati. Libero at aut ullam dignissimos ut minima.', 'Full time', 'On-site', 'Kalliemouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(919, 'Agricultural Science Technician', 'Ipsum quisquam doloremque molestiae error architecto dolorem temporibus quia. Sint ea hic rerum cum ut. Aut reiciendis quisquam sit est beatae. Recusandae in quam suscipit delectus modi qui nemo.', 'Part time', 'On-site', 'Dallasstad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(920, 'Interviewer', 'Reprehenderit delectus blanditiis hic qui rerum necessitatibus eos. Velit aut possimus qui qui quia in eligendi. Fugiat rerum iste et nihil at consequatur blanditiis.', 'Full time', 'Hybrid', 'West Leila', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(921, 'Cleaners of Vehicles', 'Alias porro accusamus debitis minus. Iste earum nobis placeat rerum.', 'Part time', 'Hybrid', 'Marksbury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(922, 'Radio Mechanic', 'Vero enim odio sint unde voluptas vel. Aspernatur consequatur voluptate molestias voluptatem atque. Omnis inventore id temporibus ut. Dolorum iure veniam aut sint.', 'Full time', 'Hybrid', 'Port Neomaside', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(923, 'Freight Inspector', 'Vero et omnis voluptatum ut quaerat reprehenderit. Quo culpa ullam veritatis aut. Sit soluta id architecto eos error numquam.', 'Part time', 'Hybrid', 'Camrenberg', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(924, 'Sawing Machine Tool Setter', 'Nobis et incidunt et sed aspernatur. Molestias excepturi autem quo quibusdam. Consequatur ipsam debitis porro. Incidunt necessitatibus et consequatur mollitia quam harum.', 'Full time', 'Hybrid', 'New Hilario', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(925, 'Decorator', 'Velit et omnis consequatur ut consequatur quasi. Suscipit eos sunt aut repellendus alias dolorem.', 'Full time', 'Hybrid', 'North Hortensefort', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(926, 'Installation and Repair Technician', 'Laborum tempore sint enim qui reprehenderit dolorem. Magni necessitatibus esse esse nihil eligendi similique. Earum nihil voluptas sit unde. Dignissimos expedita consequuntur aut dolores voluptate velit asperiores.', 'Full time', 'On-site', 'Rosenbaumstad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(927, 'Marketing VP', 'Numquam veniam et totam qui. Possimus deserunt autem nam minus incidunt. In voluptas voluptates totam voluptas at.', 'Part time', 'Hybrid', 'East Pierre', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(928, 'Aircraft Engine Specialist', 'Omnis ex delectus occaecati nesciunt nihil. Voluptas autem fugiat facilis quibusdam nostrum dolor. Omnis incidunt inventore consequatur possimus autem.', 'Part time', 'Hybrid', 'North Justenhaven', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(929, 'Curator', 'Aut et accusamus est voluptates. Perferendis est natus doloribus adipisci tempora velit distinctio. Reiciendis eligendi possimus eos harum animi velit facere et. Cupiditate magnam eum aperiam vitae et adipisci reiciendis.', 'Part time', 'On-site', 'South Maudiechester', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(930, 'Interviewer', 'Ab rem quia labore qui odit. Vel voluptatum distinctio ipsa enim quam. Enim et expedita hic laborum minima labore et.', 'Full time', 'Hybrid', 'Artfurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(931, 'Architect', 'Expedita consequatur voluptatem distinctio dolorem assumenda. Inventore non autem iure dolor impedit hic. Sequi aperiam ea qui voluptas et ullam fugiat est. Aut libero adipisci qui illo id eaque.', 'Full time', 'On-site', 'Bernierport', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(932, 'English Language Teacher', 'Et est facere quo qui laborum porro quia maxime. Nemo ex molestiae eligendi at et. Ipsam dignissimos est esse illum ratione quam. Officia doloremque officiis facere et. Velit totam dolorum repellendus tempora provident.', 'Full time', 'On-site', 'Port Hillary', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(933, 'Computer Hardware Engineer', 'Modi repellat voluptatibus quo suscipit. Ipsam aut laudantium ipsum consequatur et minima. Eligendi iusto fugit accusantium et odit error. Deleniti aliquam voluptatem eum omnis sit omnis qui architecto. Odio quo fugit ut atque dolore.', 'Full time', 'Hybrid', 'North Estelborough', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(934, 'Fiber Product Cutting Machine Operator', 'Nesciunt illo qui alias eos. Iusto fugiat eveniet sunt earum nihil. Cum et est et est.', 'Part time', 'On-site', 'Ziemannbury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(935, 'Manufactured Building Installer', 'Exercitationem tempore consectetur repellat deleniti praesentium. Recusandae natus ipsa dignissimos modi voluptas. Itaque repudiandae consequatur ratione necessitatibus.', 'Full time', 'Hybrid', 'Joanniechester', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(936, 'Electronics Engineer', 'Corporis sunt porro voluptatibus aut voluptatem amet. Ut dolor error enim eos consequatur. Alias in commodi porro fugit modi et. Blanditiis beatae nam non id.', 'Part time', 'On-site', 'Runolfsdottirbury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(937, 'Telecommunications Line Installer', 'Ut voluptatibus maxime a. Voluptatibus excepturi modi animi adipisci. Assumenda sint vel qui quia sit in neque praesentium. Fugiat eos quas quo autem eum sapiente.', 'Part time', 'Hybrid', 'Boyerville', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(938, 'Textile Machine Operator', 'Eaque sunt eligendi iure sapiente quae qui distinctio. In magnam velit optio saepe. Fuga et inventore aut voluptatem non sed similique omnis. Aut cumque distinctio similique voluptates consequatur eum sapiente aut. Neque provident optio fugit harum enim.', 'Full time', 'Hybrid', 'Verlieside', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(939, 'Paper Goods Machine Operator', 'Ratione eum iste eos sit qui delectus. Eius corrupti recusandae officia soluta cupiditate possimus. Possimus non et doloribus voluptatibus. Occaecati at in iusto dolorum.', 'Part time', 'Hybrid', 'New Elodytown', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(940, 'Mathematical Science Teacher', 'Vitae nulla reprehenderit eum ipsa sed aspernatur ea. Eius iusto et itaque a qui expedita optio.', 'Full time', 'Hybrid', 'New Maxime', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(941, 'Art Director', 'Sit est repellendus quis ut veritatis qui saepe. Ipsum molestias placeat corporis quibusdam nobis. Nulla eaque necessitatibus suscipit repellat voluptatem nesciunt delectus. Alias qui officia nostrum dolorum consequatur voluptate velit.', 'Part time', 'On-site', 'Cruickshankstad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(942, 'Plumber OR Pipefitter OR Steamfitter', 'Eum et modi et autem quod voluptas. At consequatur enim maxime. Et dolores vel vitae explicabo.', 'Full time', 'On-site', 'Brauntown', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(943, 'Sales Engineer', 'Nulla nemo laboriosam neque delectus. Qui quae provident consequatur laborum et hic. Et ea ducimus non sit fugiat iure. Quisquam qui enim pariatur.', 'Full time', 'Hybrid', 'East Santaton', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(944, 'Boilermaker', 'Molestiae esse aut neque. Non eum occaecati aut aliquid. Adipisci quo enim sit dolorem ipsa numquam earum vel. At fugit officiis incidunt quia tempore et sint.', 'Full time', 'Hybrid', 'Ernestfurt', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(945, 'Oil and gas Operator', 'Nemo officiis minus et aspernatur cupiditate veniam numquam. Eius quis nihil deserunt modi. In nisi quia autem vel molestiae autem iusto. Porro cum dolorem commodi ut nobis minima sequi.', 'Part time', 'On-site', 'Port Dimitri', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(946, 'Athletic Trainer', 'Sed et et necessitatibus qui asperiores. Laborum nostrum ipsa enim accusantium sunt voluptatem enim aut. Nihil natus magni omnis nisi. Corrupti modi omnis voluptatem voluptatibus.', 'Full time', 'Hybrid', 'Lake Darlene', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(947, 'Spraying Machine Operator', 'Officia maxime quo qui consequatur dolor dolor. Quos magnam est illo quis.', 'Full time', 'On-site', 'North Giachester', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(948, 'Reservation Agent OR Transportation Ticket Agent', 'Facilis voluptatibus odio repudiandae quibusdam laboriosam culpa quam. Aliquam ex blanditiis quas. Vitae perspiciatis exercitationem quod sed voluptatem.', 'Full time', 'Hybrid', 'Nitzscheport', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(949, 'Septic Tank Servicer', 'Repellendus fugit velit perspiciatis natus. Omnis consequatur incidunt sit quia voluptates. Et aperiam totam reprehenderit beatae voluptas.', 'Full time', 'Hybrid', 'Odessastad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(950, 'Respiratory Therapist', 'Facere itaque numquam impedit dolorem. Accusamus facilis non perspiciatis nemo esse eveniet. Quod culpa repudiandae sint. Et ut ut cupiditate est perferendis.', 'Part time', 'On-site', 'Ondrickastad', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(951, 'Geologist', 'Unde est a necessitatibus cum et. Quia facilis provident facilis minima assumenda iure. Officiis iusto aliquid cum sit distinctio. Quasi et quis vitae quibusdam earum.', 'Part time', 'On-site', 'New Deborahbury', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(952, 'Archeologist', 'Ut explicabo odio velit iure eaque explicabo exercitationem dolores. Dicta iusto reprehenderit labore ea consequatur saepe non. Corrupti quia aut ut odio nihil libero. Saepe ut quisquam id non.', 'Part time', 'Hybrid', 'North Francisco', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(953, 'City', 'Omnis sed dolores in quis. Facilis expedita dolor pariatur enim ea consequatur eum. Est temporibus doloremque nisi laudantium voluptas rerum mollitia adipisci.', 'Part time', 'Hybrid', 'North Otiliafort', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(954, 'Clinical Psychologist', 'Vel qui dicta voluptatem. Et est perspiciatis distinctio inventore expedita. Sit dolores blanditiis nam hic voluptatem aliquid.', 'Part time', 'On-site', 'Schusterport', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(955, 'Public Transportation Inspector', 'Vero recusandae reprehenderit consequatur aut dolorem autem vitae. Voluptas cum earum quis sit. Unde exercitationem provident dolor.', 'Full time', 'Hybrid', 'North Maverickshire', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(956, 'Food Preparation', 'Eius rerum recusandae voluptatem nisi. Dolor in vero omnis distinctio id. Non qui autem beatae culpa non quasi consequatur exercitationem. Soluta sequi omnis labore dolores totam et.', 'Full time', 'On-site', 'Port Vivienneside', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(957, 'Press Machine Setter, Operator', 'Nihil qui est aliquam. Assumenda non voluptatum et natus. Alias maxime quia odit est. Magnam vero maiores recusandae mollitia assumenda consequatur. Voluptates est quam corrupti aut magnam quia est.', 'Part time', 'On-site', 'Kubside', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(958, 'Marketing Manager', 'A laborum ullam architecto perferendis mollitia natus. Est doloribus nulla debitis doloribus tempore quis. Eius enim soluta omnis non et labore.', 'Full time', 'On-site', 'East Rodrigomouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(959, 'Secondary School Teacher', 'Dolore dolores rem alias harum ut facilis earum. Qui beatae voluptatem inventore consequatur voluptatem.', 'Full time', 'On-site', 'North Juddville', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(960, 'Medical Technician', 'Cum ratione facere ut aperiam odio. Quae velit quia eum sed. Fugiat tempore deserunt impedit et. Asperiores in sunt perferendis deleniti voluptatem quia sit aut.', 'Full time', 'Hybrid', 'Port Kenna', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(961, 'Historian', 'Enim quaerat molestiae quia. Quibusdam ut officiis et placeat blanditiis ut est. Et veniam laboriosam doloremque est nihil.', 'Part time', 'Hybrid', 'New Buck', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(962, 'Government Property Inspector', 'Quia blanditiis quia eius et nam et. Molestias qui aut quod expedita praesentium. Sunt voluptates totam dignissimos ut nostrum deserunt. Sint iste ad dolor cumque deserunt.', 'Part time', 'On-site', 'West Kaya', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(963, 'Loan Counselor', 'Nemo ex amet est tenetur nihil itaque ut. Rerum nisi architecto perferendis quasi dolore omnis. Explicabo molestias molestiae sed fugiat fugit dolorem nostrum provident.', 'Full time', 'Hybrid', 'Jakubowskimouth', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(964, 'Postmasters', 'Et tempore molestiae consequatur non aspernatur aut voluptatibus. Id quia veniam debitis consequuntur et ducimus.', 'Full time', 'On-site', 'Eliezerside', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(965, 'Archivist', 'Non suscipit ut qui architecto laboriosam. Dolores est iure omnis in. Voluptatem tempora nostrum illum omnis. In alias sunt officiis voluptas nostrum quod accusantium.', 'Full time', 'Hybrid', 'Nayeliborough', '2024-11-30 23:00:00', '2024-11-30 23:00:00'),
(966, 'Central Office', 'Esse quia minima officiis voluptatem eos. Ullam voluptatem possimus rerum aut. Veniam alias qui dolore quae sint. Neque maiores autem aut nam.', 'Part time', 'On-site', 'Nicolasview', '2024-11-30 23:00:00', '2024-11-30 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2024_11_16_152920_create_personal_access_tokens_table', 1),
(3, '2024_11_16_154204_create_jobs_table', 1),
(4, '2024_11_16_154350_create_positions_table', 1),
(5, '2024_11_16_154405_create_team_members_table', 1),
(6, '2024_11_16_154413_create_testimonials_table', 1),
(7, '2024_11_16_154435_create_contact_messages_table', 1),
(8, '2024_11_16_154448_create_industries_table', 1),
(9, '2024_11_16_154457_create_partners_table', 1),
(10, '2024_11_16_154510_create_service_categories_table', 1),
(11, '2024_11_16_154526_create_services_table', 1),
(12, '2024_11_16_154544_create_sessions_table', 1),
(13, '2024_11_16_155033_create_roles_table', 1),
(14, '2024_11_16_155041_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `industry_id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `collaboration_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `company_name`, `industry_id`, `logo`, `collaboration_description`, `created_at`, `updated_at`) VALUES
(2, 'Apple .', 1, 'https://getbootstrap.com/docs/5.0/forms/select/', 'asdaqwrear', '2024-12-08 13:38:39', '2024-12-08 13:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '2024-11-16 19:46:33', '2024-11-16 19:46:33'),
(2, 'Developer', '2024-11-16 19:46:33', '2024-11-16 19:46:33'),
(3, 'Designer', '2024-11-16 19:46:33', '2024-11-16 19:46:33'),
(4, 'Tester', '2024-11-16 19:46:33', '2024-11-16 19:46:33'),
(5, 'HR Specialist', '2024-11-16 19:46:33', '2024-11-16 19:46:33'),
(6, 'Gaming Cage Worker', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(7, 'Therapist', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(8, 'Chemistry Teacher', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(9, 'Social Media Marketing Manager', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(10, 'Sales Person', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(11, 'Airframe Mechanic', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(12, 'Automotive Specialty Technician', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(13, 'Police Detective', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(14, 'Human Resources Specialist', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(15, 'Parking Enforcement Worker', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(16, 'Precision Aircraft Systems Assemblers', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(17, 'Photoengraver', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(18, 'Electronics Engineering Technician', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(19, 'Painter and Illustrator', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(20, 'Civil Drafter', '2024-11-16 19:46:37', '2024-11-16 19:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-11-16 19:46:19', '2024-11-16 19:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED NOT NULL,
  `industry_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `service_category_id`, `industry_id`, `created_at`, `updated_at`) VALUES
(2, 'Tom', 'asdafdds', 1, 1, '2024-11-25 13:07:52', '2024-11-25 13:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Consulting', '2024-11-25 13:04:54', '2024-11-25 13:04:54'),
(2, 'IT Services', '2024-11-25 13:04:54', '2024-11-25 13:04:54'),
(3, 'Healthcare', '2024-11-25 13:04:54', '2024-11-25 13:04:54'),
(4, 'Education', '2024-11-25 13:04:54', '2024-11-25 13:04:54'),
(5, 'Finance', '2024-11-25 13:04:54', '2024-11-25 13:04:54'),
(6, 'IT1', '2024-12-07 10:49:49', '2024-12-07 10:49:49'),
(7, 'random1', '2024-12-08 12:56:38', '2024-12-08 12:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QBOZAsPrcwi6V4896FWCdVhtGtvDR3rTuLKg6KC3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTBjdEswS3hEZUtMaENCczFwY0M2bmV5V2FtSGsxUDVoS3lrUlg4SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1733693152);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `short_profile` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `surname`, `position_id`, `short_profile`, `created_at`, `updated_at`) VALUES
(1, 'Clotildee', 'Ruecker', 11, 'Possimus error quia provident aut et. Vel asperiores voluptate et et nam eius. Unde corporis id rem. Soluta consequuntur assumenda architecto eaque totam illo soluta. Suscipit vel aliquam et qui nihil.123', '2024-11-16 19:46:37', '2024-12-05 00:36:39'),
(2, 'Xander', 'Torphy', 12, 'Impedit adipisci sed quidem earum. Qui aut recusandae a qui consequatur aperiam aut dolore. Natus saepe inventore sit quod velit eum voluptas rerum. Et voluptatum quia nisi sapiente quia.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(3, 'Leland', 'Lueilwitz', 13, 'Ut commodi sapiente et rerum. Possimus odio eum doloribus aut necessitatibus necessitatibus. Voluptatibus voluptatem dolor ad nisi mollitia et saepe dolorem. Consectetur et aut veritatis assumenda non molestias aperiam. Quia doloremque repellat placeat consequatur.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(4, 'Will', 'Connelly', 14, 'Quo quis velit deleniti consequatur id consequatur a. Quisquam non ipsum numquam cupiditate ex. Voluptas animi quod autem blanditiis eum nemo consequatur nihil. Optio est velit sunt doloribus in et.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(5, 'Devonte', 'Daugherty', 15, 'Tenetur reprehenderit iusto ipsa veritatis quisquam et impedit quisquam. Est quo dolorem distinctio ex. Ut voluptas vitae rerum illum perferendis qui.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(6, 'Mabel', 'Mertz', 16, 'Consequuntur dolorem similique adipisci et magni ipsa itaque. Unde laborum inventore fugiat est blanditiis dolorum.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(7, 'Ricky', 'Yundt', 17, 'Repellat repellat sit maxime hic quos hic nostrum. Culpa deserunt officiis libero quas commodi sed. Aut officiis molestias rem ut doloremque. Modi minus numquam et et minus.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(8, 'Zachary', 'Feil', 18, 'Quaerat autem vel ea id. Voluptates hic totam deleniti magni in numquam. Et possimus magni saepe tempore. Temporibus quae voluptas odio et et.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(9, 'Dakota', 'Price', 19, 'Laboriosam perferendis cum omnis quas. Qui quos qui dolor dolore unde. Ex et unde sequi magni.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(10, 'Mozelle', 'Stark', 20, 'Ut voluptatem debitis harum ea eius et eaque. Debitis voluptas amet rerum officia. Quaerat accusamus omnis ab nobis aut ad quisquam non. Asperiores et consequuntur voluptatem aut earum.', '2024-11-16 19:46:37', '2024-11-16 19:46:37'),
(11, 'asd', 'test', 12, 'sgagagafgfsdgsdgsdfg', '2024-12-05 00:20:52', '2024-12-05 00:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_text` text NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_position` varchar(255) NOT NULL,
  `client_company` varchar(255) NOT NULL,
  `client_profile_picture` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonial_text`, `client_name`, `client_position`, `client_company`, `client_profile_picture`, `created_at`, `updated_at`) VALUES
(2, 'lorem', 'test', 'manager', 'apple', 'https://next-images.123rf.com/index/_next/image/?url=https://assets-cdn.123rf.com/index/static/assets/top-section-bg.jpeg&w=3840&q=75', '2024-12-08 13:41:34', '2024-12-08 13:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@cgd.com', NULL, '$2y$12$QAKDizcfTB6a7yCwBEm.6uZtFJe9RiNQIFTNf3Xz1WqzXYd3eBgYC', 'dcrC7YvieZOz3adZdIUuXteLc9uXd2HzG6I1LSwcGdMyzjSky6FpMJmRwD7F', '2024-11-16 19:46:23', '2024-11-16 19:46:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partners_industry_id_foreign` (`industry_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_service_category_id_foreign` (`service_category_id`),
  ADD KEY `services_industry_id_foreign` (`industry_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_position_id_foreign` (`position_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=967;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
