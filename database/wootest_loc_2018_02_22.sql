-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 22 2018 г., 10:00
-- Версия сервера: 5.6.34
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wootest_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-14 07:21:00', '2018-02-14 07:21:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 20, 'WooCommerce', 'woocommerce@wootest.loc', '', '', '2018-02-14 20:47:04', '2018-02-14 20:47:04', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 21, 'woodmin', 'dmykos@gmail.com', '', '', '2018-02-14 21:04:35', '2018-02-14 21:04:35', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wootest.loc', 'yes'),
(2, 'home', 'http://wootest.loc', 'yes'),
(3, 'blogname', 'Woo test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'dmykos@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:185:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"movie/?$\";s:25:\"index.php?post_type=movie\";s:38:\"movie/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=movie&feed=$matches[1]\";s:33:\"movie/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=movie&feed=$matches[1]\";s:25:\"movie/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=movie&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"movie/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"movie/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"movie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"movie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"movie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"movie/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"movie/([^/]+)/embed/?$\";s:38:\"index.php?movie=$matches[1]&embed=true\";s:26:\"movie/([^/]+)/trackback/?$\";s:32:\"index.php?movie=$matches[1]&tb=1\";s:46:\"movie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?movie=$matches[1]&feed=$matches[2]\";s:41:\"movie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?movie=$matches[1]&feed=$matches[2]\";s:34:\"movie/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?movie=$matches[1]&paged=$matches[2]\";s:41:\"movie/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?movie=$matches[1]&cpage=$matches[2]\";s:31:\"movie/([^/]+)/wc-api(/(.*))?/?$\";s:46:\"index.php?movie=$matches[1]&wc-api=$matches[3]\";s:37:\"movie/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:48:\"movie/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"movie/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?movie=$matches[1]&page=$matches[2]\";s:22:\"movie/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"movie/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"movie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"movie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"movie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"movie/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"movie_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?movie_category=$matches[1]&feed=$matches[2]\";s:50:\"movie_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?movie_category=$matches[1]&feed=$matches[2]\";s:31:\"movie_category/([^/]+)/embed/?$\";s:47:\"index.php?movie_category=$matches[1]&embed=true\";s:43:\"movie_category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?movie_category=$matches[1]&paged=$matches[2]\";s:25:\"movie_category/([^/]+)/?$\";s:36:\"index.php?movie_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:31:\"kint-debugger/kint-debugger.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:8:{i:1519283399;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1519284060;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519284070;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519284266;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519323923;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519344000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520294400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519280849;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519281756;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519281757;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:21:\"twentyseventeen-child\";s:3:\"0.1\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(142, 'woocommerce_store_address', '1600 Amphitheatre Parkway Mountain View', 'yes'),
(143, 'woocommerce_store_address_2', '', 'yes'),
(144, 'woocommerce_store_city', 'Mountain View', 'yes'),
(145, 'woocommerce_default_country', 'US:CA', 'yes'),
(146, 'woocommerce_store_postcode', 'CA 94043', 'yes'),
(147, 'woocommerce_allowed_countries', 'all', 'yes'),
(148, 'woocommerce_all_except_countries', '', 'yes'),
(149, 'woocommerce_specific_allowed_countries', '', 'yes'),
(150, 'woocommerce_ship_to_countries', '', 'yes'),
(151, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(152, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(153, 'woocommerce_calc_taxes', 'no', 'yes'),
(154, 'woocommerce_currency', 'USD', 'yes'),
(155, 'woocommerce_currency_pos', 'left', 'yes'),
(156, 'woocommerce_price_thousand_sep', ',', 'yes'),
(157, 'woocommerce_price_decimal_sep', '.', 'yes'),
(158, 'woocommerce_price_num_decimals', '2', 'yes'),
(159, 'woocommerce_shop_page_id', '4', 'yes'),
(160, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(161, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(162, 'woocommerce_weight_unit', 'kg', 'yes'),
(163, 'woocommerce_dimension_unit', 'cm', 'yes'),
(164, 'woocommerce_enable_reviews', 'yes', 'yes'),
(165, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(166, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(167, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(168, 'woocommerce_review_rating_required', 'yes', 'no'),
(169, 'woocommerce_manage_stock', 'yes', 'yes'),
(170, 'woocommerce_hold_stock_minutes', '60', 'no'),
(171, 'woocommerce_notify_low_stock', 'yes', 'no'),
(172, 'woocommerce_notify_no_stock', 'yes', 'no'),
(173, 'woocommerce_stock_email_recipient', 'dmykos@gmail.com', 'no'),
(174, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(175, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(176, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(177, 'woocommerce_stock_format', '', 'yes'),
(178, 'woocommerce_file_download_method', 'force', 'no'),
(179, 'woocommerce_downloads_require_login', 'no', 'no'),
(180, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(181, 'woocommerce_prices_include_tax', 'no', 'yes'),
(182, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(183, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(184, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(185, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(186, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(187, 'woocommerce_tax_display_cart', 'excl', 'no'),
(188, 'woocommerce_price_display_suffix', '', 'yes'),
(189, 'woocommerce_tax_total_display', 'itemized', 'no'),
(190, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(191, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(192, 'woocommerce_ship_to_destination', 'billing', 'no'),
(193, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(194, 'woocommerce_enable_coupons', 'yes', 'yes'),
(195, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(196, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(197, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(198, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(199, 'woocommerce_cart_page_id', '5', 'yes'),
(200, 'woocommerce_checkout_page_id', '6', 'yes'),
(201, 'woocommerce_terms_page_id', '', 'no'),
(202, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(203, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(204, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(205, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(206, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(207, 'woocommerce_myaccount_page_id', '7', 'yes'),
(208, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(209, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(210, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(211, 'woocommerce_registration_generate_username', 'yes', 'no'),
(212, 'woocommerce_registration_generate_password', 'no', 'no'),
(213, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(214, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(215, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(216, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(217, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(218, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(219, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(220, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(221, 'woocommerce_email_from_name', 'Woo test', 'no'),
(222, 'woocommerce_email_from_address', 'dmykos@gmail.com', 'no'),
(223, 'woocommerce_email_header_image', '', 'no'),
(224, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(225, 'woocommerce_email_base_color', '#96588a', 'no'),
(226, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(227, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(228, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(229, 'woocommerce_api_enabled', 'yes', 'yes'),
(230, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(231, 'current_theme_supports_woocommerce', '1', 'yes'),
(233, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(234, 'product_cat_children', 'a:0:{}', 'yes'),
(235, 'default_product_cat', '15', 'yes'),
(238, 'woocommerce_version', '3.3.1', 'yes'),
(239, 'woocommerce_db_version', '3.3.1', 'yes'),
(240, 'recently_activated', 'a:0:{}', 'yes'),
(241, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(242, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(243, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(258, 'woocommerce_product_type', 'virtual', 'yes'),
(259, 'woocommerce_allow_tracking', 'no', 'yes'),
(263, 'woocommerce_stripe_settings', 'a:24:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";s:16:\"dmykos@gmail.com\";s:20:\"apple_pay_domain_set\";s:2:\"no\";s:5:\"title\";s:20:\"Credit Card (Stripe)\";s:11:\"description\";s:37:\"Pay with your credit card via Stripe.\";s:8:\"testmode\";s:3:\"yes\";s:20:\"test_publishable_key\";s:0:\"\";s:15:\"test_secret_key\";s:0:\"\";s:15:\"publishable_key\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";s:14:\"inline_cc_form\";s:2:\"no\";s:20:\"statement_descriptor\";s:0:\"\";s:7:\"capture\";s:3:\"yes\";s:14:\"three_d_secure\";s:2:\"no\";s:15:\"stripe_checkout\";s:2:\"no\";s:14:\"stripe_bitcoin\";s:2:\"no\";s:21:\"stripe_checkout_image\";s:0:\"\";s:15:\"payment_request\";s:3:\"yes\";s:27:\"payment_request_button_type\";s:3:\"buy\";s:28:\"payment_request_button_theme\";s:4:\"dark\";s:29:\"payment_request_button_height\";s:2:\"44\";s:11:\"saved_cards\";s:2:\"no\";s:7:\"logging\";s:2:\"no\";}', 'yes'),
(265, 'woocommerce_ppec_paypal_settings', 'a:33:{s:7:\"enabled\";s:2:\"no\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:16:\"dmykos@gmail.com\";s:5:\"title\";s:23:\"PayPal Express Checkout\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:11:\"environment\";s:4:\"live\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:15:\"api_certificate\";s:0:\"\";s:11:\"api_subject\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:23:\"sandbox_api_certificate\";s:0:\"\";s:19:\"sandbox_api_subject\";s:0:\"\";s:10:\"brand_name\";s:8:\"Woo test\";s:11:\"button_size\";s:5:\"large\";s:21:\"cart_checkout_enabled\";s:3:\"yes\";s:12:\"mark_enabled\";s:2:\"no\";s:14:\"logo_image_url\";s:0:\"\";s:16:\"header_image_url\";s:0:\"\";s:10:\"page_style\";s:0:\"\";s:12:\"landing_page\";s:5:\"Login\";s:14:\"credit_enabled\";s:2:\"no\";s:34:\"checkout_on_single_product_enabled\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:15:\"require_billing\";s:2:\"no\";s:20:\"require_phone_number\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:16:\"instant_payments\";s:2:\"no\";s:26:\"subtotal_mismatch_behavior\";s:3:\"add\";}', 'yes'),
(266, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(267, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(268, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(276, '_transient_timeout_jetpack_file_data_5.8', '1521098886', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(277, '_transient_jetpack_file_data_5.8', 'a:57:{s:32:\"31e5b9ae08b62c2b0cd8a7792242298b\";a:14:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";}s:32:\"3f41b2d629265b5de8108b463abbe8e2\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";}s:32:\"e1c539d5b392f5a1709dada3da5793cc\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";}s:32:\"c6ebb418dde302de09600a6025370583\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";}s:32:\"836f9485669e1bbb02920cb474730df0\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";}s:32:\"ea3970eebf8aac55fc3eca5dca0e0157\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";}s:32:\"d2bb05ccad3d8789df40ca3abb97336c\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";}s:32:\"a2064eec5b9c7e0d816af71dee7a715f\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"53a4ec755022ef3953699734c343da02\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";}s:32:\"e1f1f6e3689fc31c477e64b06e2f8fbf\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";}s:32:\"72fecb67ee6704ba0a33e0225316ad06\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"d56e2886185a9eace719cc57d46770df\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";}s:32:\"e391e760617bd0e0736550e34a73d7fe\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:8:\"2.0.3 ??\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"2e345370766346c616b3c5046e817720\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";}s:32:\"bd69edbf134de5fae8fdcf2e70a45b56\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";}s:32:\"8110b7a4423aaa619dfa46b8843e10d1\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";}s:32:\"f868c97c313f21b23fa6d6c64505fab6\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";}s:32:\"fd7e85d3b4887fa6b6f997d6592c1f33\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";}s:32:\"c5dfef41fad5bcdcaae8e315e5cfc420\";a:14:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";}s:32:\"fd6dc399b92bce76013427e3107c314f\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";}s:32:\"614679778a7db6d8129c9f69ac8e10a5\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";}s:32:\"c49a35b6482b0426cb07ad28ecf5d7df\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";}s:32:\"b42e38f6fafd2e4104ebe5bf39b4be47\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"771cfeeba0d3d23ec344d5e781fb0ae2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"54f0661d27c814fc8bde39580181d939\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"46c4c413b5c72bbd3c3dbd14ff8f8adc\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"9ea52fa25783e5ceeb6bfaed3268e64e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";}s:32:\"cfcaafd0fcad087899d715e0b877474d\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";}s:32:\"0d18bfa69bec61550c1d813ce64149b0\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"3f0a11e23118f0788d424b646a6d465f\";a:14:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";}s:32:\"e37cfbcb72323fb1fe8255a2edb4d738\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";}s:32:\"728290d131a480bfe7b9e405d7cd925f\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";}s:32:\"f9ce784babbbf4dcca99b8cd2ceb420c\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";}s:32:\"83622cd43b5e31bb82e59a9d52e9bb10\";a:14:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";}s:32:\"052c03877dd3d296a71531cb07ad939a\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"52edecb2a75222e75b2dce4356a4efce\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";}s:32:\"fe7a38addc9275dcbe6c4ff6c44a9350\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";}s:32:\"68b0d01689803c0ea7e4e60a86de2519\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:18:\"Traffic, Jumpstart\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";}s:32:\"8b059cb50a66b717f1ec842e736b858c\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";}s:32:\"a6d2394329871857401255533a9873f7\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";}s:32:\"21496e2897ea5f81605e2f2ac3beb921\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";}s:32:\"e2a54a5d7879a4162709e6ffb540dd08\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"f5c537bc304f55b29c1a87e30be0cd24\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";}s:32:\"59a23643437358a9b557f1d1e20ab040\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"6a90f97c3194cfca5671728eaaeaf15e\";a:14:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";}s:32:\"b65604e920392e2f7134b646760b75e8\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";}s:32:\"23a586dd7ead00e69ec53eb32ef740e4\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";}s:32:\"1d978b8d84d2f378fe1a702a67633b6d\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"b3b983461d7f3d27322a3551ed8a9405\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";}s:32:\"d924e5b05722b0e104448543598f54c0\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"36741583b10c521997e563ad8e1e8b77\";a:14:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";}s:32:\"2b9b44f09b5459617d68dd82ee17002a\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";}s:32:\"5ab4c0db7c42e10e646342da0274c491\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";}s:32:\"60a1d3aa38bc0fe1039e59dd60888543\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";}s:32:\"174ed3416476c2cb9ff5b0f671280b15\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";}s:32:\"a668bc9418d6de87409f867892fcdd7f\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";}s:32:\"28b931a1db19bd24869bd54b14e733d5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}}', 'no'),
(280, 'wc_ppec_version', '1.5.1', 'yes'),
(287, 'do_activate', '0', 'yes'),
(292, 'wc_stripe_version', '4.0.5', 'yes'),
(303, '_transient_shipping-transient-version', '1518595437', 'yes'),
(304, '_transient_timeout_wc_shipping_method_count_0_1518595437', '1521187437', 'no'),
(305, '_transient_wc_shipping_method_count_0_1518595437', '0', 'no'),
(364, 'jetpack_constants_sync_checksum', 'a:31:{s:16:\"EMPTY_TRASH_DAYS\";i:-1821685917;s:17:\"WP_POST_REVISIONS\";i:-33796979;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:-1883286368;s:14:\"WP_CONTENT_DIR\";i:1431179963;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:1257903391;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:-300109018;s:11:\"PHP_VERSION\";i:-1962197894;s:15:\"WP_MEMORY_LIMIT\";i:-1229557325;s:19:\"WP_MAX_MEMORY_LIMIT\";i:828812020;s:14:\"WC_PLUGIN_FILE\";i:-1845927796;s:10:\"WC_ABSPATH\";i:1843289427;s:18:\"WC_PLUGIN_BASENAME\";i:1149093810;s:10:\"WC_VERSION\";i:-98473634;s:19:\"WOOCOMMERCE_VERSION\";i:-98473634;s:21:\"WC_ROUNDING_PRECISION\";i:498629140;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:450215437;s:20:\"WC_TAX_ROUNDING_MODE\";i:-2082672713;s:12:\"WC_DELIMITER\";i:-1839055742;s:10:\"WC_LOG_DIR\";i:-2030442467;s:22:\"WC_SESSION_CACHE_GROUP\";i:-15988308;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:734881840;}', 'yes'),
(367, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:\"http\";}', 'yes'),
(368, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(369, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(401, 'jetpack_callables_sync_checksum', 'a:29:{s:18:\"wp_max_upload_size\";i:869269328;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:-1399089828;s:8:\"site_url\";i:-1399089828;s:8:\"home_url\";i:-1399089828;s:16:\"single_user_site\";i:-33796979;s:7:\"updates\";i:-869524094;s:28:\"has_file_system_write_access\";i:-33796979;s:21:\"is_version_controlled\";i:-33796979;s:10:\"taxonomies\";i:1029198337;s:10:\"post_types\";i:1164799052;s:18:\"post_type_features\";i:1306170448;s:10:\"shortcodes\";i:1978426851;s:27:\"rest_api_allowed_post_types\";i:-1535233178;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:-33796979;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;s:10:\"wp_version\";i:-168931897;s:11:\"get_plugins\";i:-1490967557;s:24:\"get_plugins_action_links\";i:223132457;s:14:\"active_modules\";i:223132457;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:110763218;s:13:\"site_icon_url\";i:734881840;s:5:\"roles\";i:-2040273932;}', 'no'),
(402, 'jpsq_sync_checkout', '0:0', 'no'),
(443, '_transient_product_query-transient-version', '1519282525', 'yes'),
(444, '_transient_product-transient-version', '1518705467', 'yes'),
(452, '_transient_timeout_wc_shipping_method_count_1_1518595437', '1521228954', 'no'),
(453, '_transient_wc_shipping_method_count_1_1518595437', '0', 'no'),
(454, '_transient_orders-transient-version', '1519280000', 'yes'),
(457, 'wc_gateway_ppce_prompt_to_connect', 'PayPal Express Checkout is almost ready. To get started, <a href=\"http://wootest.loc/wp-admin/admin.php?page=wc-settings&#038;tab=checkout&#038;section=ppec_paypal\">connect your PayPal account</a>.', 'yes'),
(458, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:16:\"dmykos@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:16:\"dmykos@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:2:\"no\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:33:\"dmykos-facilitator_api1.gmail.com\";s:20:\"sandbox_api_password\";s:16:\"V9XG7PLUNYYFMDYE\";s:21:\"sandbox_api_signature\";s:56:\"AFcWxV21C7fd0v3bYYYRCpSSRl31ALz7EDDTWJ8l.O13aD4nHOZ.Jdlf\";}', 'yes'),
(471, 'WPLANG', '', 'yes'),
(472, 'new_admin_email', 'dmykos@gmail.com', 'yes'),
(478, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(502, 'movie_category_children', 'a:0:{}', 'yes'),
(514, '_transient_timeout_wc_low_stock_count', '1521311563', 'no'),
(515, '_transient_wc_low_stock_count', '0', 'no'),
(516, '_transient_timeout_wc_outofstock_count', '1521311563', 'no'),
(517, '_transient_wc_outofstock_count', '0', 'no'),
(535, '_site_transient_subdir_wpmu_plugins', 'a:1:{i:0;s:19:\"mu-shop/mu-loop.php\";}', 'no'),
(542, '_transient_timeout_external_ip_address_127.0.0.1', '1519844421', 'no'),
(543, '_transient_external_ip_address_127.0.0.1', '188.163.73.218', 'no'),
(557, '_site_transient_timeout_browser_9bb7b3178e07390e66ccfc3e17d20f2e', '1519884670', 'no'),
(558, '_site_transient_browser_9bb7b3178e07390e66ccfc3e17d20f2e', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"58.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(563, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1519323073', 'no'),
(564, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(567, '_transient_timeout_wc_report_sales_by_date', '1519366469', 'no'),
(568, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"6d115043bce94a0aab672bd0fa49af16\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-02-14 20:54:26\";}}s:32:\"ebe02cec784bda16a75da00b35e0c501\";a:0:{}s:32:\"1e5b7c79e03bd10bb0fa1b1003a99f2e\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-02-14 20:54:26\";}}s:32:\"d2b24a73617e94b2703a7408de397cea\";N;s:32:\"14c91739b12c42080d02cc55612bc5b0\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:2:\"45\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-02-14 20:54:26\";}}s:32:\"c47b8e78f96ef363b80e17b5fbbd731f\";a:0:{}s:32:\"36a8f987283c119bc147b254dfe303c9\";a:0:{}s:32:\"c810d01141ded9b6b5a860cfb03816c5\";a:0:{}}', 'no'),
(569, '_transient_timeout_wc_admin_report', '1519366469', 'no'),
(570, '_transient_wc_admin_report', 'a:2:{s:32:\"9dcbd0db9e14245c2539f29739a1ab4e\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:2:\"45\";s:9:\"post_date\";s:19:\"2018-02-14 20:54:26\";}}s:32:\"a0032cb1f0cbd42cb0b7620e4a605125\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"17\";s:15:\"sparkline_value\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-02-14 20:54:26\";}}}', 'no'),
(571, '_site_transient_timeout_theme_roots', '1519282644', 'no'),
(572, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:21:\"twentyseventeen-child\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(575, '_transient_timeout__woocommerce_helper_updates', '1519324044', 'no'),
(576, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1519280844;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(577, 'current_theme', 'Your Theme Name', 'yes'),
(578, 'theme_mods_twentyseventeen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(579, 'theme_switched', '', 'yes'),
(581, '_transient_doing_cron', '1519280850.2833731174468994140625', 'yes'),
(592, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1519292426', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(593, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4431;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2594;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2538;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2405;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1859;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1630;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1625;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1446;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1381;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1378;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1372;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1298;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1282;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1183;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1085;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1012;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:991;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:862;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:857;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:822;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:796;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:789;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:691;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:688;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:682;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:674;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:667;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:630;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:630;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:606;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:605;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:597;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:596;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:584;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:584;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:556;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:541;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:527;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:517;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:511;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:501;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:489;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:485;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:484;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:477;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:475;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:465;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:463;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:463;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:452;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:449;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:433;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:423;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:416;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:413;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:411;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:410;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:401;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:393;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:389;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:383;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:367;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:360;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:354;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:353;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:342;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:342;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:336;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:333;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:332;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:332;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:329;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:328;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:321;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:314;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:309;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:301;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:294;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:291;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:291;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:288;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:288;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:286;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:283;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:283;}}', 'no'),
(594, '_transient_timeout_plugin_slugs', '1519368160', 'no'),
(595, '_transient_plugin_slugs', 'a:3:{i:0;s:31:\"kint-debugger/kint-debugger.php\";i:1;s:27:\"woocommerce/woocommerce.php\";i:2;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";}', 'no'),
(596, '_transient_timeout_wc_upgrade_notice_3.3.3', '1519368145', 'no'),
(597, '_transient_wc_upgrade_notice_3.3.3', '', 'no'),
(598, '_transient_timeout__woocommerce_helper_subscriptions', '1519282651', 'no'),
(599, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(601, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1519281759;s:7:\"checked\";a:3:{s:31:\"kint-debugger/kint-debugger.php\";s:3:\"1.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.1\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.5.1\";}s:8:\"response\";a:2:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389\";s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";s:7:\"default\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389\";s:7:\"default\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:31:\"kint-debugger/kint-debugger.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/kint-debugger\";s:4:\"slug\";s:13:\"kint-debugger\";s:6:\"plugin\";s:31:\"kint-debugger/kint-debugger.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/kint-debugger/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/kint-debugger.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/kint-debugger/assets/icon-256x256.png?rev=1562765\";s:7:\"default\";s:66:\"https://ps.w.org/kint-debugger/assets/icon-256x256.png?rev=1562765\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/kint-debugger/assets/banner-772x250.png?rev=1562765\";s:7:\"default\";s:68:\"https://ps.w.org/kint-debugger/assets/banner-772x250.png?rev=1562765\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(602, '_transient_is_multi_author', '0', 'yes'),
(603, '_transient_twentyseventeen_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 14, '_edit_last', '1'),
(3, 14, '_edit_lock', '1519282363:1'),
(4, 15, '_wp_attached_file', '2018/02/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_.jpg'),
(5, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:674;s:6:\"height\";i:1000;s:4:\"file\";s:87:\"2018/02/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-202x300.jpg\";s:5:\"width\";i:202;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-350x519.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"woocommerce_thumbnail_2x\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:87:\"MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_-350x519.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 14, '_thumbnail_id', '15'),
(7, 14, 'movie_subtitle', 'The key to the future is finally unearthed.'),
(8, 17, '_wc_review_count', '0'),
(9, 17, '_wc_rating_count', 'a:0:{}'),
(10, 17, '_wc_average_rating', '0'),
(11, 17, '_edit_last', '1'),
(12, 17, '_edit_lock', '1518639400:1'),
(13, 18, '_wp_attached_file', 'woocommerce_uploads/2018/02/Blade_runner.wmv'),
(14, 18, '_wp_attachment_metadata', 'a:14:{s:8:\"lossless\";b:0;s:7:\"bitrate\";i:8973;s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"filesize\";i:108787;s:9:\"mime_type\";s:14:\"video/x-ms-wmv\";s:6:\"length\";i:7;s:16:\"length_formatted\";s:4:\"0:07\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:10:\"fileformat\";s:3:\"asf\";s:10:\"dataformat\";s:3:\"wmv\";s:7:\"encoder\";s:22:\"Windows Media Video V7\";s:5:\"audio\";a:12:{s:5:\"codec\";s:23:\"Windows Media Audio 9.2\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:96915;s:15:\"bits_per_sample\";i:16;s:10:\"dataformat\";s:3:\"wma\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:7:\"encoder\";s:23:\"Windows Media Audio 9.2\";s:15:\"encoder_options\";s:34:\"96 kbps, 44 kHz, stereo 1-pass CBR\";s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.068675595238095244;}s:17:\"created_timestamp\";i:1518636317;}'),
(15, 17, '_sku', ''),
(16, 17, '_regular_price', '45'),
(17, 17, '_sale_price', ''),
(18, 17, '_sale_price_dates_from', ''),
(19, 17, '_sale_price_dates_to', ''),
(20, 17, 'total_sales', '1'),
(21, 17, '_tax_status', 'taxable'),
(22, 17, '_tax_class', ''),
(23, 17, '_manage_stock', 'no'),
(24, 17, '_backorders', 'no'),
(25, 17, '_sold_individually', 'no'),
(26, 17, '_weight', ''),
(27, 17, '_length', ''),
(28, 17, '_width', ''),
(29, 17, '_height', ''),
(30, 17, '_upsell_ids', 'a:0:{}'),
(31, 17, '_crosssell_ids', 'a:0:{}'),
(32, 17, '_purchase_note', ''),
(33, 17, '_default_attributes', 'a:0:{}'),
(34, 17, '_virtual', 'yes'),
(35, 17, '_downloadable', 'yes'),
(36, 17, '_product_image_gallery', ''),
(37, 17, '_download_limit', '-1'),
(38, 17, '_download_expiry', '-1'),
(39, 17, '_stock', NULL),
(40, 17, '_stock_status', 'instock'),
(41, 17, '_downloadable_files', 'a:1:{s:36:\"7916e9dc-4556-4554-823e-d0f17a9f6e10\";a:3:{s:2:\"id\";s:36:\"7916e9dc-4556-4554-823e-d0f17a9f6e10\";s:4:\"name\";s:0:\"\";s:4:\"file\";s:82:\"http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Blade_runner.wmv\";}}'),
(42, 17, '_product_version', '3.3.1'),
(43, 17, '_price', '45'),
(44, 20, '_order_key', 'wc_order_5a8490048809e'),
(45, 20, '_customer_user', '1'),
(46, 20, '_payment_method', 'paypal'),
(47, 20, '_payment_method_title', 'PayPal'),
(48, 20, '_transaction_id', ''),
(49, 20, '_customer_ip_address', '127.0.0.1'),
(50, 20, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:58.0) gecko/20100101 firefox/58.0'),
(51, 20, '_created_via', 'checkout'),
(52, 20, '_date_completed', ''),
(53, 20, '_completed_date', ''),
(54, 20, '_date_paid', ''),
(55, 20, '_paid_date', ''),
(56, 20, '_cart_hash', 'b15984798a0326c66339a5d328d330c1'),
(57, 20, '_billing_first_name', 'TestFirst'),
(58, 20, '_billing_last_name', 'TestLast'),
(59, 20, '_billing_company', ''),
(60, 20, '_billing_address_1', ''),
(61, 20, '_billing_address_2', ''),
(62, 20, '_billing_city', ''),
(63, 20, '_billing_state', 'CA'),
(64, 20, '_billing_postcode', ''),
(65, 20, '_billing_country', 'US'),
(66, 20, '_billing_email', 'dmykos@gmail.com'),
(67, 20, '_billing_phone', ''),
(68, 20, '_shipping_first_name', ''),
(69, 20, '_shipping_last_name', ''),
(70, 20, '_shipping_company', ''),
(71, 20, '_shipping_address_1', ''),
(72, 20, '_shipping_address_2', ''),
(73, 20, '_shipping_city', ''),
(74, 20, '_shipping_state', ''),
(75, 20, '_shipping_postcode', ''),
(76, 20, '_shipping_country', ''),
(77, 20, '_order_currency', 'USD'),
(78, 20, '_cart_discount', '0'),
(79, 20, '_cart_discount_tax', '0'),
(80, 20, '_order_shipping', '0.00'),
(81, 20, '_order_shipping_tax', '0'),
(82, 20, '_order_tax', '0'),
(83, 20, '_order_total', '45.00'),
(84, 20, '_order_version', '3.3.1'),
(85, 20, '_prices_include_tax', 'no'),
(86, 20, '_billing_address_index', 'TestFirst TestLast     CA  US dmykos@gmail.com '),
(87, 20, '_shipping_address_index', '        '),
(88, 21, '_order_key', 'wc_order_5a84a202786ac'),
(89, 21, '_customer_user', '2'),
(90, 21, '_payment_method', 'paypal'),
(91, 21, '_payment_method_title', 'PayPal'),
(92, 21, '_transaction_id', ''),
(93, 21, '_customer_ip_address', '127.0.0.1'),
(94, 21, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.132 safari/537.36'),
(95, 21, '_created_via', 'checkout'),
(96, 21, '_date_completed', '1518642274'),
(97, 21, '_completed_date', '2018-02-14 21:04:34'),
(98, 21, '_date_paid', '1518642274'),
(99, 21, '_paid_date', '2018-02-14 21:04:34'),
(100, 21, '_cart_hash', 'b15984798a0326c66339a5d328d330c1'),
(101, 21, '_billing_first_name', 'The First'),
(102, 21, '_billing_last_name', 'TheLast'),
(103, 21, '_billing_company', ''),
(104, 21, '_billing_address_1', 'Duch'),
(105, 21, '_billing_address_2', 'Apppert'),
(106, 21, '_billing_city', 'test2'),
(107, 21, '_billing_state', 'CA'),
(108, 21, '_billing_postcode', '84958'),
(109, 21, '_billing_country', 'US'),
(110, 21, '_billing_email', 'diamondiger@gmail.com'),
(111, 21, '_billing_phone', '3424242342'),
(112, 21, '_shipping_first_name', ''),
(113, 21, '_shipping_last_name', ''),
(114, 21, '_shipping_company', ''),
(115, 21, '_shipping_address_1', ''),
(116, 21, '_shipping_address_2', ''),
(117, 21, '_shipping_city', ''),
(118, 21, '_shipping_state', ''),
(119, 21, '_shipping_postcode', ''),
(120, 21, '_shipping_country', ''),
(121, 21, '_order_currency', 'USD'),
(122, 21, '_cart_discount', '0'),
(123, 21, '_cart_discount_tax', '0'),
(124, 21, '_order_shipping', '0'),
(125, 21, '_order_shipping_tax', '0'),
(126, 21, '_order_tax', '0'),
(127, 21, '_order_total', '45.00'),
(128, 21, '_order_version', '3.3.1'),
(129, 21, '_prices_include_tax', 'no'),
(130, 21, '_billing_address_index', 'The First TheLast  Duch Apppert test2 CA 84958 US diamondiger@gmail.com 3424242342'),
(131, 21, '_shipping_address_index', '        '),
(132, 21, '_edit_lock', '1518763450:1'),
(133, 21, '_edit_last', '1'),
(134, 21, '_download_permissions_granted', 'yes'),
(135, 21, '_recorded_sales', 'yes'),
(136, 21, '_recorded_coupon_usage_counts', 'yes'),
(137, 22, '_edit_lock', '1519282762:1'),
(138, 22, '_edit_last', '1'),
(139, 23, '_wp_attached_file', '2018/02/MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_.jpg'),
(140, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:268;s:4:\"file\";s:85:\"2018/02/MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:85:\"MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:85:\"MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:85:\"MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:85:\"MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:85:\"MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 22, '_thumbnail_id', '23'),
(142, 22, 'movie_subtitle', 'The Maximum Force of the Future.'),
(143, 25, '_edit_lock', '1519282618:1'),
(144, 25, '_edit_last', '1'),
(145, 26, '_wp_attached_file', '2018/02/MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_.jpg'),
(146, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:268;s:4:\"file\";s:85:\"2018/02/MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:85:\"MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:85:\"MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:85:\"MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:85:\"MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:85:\"MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 25, '_thumbnail_id', '26'),
(148, 25, 'movie_subtitle', 'The Mighty Warriors Who Became the Seven National Heroes of a Small Town'),
(149, 28, '_edit_lock', '1519282234:1'),
(150, 28, '_edit_last', '1'),
(151, 29, '_wp_attached_file', '2018/02/MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_.jpg'),
(152, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:268;s:4:\"file\";s:117:\"2018/02/MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:117:\"MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:117:\"MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:117:\"MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:117:\"MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:117:\"MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_-182x250.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 28, '_thumbnail_id', '29'),
(154, 28, 'movie_subtitle', 'A group of German construction workers start a tough job at a remote site in the Bulgarian countryside.'),
(155, 31, '_edit_lock', '1518705095:1'),
(156, 32, '_wc_review_count', '0'),
(157, 32, '_wc_rating_count', 'a:0:{}'),
(158, 32, '_wc_average_rating', '0'),
(159, 32, '_edit_lock', '1518705272:1'),
(160, 32, '_edit_last', '1'),
(161, 33, '_wp_attached_file', 'woocommerce_uploads/2018/02/Mad-Max-1979.wmv'),
(162, 33, '_wp_attachment_metadata', 'a:14:{s:8:\"lossless\";b:0;s:7:\"bitrate\";i:8973;s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"filesize\";i:108787;s:9:\"mime_type\";s:14:\"video/x-ms-wmv\";s:6:\"length\";i:7;s:16:\"length_formatted\";s:4:\"0:07\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:10:\"fileformat\";s:3:\"asf\";s:10:\"dataformat\";s:3:\"wmv\";s:7:\"encoder\";s:22:\"Windows Media Video V7\";s:5:\"audio\";a:12:{s:5:\"codec\";s:23:\"Windows Media Audio 9.2\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:96915;s:15:\"bits_per_sample\";i:16;s:10:\"dataformat\";s:3:\"wma\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:7:\"encoder\";s:23:\"Windows Media Audio 9.2\";s:15:\"encoder_options\";s:34:\"96 kbps, 44 kHz, stereo 1-pass CBR\";s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.068675595238095244;}s:17:\"created_timestamp\";i:1518636317;}'),
(163, 34, '_wp_attached_file', 'woocommerce_uploads/2018/02/Seven-Samurai-1954.wmv'),
(164, 34, '_wp_attachment_metadata', 'a:14:{s:8:\"lossless\";b:0;s:7:\"bitrate\";i:8973;s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"filesize\";i:108787;s:9:\"mime_type\";s:14:\"video/x-ms-wmv\";s:6:\"length\";i:7;s:16:\"length_formatted\";s:4:\"0:07\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:10:\"fileformat\";s:3:\"asf\";s:10:\"dataformat\";s:3:\"wmv\";s:7:\"encoder\";s:22:\"Windows Media Video V7\";s:5:\"audio\";a:12:{s:5:\"codec\";s:23:\"Windows Media Audio 9.2\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:96915;s:15:\"bits_per_sample\";i:16;s:10:\"dataformat\";s:3:\"wma\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:7:\"encoder\";s:23:\"Windows Media Audio 9.2\";s:15:\"encoder_options\";s:34:\"96 kbps, 44 kHz, stereo 1-pass CBR\";s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.068675595238095244;}s:17:\"created_timestamp\";i:1518636317;}'),
(165, 35, '_wp_attached_file', 'woocommerce_uploads/2018/02/Western-2017.wmv'),
(166, 35, '_wp_attachment_metadata', 'a:14:{s:8:\"lossless\";b:0;s:7:\"bitrate\";i:8973;s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"filesize\";i:108787;s:9:\"mime_type\";s:14:\"video/x-ms-wmv\";s:6:\"length\";i:7;s:16:\"length_formatted\";s:4:\"0:07\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:10:\"fileformat\";s:3:\"asf\";s:10:\"dataformat\";s:3:\"wmv\";s:7:\"encoder\";s:22:\"Windows Media Video V7\";s:5:\"audio\";a:12:{s:5:\"codec\";s:23:\"Windows Media Audio 9.2\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:96915;s:15:\"bits_per_sample\";i:16;s:10:\"dataformat\";s:3:\"wma\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:7:\"encoder\";s:23:\"Windows Media Audio 9.2\";s:15:\"encoder_options\";s:34:\"96 kbps, 44 kHz, stereo 1-pass CBR\";s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.068675595238095244;}s:17:\"created_timestamp\";i:1518636317;}'),
(167, 32, '_sku', ''),
(168, 32, '_regular_price', '35'),
(169, 32, '_sale_price', ''),
(170, 32, '_sale_price_dates_from', ''),
(171, 32, '_sale_price_dates_to', ''),
(172, 32, 'total_sales', '0'),
(173, 32, '_tax_status', 'taxable'),
(174, 32, '_tax_class', ''),
(175, 32, '_manage_stock', 'no'),
(176, 32, '_backorders', 'no'),
(177, 32, '_sold_individually', 'no'),
(178, 32, '_weight', ''),
(179, 32, '_length', ''),
(180, 32, '_width', ''),
(181, 32, '_height', ''),
(182, 32, '_upsell_ids', 'a:0:{}'),
(183, 32, '_crosssell_ids', 'a:0:{}'),
(184, 32, '_purchase_note', ''),
(185, 32, '_default_attributes', 'a:0:{}'),
(186, 32, '_virtual', 'yes'),
(187, 32, '_downloadable', 'yes'),
(188, 32, '_product_image_gallery', ''),
(189, 32, '_download_limit', '-1'),
(190, 32, '_download_expiry', '-1'),
(191, 32, '_stock', NULL),
(192, 32, '_stock_status', 'instock'),
(193, 32, '_downloadable_files', 'a:1:{s:36:\"becc53bc-bb8b-4b4d-84ac-a3383484e1b7\";a:3:{s:2:\"id\";s:36:\"becc53bc-bb8b-4b4d-84ac-a3383484e1b7\";s:4:\"name\";s:0:\"\";s:4:\"file\";s:82:\"http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Mad-Max-1979.wmv\";}}'),
(194, 32, '_product_version', '3.3.1'),
(195, 32, '_price', '35'),
(196, 36, '_wc_review_count', '0'),
(197, 36, '_wc_rating_count', 'a:0:{}'),
(198, 36, '_wc_average_rating', '0'),
(199, 36, '_edit_lock', '1518705440:1'),
(200, 36, '_edit_last', '1'),
(201, 36, '_sku', ''),
(202, 36, '_regular_price', '20'),
(203, 36, '_sale_price', ''),
(204, 36, '_sale_price_dates_from', ''),
(205, 36, '_sale_price_dates_to', ''),
(206, 36, 'total_sales', '0'),
(207, 36, '_tax_status', 'taxable'),
(208, 36, '_tax_class', ''),
(209, 36, '_manage_stock', 'no'),
(210, 36, '_backorders', 'no'),
(211, 36, '_sold_individually', 'no'),
(212, 36, '_weight', ''),
(213, 36, '_length', ''),
(214, 36, '_width', ''),
(215, 36, '_height', ''),
(216, 36, '_upsell_ids', 'a:0:{}'),
(217, 36, '_crosssell_ids', 'a:0:{}'),
(218, 36, '_purchase_note', ''),
(219, 36, '_default_attributes', 'a:0:{}'),
(220, 36, '_virtual', 'yes'),
(221, 36, '_downloadable', 'yes'),
(222, 36, '_product_image_gallery', ''),
(223, 36, '_download_limit', '-1'),
(224, 36, '_download_expiry', '-1'),
(225, 36, '_stock', NULL),
(226, 36, '_stock_status', 'instock'),
(227, 36, '_downloadable_files', 'a:1:{s:36:\"6bb37ee4-d149-451a-85ea-7509595ff4da\";a:3:{s:2:\"id\";s:36:\"6bb37ee4-d149-451a-85ea-7509595ff4da\";s:4:\"name\";s:0:\"\";s:4:\"file\";s:88:\"http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Seven-Samurai-1954.wmv\";}}'),
(228, 36, '_product_version', '3.3.1'),
(229, 36, '_price', '20'),
(230, 37, '_wc_review_count', '0'),
(231, 37, '_wc_rating_count', 'a:0:{}'),
(232, 37, '_wc_average_rating', '0'),
(233, 37, '_edit_lock', '1518705327:1'),
(234, 37, '_edit_last', '1'),
(235, 37, '_sku', ''),
(236, 37, '_regular_price', '50'),
(237, 37, '_sale_price', ''),
(238, 37, '_sale_price_dates_from', ''),
(239, 37, '_sale_price_dates_to', ''),
(240, 37, 'total_sales', '0'),
(241, 37, '_tax_status', 'taxable'),
(242, 37, '_tax_class', ''),
(243, 37, '_manage_stock', 'no'),
(244, 37, '_backorders', 'no'),
(245, 37, '_sold_individually', 'no'),
(246, 37, '_weight', ''),
(247, 37, '_length', ''),
(248, 37, '_width', ''),
(249, 37, '_height', ''),
(250, 37, '_upsell_ids', 'a:0:{}'),
(251, 37, '_crosssell_ids', 'a:0:{}'),
(252, 37, '_purchase_note', ''),
(253, 37, '_default_attributes', 'a:0:{}'),
(254, 37, '_virtual', 'yes'),
(255, 37, '_downloadable', 'yes'),
(256, 37, '_product_image_gallery', ''),
(257, 37, '_download_limit', '-1'),
(258, 37, '_download_expiry', '-1'),
(259, 37, '_stock', NULL),
(260, 37, '_stock_status', 'instock'),
(261, 37, '_downloadable_files', 'a:1:{s:36:\"b7b3898b-35b8-4879-90c8-1d28ed9182d6\";a:3:{s:2:\"id\";s:36:\"b7b3898b-35b8-4879-90c8-1d28ed9182d6\";s:4:\"name\";s:0:\"\";s:4:\"file\";s:82:\"http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Western-2017.wmv\";}}'),
(262, 37, '_product_version', '3.3.1'),
(263, 37, '_price', '50'),
(264, 41, '_wc_review_count', '0'),
(265, 41, '_wc_rating_count', 'a:0:{}'),
(266, 41, '_wc_average_rating', '0'),
(267, 42, '_wc_review_count', '0'),
(268, 42, '_wc_rating_count', 'a:0:{}'),
(269, 42, '_wc_average_rating', '0'),
(270, 42, '_edit_lock', '1518763565:1'),
(271, 22, '_price', '555'),
(272, 22, '_wc_review_count', '0'),
(273, 22, '_wc_rating_count', 'a:0:{}'),
(274, 22, '_wc_average_rating', '0'),
(275, 22, 'price', '666'),
(276, 25, '_wc_review_count', '0'),
(277, 25, '_wc_rating_count', 'a:0:{}'),
(278, 25, '_wc_average_rating', '0'),
(279, 44, '_order_key', 'wc_order_5a8e5f803ad63'),
(280, 44, '_customer_user', '1'),
(281, 44, '_payment_method', 'paypal'),
(282, 44, '_payment_method_title', 'PayPal'),
(283, 44, '_transaction_id', ''),
(284, 44, '_customer_ip_address', '127.0.0.1'),
(285, 44, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:58.0) gecko/20100101 firefox/58.0'),
(286, 44, '_created_via', 'checkout'),
(287, 44, '_date_completed', ''),
(288, 44, '_completed_date', ''),
(289, 44, '_date_paid', ''),
(290, 44, '_paid_date', ''),
(291, 44, '_cart_hash', '44dddbe0ce29c663ff03d8f0748fb3b7'),
(292, 44, '_billing_first_name', 'TestFirst'),
(293, 44, '_billing_last_name', 'TestLast'),
(294, 44, '_billing_company', ''),
(295, 44, '_billing_address_1', 'test'),
(296, 44, '_billing_address_2', ''),
(297, 44, '_billing_city', 'test'),
(298, 44, '_billing_state', 'CA'),
(299, 44, '_billing_postcode', '90001'),
(300, 44, '_billing_country', 'US'),
(301, 44, '_billing_email', 'dmykos@gmail.com'),
(302, 44, '_billing_phone', '23423424234'),
(303, 44, '_shipping_first_name', ''),
(304, 44, '_shipping_last_name', ''),
(305, 44, '_shipping_company', ''),
(306, 44, '_shipping_address_1', ''),
(307, 44, '_shipping_address_2', ''),
(308, 44, '_shipping_city', ''),
(309, 44, '_shipping_state', ''),
(310, 44, '_shipping_postcode', ''),
(311, 44, '_shipping_country', ''),
(312, 44, '_order_currency', 'USD'),
(313, 44, '_cart_discount', '0'),
(314, 44, '_cart_discount_tax', '0'),
(315, 44, '_order_shipping', '0.00'),
(316, 44, '_order_shipping_tax', '0'),
(317, 44, '_order_tax', '0'),
(318, 44, '_order_total', '2664.00'),
(319, 44, '_order_version', '3.3.1'),
(320, 44, '_prices_include_tax', 'no'),
(321, 44, '_billing_address_index', 'TestFirst TestLast  test  test CA 90001 US dmykos@gmail.com 23423424234'),
(322, 44, '_shipping_address_index', '        '),
(323, 44, '_edit_lock', '1519280434:1'),
(324, 37, '_wp_trash_meta_status', 'publish'),
(325, 37, '_wp_trash_meta_time', '1519282360'),
(326, 37, '_wp_desired_post_slug', 'western-2017'),
(327, 36, '_wp_trash_meta_status', 'publish'),
(328, 36, '_wp_trash_meta_time', '1519282360'),
(329, 36, '_wp_desired_post_slug', 'seven-samurai-1954'),
(330, 32, '_wp_trash_meta_status', 'publish'),
(331, 32, '_wp_trash_meta_time', '1519282360'),
(332, 32, '_wp_desired_post_slug', 'mad-max-1979'),
(333, 17, '_wp_trash_meta_status', 'publish'),
(334, 17, '_wp_trash_meta_time', '1519282361'),
(335, 17, '_wp_desired_post_slug', 'blade-runner-2049'),
(336, 28, 'movie_price', '15'),
(337, 25, 'movie_price', '20'),
(338, 22, 'movie_price', '25'),
(339, 14, 'movie_price', '30'),
(340, 14, '_wc_review_count', '0'),
(341, 14, '_wc_rating_count', 'a:0:{}'),
(342, 14, '_wc_average_rating', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-14 07:21:00', '2018-02-14 07:21:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-02-14 07:21:00', '2018-02-14 07:21:00', '', 0, 'http://wootest.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-14 07:21:00', '2018-02-14 07:21:00', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://wootest.loc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-14 07:21:00', '2018-02-14 07:21:00', '', 0, 'http://wootest.loc/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-02-14 07:27:18', '2018-02-14 07:27:18', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-02-14 07:27:18', '2018-02-14 07:27:18', '', 0, 'http://wootest.loc/shop/', 0, 'page', '', 0),
(5, 1, '2018-02-14 07:27:18', '2018-02-14 07:27:18', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-02-14 07:27:18', '2018-02-14 07:27:18', '', 0, 'http://wootest.loc/cart/', 0, 'page', '', 0),
(6, 1, '2018-02-14 07:27:18', '2018-02-14 07:27:18', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-02-14 07:27:18', '2018-02-14 07:27:18', '', 0, 'http://wootest.loc/checkout/', 0, 'page', '', 0),
(7, 1, '2018-02-14 07:27:18', '2018-02-14 07:27:18', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-02-14 07:27:18', '2018-02-14 07:27:18', '', 0, 'http://wootest.loc/my-account/', 0, 'page', '', 0),
(14, 1, '2018-02-14 19:21:02', '2018-02-14 19:21:02', '<p style=\"text-align: left;\">Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years. <em class=\"nobr\">Written by <a href=\"http://www.imdb.com/search/title?plot_author=Warner%20Bros.%20Pictures&amp;view=simple&amp;sort=alpha&amp;ref_=tt_stry_pl\">Warner Bros. Pictures</a></em>]</p>', 'Blade Runner 2049', '', 'publish', 'closed', 'closed', '', 'blade-runner-2049', '', '', '2018-02-22 06:53:35', '2018-02-22 06:53:35', '', 0, 'http://wootest.loc/?post_type=movie&#038;p=14', 0, 'movie', '', 0),
(15, 1, '2018-02-14 19:20:53', '2018-02-14 19:20:53', '', 'MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR0,0,674,1000_AL_', '', 'inherit', 'open', 'closed', '', 'mv5bnza1njg4nzyxov5bml5banbnxkftztgwodk5nju3mzi-_v1_sy1000_cr006741000_al_', '', '', '2018-02-14 19:20:53', '2018-02-14 19:20:53', '', 14, 'http://wootest.loc/wp-content/uploads/2018/02/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SY1000_CR006741000_AL_.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-02-14 19:21:02', '2018-02-14 19:21:02', '<p style=\"text-align: left;\">Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years. <em class=\"nobr\">Written by <a href=\"http://www.imdb.com/search/title?plot_author=Warner%20Bros.%20Pictures&amp;view=simple&amp;sort=alpha&amp;ref_=tt_stry_pl\">Warner Bros. Pictures</a></em></p>', 'Blade Runner 2049', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-14 19:21:02', '2018-02-14 19:21:02', '', 14, 'http://wootest.loc/2018/02/14/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-02-14 19:29:16', '2018-02-14 19:29:16', '', 'Blade Runner 2049', '', 'trash', 'open', 'closed', '', 'blade-runner-2049__trashed', '', '', '2018-02-22 06:52:41', '2018-02-22 06:52:41', '', 0, 'http://wootest.loc/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2018-02-14 19:28:49', '2018-02-14 19:28:49', '', 'Blade_runner', '', 'inherit', 'open', 'closed', '', 'blade_runner', '', '', '2018-02-14 19:28:49', '2018-02-14 19:28:49', '', 17, 'http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Blade_runner.wmv', 0, 'attachment', 'video/x-ms-wmv', 0),
(19, 1, '2018-02-14 19:35:40', '2018-02-14 19:35:40', '<p style=\"text-align: left;\">Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years. <em class=\"nobr\">Written by <a href=\"http://www.imdb.com/search/title?plot_author=Warner%20Bros.%20Pictures&amp;view=simple&amp;sort=alpha&amp;ref_=tt_stry_pl\">Warner Bros. Pictures</a></em></p>\r\n[add_to_cart id=\"17\"]', 'Blade Runner 2049', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-14 19:35:40', '2018-02-14 19:35:40', '', 14, 'http://wootest.loc/14-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-02-14 19:37:40', '2018-02-14 19:37:40', '', 'Order &ndash; February 14, 2018 @ 07:37 PM', '', 'wc-cancelled', 'open', 'closed', 'order_5a84900488637', 'order-feb-14-2018-0737-pm', '', '', '2018-02-14 20:47:04', '2018-02-14 20:47:04', '', 0, 'http://wootest.loc/?post_type=shop_order&#038;p=20', 0, 'shop_order', '', 1),
(21, 1, '2018-02-14 20:54:26', '2018-02-14 20:54:26', '', 'Order &ndash; February 14, 2018 @ 08:54 PM', '', 'wc-completed', 'closed', 'closed', 'order_5a84a20278c12', 'order-feb-14-2018-0854-pm', '', '', '2018-02-14 21:04:34', '2018-02-14 21:04:34', '', 0, 'http://wootest.loc/?post_type=shop_order&#038;p=21', 0, 'shop_order', '', 1),
(22, 1, '2018-02-15 14:27:41', '2018-02-15 14:27:41', 'Taking place in a dystopian Australia in the near future, Mad Max tells the story of a highway patrolman cruising the squalid back roads that have become the breeding ground of criminals foraging for gasoline and scraps. When his wife and child meet a grisly end at the hands of a motorcycle gang, Max sets out across the barren wastelands in search of revenge. Written by Cole Matthews', 'Mad Max (1979)', '', 'publish', 'closed', 'closed', '', 'mad-max-1979', '', '', '2018-02-22 06:53:27', '2018-02-22 06:53:27', '', 0, 'http://wootest.loc/?post_type=movie&#038;p=22', 0, 'movie', '', 0),
(23, 1, '2018-02-15 14:27:33', '2018-02-15 14:27:33', '', 'MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR0,0,182,268_AL_', '', 'inherit', 'open', 'closed', '', 'mv5bmtm4mjg5odezmv5bml5banbnxkftztcwmdc3ndk0na-_v1_ux182_cr00182268_al_', '', '', '2018-02-15 14:27:33', '2018-02-15 14:27:33', '', 22, 'http://wootest.loc/wp-content/uploads/2018/02/MV5BMTM4Mjg5ODEzMV5BMl5BanBnXkFtZTcwMDc3NDk0NA@@._V1_UX182_CR00182268_AL_.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-02-15 14:27:41', '2018-02-15 14:27:41', 'Taking place in a dystopian Australia in the near future, Mad Max tells the story of a highway patrolman cruising the squalid back roads that have become the breeding ground of criminals foraging for gasoline and scraps. When his wife and child meet a grisly end at the hands of a motorcycle gang, Max sets out across the barren wastelands in search of revenge. Written by Cole Matthews', 'Mad Max (1979)', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-15 14:27:41', '2018-02-15 14:27:41', '', 22, 'http://wootest.loc/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-02-15 14:28:59', '2018-02-15 14:28:59', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 'Seven Samurai (1954)', '', 'publish', 'closed', 'closed', '', 'seven-samurai-1954', '', '', '2018-02-22 06:53:15', '2018-02-22 06:53:15', '', 0, 'http://wootest.loc/?post_type=movie&#038;p=25', 0, 'movie', '', 0),
(26, 1, '2018-02-15 14:28:55', '2018-02-15 14:28:55', '', 'MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR4,0,182,268_AL_', '', 'inherit', 'open', 'closed', '', 'mv5bmtc5mdy1mju5mf5bml5banbnxkftztgwndm2ote4mze-_v1_uy268_cr40182268_al_', '', '', '2018-02-15 14:28:55', '2018-02-15 14:28:55', '', 25, 'http://wootest.loc/wp-content/uploads/2018/02/MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE@._V1_UY268_CR40182268_AL_.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-02-15 14:28:59', '2018-02-15 14:28:59', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 'Seven Samurai (1954)', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-15 14:28:59', '2018-02-15 14:28:59', '', 25, 'http://wootest.loc/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-02-15 14:31:13', '2018-02-15 14:31:13', 'A group of German construction workers start a tough job at a remote site in the Bulgarian countryside. The foreign land awakens the men\'s sense of adventure, but they are also confronted with their own prejudice and mistrust due to the language barrier and cultural differences. The stage is quickly set for a showdown when men begin to compete for recognition and favor from the local villagers.', 'Western (2017)', '', 'publish', 'closed', 'closed', '', 'western-2017', '', '', '2018-02-22 06:52:51', '2018-02-22 06:52:51', '', 0, 'http://wootest.loc/?post_type=movie&#038;p=28', 0, 'movie', '', 0),
(29, 1, '2018-02-15 14:31:08', '2018-02-15 14:31:08', '', 'MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR0,0,182,268_AL_', '', 'inherit', 'open', 'closed', '', 'mv5bzdrkzguxzmetzddizc00ngjmlwfiodatn2rimzy3odhjntnmxkeyxkfqcgdeqxvymtg5mdeynw-_v1_uy268_cr00182268_al_', '', '', '2018-02-15 14:31:08', '2018-02-15 14:31:08', '', 28, 'http://wootest.loc/wp-content/uploads/2018/02/MV5BZDRkZGUxZmEtZDdiZC00NGJmLWFiODAtN2RiMzY3ODhjNTNmXkEyXkFqcGdeQXVyMTg5MDEyNw@@._V1_UY268_CR00182268_AL_.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-02-15 14:31:13', '2018-02-15 14:31:13', 'A group of German construction workers start a tough job at a remote site in the Bulgarian countryside. The foreign land awakens the men\'s sense of adventure, but they are also confronted with their own prejudice and mistrust due to the language barrier and cultural differences. The stage is quickly set for a showdown when men begin to compete for recognition and favor from the local villagers.', 'Western (2017)', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-02-15 14:31:13', '2018-02-15 14:31:13', '', 28, 'http://wootest.loc/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-02-15 14:31:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-15 14:31:18', '0000-00-00 00:00:00', '', 0, 'http://wootest.loc/?post_type=movie&p=31', 0, 'movie', '', 0),
(32, 1, '2018-02-15 14:36:49', '2018-02-15 14:36:49', '', 'Mad Max (1979)', '', 'trash', 'open', 'closed', '', 'mad-max-1979__trashed', '', '', '2018-02-22 06:52:40', '2018-02-22 06:52:40', '', 0, 'http://wootest.loc/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2018-02-15 14:36:34', '2018-02-15 14:36:34', '', 'Mad Max (1979)', '', 'inherit', 'open', 'closed', '', 'mad-max-1979-2', '', '', '2018-02-15 14:36:34', '2018-02-15 14:36:34', '', 32, 'http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Mad-Max-1979.wmv', 0, 'attachment', 'video/x-ms-wmv', 0),
(34, 1, '2018-02-15 14:36:34', '2018-02-15 14:36:34', '', 'Seven Samurai (1954)', '', 'inherit', 'open', 'closed', '', 'seven-samurai-1954-2', '', '', '2018-02-15 14:36:34', '2018-02-15 14:36:34', '', 32, 'http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Seven-Samurai-1954.wmv', 0, 'attachment', 'video/x-ms-wmv', 0),
(35, 1, '2018-02-15 14:36:35', '2018-02-15 14:36:35', '', 'Western (2017)', '', 'inherit', 'open', 'closed', '', 'western-2017-2', '', '', '2018-02-15 14:36:35', '2018-02-15 14:36:35', '', 32, 'http://wootest.loc/wp-content/uploads/woocommerce_uploads/2018/02/Western-2017.wmv', 0, 'attachment', 'video/x-ms-wmv', 0),
(36, 1, '2018-02-15 14:37:19', '2018-02-15 14:37:19', '', 'Seven Samurai (1954)', '', 'trash', 'open', 'closed', '', 'seven-samurai-1954__trashed', '', '', '2018-02-22 06:52:40', '2018-02-22 06:52:40', '', 0, 'http://wootest.loc/?post_type=product&#038;p=36', 0, 'product', '', 0),
(37, 1, '2018-02-15 14:37:47', '2018-02-15 14:37:47', '', 'Western (2017)', '', 'trash', 'open', 'closed', '', 'western-2017__trashed', '', '', '2018-02-22 06:52:40', '2018-02-22 06:52:40', '', 0, 'http://wootest.loc/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2018-02-15 14:38:20', '2018-02-15 14:38:20', 'Taking place in a dystopian Australia in the near future, Mad Max tells the story of a highway patrolman cruising the squalid back roads that have become the breeding ground of criminals foraging for gasoline and scraps. When his wife and child meet a grisly end at the hands of a motorcycle gang, Max sets out across the barren wastelands in search of revenge. Written by Cole Matthews\r\n\r\n[add_to_cart id=\"32\"]', 'Mad Max (1979)', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-15 14:38:20', '2018-02-15 14:38:20', '', 22, 'http://wootest.loc/22-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-02-15 14:38:38', '2018-02-15 14:38:38', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.\r\n\r\n[add_to_cart id=\"36\"]', 'Seven Samurai (1954)', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-15 14:38:38', '2018-02-15 14:38:38', '', 25, 'http://wootest.loc/25-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-02-15 14:39:09', '2018-02-15 14:39:09', 'A group of German construction workers start a tough job at a remote site in the Bulgarian countryside. The foreign land awakens the men\'s sense of adventure, but they are also confronted with their own prejudice and mistrust due to the language barrier and cultural differences. The stage is quickly set for a showdown when men begin to compete for recognition and favor from the local villagers.\r\n\r\n[add_to_cart id=\"37\"]', 'Western (2017)', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-02-15 14:39:09', '2018-02-15 14:39:09', '', 28, 'http://wootest.loc/28-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-02-15 18:42:07', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-02-15 18:42:07', '0000-00-00 00:00:00', '', 0, 'http://wootest.loc/?post_type=product&p=41', 0, 'product', '', 0),
(42, 1, '2018-02-15 18:42:09', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-02-15 18:42:09', '0000-00-00 00:00:00', '', 0, 'http://wootest.loc/?post_type=product&p=42', 0, 'product', '', 0),
(43, 1, '2018-02-22 06:11:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-22 06:11:10', '0000-00-00 00:00:00', '', 0, 'http://wootest.loc/?p=43', 0, 'post', '', 0),
(44, 1, '2018-02-22 06:13:20', '2018-02-22 06:13:20', '', 'Order &ndash; February 22, 2018 @ 06:13 AM', '', 'wc-pending', 'open', 'closed', 'order_5a8e5f803b0ff', 'order-feb-22-2018-0613-am', '', '', '2018-02-22 06:13:20', '2018-02-22 06:13:20', '', 0, 'http://wootest.loc/?post_type=shop_order&p=44', 0, 'shop_order', '', 0),
(45, 1, '2018-02-22 06:52:51', '2018-02-22 06:52:51', 'A group of German construction workers start a tough job at a remote site in the Bulgarian countryside. The foreign land awakens the men\'s sense of adventure, but they are also confronted with their own prejudice and mistrust due to the language barrier and cultural differences. The stage is quickly set for a showdown when men begin to compete for recognition and favor from the local villagers.', 'Western (2017)', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-02-22 06:52:51', '2018-02-22 06:52:51', '', 28, 'http://wootest.loc/28-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-02-22 06:53:15', '2018-02-22 06:53:15', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 'Seven Samurai (1954)', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-22 06:53:15', '2018-02-22 06:53:15', '', 25, 'http://wootest.loc/25-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-02-22 06:53:27', '2018-02-22 06:53:27', 'Taking place in a dystopian Australia in the near future, Mad Max tells the story of a highway patrolman cruising the squalid back roads that have become the breeding ground of criminals foraging for gasoline and scraps. When his wife and child meet a grisly end at the hands of a motorcycle gang, Max sets out across the barren wastelands in search of revenge. Written by Cole Matthews', 'Mad Max (1979)', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-22 06:53:27', '2018-02-22 06:53:27', '', 22, 'http://wootest.loc/22-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-02-22 06:53:35', '2018-02-22 06:53:35', '<p style=\"text-align: left;\">Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years. <em class=\"nobr\">Written by <a href=\"http://www.imdb.com/search/title?plot_author=Warner%20Bros.%20Pictures&amp;view=simple&amp;sort=alpha&amp;ref_=tt_stry_pl\">Warner Bros. Pictures</a></em>]</p>', 'Blade Runner 2049', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-22 06:53:35', '2018-02-22 06:53:35', '', 14, 'http://wootest.loc/14-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Best', 'best', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(17, 15, 0),
(22, 16, 0),
(25, 16, 0),
(32, 2, 0),
(32, 15, 0),
(36, 2, 0),
(36, 15, 0),
(37, 2, 0),
(37, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'movie_category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'woodmin'),
(2, 1, 'first_name', 'TestFirst'),
(3, 1, 'last_name', 'TestLast'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"da1f2bf819a94608c4bdf95e351e45a77146843bf55af9edfb0b015636c93133\";a:4:{s:10:\"expiration\";i:1519412443;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0\";s:5:\"login\";i:1519239643;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '43'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:18:\"dashboard_activity\";i:1;s:36:\"woocommerce_dashboard_recent_reviews\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'jetpack_tracks_anon_id', 'jetpack:Dkr7eFVcoO3NNgOXcYOk74NH'),
(23, 1, 'closedpostboxes_movie', 'a:0:{}'),
(24, 1, 'metaboxhidden_movie', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(26, 1, 'wp_user-settings-time', '1518704935'),
(27, 1, 'last_update', '1519280000'),
(28, 1, 'billing_first_name', 'TestFirst'),
(29, 1, 'billing_last_name', 'TestLast'),
(30, 1, 'billing_state', 'CA'),
(31, 1, 'billing_country', 'US'),
(32, 1, 'billing_email', 'dmykos@gmail.com'),
(36, 2, 'nickname', 'diamondiger'),
(37, 2, 'first_name', 'The First'),
(38, 2, 'last_name', 'TheLast'),
(39, 2, 'description', ''),
(40, 2, 'rich_editing', 'true'),
(41, 2, 'syntax_highlighting', 'true'),
(42, 2, 'comment_shortcuts', 'false'),
(43, 2, 'admin_color', 'fresh'),
(44, 2, 'use_ssl', '0'),
(45, 2, 'show_admin_bar_front', 'true'),
(46, 2, 'locale', ''),
(47, 2, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(48, 2, 'wp_user_level', '0'),
(51, 2, 'last_update', '1518642274'),
(52, 2, 'billing_first_name', 'The First'),
(53, 2, 'billing_last_name', 'TheLast'),
(54, 2, 'billing_address_1', 'Duch'),
(55, 2, 'billing_address_2', 'Apppert'),
(56, 2, 'billing_city', 'test2'),
(57, 2, 'billing_state', 'CA'),
(58, 2, 'billing_postcode', '84958'),
(59, 2, 'billing_country', 'US'),
(60, 2, 'billing_email', 'diamondiger@gmail.com'),
(61, 2, 'billing_phone', '3424242342'),
(62, 2, 'shipping_method', ''),
(63, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(64, 2, 'paying_customer', '1'),
(65, 3, 'nickname', 'testT'),
(66, 3, 'first_name', ''),
(67, 3, 'last_name', ''),
(68, 3, 'description', ''),
(69, 3, 'rich_editing', 'true'),
(70, 3, 'syntax_highlighting', 'true'),
(71, 3, 'comment_shortcuts', 'false'),
(72, 3, 'admin_color', 'fresh'),
(73, 3, 'use_ssl', '0'),
(74, 3, 'show_admin_bar_front', 'true'),
(75, 3, 'locale', ''),
(76, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(77, 3, 'wp_user_level', '0'),
(78, 3, 'skype', 'my_skype'),
(79, 3, 'default_password_nag', '1'),
(80, 4, 'nickname', 'Tetet'),
(81, 4, 'first_name', 'first'),
(82, 4, 'last_name', 'last'),
(83, 4, 'description', ''),
(84, 4, 'rich_editing', 'true'),
(85, 4, 'syntax_highlighting', 'true'),
(86, 4, 'comment_shortcuts', 'false'),
(87, 4, 'admin_color', 'fresh'),
(88, 4, 'use_ssl', '0'),
(89, 4, 'show_admin_bar_front', 'true'),
(90, 4, 'locale', ''),
(91, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(92, 4, 'wp_user_level', '0'),
(93, 4, 'skype', 'sssssss'),
(94, 4, 'dismissed_wp_pointers', ''),
(96, 5, 'nickname', 'test2'),
(97, 5, 'first_name', ''),
(98, 5, 'last_name', ''),
(99, 5, 'description', ''),
(100, 5, 'rich_editing', 'true'),
(101, 5, 'syntax_highlighting', 'true'),
(102, 5, 'comment_shortcuts', 'false'),
(103, 5, 'admin_color', 'fresh'),
(104, 5, 'use_ssl', '0'),
(105, 5, 'show_admin_bar_front', 'true'),
(106, 5, 'locale', ''),
(107, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(108, 5, 'wp_user_level', '0'),
(109, 5, 'skype', 'test2e'),
(110, 5, 'default_password_nag', ''),
(112, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(113, 5, 'session_tokens', 'a:2:{s:64:\"3d4967d5dc550d8d9a674ae23119819ab6a2d947c03435454ecfb8078bceef77\";a:4:{s:10:\"expiration\";i:1518892562;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518719762;}s:64:\"161329a7cc5db498e4568bc8152dc71629c52ccef526e7748b70aaa96f27a076\";a:4:{s:10:\"expiration\";i:1518892690;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518719890;}}'),
(114, 1, 'billing_address_1', 'test'),
(115, 1, 'billing_city', 'test'),
(116, 1, 'billing_postcode', '90001'),
(117, 1, 'billing_phone', '23423424234'),
(118, 1, 'shipping_method', ''),
(119, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:3:{s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";a:10:{s:3:\"key\";s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:75;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:75;s:8:\"line_tax\";i:0;}s:32:\"aab3238922bcc25a6f606eb525ffdc56\";a:10:{s:3:\"key\";s:32:\"aab3238922bcc25a6f606eb525ffdc56\";s:10:\"product_id\";i:14;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:30;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:30;s:8:\"line_tax\";i:0;}s:32:\"8e296a067a37563370ded05f5a3bf3ec\";a:10:{s:3:\"key\";s:32:\"8e296a067a37563370ded05f5a3bf3ec\";s:10:\"product_id\";i:25;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'woodmin', '$P$BNPJQZLhBFumV008KHkd7qmAXspH7R0', 'woodmin', 'dmykos@gmail.com', '', '2018-02-14 07:21:00', '', 0, 'woodmin'),
(2, 'diamondiger', '$P$B.2mkhLphLnwUri1lV3w30eoXXT3/81', 'diamondiger', 'diamondiger@gmail.com', '', '2018-02-14 20:54:25', '', 0, 'diamondiger'),
(3, 'testT', '$P$BGcjjx5FMOi9KaU/FpUb2pq5LxNODJ1', 'testt', 'testt@gmail.com', '', '2018-02-15 12:45:53', '1518698753:$P$BpVHDw/UEc8shF7Z88dA65055saOWn.', 0, 'testT'),
(4, 'Tetet', '$P$BErAW2xvhj.gV9cSauVxRin3bJ5HF9/', 'tetet', 'Tetet@gmail.com', '', '2018-02-15 13:08:21', '1518700101:$P$BuIh9jaY5an14SpWrI2t5OXnm13mih1', 0, 'first last'),
(5, 'test2', '$P$BsapC2mUuCOuIE3bjZorcJN.MTA/cL0', 'test2', 'test2@gmail.com', '', '2018-02-15 13:49:07', '', 0, 'test2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_downloadable_product_permissions`
--

INSERT INTO `wp_woocommerce_downloadable_product_permissions` (`permission_id`, `download_id`, `product_id`, `order_id`, `order_key`, `user_email`, `user_id`, `downloads_remaining`, `access_granted`, `access_expires`, `download_count`) VALUES
(1, '7916e9dc-4556-4554-823e-d0f17a9f6e10', 17, 21, 'wc_order_5a84a202786ac', 'diamondiger@gmail.com', 2, '', '2018-02-14 00:00:00', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(10, 2, '_product_id', '17'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '45'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '45'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, '_product_id', '17'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '1'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '45'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '45'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(28, 4, '_product_id', '0'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '4'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '2664'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '2664'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(2, 'Blade Runner 2049', 'line_item', 20),
(3, 'Blade Runner 2049', 'line_item', 21),
(4, 'Mad Max (1979)', 'line_item', 44);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(55, '1', 'a:10:{s:4:\"cart\";s:1052:\"a:3:{s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";a:10:{s:3:\"key\";s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:75;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:75;s:8:\"line_tax\";i:0;}s:32:\"aab3238922bcc25a6f606eb525ffdc56\";a:10:{s:3:\"key\";s:32:\"aab3238922bcc25a6f606eb525ffdc56\";s:10:\"product_id\";i:14;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:30;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:30;s:8:\"line_tax\";i:0;}s:32:\"8e296a067a37563370ded05f5a3bf3ec\";a:10:{s:3:\"key\";s:32:\"8e296a067a37563370ded05f5a3bf3ec\";s:10:\"product_id\";i:25;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:6:\"205.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"205.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"205.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:798:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-02-22T06:13:20+00:00\";s:8:\"postcode\";s:5:\"90001\";s:4:\"city\";s:4:\"test\";s:9:\"address_1\";s:4:\"test\";s:7:\"address\";s:4:\"test\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:5:\"90001\";s:13:\"shipping_city\";s:4:\"test\";s:18:\"shipping_address_1\";s:4:\"test\";s:16:\"shipping_address\";s:4:\"test\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:9:\"TestFirst\";s:9:\"last_name\";s:8:\"TestLast\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"23423424234\";s:5:\"email\";s:16:\"dmykos@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:6:\"paypal\";s:22:\"order_awaiting_payment\";N;}', 1519412443);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
