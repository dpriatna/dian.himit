-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 07:47 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dianhimit`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `thumbnail`, `name`, `slug`, `is_published`, `created_at`, `updated_at`) VALUES
(56, 1, NULL, 'Laravel', 'laravel', '1', '2020-08-06 23:49:29', '2020-08-06 23:49:29'),
(57, 1, NULL, 'WordPress', 'wordpress', '0', '2020-08-06 23:49:29', '2020-08-06 23:49:29'),
(58, 1, NULL, 'Python', 'python', '1', '2020-08-06 23:49:29', '2020-08-06 23:49:29'),
(59, 1, NULL, 'Javascript', 'javascript', '1', '2020-08-06 23:49:29', '2020-08-06 23:49:29'),
(60, 1, NULL, 'Django', 'django', '1', '2020-08-06 23:49:29', '2020-08-06 23:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2020_08_05_010537_create_categories_table', 1),
(12, '2020_08_05_011508_create_posts_table', 1),
(13, '2020_08_05_011914_create_galleries_table', 1),
(14, '2020_08_05_012935_create_category_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `thumbnail`, `title`, `slug`, `sub_title`, `details`, `post_type`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'Magni sit aut aut.', 'magni-sit-aut-aut', 'Facere ut ut nam eaque omnis.', 'Voluptatem quis accusamus facere illo nulla odio. Nemo sit illo fuga. Eum aliquid rem doloribus. Et a est labore ullam.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(2, 3, NULL, 'Blanditiis voluptas dolor omnis reiciendis dicta et.', 'blanditiis-voluptas-dolor-omnis-reiciendis-dicta-et', 'Laudantium eos ea inventore delectus libero molestiae maxime dolores.', 'Aut quisquam est sint quos voluptate. Unde perferendis quo vel exercitationem totam dolores. Sed autem odit nisi nihil officiis delectus sed.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(3, 2, NULL, 'Molestiae porro autem et molestiae sit non nam.', 'molestiae-porro-autem-et-molestiae-sit-non-nam', 'Neque et vitae temporibus dignissimos molestiae provident numquam.', 'Dolor temporibus rem possimus omnis omnis magnam veniam. Voluptatem quisquam nihil eius quis dolore vel. Et vel quidem nam. Dolorem fuga praesentium cumque deleniti. Eligendi explicabo eaque velit officiis aperiam.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(4, 5, NULL, 'Dolorum maxime et eum quia.', 'dolorum-maxime-et-eum-quia', 'Consequatur quia quisquam iusto et et mollitia expedita.', 'Quas sunt deleniti quo expedita eum. Est aliquam nisi vero sit iusto. Dolor voluptatem dolorum quas nobis dignissimos perferendis repellendus.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(5, 2, NULL, 'Voluptates non cupiditate qui quod earum eos.', 'voluptates-non-cupiditate-qui-quod-earum-eos', 'Vel error eveniet adipisci nostrum.', 'Id quia rerum fugiat sit consequuntur quia. Alias voluptatem tempora voluptas dicta autem esse eos. Provident earum alias dolores. Magni nihil aut porro et.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(6, 5, NULL, 'Dolores id nihil iure.', 'dolores-id-nihil-iure', 'Ipsam quibusdam et aliquam exercitationem aperiam.', 'Dolores eum eligendi voluptatum doloribus eos. Cupiditate quae voluptates dolorem explicabo unde excepturi voluptas ut.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(7, 1, NULL, 'Sit consequatur iusto vero ut saepe architecto.', 'sit-consequatur-iusto-vero-ut-saepe-architecto', 'Nisi et adipisci eaque architecto et consequatur consequatur.', 'Velit quia voluptatem id consequuntur aperiam vero. Aut quaerat illum beatae eum dolor harum aut suscipit. Rerum voluptatem quas itaque error expedita sit nobis. Veritatis nam sunt tempora id.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(8, 2, NULL, 'Numquam quos praesentium maiores sint tempora omnis.', 'numquam-quos-praesentium-maiores-sint-tempora-omnis', 'Molestiae consectetur ad eum ut praesentium.', 'Dicta consequatur voluptatem dolor et. Expedita sed dolor molestiae itaque voluptatem fugit blanditiis enim. Voluptate asperiores fuga omnis quas dolorem eos. Iusto qui maiores earum unde voluptas quaerat quidem cum.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(9, 4, NULL, 'In officia dolore tempora omnis totam.', 'in-officia-dolore-tempora-omnis-totam', 'Quidem quaerat est qui rem necessitatibus nisi autem.', 'A nihil est ut omnis. Accusantium qui quos facilis eos debitis qui. Minus ea in animi. Debitis tempore nulla quam suscipit enim earum sed sed.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(10, 3, NULL, 'Iste aliquid quis ut porro.', 'iste-aliquid-quis-ut-porro', 'Enim velit culpa quo laudantium necessitatibus.', 'Tempora reiciendis omnis sed saepe velit rerum. Qui non omnis rerum distinctio dolores dolorem. Voluptas sint odit recusandae quod rerum in. Perspiciatis velit impedit ducimus quia.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(11, 4, NULL, 'Provident non cupiditate eum sapiente et beatae commodi.', 'provident-non-cupiditate-eum-sapiente-et-beatae-commodi', 'Occaecati sit modi fugiat.', 'Minima corrupti deleniti qui quia. Et voluptatem sed molestiae voluptatibus commodi. Molestiae ex explicabo rerum id sed quia. Ratione non totam quasi et sed et.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(12, 3, NULL, 'Molestias est non autem dolorem molestiae sed voluptatem.', 'molestias-est-non-autem-dolorem-molestiae-sed-voluptatem', 'Tempore temporibus officiis ullam porro et atque.', 'Maxime id suscipit porro autem magni et. Ipsum provident possimus temporibus beatae. Commodi dolore eos saepe officiis officiis impedit est. Sint sapiente recusandae consequatur vel dolorum.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(13, 5, NULL, 'Maxime error expedita maiores est rerum eveniet.', 'maxime-error-expedita-maiores-est-rerum-eveniet', 'Dolores sit dolorum ut pariatur nulla magni.', 'Debitis et harum repellat voluptatibus sed reiciendis quisquam. Assumenda minima architecto blanditiis est. Qui ratione non et vel. Est cum consequatur a asperiores. Facere exercitationem omnis deserunt iste delectus.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(14, 3, NULL, 'Eos necessitatibus ipsam dicta.', 'eos-necessitatibus-ipsam-dicta', 'Doloremque enim quis quia sint.', 'Natus iusto est nobis ducimus illum rerum. Asperiores occaecati cumque quo eum sed corrupti sapiente. Et magni delectus voluptatem minus a. Est enim molestias sit harum recusandae corporis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(15, 5, NULL, 'Consequatur placeat placeat ea beatae.', 'consequatur-placeat-placeat-ea-beatae', 'Tempora in voluptatem autem aut enim.', 'Fugiat vel eum explicabo explicabo alias in. Nesciunt est mollitia laboriosam eum aut expedita. Sunt eum fugit molestias reprehenderit aut et. Aut quas deleniti provident reiciendis error.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(16, 3, NULL, 'Aut perspiciatis voluptatem sapiente voluptatum odio.', 'aut-perspiciatis-voluptatem-sapiente-voluptatum-odio', 'Placeat enim voluptas fuga voluptas nemo.', 'Animi quo sapiente tempora quia voluptatem non. Et aut omnis officiis placeat.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(17, 4, NULL, 'Impedit excepturi deleniti maxime adipisci nam.', 'impedit-excepturi-deleniti-maxime-adipisci-nam', 'In vel iure qui esse ut officiis.', 'Beatae at harum eos ea est rerum provident. Dignissimos et sed voluptatem nihil. Tenetur voluptas atque praesentium quas. Aut non totam sequi aut ut qui et.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(18, 4, NULL, 'Harum incidunt sapiente magnam numquam sunt expedita.', 'harum-incidunt-sapiente-magnam-numquam-sunt-expedita', 'Officiis autem nesciunt laudantium voluptatibus fuga vel aut.', 'Perspiciatis rerum id commodi sequi quis mollitia veniam. Est doloribus dicta aliquam non possimus. Nesciunt id unde libero laboriosam vel cum. Officia voluptatum qui sunt accusantium assumenda facere.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(19, 5, NULL, 'Qui voluptatibus cum assumenda iure cum temporibus dolores.', 'qui-voluptatibus-cum-assumenda-iure-cum-temporibus-dolores', 'Voluptate doloribus accusamus fuga iure.', 'Ut sed quae vitae beatae illum ullam. Cum earum ipsa voluptatem quam quia dicta quidem est. Dolor nobis quo omnis et totam ad occaecati.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(20, 4, NULL, 'Sed deleniti dicta ullam incidunt aut dolore veniam.', 'sed-deleniti-dicta-ullam-incidunt-aut-dolore-veniam', 'Distinctio sit sit corporis laudantium repellat.', 'Autem error ut consequatur nihil magnam inventore. Magnam soluta ipsam nesciunt eum voluptate a consequatur rerum. Voluptas excepturi dicta cumque dolorem sint soluta similique excepturi. Cumque est inventore voluptatem aspernatur architecto beatae. Et aliquid ut et accusamus consequatur ipsam qui.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(21, 3, NULL, 'Animi et labore illo.', 'animi-et-labore-illo', 'Esse aut sunt quo porro.', 'Ab quam in suscipit dolore et dolorum quo consequatur. Aliquid perferendis sit et iste. Natus optio exercitationem quasi nisi corrupti. Id nihil suscipit voluptatum maiores temporibus.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(22, 4, NULL, 'Qui labore similique error necessitatibus.', 'qui-labore-similique-error-necessitatibus', 'Rerum et sapiente ut.', 'Velit labore aut voluptas id nostrum laboriosam est. Sed sit et cumque aut libero voluptatibus. Ut explicabo nulla omnis voluptatem perspiciatis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(23, 4, NULL, 'Quos rerum aut beatae minima dolor.', 'quos-rerum-aut-beatae-minima-dolor', 'Et temporibus nihil culpa sunt deserunt.', 'Ullam sint sit qui vitae. Non id aut doloribus natus doloribus consequuntur. Earum velit aut nemo est laborum omnis. Impedit aut voluptatem blanditiis distinctio.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(24, 4, NULL, 'Et accusantium sint quos cum itaque provident.', 'et-accusantium-sint-quos-cum-itaque-provident', 'Adipisci voluptas eos deleniti et corrupti esse.', 'Expedita quas sit impedit et quia amet. Voluptate nobis excepturi voluptas recusandae quia molestiae. Laudantium quod aut dolorum ipsa odio ut.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(25, 3, NULL, 'Nostrum suscipit ut exercitationem optio delectus.', 'nostrum-suscipit-ut-exercitationem-optio-delectus', 'Quas et excepturi soluta eveniet quia sunt totam quisquam.', 'Doloremque vitae repellat ea minus id. Fugit et quod et dolore quos vero. Consequatur omnis nobis fuga est laudantium harum est.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(26, 5, NULL, 'Vitae provident delectus dolorum quos incidunt ut voluptatem eum.', 'vitae-provident-delectus-dolorum-quos-incidunt-ut-voluptatem-eum', 'Rerum officia recusandae et quis voluptatem.', 'Totam qui numquam aut. Voluptatem in quas quos est inventore natus. Ex doloremque doloremque provident laborum voluptatum rem non. Voluptate quidem blanditiis voluptatem delectus voluptates assumenda.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(27, 2, NULL, 'Quisquam quo odit iure aut nam qui.', 'quisquam-quo-odit-iure-aut-nam-qui', 'Sequi vel consequatur molestiae.', 'Iusto dolor harum eaque. Voluptates sit sit voluptate facilis animi. Qui laboriosam fuga deleniti quis assumenda cumque.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(28, 1, NULL, 'Hic modi debitis aperiam nisi quas et optio.', 'hic-modi-debitis-aperiam-nisi-quas-et-optio', 'Suscipit dolorem natus ipsa vitae labore unde reprehenderit.', 'Non sit quo velit numquam vel repellat. Repellat dolor necessitatibus molestiae repudiandae. Et ut hic totam qui necessitatibus voluptas.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(29, 1, NULL, 'Dolores ut saepe ut neque dolores.', 'dolores-ut-saepe-ut-neque-dolores', 'Sunt at aliquid nemo neque.', 'Molestiae aut quo rerum ea. Magnam quis iste vel consequuntur et. Molestiae ea aliquid sunt laborum labore sed. Ullam provident quia quia et iste.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(30, 1, NULL, 'Architecto delectus nobis ducimus corrupti.', 'architecto-delectus-nobis-ducimus-corrupti', 'Nobis blanditiis dolorem facere nostrum magnam.', 'Et eligendi libero autem et aut. Animi omnis quis vel unde nam. Ipsa necessitatibus sit nobis neque. Atque facilis provident eos repellat.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(31, 1, NULL, 'Unde et tempora deserunt.', 'unde-et-tempora-deserunt', 'Placeat et velit non doloremque commodi aliquid et.', 'Consequuntur omnis rerum delectus ut sequi nesciunt corrupti. Cumque quisquam voluptatem voluptatem. Voluptate sit distinctio eius tempora.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(32, 1, NULL, 'Iure error maiores omnis ipsam omnis aut.', 'iure-error-maiores-omnis-ipsam-omnis-aut', 'Neque reiciendis labore vitae.', 'Ut sequi a et ipsum dicta et. Qui consequuntur magnam laudantium non sit. Ipsa consectetur aut maiores est sint. Sed illo rerum corrupti est beatae quis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(33, 1, NULL, 'Ipsam accusantium ut rerum.', 'ipsam-accusantium-ut-rerum', 'Tempora reiciendis id molestiae nesciunt laudantium.', 'Reprehenderit natus perspiciatis animi itaque veritatis numquam corporis. Blanditiis eum temporibus sequi dolorem itaque. Distinctio adipisci molestiae perspiciatis id.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(34, 4, NULL, 'Iste error nulla quas omnis.', 'iste-error-nulla-quas-omnis', 'Consectetur at nihil velit consequatur earum autem nam.', 'Molestias consequatur necessitatibus laborum voluptatem mollitia et deserunt. Distinctio ipsa autem ullam quia laudantium veniam eius. Saepe quia ipsam mollitia libero.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(35, 1, NULL, 'Totam delectus nulla autem a aut ipsa nam.', 'totam-delectus-nulla-autem-a-aut-ipsa-nam', 'Fuga qui ratione ea accusamus enim labore quaerat consectetur.', 'Saepe consequatur eos nam debitis amet reprehenderit sapiente. Dolorum totam quia voluptatem fugit. Eius velit sed debitis enim praesentium. Sint assumenda enim beatae et voluptates.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(36, 1, NULL, 'Sed vel unde quaerat.', 'sed-vel-unde-quaerat', 'Et eum dolor occaecati sint rem doloribus molestias.', 'Accusamus aut accusamus ea aut et reprehenderit omnis. Doloribus magnam suscipit blanditiis dolorum. Voluptatem iste nemo aut a quia.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(37, 2, NULL, 'Corporis dolor ea veritatis officia ratione.', 'corporis-dolor-ea-veritatis-officia-ratione', 'Quibusdam quibusdam quia natus ex.', 'Porro illum praesentium laborum. Architecto qui numquam in quia placeat enim. Iure sit voluptatum aut sint. Numquam eligendi temporibus rerum voluptates.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(38, 2, NULL, 'Autem quia ipsum ullam quis adipisci vel accusamus.', 'autem-quia-ipsum-ullam-quis-adipisci-vel-accusamus', 'Exercitationem quis repudiandae impedit deserunt voluptatibus praesentium.', 'Enim veritatis impedit esse ab facilis quia. Ex ut similique praesentium aut quam sed. Autem aut et veritatis sunt quo et. Aut reiciendis ea aperiam sunt sapiente voluptate.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(39, 2, NULL, 'Voluptatem velit voluptatibus est.', 'voluptatem-velit-voluptatibus-est', 'Dolores molestias et repudiandae sed minima sint.', 'Labore provident aut totam cumque praesentium vel sit ut. Aperiam et et qui aliquam. Rerum nam consequatur dicta cumque facilis. Alias omnis sit aut quia et aperiam illum.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(40, 1, NULL, 'Dolore non hic voluptatem incidunt dolores praesentium est.', 'dolore-non-hic-voluptatem-incidunt-dolores-praesentium-est', 'Dolor vel modi aut id quisquam.', 'Quo placeat reprehenderit architecto consequatur ea consequatur est. Natus iure qui sed quis. Ea reprehenderit ut laborum iusto est. Molestias et tenetur ut accusantium vel. Sunt laudantium ut ducimus quia natus iure quidem aperiam.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(41, 4, NULL, 'Expedita voluptas temporibus aut aut molestiae nisi perferendis illum.', 'expedita-voluptas-temporibus-aut-aut-molestiae-nisi-perferendis-illum', 'Laudantium illum velit neque odit.', 'Dolores aperiam tempore dolorum eos accusamus non expedita velit. Repellat similique et et sint dolorem iure. Quaerat dolor minima eum eum quia. Deleniti sed rerum similique rem dolore deserunt et at.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(42, 1, NULL, 'Omnis non nobis qui.', 'omnis-non-nobis-qui', 'Tempore vel ut nemo vero.', 'Cumque hic temporibus in illum. Ipsum corporis neque ab numquam incidunt saepe voluptas. Et est eaque quod consectetur id ut hic. Vel labore magnam commodi quam voluptatum.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(43, 2, NULL, 'Qui ab libero iure laboriosam dolor.', 'qui-ab-libero-iure-laboriosam-dolor', 'Et mollitia cupiditate ipsam accusamus facilis.', 'Occaecati dignissimos tempore mollitia quis id. Eum voluptatem harum placeat incidunt. Voluptas inventore fuga vero voluptas. Voluptate harum consectetur totam quo.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(44, 5, NULL, 'Reprehenderit fugit delectus eaque odio est.', 'reprehenderit-fugit-delectus-eaque-odio-est', 'Tempora sapiente veritatis ut animi illo incidunt et.', 'In aut accusamus dolore dolorem. Minus voluptas eligendi nihil et. Minus inventore maiores consequatur atque ab odit. Ut necessitatibus error esse.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(45, 2, NULL, 'Neque alias voluptas et eius.', 'neque-alias-voluptas-et-eius', 'Quod maxime quo quidem culpa quo.', 'Molestias maiores laboriosam laudantium nisi. Numquam repellendus quo deleniti molestiae explicabo. Dolores commodi numquam recusandae.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(46, 4, NULL, 'Vel omnis sed et omnis illum at unde necessitatibus.', 'vel-omnis-sed-et-omnis-illum-at-unde-necessitatibus', 'Qui ullam earum ipsa.', 'Ut corrupti molestias et voluptatem natus itaque et. Consequuntur et et esse quia. Voluptatum est sapiente dicta.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(47, 5, NULL, 'Laudantium at minima officiis reprehenderit saepe ipsum doloribus.', 'laudantium-at-minima-officiis-reprehenderit-saepe-ipsum-doloribus', 'Exercitationem nihil nemo aut sunt ea.', 'Nesciunt rerum ipsa voluptatem voluptatem ipsam minus aut. Velit dolores commodi ea mollitia nostrum. Ea quasi a aut repudiandae. Consequatur officia temporibus eum necessitatibus tempore facere debitis. Error distinctio impedit porro qui expedita.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(48, 4, NULL, 'Sapiente magni in repellendus voluptatem rerum.', 'sapiente-magni-in-repellendus-voluptatem-rerum', 'Sit voluptas itaque aut doloribus.', 'Sed quod ut aliquam qui et ducimus. Maxime quia sint cumque. Est est distinctio et qui ipsum aut. Quia expedita aut aperiam repudiandae.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(49, 3, NULL, 'Consequatur quisquam est sint nulla omnis commodi.', 'consequatur-quisquam-est-sint-nulla-omnis-commodi', 'Quas quam expedita non quibusdam unde vel.', 'Unde fugit molestiae reiciendis sed id numquam alias molestiae. Sequi et expedita eum tempora reiciendis. Omnis molestias aperiam voluptatem sit. Harum ea aut cupiditate est. Qui molestias ipsam voluptatem enim voluptatem iste.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(50, 3, NULL, 'Quia unde et repellat deserunt.', 'quia-unde-et-repellat-deserunt', 'Iste ut vel optio autem libero in nihil.', 'Non minus fuga temporibus. Hic veniam vel velit eos. Quo omnis dolore nam dolor. Asperiores sint repellat qui molestiae molestiae iure earum.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(51, 2, NULL, 'Quasi quis nesciunt vero est in architecto.', 'quasi-quis-nesciunt-vero-est-in-architecto', 'Voluptatum incidunt omnis quod incidunt ut beatae eum.', 'Quo rerum omnis et quo tenetur consequuntur inventore. Aut placeat laborum reprehenderit explicabo sed qui qui quia. Illo voluptas laboriosam minima quis.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(52, 5, NULL, 'Et ut provident velit officiis.', 'et-ut-provident-velit-officiis', 'Eveniet esse nulla commodi laboriosam quis accusamus quas.', 'Et necessitatibus non unde quidem fugit numquam. Neque aut dolor nostrum. Eum nihil consequuntur tempora sint quia totam quibusdam. Tempore et deleniti modi qui.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(53, 4, NULL, 'Qui aut dolorem molestiae.', 'qui-aut-dolorem-molestiae', 'Itaque quod distinctio sed adipisci.', 'Odit qui voluptatem qui maiores. Eveniet dolor officia quia. Et at ab quo et aut soluta.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(54, 4, NULL, 'Molestiae saepe quam vitae suscipit sit.', 'molestiae-saepe-quam-vitae-suscipit-sit', 'Sed excepturi quam ut dolore facere aut tempora.', 'Perferendis ipsa adipisci in quia iste sed nisi illum. Aut laborum et ut aut atque. Eos quisquam aperiam dolorem quas expedita soluta. Optio possimus aliquid consectetur officiis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(55, 5, NULL, 'Magni quia sed iusto ipsum consequatur sunt ut rerum.', 'magni-quia-sed-iusto-ipsum-consequatur-sunt-ut-rerum', 'Cupiditate dolor consequatur atque cupiditate reprehenderit.', 'Non maxime amet aut omnis. Eaque officiis dolore dolorum omnis est dolorem hic. Et deleniti nisi qui illo voluptates. Error ullam quia nisi eveniet minus eos eaque.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(56, 4, NULL, 'Voluptatem tempore dicta ut est autem sint autem.', 'voluptatem-tempore-dicta-ut-est-autem-sint-autem', 'Id sed repellendus quia vel fugit velit ut rerum.', 'Adipisci id est voluptatem molestiae eum explicabo consequatur. Mollitia nobis odit qui atque harum non saepe. Cumque velit delectus libero repellendus quod harum.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(57, 1, NULL, 'Magni beatae quibusdam eius cumque dolor.', 'magni-beatae-quibusdam-eius-cumque-dolor', 'Et cupiditate nulla quo officia.', 'Quisquam dolorem distinctio mollitia eum consequatur ut. Sequi dignissimos dignissimos non. Voluptatem doloremque soluta aperiam non. Perspiciatis dolor ipsam suscipit voluptatum.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(58, 1, NULL, 'Consequatur ullam dolor est in sit officia.', 'consequatur-ullam-dolor-est-in-sit-officia', 'Ullam et et qui voluptates.', 'Iusto doloremque sed sequi voluptatem. Aut qui repellendus ducimus vel nam. Sit aut aperiam esse asperiores repudiandae eos nemo. Perferendis corrupti sint saepe veniam voluptates.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(59, 2, NULL, 'Vel id dolor cum accusamus non.', 'vel-id-dolor-cum-accusamus-non', 'Ex non earum delectus.', 'Sed nisi deserunt fugit at. Ratione assumenda et est illo autem voluptatem error. Quos amet quis placeat distinctio adipisci sint odit. Quam quia vel nesciunt aspernatur velit.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(60, 1, NULL, 'Eius sit ea earum id perspiciatis.', 'eius-sit-ea-earum-id-perspiciatis', 'In nam quae dolore sit et cum dolores.', 'Consequatur consequuntur voluptatem enim repudiandae molestiae ab. Magni velit ipsa sunt recusandae et expedita. Consequatur error molestias distinctio qui nulla sunt aut.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(61, 4, NULL, 'Deserunt quia cum tenetur maiores voluptates dignissimos non voluptatem.', 'deserunt-quia-cum-tenetur-maiores-voluptates-dignissimos-non-voluptatem', 'Dolorum repellendus laudantium dolores deleniti est pariatur aut.', 'Sed ipsa nostrum repudiandae quia reprehenderit. Molestiae facilis iusto cumque amet. Possimus eaque quia dolores libero porro. Error omnis doloribus ut eum aspernatur.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(62, 5, NULL, 'Nobis repellendus sed id aliquid eius alias.', 'nobis-repellendus-sed-id-aliquid-eius-alias', 'Et fugit qui mollitia sed id.', 'Ut quo ad fuga et inventore doloremque. Vel pariatur iste eum incidunt et aut nam. Reprehenderit ipsa quis molestias voluptatem.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(63, 3, NULL, 'Architecto tempora sint ea architecto provident.', 'architecto-tempora-sint-ea-architecto-provident', 'Dolore vero mollitia ea.', 'Cupiditate sint vel officiis quasi sed. Vitae dignissimos expedita et veritatis animi. Earum assumenda sed et nam sed soluta. Consectetur quos enim quis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(64, 1, NULL, 'Accusamus in distinctio aliquid consectetur.', 'accusamus-in-distinctio-aliquid-consectetur', 'Illum accusantium hic vel perspiciatis enim.', 'Quis sequi error et nam. Dolor sint sequi reiciendis error error. Repellendus voluptas vel sed quam accusamus eius architecto. Est quasi nemo consequatur et.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(65, 1, NULL, 'Omnis quas quia animi perferendis fugit.', 'omnis-quas-quia-animi-perferendis-fugit', 'Reiciendis et quibusdam debitis quidem.', 'Magnam autem distinctio qui nihil. Ipsa expedita laudantium ratione debitis.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(66, 1, NULL, 'Placeat alias corrupti officia perferendis maiores laudantium.', 'placeat-alias-corrupti-officia-perferendis-maiores-laudantium', 'Officiis nihil similique rerum eaque ut ut soluta.', 'Voluptas harum neque et qui consequatur. Molestias repellat aut aut ad omnis accusantium assumenda. Eius atque doloribus id aut aliquam odio. Corporis vitae ut nihil quis.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(67, 3, NULL, 'Sed ab sit rerum eius.', 'sed-ab-sit-rerum-eius', 'Ipsa ut necessitatibus et.', 'Ea voluptates temporibus dolores aliquam facere. Nostrum eligendi et facere occaecati et officia atque. Quia doloribus voluptatem eos maxime.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(68, 5, NULL, 'Recusandae et earum voluptatem cum ex magni nesciunt.', 'recusandae-et-earum-voluptatem-cum-ex-magni-nesciunt', 'Aperiam quam voluptas velit.', 'Deserunt libero quia velit officiis rem aut. Unde iusto sequi enim assumenda ut qui. Sed qui atque non aut. Laboriosam omnis odio ea voluptate ducimus repellendus.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(69, 3, NULL, 'Animi sequi iste eos et.', 'animi-sequi-iste-eos-et', 'Voluptas quidem totam autem ipsum aut ut.', 'Enim illo vero iusto itaque quo molestias quo molestiae. Et alias ut tempore sunt itaque voluptatem iste molestiae. Unde odit sit asperiores molestiae autem sed amet. Fugit voluptas impedit eum perspiciatis possimus deserunt ipsa. Tempora illo voluptatem qui aliquid.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(70, 5, NULL, 'Id reprehenderit totam expedita corrupti rerum consectetur aspernatur.', 'id-reprehenderit-totam-expedita-corrupti-rerum-consectetur-aspernatur', 'Tenetur quo molestiae veritatis et modi.', 'Excepturi sed non et assumenda. Et omnis veniam et omnis et omnis.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(71, 3, NULL, 'Doloremque consequuntur dignissimos delectus enim ratione perspiciatis in.', 'doloremque-consequuntur-dignissimos-delectus-enim-ratione-perspiciatis-in', 'Iste est quia vel eaque.', 'Quos quia illo repellendus omnis. Harum dolore beatae id ut dolores nemo doloremque aliquam. Quam iure at ullam voluptates distinctio. Aperiam sequi officiis repellendus consequatur sed nesciunt sed.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(72, 4, NULL, 'Et exercitationem sed aliquam nulla.', 'et-exercitationem-sed-aliquam-nulla', 'Qui enim qui quia ipsam maxime.', 'Voluptates et aperiam sit eaque. Rerum nihil sed nulla eos quod sed. Cumque nostrum et cum et ipsum recusandae dolor. Omnis labore ipsum est quaerat sit ab. Eius repellendus voluptatem maxime laborum quo nihil dolores.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(73, 5, NULL, 'Ut exercitationem nisi repudiandae dolorem tempora eveniet magni.', 'ut-exercitationem-nisi-repudiandae-dolorem-tempora-eveniet-magni', 'Corrupti placeat sint labore quas.', 'Doloremque amet nulla eligendi in. Commodi consequuntur amet nesciunt totam enim. Eius voluptate dolorem commodi voluptas qui magni velit. Possimus rerum ducimus consequatur qui corporis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(74, 3, NULL, 'Quaerat autem molestiae fuga quo iste.', 'quaerat-autem-molestiae-fuga-quo-iste', 'Aut cupiditate dolorum id ut et laboriosam ea.', 'Esse illo praesentium amet ab quae consequatur dolorum. Velit corrupti quis at aut reiciendis nostrum repellendus. Nihil sapiente veritatis voluptatem omnis nemo est.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(75, 2, NULL, 'Adipisci omnis dolor maxime harum.', 'adipisci-omnis-dolor-maxime-harum', 'Sapiente aliquam eos voluptatem ut quia non.', 'Temporibus voluptate et aut qui hic autem est. Aut est recusandae aliquam ut accusamus sed blanditiis. Doloremque itaque vitae quis. Perferendis dolorem laborum eveniet et numquam facere. Expedita architecto a explicabo autem.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(76, 5, NULL, 'Tempora alias fuga deleniti consequuntur tempore dolor est eos.', 'tempora-alias-fuga-deleniti-consequuntur-tempore-dolor-est-eos', 'Velit odio aut quod.', 'Aspernatur non inventore maxime repellendus neque quia. Perferendis eius harum eveniet perspiciatis aut nihil. Laborum velit recusandae est praesentium. Odio dolores praesentium dignissimos quasi sit molestiae sed.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(77, 3, NULL, 'Sint dolores voluptas qui et ut aliquam.', 'sint-dolores-voluptas-qui-et-ut-aliquam', 'Voluptatem sapiente unde molestiae sed cumque at.', 'Eos et veniam quia assumenda et. Aut velit illo iusto. Modi ut vero ipsam optio neque molestiae possimus porro. Recusandae molestias et sunt qui est harum.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(78, 3, NULL, 'Nisi labore qui sit voluptatem beatae.', 'nisi-labore-qui-sit-voluptatem-beatae', 'Consequatur iste eos commodi voluptatibus corrupti sed.', 'Explicabo dolores mollitia aut modi. Aliquam nesciunt et ratione. Voluptatibus ducimus et earum ipsa nihil quod beatae minima. Et velit est adipisci consectetur doloribus voluptas illo.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(79, 5, NULL, 'Occaecati iure aut nobis tempora omnis.', 'occaecati-iure-aut-nobis-tempora-omnis', 'Quis reprehenderit quis qui ea voluptatem dolor magni est.', 'Voluptatem est aliquid eos ipsa. Doloribus omnis voluptates a assumenda vitae fugit et. Provident et harum rerum quas nihil maiores numquam non.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(80, 1, NULL, 'Debitis praesentium dolores enim.', 'debitis-praesentium-dolores-enim', 'Corporis et nisi deserunt eveniet enim modi autem et.', 'Tempore autem eaque deserunt. Eaque saepe eaque incidunt aut sed perferendis doloremque. Nobis rerum sed molestiae accusantium ut ut fuga. In quo nobis nam aperiam.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(81, 2, NULL, 'Veniam temporibus eos alias ab nisi.', 'veniam-temporibus-eos-alias-ab-nisi', 'Quod sint quo ab blanditiis provident voluptas voluptatem aut.', 'Repudiandae incidunt facere molestiae delectus veritatis voluptas similique. Ut quas reiciendis sed et id dolorem sed. Totam quisquam velit aperiam qui omnis quasi. Quis dolor nulla unde et est at omnis qui.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(82, 1, NULL, 'Ut nam enim eum explicabo quia ut quibusdam.', 'ut-nam-enim-eum-explicabo-quia-ut-quibusdam', 'Veniam rem quidem nihil.', 'Accusamus soluta in totam reprehenderit voluptas vel. Vitae unde esse assumenda est. Quia iusto non quo cum sed eos at. Cupiditate et et dolores aspernatur autem iusto.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(83, 1, NULL, 'Suscipit nobis quisquam aspernatur sint.', 'suscipit-nobis-quisquam-aspernatur-sint', 'Provident similique voluptas non dolore.', 'Veniam qui recusandae doloremque accusantium veniam consectetur molestiae. Quis minima ipsa voluptate aspernatur ad quod aut. Nemo ipsam consequatur dolores libero. Tempore voluptatem ut velit voluptatem.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(84, 2, NULL, 'At hic deserunt quod aliquam id repellat laboriosam.', 'at-hic-deserunt-quod-aliquam-id-repellat-laboriosam', 'Et aut quo cupiditate id.', 'Iusto consequuntur ea iusto aut exercitationem quis fuga sed. Delectus qui voluptas omnis est. Rerum magni ipsum ut qui officiis iusto et.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(85, 4, NULL, 'Dolore repudiandae incidunt enim facere.', 'dolore-repudiandae-incidunt-enim-facere', 'Saepe dolore in sunt molestiae non.', 'Laboriosam reprehenderit non nesciunt voluptatem quasi est occaecati nesciunt. Omnis aut facere excepturi sed non tempora. Molestiae aut in aut aliquid. Reprehenderit sit et odit consequuntur in sapiente aut dolore.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(86, 1, NULL, 'Vitae omnis expedita eligendi quod debitis et nisi qui.', 'vitae-omnis-expedita-eligendi-quod-debitis-et-nisi-qui', 'Dignissimos saepe eum sed accusantium quisquam et quia sit.', 'Nemo a velit ut in. Necessitatibus aliquid dolores possimus nemo. Consequatur voluptatem aut neque qui fugit. Minus odio molestias quis.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(87, 1, NULL, 'Iusto omnis non aut ad ratione.', 'iusto-omnis-non-aut-ad-ratione', 'Sed et illo illum laudantium.', 'Dolores quibusdam nostrum ipsam omnis ut. Fugit distinctio ea praesentium pariatur perspiciatis sed. Sunt inventore perferendis vel voluptatem et quos doloremque. Asperiores minus consequatur eum distinctio excepturi possimus aut.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(88, 2, NULL, 'Aut est et qui ipsa odio a laborum.', 'aut-est-et-qui-ipsa-odio-a-laborum', 'Iste ut fugit ullam enim.', 'Beatae velit non distinctio ipsum voluptas laudantium. Tempora optio ratione possimus magni odio in nulla repellat. Voluptas adipisci et omnis mollitia assumenda quaerat soluta.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(89, 3, NULL, 'Cupiditate exercitationem rerum cum molestiae dolorum aut.', 'cupiditate-exercitationem-rerum-cum-molestiae-dolorum-aut', 'Aut est dolorum non ullam esse deleniti quia sapiente.', 'Consequuntur nulla odio similique vero alias quidem. Est porro quia dolor expedita. Porro quidem perferendis incidunt recusandae sequi consequatur hic. Facilis perspiciatis pariatur fuga.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(90, 1, NULL, 'Maxime ea qui architecto.', 'maxime-ea-qui-architecto', 'Ut quas non aspernatur corrupti et quaerat illum.', 'Sed qui voluptatibus quidem voluptatum qui qui. Ad in quos quam harum sint aliquid rerum. Dolorum ut quis inventore eum unde quidem. Consequatur voluptatem est qui recusandae aut.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(91, 4, NULL, 'Corporis quas non iure natus deleniti aperiam sit at.', 'corporis-quas-non-iure-natus-deleniti-aperiam-sit-at', 'Aliquam vel repudiandae sed in non.', 'A et rem officiis non ut inventore reprehenderit. Consequatur harum dolorum est et velit. Et id labore quisquam quis minus at. Quisquam ea non autem mollitia ut laboriosam totam fuga.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(92, 3, NULL, 'Temporibus doloremque omnis sit doloremque.', 'temporibus-doloremque-omnis-sit-doloremque', 'Qui reprehenderit soluta debitis architecto.', 'Perferendis iure qui ullam quae ut. Tenetur quis pariatur laudantium nobis exercitationem. Non est voluptates autem omnis vero.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(93, 3, NULL, 'Dolores velit perferendis illum dolor.', 'dolores-velit-perferendis-illum-dolor', 'Eos quia sunt voluptatibus.', 'Voluptates deleniti necessitatibus et mollitia quasi laborum. Voluptas molestias et molestias sapiente similique culpa. Voluptates in et omnis ut.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(94, 5, NULL, 'Non ipsa velit dolorem sunt.', 'non-ipsa-velit-dolorem-sunt', 'Nam suscipit hic voluptatem.', 'Tempora alias et quis qui magnam. Rem soluta sunt molestias. Molestiae deserunt labore necessitatibus animi.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(95, 4, NULL, 'Consequatur non aliquam sit adipisci voluptatem.', 'consequatur-non-aliquam-sit-adipisci-voluptatem', 'Quibusdam nesciunt quam sint omnis aut et non velit.', 'Est impedit sequi at commodi laudantium nulla. Totam doloribus alias iure doloribus. Enim et quas quo molestias.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(96, 4, NULL, 'Eligendi qui et porro architecto.', 'eligendi-qui-et-porro-architecto', 'Iure saepe totam asperiores ad odit error perferendis.', 'Molestiae neque dicta facilis tenetur nihil officiis neque. Recusandae reprehenderit laboriosam ullam sed. Eligendi optio magni eaque blanditiis asperiores.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(97, 4, NULL, 'Facilis quo delectus nobis maiores magni.', 'facilis-quo-delectus-nobis-maiores-magni', 'Autem quae placeat sed sint voluptatem inventore maxime.', 'Sed autem commodi odit reprehenderit. Incidunt enim perferendis minima necessitatibus eum. Nulla esse architecto reiciendis iusto rerum vel esse rerum. Laudantium laudantium modi ut ratione.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(98, 4, NULL, 'Blanditiis rerum ullam non nihil in numquam eius.', 'blanditiis-rerum-ullam-non-nihil-in-numquam-eius', 'Error corporis cupiditate corrupti error qui illo dolorem.', 'Magni ea et laboriosam tempore quidem natus impedit iusto. Nostrum est voluptatem consequatur ut repellat et.', 'post', '1', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(99, 1, NULL, 'Reprehenderit nulla impedit non aut sint unde.', 'reprehenderit-nulla-impedit-non-aut-sint-unde', 'Placeat qui libero odit architecto vel quidem molestias maxime.', 'Quis odio labore dolor velit ut ducimus quia. Eaque et distinctio voluptas temporibus provident consequatur voluptate in. Perferendis qui possimus qui laboriosam beatae. Alias impedit aperiam non unde.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24'),
(100, 1, NULL, 'Sint asperiores pariatur modi voluptas magnam est architecto.', 'sint-asperiores-pariatur-modi-voluptas-magnam-est-architecto', 'Id qui necessitatibus atque quas.', 'Sit placeat quis et officiis sint non. Illo et quaerat et esse amet et. Unde nihil voluptatem et culpa et perferendis. Quas qui quisquam quas harum.', 'post', '0', '2020-08-06 21:57:24', '2020-08-06 21:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adriel Bode', 'rdavis@example.com', '2020-08-06 21:53:45', '$2y$10$ydXQmWBxNyyql5Ri.v7oRuIxhdepzUmwdrXakSEtMTH2so2JISBxm', 'y7ZvFDT92K', '2020-08-06 21:53:46', '2020-08-06 21:53:46'),
(2, 'Agustina Powlowski', 'maud04@example.net', '2020-08-06 21:53:45', '$2y$10$v1tx1ODVBfawH1MB3lfz5.jWYOqvaR6A.YoVln6ObS0GNGabMxPsC', 'kMNFfdVcEc', '2020-08-06 21:53:46', '2020-08-06 21:53:46'),
(3, 'Kali Braun', 'mallie.okuneva@example.org', '2020-08-06 21:53:45', '$2y$10$3IZYDVwQfoMqeTOOlvgIZ.2yu/JmdeFVRnYS6vriqBPHPQH99Xbuu', 'ysEDdBq4Oy', '2020-08-06 21:53:46', '2020-08-06 21:53:46'),
(4, 'Brando Dooley MD', 'trudie30@example.com', '2020-08-06 21:53:45', '$2y$10$K5ujEenuu1xlEZF8BvjMAOJfEDIB701KP2DV1eqOl5YvBCbVLwvMm', 'W0cY14TY43', '2020-08-06 21:53:46', '2020-08-06 21:53:46'),
(5, 'Marta Batz', 'cary.littel@example.net', '2020-08-06 21:53:45', '$2y$10$WwWBdRAiZiulPhyzVyd8GOZNiF1lsUbdTvNOD4T1NLVJegW787eLO', 'vpgC1PtKV6', '2020-08-06 21:53:46', '2020-08-06 21:53:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_user_id_foreign` (`user_id`),
  ADD KEY `categories_is_published_unique` (`is_published`) USING BTREE;

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_posts_category_id_foreign` (`category_id`),
  ADD KEY `category_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
