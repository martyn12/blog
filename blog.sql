-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 19 2023 г., 18:42
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AUR', '2023-03-22 11:28:21', '2023-03-22 11:28:21', NULL),
(2, 'brakes', '2023-03-22 11:28:27', '2023-03-22 11:28:27', NULL),
(3, 'topless', '2023-03-22 11:28:32', '2023-03-22 11:28:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `message`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Мой коммент!', 5, 1, '2023-03-25 03:25:51', '2023-03-25 03:25:51'),
(2, 'Secnd comments', 5, 1, '2023-03-25 03:36:09', '2023-03-25 03:36:09'),
(3, 'dadwa', 5, 1, '2023-03-25 03:38:45', '2023-03-25 03:38:45'),
(4, 'dadsadsadacxzcxsv!!!!21e21e12', 5, 3, '2023-03-25 04:12:02', '2023-03-25 04:12:02');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '37a6cc48-0232-4668-b324-95cd36482cd4', 'database', 'default', '{\"uuid\":\"37a6cc48-0232-4668-b324-95cd36482cd4\",\"displayName\":\"App\\\\Notifications\\\\SendVerifyWithQueueNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:49:\\\"App\\\\Notifications\\\\SendVerifyWithQueueNotification\\\":1:{s:2:\\\"id\\\";s:36:\\\"62234431-fd35-4bcd-a58d-d9bf9d2741af\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code \"250\" but got empty code. in D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php:338\nStack trace:\n#0 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(201): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode(\'\', Array)\n#1 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#2 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(259): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#3 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(218): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doMailFromCommand(\'hello@example.c...\')\n#4 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(539): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(303): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(67): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#9 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(App\\Models\\User), Object(App\\Notifications\\SendVerifyWithQueueNotification))\n#10 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(App\\Models\\User), \'fa124046-6a55-4...\', Object(App\\Notifications\\SendVerifyWithQueueNotification), \'mail\')\n#11 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#12 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(109): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#13 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(App\\Notifications\\SendVerifyWithQueueNotification), Array)\n#14 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\SendQueuedNotifications.php(112): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(App\\Notifications\\SendVerifyWithQueueNotification), Array)\n#15 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#16 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#22 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#23 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#25 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#26 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#27 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#29 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(434): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(384): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(175): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(136): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(119): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(194): Illuminate\\Container\\Container->call(Array)\n#41 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(164): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\OSPanel\\domains\\blog.loc\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\OSPanel\\domains\\blog.loc\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\OSPanel\\domains\\blog.loc\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}', '2023-03-25 09:31:19');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_15_145300_create_categories_table', 1),
(7, '2023_03_15_145320_create_tags_table', 1),
(8, '2023_03_15_145354_create_posts_table', 1),
(9, '2023_03_15_145557_create_post_tag_table', 1),
(10, '2023_03_18_055433_add_column_soft_deletes_to_categories_table', 1),
(11, '2023_03_18_062741_add_column_soft_deletes_to_tags_table', 1),
(12, '2023_03_18_070000_add_column_soft_deletes_to_posts_table', 1),
(13, '2023_03_18_095241_add_columns_preview_image_and_main_image_to_posts', 1),
(14, '2023_03_19_155005_add_column_role_to_users_table', 1),
(15, '2023_03_21_135540_create_jobs_table', 2),
(17, '2023_03_22_152918_create_post_user_likes_table', 3),
(21, '2023_03_23_142542_create_comments_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `preview_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category_id`, `created_at`, `updated_at`, `deleted_at`, `preview_image`, `main_image`) VALUES
(1, 'Test post 1', '<div>Задача организации, в особенности же дальнейшее развитие различных форм деятельности позволяет выполнить важнейшие задания по разработке экономической целесообразности принимаемых решений. Повседневная практика показывает, что постоянное информационно-техническое обеспечение нашей деятельности представляет собой интересный эксперимент проверки форм воздействия! Дорогие друзья, сложившаяся структура организации представляет собой интересный эксперимент проверки существующих финансовых и административных условий?</div><div><br></div><div><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Задача организации</font>, в особенности же социально-экономическое развитие в значительной степени обуславливает создание модели развития? Повседневная практика показывает, что выбранный нами инновационный путь играет важную роль в формировании форм воздействия. Практический опыт показывает, что начало повседневной работы по формированию позиции создаёт предпосылки качественно новых шагов для новых предложений. Задача организации, в особенности же консультация с профессионалами из IT обеспечивает актуальность экономической целесообразности принимаемых решений.</div><div><br></div><div>Не следует, однако, забывать о том, что рамки и место обучения кадров требует от нас анализа экономической целесообразности принимаемых решений? Таким образом, реализация намеченного плана развития влечет за собой процесс внедрения и модернизации форм воздействия. Соображения высшего порядка, а также постоянное информационно-техническое обеспечение нашей деятельности представляет собой интересный эксперимент проверки системы масштабного изменения ряда параметров? Не следует, однако, забывать о том, что сложившаяся структура организации позволяет оценить значение форм воздействия.</div><div><br></div><div><i>Повседневная практика показывает, что консультация с профессионалами из IT требует от нас системного анализа экономической целесообразности...</i></div>', 2, '2023-03-22 12:32:58', '2023-03-25 02:28:16', NULL, 'images/Z07199dUyKtA5ZZcdaKToiPWVSGnNCmB8y5c2Rvb.png', 'images/RSmY2brfLDUx9iiOAwwHABxC5wgc9S8UCrpcB9E9.jpg'),
(2, 'Test post 22', 'Test post <u>222222</u>', 1, '2023-03-22 12:33:21', '2023-03-22 12:44:44', '2023-03-22 12:44:44', 'images/kbEoXR2RVYNcyAiGtXQF3Tg1L956UKYDja9HI1WZ.png', 'images/2NO4itfSg9x7sY0vcnDiaLPc5Eu9mNiGxp1xPfSu.jpg'),
(3, 'post post', 'sss blue angel comes by', 3, '2023-03-23 12:15:43', '2023-03-23 12:15:43', NULL, 'images/uyiLz2eSIHxMtjbXVJrRJM8JdS6gfCHqmfNhA6B8.png', 'images/vA6zv5ufpeYd4RnZ6eAjvIFGRDLpQVawCGCy4Gxn.jpg'),
(4, 'Some post', 'Some text', 1, '2023-03-23 12:16:04', '2023-03-23 12:16:04', NULL, 'images/5aTMyzcnuEMazLF7Axvbee3WvUWDC6j7YIjaOw9a.jpg', 'images/rkJjSYYZSFkGhEvTk83wOancwkOJzzbKgJRQfYPk.png'),
(5, 'Shrek strikes back!', 'Shrek strikes back!', 2, '2023-03-23 12:16:36', '2023-03-23 12:16:36', NULL, 'images/jntVmrQaNoowmqrRP3YS5QmoP6AsrdxuNUkQUQSL.jpg', 'images/lLfTldW4uzYWNdPGNQBEr7tbrBksWRh3Xg1Vychr.png'),
(6, 'Yummy', 'Food for rich peoplr', 2, '2023-03-24 12:07:39', '2023-03-24 12:07:39', NULL, 'images/dh7IuQf1l5cbdLJjIEbfRRzpPktzPYbRV1dNlYPb.jpg', 'images/KXUXEdo9Gi1WeNOMBWVw5W7ddKqO9BmH2lqUepZ4.png'),
(7, 'Operation grande burrito', 'Operation grande burrito bodyyyy', 1, '2023-03-24 12:08:08', '2023-03-24 12:08:08', NULL, 'images/kLFzP14HWuh6oBwC6HnAT1UmF5hkKWPvo7dyS9it.jpg', 'images/0oagThc7hmrZRUrBZ5jxTKG6t7gZS8FEa1H2OXSz.png'),
(8, 'New outsiders team', 'Won the major', 3, '2023-03-24 12:08:41', '2023-03-24 12:08:41', NULL, 'images/0JxCL33PwBWsATG9c7kHQBabnkAsZJudmUza2V8r.jpg', 'images/CCRsePYLcHTpjZ9FaFWielfw2hcMVUyY0o3DXohp.png'),
(9, 'Post about sadness', 'Stop feeling sorry for yourself!', 2, '2023-03-24 12:09:15', '2023-03-24 12:09:15', NULL, 'images/y29IIrbP4Q95W8dCToOHNDEwe0EuXkJoBwWGaoRu.png', 'images/Rbk2xRZcjc75Fuepa4dtZ8GTtpuKdr6d49Ukzk6L.png'),
(10, 'One guy who made an ogre', 'That ogre was a hanma yujiro', 3, '2023-03-24 12:09:47', '2023-03-24 12:09:47', NULL, 'images/Xhf4DMcuQ63tc9J7lsfFTupBizmz9dXpcgRh6vls.jpg', 'images/bIMVl4CRK9inx7OlA529fRPi4mbq1RhIgzdSDHh4.jpg'),
(11, 'baby oooo', 'sadsadsadsadsa', 2, '2023-03-24 12:22:25', '2023-03-24 12:22:25', NULL, 'images/0sZubBwS2OMjUb4HLRwqNT6W2JFIbbqkVF54KBgi.jpg', 'images/auiN0jlvQfGZ4F3U7yweTbixhMzxIl9rAhNvQSFA.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 3, 2, NULL, NULL),
(8, 4, 2, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 6, 2, NULL, NULL),
(11, 6, 3, NULL, NULL),
(12, 7, 1, NULL, NULL),
(13, 8, 2, NULL, NULL),
(14, 8, 3, NULL, NULL),
(15, 9, 1, NULL, NULL),
(16, 9, 2, NULL, NULL),
(17, 10, 1, NULL, NULL),
(18, 10, 2, NULL, NULL),
(19, 11, 1, NULL, NULL),
(20, 11, 2, NULL, NULL),
(21, 1, 2, NULL, NULL),
(22, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_user_likes`
--

CREATE TABLE `post_user_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_user_likes`
--

INSERT INTO `post_user_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 5, NULL, NULL),
(6, 6, 4, NULL, NULL),
(7, 6, 2, NULL, NULL),
(18, 6, 4, NULL, NULL),
(19, 6, 2, NULL, NULL),
(20, 6, 5, NULL, NULL),
(21, 6, 27, NULL, NULL),
(22, 6, 28, NULL, NULL),
(23, 8, 2, NULL, NULL),
(25, 8, 30, NULL, NULL),
(26, 7, 2, NULL, NULL),
(27, 7, 5, NULL, NULL),
(35, 3, 5, NULL, NULL),
(36, 1, 5, NULL, NULL),
(37, 8, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'npl', '2023-03-22 11:28:40', '2023-03-22 11:28:40', NULL),
(2, 'wage', '2023-03-22 11:28:44', '2023-03-22 11:28:44', NULL),
(3, 'scx', '2023-03-22 11:28:48', '2023-03-22 11:28:48', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'kazah', 'kazah@jac', NULL, '$2y$10$9bJUxITTDg.yWvde/m7TYeZNS7XkOpLfiwIGHJ5Q1wVJamVTpo6/y', NULL, '2023-03-20 13:05:04', '2023-03-20 13:05:04', 1),
(2, 'Сергей Масло', 'sergey@gmail.com', '2023-03-20 13:16:36', '$2y$10$bQdLtL6cvK2KdkFp8zYdXu6SZbsNXwfwoPMn/PoyNAYOWZpgKFcJO', NULL, '2023-03-20 13:06:37', '2023-03-20 13:16:36', 0),
(3, 'Чикабамбони', 'lanphest@mail.ru', NULL, '$2y$10$4e5ZHvREthPm8NGmowR2j.6YVkgYYoirOCuQl4ynuEBIvU39N.a8K', NULL, '2023-03-20 13:07:48', '2023-03-20 13:07:48', 1),
(4, 'polya', 'polya@polya', NULL, '$2y$10$Z0BpBqmnwynvNJHsTmCfN.U58doXQkjHIaIL5a9UphOnO1fPMeDpi', NULL, '2023-03-20 13:12:39', '2023-03-20 13:12:39', 1),
(5, 'admin', 'admin@admin.cc', '2023-03-21 11:17:29', '$2y$10$YigPGZ/rgDyZmBUQIawuv.PSRwpeFiEhkCZNJVFR9iyLaOPK3EoZW', NULL, '2023-03-21 11:17:22', '2023-03-21 11:19:03', 0),
(23, 'dsdsds', 'ccccc@ew', NULL, '$2y$10$MTRyoBBaIC.bN6z2fgg5pO46vXD2OVHp71xXInCbSp4b5chRwrYo2', NULL, '2023-03-21 12:42:28', '2023-03-21 12:42:28', 1),
(24, 'Александр', 'some@gmail.com', '2023-03-21 13:12:13', '$2y$10$YclJCvnkbeI5whh5Dl5IfO.BbX7EXeqUvu8l0Pytk7kYilXdFh.be', NULL, '2023-03-21 13:11:49', '2023-03-21 13:12:13', 1),
(25, 'dasda', 'dada@dd', NULL, '$2y$10$U3uhS1ECqHEAXW9c817TE.ckDxrD39gvIdSmabLmuKOHVt3AYaUMq', NULL, '2023-03-21 13:17:00', '2023-03-21 13:17:00', 1),
(26, 'aaaa', 'aaa@as', NULL, '$2y$10$iK.fk44a9Z1sTU0oUvFElOikgkLP7b4lRQSWszc7jpHShWwKYM1z6', NULL, '2023-03-21 14:05:49', '2023-03-21 14:05:49', 1),
(27, 'ssss', 'as@ss', NULL, '$2y$10$NJPETUJeIwzwMnfVGDp0BOXssU.iXAr3qAo4HrIKppJH2twkhaJS2', NULL, '2023-03-21 14:07:56', '2023-03-21 14:07:56', 1),
(28, 'sdsdsdsds', 'dsdsds@ss', NULL, '$2y$10$PuaieolwuXcazyiEtUrzY.96RLBzYARph1UUH4UtF.KWYy52nJJp6', NULL, '2023-03-21 14:09:05', '2023-03-21 14:09:05', 1),
(30, 'test', 'tes@ww', NULL, '$2y$10$O9OdtgUo2BOaPgMv.2mRlur6pq9YlgiA5N5PUOEnPpISz/a2qXYnK', NULL, '2023-03-22 11:00:31', '2023-03-22 11:00:31', 1),
(31, 'wwwww', 'www@ss', '2023-03-22 11:03:34', '$2y$10$3ntiKHfpYULH67E8.lOybOH74N7ZFnPMi0mabrYMbYjra8gbAOWT.', NULL, '2023-03-22 11:01:52', '2023-03-22 11:03:34', 1),
(32, 'sire', 'sire@ws', NULL, '$2y$10$td7zbvd64lJsCcOYUPENFOJBnAsnaXIqjuSc2czgW1J5wu0.nXIx6', NULL, '2023-03-22 11:46:18', '2023-03-22 11:46:18', 1),
(33, 'Emelya', 'emelya@reu.com', '2023-03-25 09:29:56', '$2y$10$J2moeNsoeb/mPURnx1FIBe6K2zflToYMT/ttFT30HFs1x5lB2ugkC', NULL, '2023-03-25 09:28:30', '2023-03-25 09:29:56', 1),
(34, 'dante', 'dante@gmail.com', '2023-03-25 09:32:02', '$2y$10$RUxUJLwoQTFxq.PtEVE9.O0oXS/itxvkZusnv1bQd4Pou.pQLF6bW', NULL, '2023-03-25 09:31:17', '2023-03-25 09:32:02', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`),
  ADD KEY `post_id_idx` (`post_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_idx` (`post_id`),
  ADD KEY `post_tag_tag_idx` (`tag_id`);

--
-- Индексы таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pul_post_idx` (`post_id`),
  ADD KEY `pul_user_idx` (`user_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comment_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD CONSTRAINT `pul_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `pul_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
