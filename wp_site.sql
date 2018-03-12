-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 12 2018 г., 13:01
-- Версия сервера: 5.7.13
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-01 07:55:17', '2018-03-01 07:55:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
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

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp-site', 'yes'),
(2, 'home', 'http://wp-site', 'yes'),
(3, 'blogname', 'Moderna', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paharenko1985@mail.ru', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Moderna', 'yes'),
(41, 'stylesheet', 'Moderna', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:18:"Категории";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:10:"Поиск";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"sidebar_right";a:5:{i:0;s:12:"categories-3";i:1;s:11:"tag_cloud-2";i:2;s:8:"search-3";i:3;s:11:"my_widget-3";i:4;s:12:"my_weather-4";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:"title";s:8:"Теги";s:5:"count";i:0;s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1520884518;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1520927731;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1520928297;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519890976;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1520848633;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1520848641;s:7:"checked";a:4:{s:7:"Moderna";s:0:"";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'Moderna', 'yes'),
(138, 'theme_mods_Moderna', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:3:"top";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1519904060;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(173, 'WPLANG', '', 'yes'),
(174, 'new_admin_email', 'paharenko1985@mail.ru', 'yes'),
(175, 'my_phone', '', 'yes'),
(178, 'my_text', 'Moderna HTML Business Template', 'yes'),
(181, 'category_children', 'a:0:{}', 'yes'),
(199, 'widget_foo_widget', 'a:2:{i:2;a:1:{s:5:"title";s:9:"New title";}s:12:"_multiwidget";i:1;}', 'yes'),
(200, 'widget_my_widget', 'a:2:{i:3;a:1:{s:5:"title";s:19:"Мой Виджет";}s:12:"_multiwidget";i:1;}', 'yes'),
(218, 'widget_my_weather', 'a:2:{i:4;a:3:{s:5:"title";s:7:"Kharkiv";s:3:"red";s:0:"";s:4:"blue";s:2:"on";}s:12:"_multiwidget";i:1;}', 'yes'),
(240, '_transient_special_query_results', 'Kiev', 'yes'),
(261, '_site_transient_timeout_browser_9bb7b3178e07390e66ccfc3e17d20f2e', '1521396667', 'no'),
(262, '_site_transient_browser_9bb7b3178e07390e66ccfc3e17d20f2e', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"58.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(282, '_site_transient_timeout_theme_roots', '1520850440', 'no'),
(283, '_site_transient_theme_roots', 'a:4:{s:7:"Moderna";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(284, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1520848641;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:9:"hello.php";s:3:"1.6";s:19:"weather/weather.php";s:0:"";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'front-page.php'),
(4, 4, '_edit_lock', '1519903873:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1519904133:1'),
(7, 6, '_wp_page_template', 'contact.php'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1519892161:1'),
(10, 8, '_wp_page_template', 'portfolio.php'),
(11, 2, '_wp_trash_meta_status', 'publish'),
(12, 2, '_wp_trash_meta_time', '1519892309'),
(13, 2, '_wp_desired_post_slug', 'sample-page'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1519893249:1'),
(16, 13, '_wp_attached_file', '2018/03/1.jpg'),
(17, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 14, '_wp_attached_file', '2018/03/2.jpg'),
(19, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 15, '_wp_attached_file', '2018/03/3.jpg'),
(21, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"3-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 16, '_wp_attached_file', '2018/03/4.jpg'),
(23, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"4-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(24, 17, '_wp_attached_file', '2018/03/5.jpg'),
(25, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/5.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"5-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 18, '_wp_attached_file', '2018/03/6.jpg'),
(27, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/6.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"6-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"6-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 19, '_wp_attached_file', '2018/03/7.jpg'),
(29, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/7.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"7-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"7-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 20, '_wp_attached_file', '2018/03/8.jpg'),
(31, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/03/8.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"8-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"8-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 21, '_wp_attached_file', '2018/03/1-1.jpg'),
(33, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:360;s:4:"file";s:15:"2018/03/1-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-1-300x105.jpg";s:5:"width";i:300;s:6:"height";i:105;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"1-1-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"1-1-1024x360.jpg";s:5:"width";i:1024;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(34, 22, '_wp_attached_file', '2018/03/2-1.jpg'),
(35, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:360;s:4:"file";s:15:"2018/03/2-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"2-1-300x105.jpg";s:5:"width";i:300;s:6:"height";i:105;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"2-1-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"2-1-1024x360.jpg";s:5:"width";i:1024;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 23, '_wp_attached_file', '2018/03/3-1.jpg'),
(37, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:360;s:4:"file";s:15:"2018/03/3-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"3-1-300x105.jpg";s:5:"width";i:300;s:6:"height";i:105;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"3-1-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"3-1-1024x360.jpg";s:5:"width";i:1024;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(38, 24, '_wp_attached_file', '2018/03/img1.jpg'),
(39, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:450;s:4:"file";s:16:"2018/03/img1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(40, 25, '_wp_attached_file', '2018/03/img2.jpg'),
(41, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:450;s:4:"file";s:16:"2018/03/img2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img2-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(42, 26, '_wp_attached_file', '2018/03/img3.jpg'),
(43, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:450;s:4:"file";s:16:"2018/03/img3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img3-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img3-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(44, 27, '_wp_attached_file', '2018/03/thumb1.jpg'),
(45, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:65;s:6:"height";i:65;s:4:"file";s:18:"2018/03/thumb1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 28, '_wp_attached_file', '2018/03/thumb2.jpg'),
(47, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:65;s:6:"height";i:65;s:4:"file";s:18:"2018/03/thumb2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(48, 29, '_wp_attached_file', '2018/03/thumb3.jpg'),
(49, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:65;s:6:"height";i:65;s:4:"file";s:18:"2018/03/thumb3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(50, 30, '_wp_attached_file', '2018/03/dummy-1.jpg'),
(51, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:450;s:4:"file";s:19:"2018/03/dummy-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"dummy-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"dummy-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"dummy-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 12, '_thumbnail_id', '21'),
(53, 32, '_edit_last', '1'),
(54, 32, '_edit_lock', '1519900049:1'),
(55, 32, '_thumbnail_id', '22'),
(56, 33, '_edit_last', '1'),
(57, 33, '_edit_lock', '1519893386:1'),
(58, 33, '_thumbnail_id', '23'),
(59, 44, '_menu_item_type', 'post_type'),
(60, 44, '_menu_item_menu_item_parent', '0'),
(61, 44, '_menu_item_object_id', '8'),
(62, 44, '_menu_item_object', 'page'),
(63, 44, '_menu_item_target', ''),
(64, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 44, '_menu_item_xfn', ''),
(66, 44, '_menu_item_url', ''),
(68, 45, '_menu_item_type', 'post_type'),
(69, 45, '_menu_item_menu_item_parent', '0'),
(70, 45, '_menu_item_object_id', '6'),
(71, 45, '_menu_item_object', 'page'),
(72, 45, '_menu_item_target', ''),
(73, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 45, '_menu_item_xfn', ''),
(75, 45, '_menu_item_url', ''),
(77, 46, '_menu_item_type', 'post_type'),
(78, 46, '_menu_item_menu_item_parent', '0'),
(79, 46, '_menu_item_object_id', '4'),
(80, 46, '_menu_item_object', 'page'),
(81, 46, '_menu_item_target', ''),
(82, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 46, '_menu_item_xfn', ''),
(84, 46, '_menu_item_url', ''),
(86, 1, '_edit_lock', '1519899873:1'),
(87, 1, '_edit_last', '1'),
(90, 1, 'title', 'Hello'),
(91, 48, '_edit_last', '1'),
(92, 48, '_wp_page_template', 'default'),
(93, 48, '_edit_lock', '1519897936:1'),
(94, 50, '_menu_item_type', 'post_type'),
(95, 50, '_menu_item_menu_item_parent', '0'),
(96, 50, '_menu_item_object_id', '48'),
(97, 50, '_menu_item_object', 'page'),
(98, 50, '_menu_item_target', ''),
(99, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 50, '_menu_item_xfn', ''),
(101, 50, '_menu_item_url', ''),
(103, 56, '_edit_last', '1'),
(106, 56, '_edit_lock', '1519902165:1'),
(109, 56, 'Class_Post', 'fa fa-desktop fa-3x'),
(112, 61, '_edit_last', '1'),
(113, 61, '_edit_lock', '1519902197:1'),
(116, 63, '_edit_last', '1'),
(117, 63, '_edit_lock', '1519902230:1'),
(120, 65, '_edit_last', '1'),
(121, 65, '_edit_lock', '1519902986:1'),
(124, 68, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(125, 68, '_mail', 'a:8:{s:7:"subject";s:24:"Moderna "[your-subject]"";s:6:"sender";s:31:"[your-name] <wordpress@wp-site>";s:4:"body";s:160:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Moderna (http://wp-site)";s:9:"recipient";s:21:"paharenko1985@mail.ru";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(126, 68, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:24:"Moderna "[your-subject]"";s:6:"sender";s:27:"Moderna <wordpress@wp-site>";s:4:"body";s:102:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Moderna (http://wp-site)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:31:"Reply-To: paharenko1985@mail.ru";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(127, 68, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(128, 68, '_additional_settings', NULL),
(129, 68, '_locale', 'en_US'),
(130, 70, '_edit_last', '1'),
(131, 70, '_edit_lock', '1519904417:1'),
(132, 70, '_thumbnail_id', '20'),
(135, 72, '_edit_last', '1'),
(136, 72, '_edit_lock', '1519904508:1'),
(137, 72, '_thumbnail_id', '19'),
(142, 74, '_edit_last', '1'),
(143, 74, '_edit_lock', '1519904552:1'),
(144, 74, '_thumbnail_id', '15'),
(147, 76, '_edit_last', '1'),
(148, 76, '_edit_lock', '1519904771:1'),
(149, 76, '_thumbnail_id', '13'),
(152, 78, '_edit_last', '1'),
(153, 78, '_edit_lock', '1519911019:1'),
(154, 78, '_thumbnail_id', '19'),
(163, 81, '_edit_last', '1'),
(164, 81, '_edit_lock', '1519906427:1'),
(167, 81, '_thumbnail_id', '13'),
(168, 89, '_edit_last', '1'),
(169, 89, '_wp_page_template', 'filter-page.php'),
(170, 89, '_edit_lock', '1519984256:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-01 07:55:17', '2018-03-01 07:55:17', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-01 09:28:59', '2018-03-01 09:28:59', '', 0, 'http://wp-site/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-01 07:55:17', '2018-03-01 07:55:17', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wp-site/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-03-01 08:18:29', '2018-03-01 08:18:29', '', 0, 'http://wp-site/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-03-01 08:05:08', '2018-03-01 08:05:08', '<h2>Moderna HTML Business Template</h2>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-01 11:20:47', '2018-03-01 11:20:47', '', 0, 'http://wp-site/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-03-01 08:05:08', '2018-03-01 08:05:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-03-01 08:05:08', '2018-03-01 08:05:08', '', 4, 'http://wp-site/2018/03/01/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-03-01 08:07:32', '2018-03-01 08:07:32', '[contact-form-7 id="68" title="Contact form 1"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-01 11:35:02', '2018-03-01 11:35:02', '', 0, 'http://wp-site/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-03-01 08:07:32', '2018-03-01 08:07:32', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-01 08:07:32', '2018-03-01 08:07:32', '', 6, 'http://wp-site/2018/03/01/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-03-01 08:08:52', '2018-03-01 08:08:52', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2018-03-01 08:08:52', '2018-03-01 08:08:52', '', 0, 'http://wp-site/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-03-01 08:08:52', '2018-03-01 08:08:52', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-03-01 08:08:52', '2018-03-01 08:08:52', '', 8, 'http://wp-site/2018/03/01/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-03-01 08:18:29', '2018-03-01 08:18:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wp-site/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-01 08:18:29', '2018-03-01 08:18:29', '', 2, 'http://wp-site/2018/03/01/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-03-01 08:33:12', '2018-03-01 08:33:12', 'Slider 1', 'Slider 1', 'Slider 1', 'publish', 'closed', 'closed', '', 'slider-1', '', '', '2018-03-01 08:33:12', '2018-03-01 08:33:12', '', 0, 'http://wp-site/?post_type=slider&#038;p=12', 0, 'slider', '', 0),
(13, 1, '2018-03-01 08:31:45', '2018-03-01 08:31:45', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-03-01 08:31:45', '2018-03-01 08:31:45', '', 12, 'http://wp-site/wp-content/uploads/2018/03/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-03-01 08:31:47', '2018-03-01 08:31:47', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-03-01 08:31:47', '2018-03-01 08:31:47', '', 12, 'http://wp-site/wp-content/uploads/2018/03/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-03-01 08:31:49', '2018-03-01 08:31:49', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-03-01 08:31:49', '2018-03-01 08:31:49', '', 12, 'http://wp-site/wp-content/uploads/2018/03/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-03-01 08:31:51', '2018-03-01 08:31:51', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-03-01 08:31:51', '2018-03-01 08:31:51', '', 12, 'http://wp-site/wp-content/uploads/2018/03/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-03-01 08:31:52', '2018-03-01 08:31:52', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-03-01 08:31:52', '2018-03-01 08:31:52', '', 12, 'http://wp-site/wp-content/uploads/2018/03/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-03-01 08:31:54', '2018-03-01 08:31:54', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-03-01 08:31:54', '2018-03-01 08:31:54', '', 12, 'http://wp-site/wp-content/uploads/2018/03/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-03-01 08:31:56', '2018-03-01 08:31:56', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-03-01 08:31:56', '2018-03-01 08:31:56', '', 12, 'http://wp-site/wp-content/uploads/2018/03/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-03-01 08:31:57', '2018-03-01 08:31:57', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-03-01 08:31:57', '2018-03-01 08:31:57', '', 12, 'http://wp-site/wp-content/uploads/2018/03/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-03-01 08:32:13', '2018-03-01 08:32:13', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2018-03-01 08:32:13', '2018-03-01 08:32:13', '', 12, 'http://wp-site/wp-content/uploads/2018/03/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-03-01 08:32:14', '2018-03-01 08:32:14', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2018-03-01 08:32:14', '2018-03-01 08:32:14', '', 12, 'http://wp-site/wp-content/uploads/2018/03/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-03-01 08:32:16', '2018-03-01 08:32:16', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2018-03-01 08:32:16', '2018-03-01 08:32:16', '', 12, 'http://wp-site/wp-content/uploads/2018/03/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-03-01 08:32:29', '2018-03-01 08:32:29', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2018-03-01 08:32:29', '2018-03-01 08:32:29', '', 12, 'http://wp-site/wp-content/uploads/2018/03/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-03-01 08:32:31', '2018-03-01 08:32:31', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2018-03-01 08:32:31', '2018-03-01 08:32:31', '', 12, 'http://wp-site/wp-content/uploads/2018/03/img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-03-01 08:32:32', '2018-03-01 08:32:32', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2018-03-01 08:32:32', '2018-03-01 08:32:32', '', 12, 'http://wp-site/wp-content/uploads/2018/03/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-03-01 08:32:47', '2018-03-01 08:32:47', '', 'thumb1', '', 'inherit', 'open', 'closed', '', 'thumb1', '', '', '2018-03-01 08:32:47', '2018-03-01 08:32:47', '', 12, 'http://wp-site/wp-content/uploads/2018/03/thumb1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-03-01 08:32:49', '2018-03-01 08:32:49', '', 'thumb2', '', 'inherit', 'open', 'closed', '', 'thumb2', '', '', '2018-03-01 08:32:49', '2018-03-01 08:32:49', '', 12, 'http://wp-site/wp-content/uploads/2018/03/thumb2.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-03-01 08:32:50', '2018-03-01 08:32:50', '', 'thumb3', '', 'inherit', 'open', 'closed', '', 'thumb3', '', '', '2018-03-01 08:32:50', '2018-03-01 08:32:50', '', 12, 'http://wp-site/wp-content/uploads/2018/03/thumb3.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-03-01 08:33:00', '2018-03-01 08:33:00', '', 'dummy-1', '', 'inherit', 'open', 'closed', '', 'dummy-1', '', '', '2018-03-01 08:33:00', '2018-03-01 08:33:00', '', 12, 'http://wp-site/wp-content/uploads/2018/03/dummy-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-03-01 08:36:52', '2018-03-01 08:36:52', 'Slider 2', 'Slider 2', 'Slider 2', 'publish', 'closed', 'closed', '', 'slider-2', '', '', '2018-03-01 08:36:52', '2018-03-01 08:36:52', '', 0, 'http://wp-site/?post_type=slider&#038;p=32', 0, 'slider', '', 0),
(33, 1, '2018-03-01 08:37:19', '2018-03-01 08:37:19', 'Slider 3', 'Slider 3', 'Slider 3', 'publish', 'closed', 'closed', '', 'slider-3', '', '', '2018-03-01 08:37:19', '2018-03-01 08:37:19', '', 0, 'http://wp-site/?post_type=slider&#038;p=33', 0, 'slider', '', 0),
(44, 1, '2018-03-01 09:03:20', '2018-03-01 09:03:20', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-03-01 12:16:18', '2018-03-01 12:16:18', '', 0, 'http://wp-site/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2018-03-01 09:03:20', '2018-03-01 09:03:20', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-03-01 12:16:18', '2018-03-01 12:16:18', '', 0, 'http://wp-site/?p=45', 4, 'nav_menu_item', '', 0),
(46, 1, '2018-03-01 09:03:20', '2018-03-01 09:03:20', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-03-01 12:16:18', '2018-03-01 12:16:18', '', 0, 'http://wp-site/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-03-01 09:28:59', '2018-03-01 09:28:59', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-01 09:28:59', '2018-03-01 09:28:59', '', 1, 'http://wp-site/2018/03/01/1-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-03-01 09:54:02', '2018-03-01 09:54:02', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-01 09:54:02', '2018-03-01 09:54:02', '', 0, 'http://wp-site/?page_id=48', 0, 'page', '', 0),
(49, 1, '2018-03-01 09:54:02', '2018-03-01 09:54:02', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-03-01 09:54:02', '2018-03-01 09:54:02', '', 48, 'http://wp-site/2018/03/01/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-03-01 09:54:49', '2018-03-01 09:54:49', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-03-01 12:16:18', '2018-03-01 12:16:18', '', 0, 'http://wp-site/?p=50', 2, 'nav_menu_item', '', 0),
(56, 1, '2018-03-01 10:46:47', '2018-03-01 10:46:47', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Fully responsive', '<i class="fa fa-desktop fa-3x"></i>', 'publish', 'open', 'open', '', 'fully-responsive', '', '', '2018-03-01 11:04:06', '2018-03-01 11:04:06', '', 0, 'http://wp-site/?p=56', 0, 'post', '', 0),
(57, 1, '2018-03-01 10:46:47', '2018-03-01 10:46:47', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Fully responsive', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-03-01 10:46:47', '2018-03-01 10:46:47', '', 56, 'http://wp-site/2018/03/01/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-03-01 10:51:30', '2018-03-01 10:51:30', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Fully responsive', 'fa fa-desktop fa-3x', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2018-03-01 10:51:30', '2018-03-01 10:51:30', '', 56, 'http://wp-site/2018/03/01/56-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2018-03-01 10:51:33', '2018-03-01 10:51:33', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Fully responsive', 'fa fa-desktop fa-3x', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-03-01 10:51:33', '2018-03-01 10:51:33', '', 56, 'http://wp-site/2018/03/01/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-03-01 11:04:06', '2018-03-01 11:04:06', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Fully responsive', '<i class="fa fa-desktop fa-3x"></i>', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-03-01 11:04:06', '2018-03-01 11:04:06', '', 56, 'http://wp-site/2018/03/01/56-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-03-01 11:05:34', '2018-03-01 11:05:34', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Modern Style', '<i class="fa fa-pagelines fa-3x"></i>', 'publish', 'open', 'open', '', 'modern-style', '', '', '2018-03-01 11:05:34', '2018-03-01 11:05:34', '', 0, 'http://wp-site/?p=61', 0, 'post', '', 0),
(62, 1, '2018-03-01 11:05:34', '2018-03-01 11:05:34', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Modern Style', '<i class="fa fa-pagelines fa-3x"></i>', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-03-01 11:05:34', '2018-03-01 11:05:34', '', 61, 'http://wp-site/2018/03/01/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-03-01 11:06:07', '2018-03-01 11:06:07', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Customizable', '<i class="fa fa-edit fa-3x"></i>', 'publish', 'open', 'open', '', 'customizable', '', '', '2018-03-01 11:06:07', '2018-03-01 11:06:07', '', 0, 'http://wp-site/?p=63', 0, 'post', '', 0),
(64, 1, '2018-03-01 11:06:07', '2018-03-01 11:06:07', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Customizable', '<i class="fa fa-edit fa-3x"></i>', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-03-01 11:06:07', '2018-03-01 11:06:07', '', 63, 'http://wp-site/2018/03/01/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-03-01 11:06:46', '2018-03-01 11:06:46', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Valid HTML5', '<i class="fa fa-code fa-3x"></i>', 'publish', 'open', 'open', '', 'valid-html5', '', '', '2018-03-01 11:06:46', '2018-03-01 11:06:46', '', 0, 'http://wp-site/?p=65', 0, 'post', '', 0),
(66, 1, '2018-03-01 11:06:46', '2018-03-01 11:06:46', 'Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.', 'Valid HTML5', '<i class="fa fa-code fa-3x"></i>', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-03-01 11:06:46', '2018-03-01 11:06:46', '', 65, 'http://wp-site/2018/03/01/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-03-01 11:19:24', '2018-03-01 11:19:24', '<h2>Moderna HTML Business Template</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-03-01 11:19:24', '2018-03-01 11:19:24', '', 4, 'http://wp-site/2018/03/01/4-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-03-01 11:34:20', '2018-03-01 11:34:20', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nModerna "[your-subject]"\n[your-name] <wordpress@wp-site>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Moderna (http://wp-site)\npaharenko1985@mail.ru\nReply-To: [your-email]\n\n0\n0\n\nModerna "[your-subject]"\nModerna <wordpress@wp-site>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Moderna (http://wp-site)\n[your-email]\nReply-To: paharenko1985@mail.ru\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-03-01 11:34:20', '2018-03-01 11:34:20', '', 0, 'http://wp-site/?post_type=wpcf7_contact_form&p=68', 0, 'wpcf7_contact_form', '', 0),
(69, 1, '2018-03-01 11:35:02', '2018-03-01 11:35:02', '[contact-form-7 id="68" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-01 11:35:02', '2018-03-01 11:35:02', '', 6, 'http://wp-site/2018/03/01/6-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-03-01 11:39:10', '2018-03-01 11:39:10', '', 'Work 1', '', 'publish', 'open', 'open', '', 'work-1', '', '', '2018-03-01 11:39:10', '2018-03-01 11:39:10', '', 0, 'http://wp-site/?p=70', 0, 'post', '', 0),
(71, 1, '2018-03-01 11:39:10', '2018-03-01 11:39:10', '', 'Work 1', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-03-01 11:39:10', '2018-03-01 11:39:10', '', 70, 'http://wp-site/2018/03/01/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-03-01 11:43:16', '2018-03-01 11:43:16', '', 'Work 2', '', 'publish', 'open', 'open', '', 'work-2', '', '', '2018-03-01 11:43:54', '2018-03-01 11:43:54', '', 0, 'http://wp-site/?p=72', 0, 'post', '', 0),
(73, 1, '2018-03-01 11:43:16', '2018-03-01 11:43:16', '', 'Work 2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-03-01 11:43:16', '2018-03-01 11:43:16', '', 72, 'http://wp-site/2018/03/01/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-03-01 11:44:31', '2018-03-01 11:44:31', '', 'Work 3', '', 'publish', 'open', 'open', '', 'work-3', '', '', '2018-03-01 11:44:31', '2018-03-01 11:44:31', '', 0, 'http://wp-site/?p=74', 0, 'post', '', 0),
(75, 1, '2018-03-01 11:44:31', '2018-03-01 11:44:31', '', 'Work 3', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-01 11:44:31', '2018-03-01 11:44:31', '', 74, 'http://wp-site/2018/03/01/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-03-01 11:45:33', '2018-03-01 11:45:33', '', 'Work 4', '', 'publish', 'open', 'open', '', 'work-4', '', '', '2018-03-01 11:45:33', '2018-03-01 11:45:33', '', 0, 'http://wp-site/?p=76', 0, 'post', '', 0),
(77, 1, '2018-03-01 11:45:33', '2018-03-01 11:45:33', '', 'Work 4', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-03-01 11:45:33', '2018-03-01 11:45:33', '', 76, 'http://wp-site/2018/03/01/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-03-01 12:01:59', '2018-03-01 12:01:59', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n<div id="s3gt_translate_tooltip_mini" class="s3gt_translate_tooltip_mini_box" style="background: initial !important; border: initial !important; border-radius: initial !important; border-spacing: initial !important; border-collapse: initial !important; direction: ltr !important; flex-direction: initial !important; font-weight: initial !important; height: initial !important; letter-spacing: initial !important; min-width: initial !important; max-width: initial !important; min-height: initial !important; max-height: initial !important; margin: auto !important; outline: initial !important; padding: initial !important; position: absolute; table-layout: initial !important; text-align: initial !important; text-shadow: initial !important; width: initial !important; word-break: initial !important; word-spacing: initial !important; overflow-wrap: initial !important; box-sizing: initial !important; display: initial !important; color: inherit !important; font-size: 13px !important; font-family: X-LocaleSpecific, sans-serif, Tahoma, Helvetica !important; line-height: 13px !important; vertical-align: top !important; white-space: inherit !important; left: 581px; top: 314px; opacity: 0.4;">\r\n<div id="s3gt_translate_tooltip_mini_logo" class="s3gt_translate_tooltip_mini" title="Перевести выделенный фрагмент"></div>\r\n<div id="s3gt_translate_tooltip_mini_sound" class="s3gt_translate_tooltip_mini" title="Прослушать"></div>\r\n<div id="s3gt_translate_tooltip_mini_copy" class="s3gt_translate_tooltip_mini" title="Скопировать текст в буфер обмена"></div>\r\n</div>\r\n\r\n[gallery ids="23,22,21,20,13,14,15,16"]', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'publish', 'open', 'open', '', 'article-1', '', '', '2018-03-01 13:32:07', '2018-03-01 13:32:07', '', 0, 'http://wp-site/?p=78', 0, 'post', '', 0),
(79, 1, '2018-03-01 12:01:59', '2018-03-01 12:01:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'Article 1', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 12:01:59', '2018-03-01 12:01:59', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-03-01 12:10:14', '2018-03-01 12:10:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 12:10:14', '2018-03-01 12:10:14', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-03-01 12:13:51', '2018-03-01 12:13:51', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'Article 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'publish', 'open', 'open', '', 'article-2', '', '', '2018-03-01 12:14:08', '2018-03-01 12:14:08', '', 0, 'http://wp-site/?p=81', 0, 'post', '', 0),
(82, 1, '2018-03-01 12:13:51', '2018-03-01 12:13:51', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'Article 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-03-01 12:13:51', '2018-03-01 12:13:51', '', 81, 'http://wp-site/2018/03/01/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-03-01 13:13:24', '2018-03-01 13:13:24', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\n[gallery ids="29,28,27" orderby="rand"]', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 13:13:24', '2018-03-01 13:13:24', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-03-01 13:15:19', '2018-03-01 13:15:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\n[gallery columns="1" ids="29,28,27" orderby="rand"]', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 13:15:19', '2018-03-01 13:15:19', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-03-01 13:19:19', '2018-03-01 13:19:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\n\n[gallery ids="30,29,28,27,26,25,24,17,18,19,20,21,22,23"]\n<div id="s3gt_translate_tooltip_mini" class="s3gt_translate_tooltip_mini_box" style="background: initial !important; border: initial !important; border-radius: initial !important; border-spacing: initial !important; border-collapse: initial !important; direction: ltr !important; flex-direction: initial !important; font-weight: initial !important; height: initial !important; letter-spacing: initial !important; min-width: initial !important; max-width: initial !important; min-height: initial !important; max-height: initial !important; margin: auto !important; outline: initial !important; padding: initial !important; position: absolute; table-layout: initial !important; text-align: initial !important; text-shadow: initial !important; width: initial !important; word-break: initial !important; word-spacing: initial !important; overflow-wrap: initial !important; box-sizing: initial !important; display: initial !important; color: inherit !important; font-size: 13px !important; font-family: X-LocaleSpecific, sans-serif, Tahoma, Helvetica !important; line-height: 13px !important; vertical-align: top !important; white-space: inherit !important; left: 574px; top: 419px; opacity: 0;">\n<div id="s3gt_translate_tooltip_mini_logo" class="s3gt_translate_tooltip_mini" title="Перевести выделенный фрагмент"></div>\n<div id="s3gt_translate_tooltip_mini_sound" class="s3gt_translate_tooltip_mini" title="Прослушать"></div>\n<div id="s3gt_translate_tooltip_mini_copy" class="s3gt_translate_tooltip_mini" title="Скопировать текст в буфер обмена"></div>\n</div>', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2018-03-01 13:19:20', '2018-03-01 13:19:20', '', 78, 'http://wp-site/2018/03/01/78-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2018-03-01 13:18:14', '2018-03-01 13:18:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\n[gallery columns="1" link="none" ids="29,28,27,20,19,18,17,16,15,14" orderby="rand"]\r\n\r\n[gallery ids="30,29,28,27,26,25,24,17,18,19,20,21,22,23"]', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 13:18:14', '2018-03-01 13:18:14', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-03-01 13:28:47', '2018-03-01 13:28:47', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n<div id="s3gt_translate_tooltip_mini" class="s3gt_translate_tooltip_mini_box" style="background: initial !important; border: initial !important; border-radius: initial !important; border-spacing: initial !important; border-collapse: initial !important; direction: ltr !important; flex-direction: initial !important; font-weight: initial !important; height: initial !important; letter-spacing: initial !important; min-width: initial !important; max-width: initial !important; min-height: initial !important; max-height: initial !important; margin: auto !important; outline: initial !important; padding: initial !important; position: absolute; table-layout: initial !important; text-align: initial !important; text-shadow: initial !important; width: initial !important; word-break: initial !important; word-spacing: initial !important; overflow-wrap: initial !important; box-sizing: initial !important; display: initial !important; color: inherit !important; font-size: 13px !important; font-family: X-LocaleSpecific, sans-serif, Tahoma, Helvetica !important; line-height: 13px !important; vertical-align: top !important; white-space: inherit !important; left: 581px; top: 314px; opacity: 0.4;">\r\n<div id="s3gt_translate_tooltip_mini_logo" class="s3gt_translate_tooltip_mini" title="Перевести выделенный фрагмент"></div>\r\n<div id="s3gt_translate_tooltip_mini_sound" class="s3gt_translate_tooltip_mini" title="Прослушать"></div>\r\n<div id="s3gt_translate_tooltip_mini_copy" class="s3gt_translate_tooltip_mini" title="Скопировать текст в буфер обмена"></div>\r\n</div>', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 13:28:47', '2018-03-01 13:28:47', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-03-01 13:30:51', '2018-03-01 13:30:51', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?\r\n<div id="s3gt_translate_tooltip_mini" class="s3gt_translate_tooltip_mini_box" style="background: initial !important; border: initial !important; border-radius: initial !important; border-spacing: initial !important; border-collapse: initial !important; direction: ltr !important; flex-direction: initial !important; font-weight: initial !important; height: initial !important; letter-spacing: initial !important; min-width: initial !important; max-width: initial !important; min-height: initial !important; max-height: initial !important; margin: auto !important; outline: initial !important; padding: initial !important; position: absolute; table-layout: initial !important; text-align: initial !important; text-shadow: initial !important; width: initial !important; word-break: initial !important; word-spacing: initial !important; overflow-wrap: initial !important; box-sizing: initial !important; display: initial !important; color: inherit !important; font-size: 13px !important; font-family: X-LocaleSpecific, sans-serif, Tahoma, Helvetica !important; line-height: 13px !important; vertical-align: top !important; white-space: inherit !important; left: 581px; top: 314px; opacity: 0.4;">\r\n<div id="s3gt_translate_tooltip_mini_logo" class="s3gt_translate_tooltip_mini" title="Перевести выделенный фрагмент"></div>\r\n<div id="s3gt_translate_tooltip_mini_sound" class="s3gt_translate_tooltip_mini" title="Прослушать"></div>\r\n<div id="s3gt_translate_tooltip_mini_copy" class="s3gt_translate_tooltip_mini" title="Скопировать текст в буфер обмена"></div>\r\n</div>\r\n\r\n[gallery ids="23,22,21,20,13,14,15,16"]', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate inventore nobis iure odit, placeat quibusdam veniam veritatis dolore est asperiores similique vitae alias distinctio rerum ipsa quidem, perspiciatis, excepturi! Fuga?', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-01 13:30:51', '2018-03-01 13:30:51', '', 78, 'http://wp-site/2018/03/01/78-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-03-02 09:29:48', '2018-03-02 09:29:48', '', 'Filter', '', 'publish', 'closed', 'closed', '', 'filter', '', '', '2018-03-02 09:31:32', '2018-03-02 09:31:32', '', 0, 'http://wp-site/?page_id=89', 0, 'page', '', 0),
(90, 1, '2018-03-02 09:29:48', '2018-03-02 09:29:48', '', 'Filter', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-02 09:29:48', '2018-03-02 09:29:48', '', 89, 'http://wp-site/2018/03/02/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-03-11 18:11:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-11 18:11:07', '0000-00-00 00:00:00', '', 0, 'http://wp-site/?p=91', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Portfolio', 'portfolio', 0),
(3, 'Header Menu', 'header-menu', 0),
(4, 'about', 'about', 0),
(5, 'Web design', 'web-design', 0),
(6, 'Graphic design', 'graphic-design', 0),
(7, 'Icons', 'icons', 0),
(8, 'Web Developer', 'web-developer', 0),
(9, 'Blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 3, 0),
(45, 3, 0),
(46, 3, 0),
(50, 3, 0),
(56, 4, 0),
(61, 4, 0),
(63, 4, 0),
(65, 4, 0),
(70, 2, 0),
(70, 5, 0),
(72, 2, 0),
(72, 6, 0),
(74, 2, 0),
(74, 7, 0),
(76, 2, 0),
(76, 8, 0),
(78, 9, 0),
(81, 9, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', '', 0, 4),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"f9dfcee9623e1fe2c7e80fceb3f8d3ec1a1466b31c952dc33dca9820cbff8aa6";a:4:{s:10:"expiration";i:1520964663;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0";s:5:"login";i:1520791863;}}'),
(17, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&editor_expand=on&widgets_access=off'),
(18, 1, 'wp_user-settings-time', '1520415360'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '91'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:6:{i:0;s:12:"extra_fields";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'closedpostboxes_slider', 'a:0:{}'),
(27, 1, 'metaboxhidden_slider', 'a:1:{i:0;s:7:"slugdiv";}'),
(28, 1, 'closedpostboxes_page', 'a:0:{}'),
(29, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$B4N16kocSZ2iNeLtHhg5nPRGXI19Ac1', 'admin', 'paharenko1985@mail.ru', '', '2018-03-01 07:55:17', '', 0, 'Admin');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
