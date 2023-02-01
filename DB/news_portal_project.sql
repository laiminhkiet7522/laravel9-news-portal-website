-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 01, 2023 lúc 04:41 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `news_portal_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Lai Minh Kiet', 'kiet@gmail.com', '$2y$10$SpQBPOPVTia0GI9K33.st.vBBheQ.xrfDVMqVBAhV0S.zlsHl96Ze', 'admin.jpg', '', NULL, '2023-01-28 20:43:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Phuc', 'phuc@gmail.com', '$2y$10$ucIcAQ0Qq4XViKreNoHLS.pyrWP8q.F2cuD8Kuo/.OQdLn0RvTsDi', 'author_photo_1674631232.jpg', '', '2023-01-24 21:44:33', '2023-01-31 06:19:19'),
(2, 'Dat', 'dat@gmail.com', '$2y$10$8KQ6aIqk6NozRclLqP9QpOTiuwx82vABhCG0zj8XP07Rs2TP3Gh4S', 'author_photo_1674622902.jpg', '', '2023-01-24 22:01:43', '2023-01-24 22:01:43'),
(3, 'Sophia', 'sophia@gmail.com', '$2y$10$HEkVVf98XmW9y41r1DFlkOnG2suAm.tmpiaTzYDUbfXfBevPzynS6', 'author_photo_1674623421.jpg', '', '2023-01-24 22:10:21', '2023-01-24 22:10:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `show_on_menu`, `category_order`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'Show', '1', 1, '2023-01-07 07:11:57', '2023-01-10 05:23:52'),
(3, 'Game', 'Show', '2', 1, '2023-01-07 08:33:22', '2023-01-07 08:33:22'),
(4, 'Thể thao', 'Show', '1', 3, '2023-01-29 19:06:07', '2023-01-29 19:10:06'),
(5, 'Trò chơi', 'Show', '2', 3, '2023-01-29 19:08:53', '2023-01-29 19:08:53'),
(6, 'Health', 'Show', '3', 1, '2023-01-31 19:06:14', '2023-01-31 19:06:14'),
(7, 'Sức khỏe', 'Show', '3', 3, '2023-01-31 19:06:28', '2023-01-31 19:06:28'),
(8, 'Entertainment', 'Show', '4', 1, '2023-01-31 19:07:02', '2023-01-31 19:07:02'),
(9, 'Giải trí', 'Show', '4', 3, '2023-01-31 19:07:14', '2023-01-31 19:07:14'),
(10, 'Technology', 'Show', '5', 1, '2023-01-31 19:07:34', '2023-01-31 19:07:34'),
(11, 'Công nghệ', 'Show', '5', 3, '2023-01-31 19:07:42', '2023-01-31 19:07:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_detail`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'How can I use this website effectively?', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum quaerat neque reiciendis earum qui odio ducimus repudiandae laborum non cum laboriosam sunt a fuga maxime, minima repellat ipsa dolor magnam!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum quaerat neque reiciendis earum qui odio ducimus repudiandae laborum non cum laboriosam sunt a fuga maxime, minima repellat ipsa dolor magnam!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum quaerat neque reiciendis earum qui odio ducimus repudiandae laborum non cum laboriosam sunt a fuga maxime, minima repellat ipsa dolor magnam!<br></p><div><br></div>', 1, '2023-01-12 20:18:25', '2023-01-12 20:18:25'),
(2, 'How can I contact the support team?', '<p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. A reiciendis dicta soluta fugit, explicabo tempora ducimus eligendi. Excepturi alias saepe magni nobis, sed necessitatibus debitis architecto vero odio. Eum, temporibus?</p><p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. A reiciendis dicta soluta fugit, explicabo tempora ducimus eligendi. Excepturi alias saepe magni nobis, sed necessitatibus debitis architecto vero odio. Eum, temporibus?</p><p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. A reiciendis dicta soluta fugit, explicabo tempora ducimus eligendi. Excepturi alias saepe magni nobis, sed necessitatibus debitis architecto vero odio. Eum, temporibus?<br></p><div><br></div>', 1, '2023-01-12 20:20:18', '2023-01-12 20:26:05'),
(4, 'How can I register and login on this website?', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt magni doloribus consequuntur necessitatibus ullam, natus quam aperiam possimus quas placeat aliquid unde dicta fugiat quae architecto alias deserunt et. Ad?</p><div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt magni doloribus consequuntur necessitatibus ullam, natus quam aperiam possimus quas placeat aliquid unde dicta fugiat quae architecto alias deserunt et. Ad?</div></div><div><br></div><div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt magni doloribus consequuntur necessitatibus ullam, natus quam aperiam possimus quas placeat aliquid unde dicta fugiat quae architecto alias deserunt et. Ad?</div></div><div><br></div>', 1, '2023-01-12 20:26:26', '2023-01-12 20:26:26'),
(5, 'Làm thế nào tôi có thể sử dụng trang web này một cách hiệu quả?', 'Bạn có thể học cách sử dụng trang web bằng cách tra cứu thông tin trên Google Bạn có thể học cách sử dụng trang web bằng cách tra cứu thông tin trên Google Bạn có thể học cách sử dụng trang web bằng cách tra cứu thông tin trên Google Bạn có thể học cách sử dụng trang web bằng cách tra cứu thông tin trên Google Bạn có thể học cách sử dụng trang web bằng cách tra cứu thông tin trên Google', 3, '2023-01-31 01:31:05', '2023-01-31 01:31:05'),
(6, 'Tôi có thể liên hệ với nhóm hỗ trợ bằng cách nào?', '<p>Bạn có thể liên hệ với nhóm hỗ trợ bằng các thông tin trên trang web. Bạn có thể liên hệ với nhóm hỗ trợ bằng các thông tin trên trang web. Bạn có thể liên hệ với nhóm hỗ trợ bằng các thông tin trên trang web. Bạn có thể liên hệ với nhóm hỗ trợ bằng các thông tin trên trang web. Bạn có thể liên hệ với nhóm hỗ trợ bằng các thông tin trên trang web</p>', 3, '2023-01-31 01:31:57', '2023-01-31 01:31:57'),
(7, 'Làm thế nào tôi có thể đăng ký và đăng nhập trên trang web này?', '<p>Bạn có thể dùng tài khoản Email để đăng ký. Bạn có thể dùng tài khoản Email để đăng ký. Bạn có thể dùng tài khoản Email để đăng ký. Bạn có thể dùng tài khoản Email để đăng ký. Bạn có thể dùng tài khoản Email để đăng ký. Bạn có thể dùng tài khoản Email để đăng ký.</p>', 3, '2023-01-31 01:32:28', '2023-01-31 01:32:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_advertisements`
--

CREATE TABLE `home_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `above_search_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_search_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_search_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_footer_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_footer_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_footer_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home_advertisements`
--

INSERT INTO `home_advertisements` (`id`, `above_search_ad`, `above_search_ad_url`, `above_search_ad_status`, `above_footer_ad`, `above_footer_ad_url`, `above_footer_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'above_search_ad.png', NULL, 'Show', 'above_footer_ad.png', NULL, 'Show', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'Yes', NULL, '2023-01-28 21:27:41'),
(3, 'Vietnamese', 'vn', 'No', '2023-01-28 06:45:52', '2023-01-28 07:09:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `live_channels`
--

CREATE TABLE `live_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `live_channels`
--

INSERT INTO `live_channels` (`id`, `heading`, `video_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Cập nhật Nga và Ukraine sáng 31/1', 'c7k2-Rl5aD4', 3, '2023-01-13 06:12:05', '2023-01-30 18:55:51'),
(3, 'Toàn Cảnh Tin Tức 24h Nóng Nhất Tối 11/01/2023', 'IuFr5x9MCgI', 3, '2023-01-13 06:19:02', '2023-01-30 18:58:36'),
(4, 'Update Russia and Ukraine on the morning of January 31', 'c7k2-Rl5aD4', 1, '2023-01-30 18:57:43', '2023-01-30 18:57:43'),
(5, 'Overview of Hottest 24h News Evening 11/01/2023', 'IuFr5x9MCgI', 1, '2023-01-30 18:58:26', '2023-01-30 18:58:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_24_104743_create_admins_table', 1),
(8, '2022_12_22_032630_create_home_advertisements_table', 2),
(9, '2022_12_22_140529_create_top_advertisements_table', 3),
(10, '2022_12_30_133949_create_sidebar_advertisements_table', 4),
(11, '2023_01_07_132203_create_categories_table', 5),
(12, '2023_01_07_144446_create_sub_categories_table', 6),
(13, '2023_01_08_135432_create_posts_table', 7),
(14, '2023_01_08_141037_create_tags_table', 8),
(15, '2023_01_09_133741_create_settings_table', 9),
(16, '2023_01_11_081048_create_photos_table', 10),
(17, '2023_01_11_131631_create_videos_table', 11),
(18, '2023_01_12_065332_create_pages_table', 12),
(19, '2023_01_13_024805_create_faqs_table', 13),
(20, '2023_01_13_063748_create_subscribers_table', 14),
(21, '2023_01_13_124613_create_live_channels_table', 15),
(22, '2023_01_14_022031_create_online_polls_table', 16),
(23, '2023_01_17_132556_create_social_items_table', 17),
(24, '2023_01_20_134347_create_authors_table', 18),
(25, '2023_01_28_130245_create_languages_table', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `online_polls`
--

CREATE TABLE `online_polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes_vote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_vote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `online_polls`
--

INSERT INTO `online_polls` (`id`, `question`, `yes_vote`, `no_vote`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Will Ronaldo win the World Cup 2022?', '100', '100', 1, '2023-01-13 19:38:14', '2023-01-13 19:45:50'),
(2, 'Will Messi win the World Cup 2022?', '30', '25', 1, '2023-01-13 19:38:52', '2023-01-13 21:14:15'),
(5, 'If the world had a zombie trading crash, would you run away?', '1', '10', 1, '2023-01-13 21:31:36', '2023-01-30 19:34:49'),
(6, 'Ronaldo sẽ vô địch World Cup 2022?', '0', '0', 3, '2023-01-30 19:35:14', '2023-01-30 19:35:19'),
(7, 'Messi sẽ vô địch World Cup 2022?', '0', '0', 3, '2023-01-30 19:35:33', '2023-01-30 19:35:50'),
(8, 'Nếu thế giới gặp sự cố giao dịch thây ma, bạn có bỏ chạy không?', '1', '0', 3, '2023-01-30 19:35:44', '2023-01-30 19:46:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `about_title`, `about_detail`, `about_status`, `faq_title`, `faq_detail`, `faq_status`, `contact_title`, `contact_detail`, `contact_map`, `contact_status`, `terms_title`, `terms_detail`, `terms_status`, `privacy_title`, `privacy_detail`, `privacy_status`, `disclaimer_title`, `disclaimer_detail`, `disclaimer_status`, `login_title`, `login_status`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'About usAbout usAbout usAbout usAbout usAbout usAbout usAbout usAbout usAbout us&nbsp;', 'Show', 'FAQ', 'Frequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked QuestionsFrequently Asked Questions', 'Show', 'Contact Us', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27074.181980185036!2d-73.98271948444085!3d40.75522304410144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2s!4v1673530891963!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Show', 'Terms and Conditions', 'Terms and ConditionsTerms and ConditionsTerms and ConditionsTerms and ConditionsTerms and ConditionsTerms and ConditionsTerms and ConditionsTerms and ConditionsTerms and ConditionsTerms and Conditions', 'Show', 'Privacy Policy', 'Privacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy Policy', 'Show', 'Disclaimer', 'DisclaimerDisclaimerDisclaimerDisclaimerDisclaimerDisclaimerDisclaimerDisclaimerDisclaimerDisclaimer', 'Show', 'Login', 'Show', 1, NULL, '2023-01-31 02:20:57'),
(2, 'Về chúng tôi', 'Về chúng tôiVề chúng tôiVề chúng tôiVề chúng tôiVề chúng tôiVề chúng tôiVề chúng tôiVề chúng tôiVề chúng tôiVề chúng tôi&nbsp;', 'Show', 'Câu hỏi thường gặp', 'Câu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặpCâu hỏi thường gặp', 'Show', 'Kết nối', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27074.181980185036!2d-73.98271948444085!3d40.75522304410144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2s!4v1673530891963!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Show', 'Các điều khoản và điều kiện', 'Các điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiệnCác điều khoản và điều kiện', 'Show', 'Chính sách bảo mật', 'Chính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mậtChính sách bảo mật', 'Show', 'Từ chối trách nhiệm', 'Từ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệmTừ chối trách nhiệm', 'Show', 'Đăng nhập', 'Show', 3, NULL, '2023-01-31 05:20:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `language_id`, `created_at`, `updated_at`) VALUES
(3, 'photo_1673427512.jpg', 'Cat Photo', 1, '2023-01-11 01:40:13', '2023-01-11 01:58:51'),
(4, 'photo_1673426425.jpg', 'Dog photo', 1, '2023-01-11 01:40:25', '2023-01-11 01:40:25'),
(6, 'photo_1673427909.jpg', 'Car Photo', 1, '2023-01-11 02:05:09', '2023-01-11 02:05:09'),
(7, 'photo_1673427924.jpg', 'Food Photo', 1, '2023-01-11 02:05:24', '2023-01-11 02:05:24'),
(8, 'photo_1673427966.jpg', 'Arena of Valor Photo', 1, '2023-01-11 02:06:06', '2023-01-30 20:00:09'),
(9, 'photo_1675134037.jpg', 'Ảnh Liên Quân', 3, '2023-01-30 20:00:37', '2023-01-30 20:00:51'),
(10, 'photo_1675134073.jpg', 'Ảnh Thức Ăn', 3, '2023-01-30 20:01:13', '2023-01-30 20:01:19'),
(11, 'photo_1675134101.jpg', 'Ảnh Xe', 3, '2023-01-30 20:01:41', '2023-01-30 20:01:46'),
(12, 'photo_1675134123.jpg', 'Ảnh Chó', 3, '2023-01-30 20:02:03', '2023-01-30 20:02:03'),
(13, 'photo_1675134140.jpg', 'Ảnh Mèo', 3, '2023-01-30 20:02:20', '2023-01-30 20:02:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitors` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_share` int(11) NOT NULL,
  `is_comment` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `language_id`, `created_at`, `updated_at`) VALUES
(26, 4, 'Representing Vietnam to win the World Mobile Alliance Championship', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; line-height: 28.8px;\">V Gaming was crowned champion of the World Mobile Alliance AIC 2022, winning nearly 17 billion VND in prize money.</p><p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; line-height: 28.8px;\"><span style=\"text-align: var(--bs-body-text-align);\">V Gaming got off to a bad start in the finals when the representative of the GCS region - ONE Team Esports turned the tide in the first game. Continuously in the next 4 games, the representative of Vietnam surprised when showing a solid and united play, thereby winning overwhelmingly 4-1.</span><br></p><p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; line-height: 28.8px;\"><span style=\"text-align: var(--bs-body-text-align);\">This is a memorable milestone for \"Black Eagles\" because after many times having to accept second place in the domestic tournament, the Arena of Fame, the international AIC 2019 and the selection round for the SEA Games 31, V Gaming have enjoyed the joy of winning.</span><br></p><p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; line-height: 28.8px;\"><span style=\"text-align: var(--bs-body-text-align);\">Sharing feelings after the match, V Gaming captain - Nguyen Quoc Han said: \"The moment that left me the most impression was not when I was crowned or competed, but was the time when I practiced hard together to achieve the goal. get this championship.\"</span><br></p>', 'post_photo_1675219640.jpg', 4, 0, 1, 1, 1, 1, '2023-01-31 19:47:20', '2023-01-31 19:52:55'),
(27, 11, 'Đại diện Việt Nam vô địch Liên quân Mobile thế giới', '<p>V Gaming lên ngôi vô địch Liên Quân Mobile Thế Giới AIC 2022 với số tiền thưởng gần 17 tỷ đồng.</p><p><span style=\"text-align: var(--bs-body-text-align);\">V Gaming đã khởi đầu không tốt trong trận chung kết khi để đại diện của khu vực GCS - ONE Team Esports lật ngược tình thế trong ván đấu đầu tiên. Liên tiếp trong 4 ván tiếp theo, đại diện Việt Nam gây bất ngờ khi thể hiện lối chơi đoàn kết, qua đó giành chiến thắng áp đảo 4-1.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Đây là cột mốc đáng nhớ với “Những chú đại bàng đen” bởi sau nhiều lần phải chấp nhận ngôi á quân tại giải quốc nội, Đấu Trường Danh Vọng, quốc tế AIC 2019 và vòng tuyển chọn cho SEA Games 31, V Gaming đã được hưởng niềm vui chiến thắng.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Chia sẻ cảm xúc sau trận đấu, đội trưởng V Gaming – Nguyễn Quốc Hân cho biết: “Khoảnh khắc để lại cho tôi nhiều ấn tượng nhất không phải lúc đăng quang hay thi đấu mà là lúc cùng nhau luyện tập chăm chỉ để đạt được chức vô địch này .\"</span><br></p>', 'post_photo_1675220037.jpg', 2, 0, 1, 1, 1, 3, '2023-01-31 19:53:57', '2023-01-31 20:32:56'),
(28, 11, 'Truyền hình MyTV tặng quà cho fan Liên quân mobile', '<p>Người hâm mộ có cơ hội nhận nhiều quà tặng với tổng giá trị tới 500 triệu đồng nhân dịp MyTV phát sóng giải e-sports \"Đấu trường danh vọng mùa đông 2022\".</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Đấu trường danh vọng\" là giải đấu thể thao thuộc hệ thống giải đấu chuyên nghiệp cấp cao nhất của Liên quân mobile tại Việt Nam. Trong bối cảnh thể thao điện tử đang được nâng tầm để trở thành những giải đấu thể thao chuyên nghiệp, \"Đấu trường danh vọng mùa đông 2022\" được dự đoán sẽ là sự kiện e-sports hoành tráng nhất năm 2022 khi đơn vị tổ chức công bố về số tiền thưởng kỷ lục 6 tỷ đồng, cùng sự hợp tác lần đầu mang tính chiến lược của giải đấu với truyền hình MyTV - một trong những đơn vị truyền hình theo yêu cầu lâu đời nhất tại thị trường Việt Nam của Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT).</span></p><p>Truyền hình MyTV không chỉ là đối tác phát sóng trực tiếp giải đấu mà còn mang đến nhiều sự kiện hấp dẫn dành cho fan Liên quân mobile cũng như khán giả theo dõi \"Đấu trường danh vọng mùa đông 2022\". Nổi bật nhất là sự kiện \"Cùng MyTV - Xem Liên quân - Săn quà chất\". Theo đó, 20.000 giftcode Liên quân mobile với tổng giá trị quà tặng lên tới 500 triệu đồng sẽ được MyTV gửi tới khán giả. Mỗi khách hàng có thể nhận được nhiều mã giftcode trong suốt thời gian diễn ra giải đấu.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Khách hàng của MyTV hoặc khán giả xem giải đấu \"Đấu trường danh vọng mùa đông 2022\" trên MyTV có cơ hội nhận không giới hạn kho giftcode là vật phẩm cao cấp của Liên quân mobile như: thẻ trang phục mệnh giá từ 399 đến 999 quân huy, thẻ bài, giấy tuyệt sắc... khi thực hiện một trong 2 cách thức sau:</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Cách 1: Tải app MyTV, đăng ký tài khoản và mua một gói cước bất kỳ.</span><br></p><p>Cách 2: Xem trực tiếp các trận đấu của giải đấu \"Đấu trường danh vọng mùa đông 2022\" trên hệ thống dịch vụ truyền hình MyTV các nền tảng thiết bị smartphone, tablet, smart TV và smartbox (mục LIVE Sự kiện/AOG Winter 2022).</p><p><span style=\"text-align: var(--bs-body-text-align);\">Khán giả may mắn chụp lại màn hình mã giftcode được tặng trên giao diện MyTV và truy cập mục giftcode trên trang web Garena để sử dụng.</span></p><p><span style=\"text-align: var(--bs-body-text-align);\">Kinh doanhDoanh nghiệpDoanh nghiệp viếtThứ hai, 22/8/2022, 16:30 (GMT+7)</span><br></p><p>Truyền hình MyTV tặng quà cho fan Liên quân mobile</p><p>Người hâm mộ có cơ hội nhận nhiều quà tặng với tổng giá trị tới 500 triệu đồng nhân dịp MyTV phát sóng giải e-sports \"Đấu trường danh vọng mùa đông 2022\".</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Đấu trường danh vọng\" là giải đấu thể thao thuộc hệ thống giải đấu chuyên nghiệp cấp cao nhất của Liên quân mobile tại Việt Nam. Trong bối cảnh thể thao điện tử đang được nâng tầm để trở thành những giải đấu thể thao chuyên nghiệp, \"Đấu trường danh vọng mùa đông 2022\" được dự đoán sẽ là sự kiện e-sports hoành tráng nhất năm 2022 khi đơn vị tổ chức công bố về số tiền thưởng kỷ lục 6 tỷ đồng, cùng sự hợp tác lần đầu mang tính chiến lược của giải đấu với truyền hình MyTV - một trong những đơn vị truyền hình theo yêu cầu lâu đời nhất tại thị trường Việt Nam của Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT).</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Hàng nghìn quà tặng vật phẩm đang chờ khán giả đón nhận. Ảnh: MyTV</span><br></p><p>Hàng nghìn quà tặng vật phẩm đang chờ khán giả đón nhận. Ảnh: MyTV</p><p><span style=\"text-align: var(--bs-body-text-align);\">Truyền hình MyTV không chỉ là đối tác phát sóng trực tiếp giải đấu mà còn mang đến nhiều sự kiện hấp dẫn dành cho fan Liên quân mobile cũng như khán giả theo dõi \"Đấu trường danh vọng mùa đông 2022\". Nổi bật nhất là sự kiện \"Cùng MyTV - Xem Liên quân - Săn quà chất\". Theo đó, 20.000 giftcode Liên quân mobile với tổng giá trị quà tặng lên tới 500 triệu đồng sẽ được MyTV gửi tới khán giả. Mỗi khách hàng có thể nhận được nhiều mã giftcode trong suốt thời gian diễn ra giải đấu.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Khách hàng của MyTV hoặc khán giả xem giải đấu \"Đấu trường danh vọng mùa đông 2022\" trên MyTV có cơ hội nhận không giới hạn kho giftcode là vật phẩm cao cấp của Liên quân mobile như: thẻ trang phục mệnh giá từ 399 đến 999 quân huy, thẻ bài, giấy tuyệt sắc... khi thực hiện một trong 2 cách thức sau:</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Cách 1: Tải app MyTV, đăng ký tài khoản và mua một gói cước bất kỳ.</span><br></p><p>Cách 2: Xem trực tiếp các trận đấu của giải đấu \"Đấu trường danh vọng mùa đông 2022\" trên hệ thống dịch vụ truyền hình MyTV các nền tảng thiết bị smartphone, tablet, smart TV và smartbox (mục LIVE Sự kiện/AOG Winter 2022).</p><p><span style=\"text-align: var(--bs-body-text-align);\">Khán giả may mắn chụp lại màn hình mã giftcode được tặng trên giao diện MyTV và truy cập mục giftcode trên trang web Garena để sử dụng.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Đấu trường danh vọng mùa đông 2022 hứa hẹn sẽ là giải đấu e-sports lớn nhất năm nay. Ảnh: MyTV</span><br></p><p>\"Đấu trường danh vọng mùa đông 2022\" hứa hẹn sẽ là giải đấu e-sports lớn nhất năm nay. Ảnh: MyTV</p><p><span style=\"text-align: var(--bs-body-text-align);\">Sự kiện tặng giftcode Liên quân mobile sẽ diễn ra từ ngày 18/8 đến khi kết thúc giải đấu \"Đấu trường danh vọng mùa đông 2022\" hoặc đến khi số lượng giftcode được tặng hết.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Đấu trường danh vọng mùa đông 2022\" khởi tranh từ ngày 4/8 đến ngày 9/10 với sự hợp tác lần đầu của truyền hình MyTV. Giải đấu hứa hẹn sẽ là một mùa giải \"bùng nổ\", sôi động và hấp dẫn.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Giải đấu được phát trực tiếp trên hệ thống dịch vụ truyền hình MyTV tại mục Live Sự kiện trên các nền tảng smart TV, smartbox, smartphone và tablet. Người hâm mộ có thể tìm hiểu thông tin các trận đấu và bảng xếp hạng hàng tuần trên trang facebook fanpage truyền hình MyTV.</span></p><p><span style=\"text-align: var(--bs-body-text-align);\"></span></p>', 'post_photo_1675220196.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 19:56:36', '2023-01-31 19:56:46'),
(29, 4, 'MyTV gives gifts to Mobile Union fans', '<p>Fans have the opportunity to receive many gifts with a total value of up to 500 million VND on the occasion of MyTV broadcasting the e-sports tournament \"Winter Arena of Fame 2022\".</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Arena of Fame\" is a sports tournament belonging to the highest level of professional league system of Mobile Union in Vietnam. In the context of e-sports being upgraded to become professional sports tournaments, \"Winter 2022 Arena of Fame\" is expected to be the most epic e-sports event in 2022 when the unit organizes the event. The organization announced the record prize money of 6 billion dong, along with the tournament\'s first strategic cooperation with MyTV - one of the oldest on-demand TV units in Vietnam\'s market. Vietnam Posts and Telecommunications Group (VNPT).</span></p><p>MyTV is not only a live broadcast partner of the tournament, but also brings many interesting events for fans of the Mobile Alliance as well as the audience to watch \"Winter 2022 Arena of Fame\". The most prominent event is the event \"With MyTV - Watch Coalition - Hunt for quality gifts\". Accordingly, 20,000 giftcode Lien Lien mobile with a total gift value of up to VND 500 million will be sent to the audience by MyTV. Each customer can receive multiple giftcodes during the tournament period.</p><p><span style=\"text-align: var(--bs-body-text-align);\">MyTV customers or spectators watching the \"Winter 2022 Hall of Fame\" tournament on MyTV have the opportunity to receive unlimited giftcodes that are premium items of Mobile Alliance such as: costume cards with face value from 399 to 999 Military emblems, cards, excellent paper... when doing one of the following two methods:</span><br></p><p>Method 1: Download the MyTV app, register an account and buy any package.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Method 2: Watch live matches of the \"Winter 2022 Hall of Fame\" tournament on the MyTV television service system on smartphone, tablet, smart TV and smartbox device platforms (item LIVE Events/AOG Winter) 2022).</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">The lucky audience took a screenshot of the giftcode given on the MyTV interface and accessed the giftcode section on the Garena website to use it.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">BusinessEnterpriseWriting on Monday, August 22, 2022, 16:30 (GMT+7)</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Fans have the opportunity to receive many gifts with a total value of up to 500 million VND on the occasion of MyTV broadcasting the e-sports tournament \"Winter Arena of Fame 2022\".</span></p><p>\"Arena of Fame\" is a sports tournament belonging to the highest level of professional league system of Mobile Union in Vietnam. In the context of e-sports being upgraded to become professional sports tournaments, \"Winter 2022 Arena of Fame\" is expected to be the most epic e-sports event in 2022 when the unit organizes the event. The organization announced the record prize money of 6 billion dong, along with the tournament\'s first strategic cooperation with MyTV - one of the oldest on-demand TV units in Vietnam\'s market. Vietnam Posts and Telecommunications Group (VNPT).</p><p><span style=\"text-align: var(--bs-body-text-align);\">MyTV is not only a live broadcast partner of the tournament, but also brings many interesting events for fans of the Mobile Alliance as well as the audience to watch \"Winter 2022 Arena of Fame\". The most prominent event is the event \"With MyTV - Watch Coalition - Hunt for quality gifts\". Accordingly, 20,000 giftcode Lien Lien mobile with a total gift value of up to VND 500 million will be sent to the audience by MyTV. Each customer can receive multiple giftcodes during the tournament period.</span></p><p>MyTV customers or spectators watching the \"Winter 2022 Hall of Fame\" tournament on MyTV have the opportunity to receive unlimited giftcodes that are premium items of Mobile Alliance such as: costume cards with face value from 399 to 999 Military emblems, cards, excellent paper... when doing one of the following two methods:</p><p><span style=\"text-align: var(--bs-body-text-align);\">Method 1: Download the MyTV app, register an account and buy any package.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Method 2: Watch live matches of the \"Winter 2022 Hall of Fame\" tournament on the MyTV television service system on smartphone, tablet, smart TV and smartbox device platforms (item LIVE Events/AOG Winter) 2022).</span></p><p>The lucky audience took a screenshot of the giftcode given on the MyTV interface and accessed the giftcode section on the Garena website to use it.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Lien Lien Mobile\'s giftcode giveaway event will take place from August 18 to the end of the \"Winter 2022 Fame Arena\" or until the giftcode is exhausted.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Winter 2022 Arena of Fame\" kicks off from August 4 to October 9 with the first cooperation of MyTV television. The tournament promises to be an \"explosive\", exciting and exciting season.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">The tournament is broadcast live on the MyTV television service system at the Live Event section on smart TV, smartbox, smartphone and tablet platforms. Fans can find out information about matches and weekly rankings on the MyTV TV fanpage facebook page.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\"></span></p>', 'post_photo_1675220458.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:00:59', '2023-01-31 20:00:59'),
(30, 5, 'Game Liên minh huyền thoại bị đánh cắp mã nguồn', '<p>Hacker đánh cắp mã nguồn của Liên minh huyền thoại và yêu cầu 10 triệu USD tiền chuộc, nhưng bị Riot Games từ chối.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Tối 24/1, Riot Games thừa nhận việc bị đánh cắp mã nguồn của hai game là League (Liên minh huyền thoại) và TFT (Đấu trường chân lý) cùng một nền tảng chống gian lận cũ, ba ngày sau khi hãng thông báo bị tấn công mạng. Vụ hack được thực hiện theo phương thức phi kỹ thuật (social engineering) với mục đích tống tiền.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Theo Vice, nhóm hacker và Riots Games đã trao đổi qua email và nhóm chat trên Telegram, đính kèm một số tài liệu chứng minh việc tin tặc đã truy cập được vào mã nguồn của game.</span></p><p>\"Chúng tôi hiểu tầm quan trọng của những thứ này và tác động của chúng tới việc phát hành các game lớn như Valorant và Liên minh huyền thoại. Vì vậy, chúng tôi đưa ra một yêu cầu nhỏ để trao đổi 10.000.000 USD\", email của hacker có đoạn. Nhóm cũng khẳng định \"động lực duy nhất là lợi ích tài chính\", và \"không muốn làm tổn hại danh tiếng hay xáo trộn cộng đồng game\" của Riots, đồng thời ra thời hạn 12 tiếng, nếu không sẽ công khai thêm các thông tin. Ngược lại, nếu nhận được tiền, nhóm sẽ xóa toàn bộ mã nguồn đánh cắp được và đưa ra các lời khuyên để ngăn những vụ hack trong tương lai.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Không cần phải nói. Chúng tôi sẽ không trả tiền\", Riot Games công khai đáp trên Twitter sau đó.</span></p><p><span style=\"text-align: var(--bs-body-text-align);\">Người dùng hiện chưa bị tác động gì từ vụ hack. Theo hãng game, cuộc tấn công không làm rò rỉ thông tin của người dùng hay dữ liệu chơi game. Tuy nhiên, hãng cũng thừa nhận việc lộ mã nguồn có thể dẫn đến các mánh khóe gian lận mới và có thể khiến một số bản cập nhật bị gián đoạn. Ngoài ra, mã nguồn bị đánh cắp có chứa một số tính năng hãng đang thử nghiệm.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Andrei van Roon, đứng đầu bộ phận League Studio, cho biết kế hoạch phát hành bản vá 13.2 cho Liên minh huyền thoại vẫn sẽ diễn ra, nhưng một số yếu tố không thể chỉnh sửa, như các thay đổi về nghệ thuật có thể phải chuyển sang bản cập nhật sau. Riot Game cũng đang làm việc để hạn chế các vấn đề có thể xảy ra, đồng thời hợp tác với cơ quan thực thi pháp luật để điều tra sự cố.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Theo Bleeping Computer, Riot Games không phải nạn nhân duy nhất trong ngành thời gian qua. Trước đó, tháng 9/2022, tin tặc tấn công vào nhà phát hành 2K Games và lây nhiễm phần mềm độc hại. Rockstar Games cũng bị tấn công đánh cắp mã nguồn GTA V, VI và làm rò rỉ một số hình ảnh game chưa phát hành.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">League, tên đầy đủ là League of Legends (LoL), có mặt tại Việt Nam từ 2012 và trở thành một trong những game nhiều người chơi hàng đầu hiện nay. Đầu năm 2023, game này cũng được Riot Games đổi nhà phát hành tại Việt Nam từ Garena sang VNG. Đây cũng là trò chơi hiếm hoi hiện có thể chơi được trên máy tính Mac.</span></p>', 'post_photo_1675220721.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:05:21', '2023-01-31 20:05:21'),
(31, 9, 'Game League of Legends has its source code stolen', '<p>Hackers stole the source code of League of Legends and demanded $10 million in ransom, but was refused by Riot Games.</p><p><span style=\"text-align: var(--bs-body-text-align);\">On the evening of January 24, Riot Games admitted to having stolen the source code of two games, League (League of Legends) and TFT (Arena of Truth), and an old anti-cheat platform, three days after the company announced network attack. The hack was done by social engineering with the purpose of extortion.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">According to Vice, the hacker group and Riots Games exchanged via email and chat group on Telegram, attaching some documents proving that hackers had access to the game\'s source code.</span></p><p>\"We understand the importance of these and their impact on the release of major games like Valorant and League of Legends. So we\'re making a small request in exchange for $10,000,000.\" , the hacker\'s email contains the paragraph. The team also affirmed that \"the only motivation is financial gain\", and \"does not want to damage the reputation or disturb the gaming community\" of Riots, and also set a deadline of 12 hours, otherwise it will publicize more details. information. Conversely, if the money is received, the team will delete all stolen source code and give advice to prevent future hacks.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Needless to say. We will not pay,\" Riot Games publicly replied on Twitter afterwards.</span></p><p>Users are currently unaffected by the hack. According to the game company, the attack did not leak user information or gaming data. However, the company also acknowledges that exposing the source code can lead to new cheats and may cause some updates to be interrupted. In addition, the stolen source code contains several features the company is testing.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Andrei van Roon, head of League Studio, said that the plan to release patch 13.2 for League of Legends is still going, but some elements are not editable, like art changes may have to be. move on to the next update. Riot Game is also working to limit possible issues and is cooperating with law enforcement to investigate the incident.</span></p><p>According to Bleeping Computer, Riot Games is not the only victim in the industry recently. Previously, in September 2022, hackers attacked the publisher 2K Games and infected malware. Rockstar Games was also attacked to steal GTA V, VI source code and leak some unreleased game images.</p><p><span style=\"text-align: var(--bs-body-text-align);\">League, full name is League of Legends (LoL), has been present in Vietnam since 2012 and has become one of the top multiplayer games today. In early 2023, this game was also changed by Riot Games in Vietnam from Garena to VNG. It\'s also a rare game that\'s currently playable on Mac computers.</span><br></p><p><br><span style=\"text-align: var(--bs-body-text-align);\"></span></p><p><span style=\"text-align: var(--bs-body-text-align);\"></span></p>', 'post_photo_1675220890.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:08:10', '2023-01-31 20:08:10'),
(32, 5, '\'Bóng hồng\' của Liên minh huyền thoại Lào', '<p>PouPaenG, thuộc đội tuyển quốc gia Lào, thu hút chú ý khi là là nữ game thủ duy nhất tham gia bộ môn Liên minh huyền thoại (PC) tại SEA Games 31.</p><p>Trong số sáu đội tuyển tham dự bộ môn Liên minh huyền thoại (LMHT) phiên bản PC, duy nhất đội Lào có một tuyển thủ nữ. Cô gái có biệt danh PouPaenG đảm trách đường Giữa trên bản đồ đang nhận được sự quan tâm đặc biệt của các đối thủ cũng như người hâm mộ thể thao điện tử này tại SEA Games 31.</p><p><span style=\"text-align: var(--bs-body-text-align);\">PouPaenG là người duy nhất đăng ký thi đấu vị trí đường Giữa môn LMHT của đội tuyển Lào, đối đầu trực tiếp với phía bên kia bản đồ của đội tuyển Việt Nam là Kati. \"Tướng tủ\" của PouPaenG là các pháp sư như Orianna, Ahri. Nữ game thủ của Lào đang có thứ hạng Kim Cương tại máy chủ LMHT Đông Nam Á.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Khi biết Kati của Việt Nam đang gấp rút \"rèn tay\" với vị tướng Ahri, PouPaenG không giấu ý định sẽ chọn trước hoặc sử dụng một giải pháp bí mật để đương đầu với đối thủ. Chia sẻ với truyền thông, PouPaenG đánh giá Việt Nam cùng Malaysia là hai đối thủ đáng gờm đối với đội tuyển Lào vì đều sở hữu những tuyển thủ giàu kinh nghiệm, kỹ năng.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Tuy nhiên, đội tuyển Lào chúng tôi đã có sự chuẩn bị và sẽ cố gắng hết sức tại SEA Games lần này\", cô gái 23 tuổi nói.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Đội tuyển LMHT Lào sẽ đối mặt với cả Malaysia và Việt Nam trong ngày thi đấu đầu tiên (20/5) ở bảng B. Trong trận lượt đi trưa nay, Lào đã thua cả hai trận trước Việt Nam và Malaysia. Trận lượt về sẽ diễn ra vào chiều nay.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Tại bảng A là cuộc so tài của Thái Lan, Singapore, Philippines. Vòng bảng diễn ra theo thể thức BO1 (đấu một trận) đối với cả lượt đi và lượt về. Hai đội đứng nhất và nhì mỗi bảng sẽ bước vào bán kết.</span></p>', 'post_photo_1675220988.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:09:48', '2023-01-31 20:09:48'),
(33, 9, '\'Pink Ball\' of League of Legends Laos', '<p>PouPaenG, of the Lao national team, attracted attention as the only female gamer to participate in League of Legends (PC) at SEA Games 31.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Among the six teams participating in the PC version of League of Legends, only the Laos team has a female player. The girl with the nickname PouPaenG in charge of the Mid lane on the map is receiving special attention from opponents as well as this e-sports fan at SEA Games 31.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">PouPaenG is the only one who signed up to compete in the mid lane position of the Lao team, facing directly on the other side of the map of the Vietnamese team, Kati. PouPaenG\'s \"champions\" are magicians like Orianna, Ahri. Lao female gamer has a Diamond rank at the Southeast Asian League of Legends server.</span></p><p>When knowing that Vietnam\'s Kati was urgently \"forging hands\" with General Ahri, PouPaenG did not hide his intention to choose first or use a secret solution to confront the opponent. Sharing with the media, PouPaenG assessed that Vietnam and Malaysia are two formidable opponents for the Laos team because they both possess experienced and skilled players.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"However, our Laos team has prepared and will try our best at this SEA Games,\" said the 23-year-old girl.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">The Lao League of Legends team will face both Malaysia and Vietnam on the first day of competition (May 20) in Group B. In the first leg this afternoon, Laos lost both matches against Vietnam and Malaysia. The return leg will take place this afternoon.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">In Group A is the competition of Thailand, Singapore, and the Philippines. The group stage takes place in a BO1 (one-match) format for both the first leg and the return leg. The first and second teams in each group will advance to the semi-finals.</span></p>', 'post_photo_1675221060.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:11:00', '2023-01-31 20:11:00'),
(34, 13, 'Vấn nạn bạo lực trong bóng đá Indonesia', '<p>Nạn bạo lực bóng đá đã có từ lâu ở Indonesia, bắt nguồn từ nhiều nguyên nhân như văn hóa hâm mộ cuồng nhiệt hay phản ứng yếu kém của cảnh sát.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Cảnh sát Jakarta, Indonesia ngày 5/1 cho biết họ sẽ bố trí 4 xe chuyên dụng hộ tống xe chở đội tuyển Việt Nam mỗi khi rời khỏi khách sạn để tới làm quen sân Gelora Bung Karno chiều 5/1 và đến đây thi đấu chiều 6/1 trong trận bán kết lượt đi AFF Cup 2022.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Biện pháp thắt chặt an ninh được đưa ra sau khi CĐV Indonesia có hành vi vây quanh, ném vỡ kính xe buýt chở đội tuyển Thái Lan hôm 29/12/2022.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">CĐV Indonesia lâu nay vẫn nổi tiếng là những người cuồng nhiệt, song có xu hướng dễ kích động. Quốc gia này thường xuyên chứng kiến các vụ đụng độ hay tai nạn trong sân bóng bắt nguồn từ CĐV, mà gần đây nhất là thảm kịch giẫm đạp khiến 133 người chết tại sân vận động Kajuruhan, thành phố Malang, tỉnh Đông Java, hồi tháng 10 năm ngoái.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Người hâm mộ Indonesia lúc bấy giờ phàn nàn về việc truyền thông quốc tế quá tập trung vào những câu chuyện tiêu cực liên quan đến bóng đá nước này. Tuy nhiên, bất kỳ ai từng xem các trận bóng ở Indonesia đều sẽ có trải nghiệm phấn khích nhưng cũng khá đáng sợ, theo bình luận viên John Duerden của Guardian.</span><br></p>', 'post_photo_1675221306.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:15:06', '2023-01-31 20:15:06'),
(35, 12, 'The problem of violence in Indonesian football', '<p>Football violence has long existed in Indonesia, stemming from many causes such as a passionate fan culture or a weak police response.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Jakarta, Indonesia police on January 5 said they will arrange 4 specialized vehicles to escort the car carrying the Vietnamese team every time they leave the hotel to get acquainted with Gelora Bung Karno stadium on the afternoon of January 5 and come here to play. on the afternoon of January 6 in the semi-final first leg of the AFF Cup 2022.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Tight security measures were taken after Indonesian fans surrounded and broke the glass of the bus carrying the Thai team on December 29, 2022.</span></p><p>Indonesian fans have long been known to be passionate people, but tend to be excitable. The country regularly sees clashes or accidents in football fields caused by fans, most recently the tragic stampede that left 133 people dead at the Kajuruhan stadium, Malang city, East Java province, back. October last year.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Indonesian fans at that time complained about the international media\'s focus on negative stories related to this country\'s football. However, anyone who has seen football matches in Indonesia will have an exhilarating but also terrifying experience, according to Guardian commentator John Duerden.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\"></span><br></p>', 'post_photo_1675221367.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:16:07', '2023-01-31 20:16:07'),
(36, 13, 'Vua bóng đá Pele qua đời', '<p>BRAZIL - Biểu tượng bóng đá Brazil Pele, người ba lần vô địch World Cup và được xem là cầu thủ vĩ đại nhất mọi thời đại, qua đời ngày 29/12 ở tuổi 82.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Kely Nascimento, con gái của Pele, xác nhận trên Instagram rằng ông đã qua đời sau thời gian được điều trị tại Bệnh viện Albert Einstein, thành phố Sao Paulo vì ung thư ruột kết, suy thận và tim.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Tất cả những gì chúng con có là nhờ bố. Chúng con yêu bố vô cùng. Mong bố yên nghỉ\", Kely đăng Instagram, cùng bức ảnh các thành viên gia đình nắm tay Pele đang nằm trên giường bệnh.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Bệnh viện Albert Einstein cũng cho biết trong một tuyên bố rằng Pele qua đời do \"suy đa tạng\" sau thời gian dài chiến đấu với căn bệnh ung thư.</span><br></p>', 'post_photo_1675221454.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:17:34', '2023-01-31 20:17:34'),
(37, 12, 'Football king Pele passed away', '<p>BRAZIL - Brazilian football icon Pele, three-time World Cup winner and widely regarded as the greatest player of all time, died on December 29 at the age of 82.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Kelly Nascimento, Pele\'s daughter, confirmed on Instagram that he passed away after being treated at Albert Einstein Hospital, Sao Paulo city for colon cancer, kidney and heart failure.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">\"All we have is thanks to you. We love you so much. May you rest in peace,\" Kelly posted on Instagram, along with a photo of family members holding hands with Pele lying on the hospital bed.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Albert Einstein Hospital also said in a statement that Pele died of \"multiple organ failure\" after a long battle with cancer.</span><br></p>', 'post_photo_1675221503.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:18:23', '2023-01-31 20:18:23'),
(38, 15, 'Digimi đồng hành giải bóng rổ sinh viên', '<p>Ngân hàng số Digimi đồng hành tổ chức Giải bóng rổ sinh viên toàn quốc 2022 (NUC) nhằm thúc đẩy tinh thần thể thao, nuôi dưỡng đam mê dành cho sinh viên.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Giải bóng rổ tổ chức từ ngày 19/10 đến 17/11. Trong năm đầu triển khai, chương trình mang đến một sân chơi chuyên nghiệp, chất lượng trận đấu tốt, hấp dẫn và khuấy động phong trào tham gia cổ vũ từ nhiều trường đại học trên cả nước. Thông qua việc đồng hành giải đấu này, Ngân hàng số Digimi gửi đến người trẻ thông điệp: dám sống hết mình với đam mê, không ngừng nâng tầm cuộc sống mỗi ngày.</span></p><p>Digimi là ngân hàng số phát triển bởi Ngân hàng Bản Việt. 9 tháng đầu năm, số lượng giao dịch tăng 4 lần và giá trị giao dịch trên kênh ngân hàng số tăng 3 lần so với cùng kỳ, riêng khách hàng mới trên kênh số tăng mạnh gấp 2,5 lần. Digimi có công nghệ hiện đại với hầu hết tính năng từ đơn giản nhất như xem số dư, lãi suất đến gửi tiết kiệm, khoản vay, chuyển tiền bằng số điện thoại, QR code, thanh toán, đầu tư... Nhờ vậy, khách hàng có thể giao dịch mà không cần đến ngân hàng.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Đại diện ngân hàng cho biết, với Digimi, cuộc sống được \"nâng tầm\" khi mọi giao dịch của khách hàng đều thuận tiện và nhanh chóng, người dùng có thời gian tận hưởng, nâng tầm cuộc sống. Đây cũng là thông điệp mà đơn vị mong muốn gửi đến cộng đồng và thế hệ trẻ Việt Nam.</span></p>', 'post_photo_1675221705.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:21:45', '2023-01-31 20:21:45'),
(39, 14, 'Digimi accompanies the student basketball tournament', '<p>Digimi Digital Bank accompanies the organization of the National Student Basketball Tournament 2022 (NUC) to promote sportsmanship and nurture passion for students.</p><p><span style=\"text-align: var(--bs-body-text-align);\">The basketball tournament will be held from October 19 to November 17. In the first year of implementation, the program brought a professional playground, good match quality, attractive and stirred up the cheering movement from many universities across the country. Through accompanying this tournament, Digimi Digital Bank sends the message to young people: dare to live life to the fullest with passion, constantly improving life every day.</span></p><p>Digimi is a digital bank developed by Viet Capital Bank. In the first 9 months of the year, the number of transactions increased by 4 times and the transaction value on digital banking increased by 3 times over the same period. New customers on digital channels increased by 2.5 times. Digimi has modern technology with most features from the simplest such as viewing balance, interest rate to savings, loans, money transfer by phone number, QR code, payment, investment... Thanks to that , customers can transact without going to the bank.</p><p><span style=\"text-align: var(--bs-body-text-align);\">A bank representative said that with Digimi, life is \"upgraded\" when all customer transactions are convenient and fast, and users have time to enjoy and improve their lives. This is also the message that the unit wishes to send to the community and the young generation of Vietnam.</span></p>', 'post_photo_1675221768.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:22:48', '2023-01-31 20:22:48'),
(40, 15, 'Sao bóng rổ Mỹ lần đầu lên tiếng sau khi được Nga thả', '<p>Sao bóng rổ Mỹ Griner cảm ơn mọi người đã giúp cô an toàn về nước và tuyên bố sẽ trở lại sân đấu vào mùa giải tới.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Thật tuyệt khi được ở nhà! 10 tháng qua là trận chiến khắp mọi hướng. Tôi đã cố giữ niềm tin và chính tình yêu của mọi người là động lực để tôi tiếp tục. Từ tận đáy lòng mình, cảm ơn mọi người đã giúp đỡ\", ngôi sao bóng rổ Mỹ Brittney Griner đăng trên Instagram hôm 16/12, đánh dấu lần đầu cô lên tiếng kể từ khi được Nga trả tự do.</span></p><p><span style=\"text-align: var(--bs-body-text-align);\">Griner gửi lời cảm ơn tới chính quyền Tổng thống Mỹ Joe Biden, Hiệp hội Bóng rổ nữ Quốc gia Mỹ (WNBA), gia đình cùng mọi người đã giúp cô được trở về nhà an toàn. \"Tổng thống Biden, ngài đã đưa tôi về nhà và tôi biết ngài cũng cam kết đưa Paul Whelan cùng tất cả người Mỹ về nhà\", Griner viết.</span></p><p>Sao bóng rổ Mỹ cho biết thêm cô sẽ làm mọi điều có thể để góp phần đưa cựu lính thủy đánh bộ Whelan về nước, đồng thời kêu gọi mọi người đã hỗ trợ cô trước đó sẽ tiếp tục giúp đỡ những công dân Mỹ khác được về nhà.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Mọi gia đình đều xứng đáng được trọn vẹn\", cô viết.</span></p>', 'post_photo_1675221857.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:24:17', '2023-01-31 20:24:17'),
(41, 14, 'The American basketball star spoke out for the first time after being released by Russia', '<p>American basketball star Griner thanked everyone for helping her get home safely and announced that she would return to the field next season.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"It\'s great to be at home! The past 10 months have been a battle in all directions. I\'ve tried to keep my faith and it\'s everyone\'s love that motivates me to continue. From the bottom of my heart, thank you everyone for your support. help,\" American basketball star Brittney Griner posted on Instagram on December 16, marking the first time she spoke out since being freed by Russia.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Griner thanked the administration of US President Joe Biden, the National Women\'s Basketball Association (WNBA), family and everyone for helping her get home safely. \"President Biden, you brought me home and I know you are also committed to bringing Paul Whelan and all Americans home,\" Griner wrote.</span></p><p>The American basketball star added that she will do everything possible to contribute to the return of former Marine Whelan, and urges everyone who has supported her before to continue to help other US citizens. go home.</p><p><span style=\"text-align: var(--bs-body-text-align);\">\"Every family deserves to be complete,\" she wrote.</span></p>', 'post_photo_1675221926.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:25:26', '2023-01-31 20:25:26'),
(42, 17, 'Có nên uống nhiều nước ép trái cây để giảm cân?', '<p>Tôi giảm thức ăn và hầu như chỉ uống nước ép trái cây để thải độc cơ thể, giảm cân. Xin hỏi bác sĩ, chế độ ăn uống như vậy có hiệu quả? (Nga, 27 tuổi)</p><p>Trả lời:</p><p><span style=\"text-align: var(--bs-body-text-align);\">Trái cây chứa nhiều vitamin, khoáng chất và chất chống oxy hóa, là một phần không thể thiếu trong chế độ ăn uống lành mạnh và cân bằng. Nhiều người áp dụng chế độ giảm cân với nước ép, sinh tố hay các loại nước detox vì tiện dụng và quan niệm ăn hoa quả nhiều có lợi cho cơ thể. Tuy nhiên, cắt giảm lượng thức ăn nạp vào mà thay bằng uống quá nhiều nước trái cây sẽ gây hại.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Trái cây chứa một loại đường tự nhiên là fructose. Nếu uống quá nhiều sẽ làm tăng lượng đường trong máu, gây nhiều vấn đề sức khỏe như tăng cân, tiểu đường. Nhiều người làm nước ép trái cây còn cho thêm đường để hương vị đậm đà hơn, nhưng uống nhiều cũng không tốt.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Ngoài ra, quá trình ép trái cây và rau quả thường loại bỏ hầu hết chất rắn, bao gồm cả hạt và cùi, làm mất chất xơ. Do đó, uống nhiều nước trái cây có thể ảnh hưởng đến hệ tiêu hóa, nhất là uống khi bụng đói.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Chỉ uống nước ép trái cây, dù bổ sung nhiều loại vitamin, nhưng không đảm bảo cung cấp cho cơ thể đủ các chất dinh dưỡng cần thiết. Bạn còn cắt giảm thức ăn là nhóm thực phẩm tạo năng lượng trong khẩu phần ăn hằng ngày như tinh bột, rau củ, thịt, cá... sẽ khiến cơ thể suy nhược, thiếu năng lượng, dẫn tới suy giảm đề kháng, quá trình trao đổi chất bị rối loạn, ảnh hưởng đến thể chất và cả tinh thần.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Tùy thuộc loại hình lao động, mỗi người cần cung cấp một lượng năng lượng phù hợp cho cơ thể. Trong đó, phần năng lượng cơ bản là ngưỡng tối thiểu giúp tim, phổi, não... hoạt động bình thường khi ta ngủ hay không vận động. Một trong những ưu tiên hàng đầu trong việc giảm cân lành mạnh, hiệu quả là ăn đa dạng thực phẩm, song bạn nên ăn đói hơn một chút và kết hợp với tập luyện, duy trì ít nhất 6 tháng.</span><br></p>', 'post_photo_1675222150.jpg', 1, 0, 1, 1, 1, 3, '2023-01-31 20:29:10', '2023-01-31 20:29:10'),
(43, 16, 'Should you drink a lot of fruit juice to lose weight?', '<p>I reduced food and almost only drank fruit juice to detox the body, lose weight. Ask the doctor, is such a diet effective? (Russia, 27 years old)</p><p><span style=\"text-align: var(--bs-body-text-align);\">Answer:</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Fruits are packed with vitamins, minerals and antioxidants, making them an integral part of a healthy and balanced diet. Many people apply a weight loss diet with juices, smoothies or detox water because of the convenience and the concept that eating a lot of fruit is beneficial to the body. However, cutting down on food intake and replacing it with too much juice can be harmful.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Fruit contains a natural sugar called fructose. If you drink too much, it will increase blood sugar, causing many health problems such as weight gain, diabetes. Many people who make fruit juices also add sugar to make the taste stronger, but drinking too much is not good.</span></p><p>In addition, the process of juicing fruits and vegetables usually removes most of the solids, including the seeds and pulp, which loses fiber. Therefore, drinking a lot of juice can affect the digestive system, especially drinking on an empty stomach.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Only drinking fruit juice, although adding many vitamins, does not guarantee to provide the body with the necessary nutrients. You also cut down on foods that are energy-generating foods in your daily diet such as starch, vegetables, meat, fish... Metabolic processes are disturbed, affecting both physical and mental.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Depending on the type of labor, each person needs to provide an appropriate amount of energy for the body. In particular, the basic energy part is the minimum threshold that helps the heart, lungs, brain... to function normally when we are asleep or not active. One of the top priorities in healthy, effective weight loss is to eat a variety of foods, but you should eat a little more hungry and combine with exercise, maintain at least 6 months.</span></p>', 'post_photo_1675222223.jpg', 2, 0, 1, 1, 1, 1, '2023-01-31 20:30:23', '2023-01-31 20:33:55'),
(44, 17, 'Ăn trái cây thay rau có tốt cho sức khỏe?', '<p>Tôi không ăn rau, chỉ ăn thịt nên cố gắng dùng nhiều trái cây hơn để thay thế. Xin hỏi ăn hoa quả thay rau xanh như vậy có tốt? (Quyên, 27 tuổi).</p><p><span style=\"text-align: var(--bs-body-text-align);\">Trả lời:</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Nhiều người cho rằng có thể dùng trái cây để thay thế rau xanh, điều này hoàn toàn sai lầm. Rau xanh đóng vai trò quan trọng trong bữa ăn hằng ngày, là thành phần không thể thiếu trong việc xây dựng một bữa ăn lành mạnh. Rau xanh cung cấp vitamin và chất khoáng, chất xơ cần thiết cho cơ thể. Do vậy, trong bữa ăn cần có rau xanh.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Trái cây có lượng lớn đường đơn, nếu ăn nhiều có thể ảnh hưởng đến cân nặng, ngoài ra không tốt cho những người có các bệnh lý mạn tính phải kiểm soát chất bột đường. Nếu ăn nhiều hoa quả về lâu dài gây nên nguy cơ dư thừa năng lượng, đường đơn, không tốt cho sức khỏe.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Các khuyến nghị đều cho biết mỗi người cần ăn đầy đủ và đồng thời cả rau xanh cùng hoa quả. Mặt khác, lượng rau xanh phải lớn hơn hoa quả. Với rau xanh, người trưởng thành mỗi ngày là khoảng 400-500 g, tức mỗi bữa ăn một bát rau; 100-150 g quả chín. Chúng ta cần ăn cả rau xanh và quả chín chứ không ăn thay thế rau xanh bằng quả chín.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Nếu ăn trái cây thay rau xanh, cơ thể trẻ sẽ bị thiếu chất xơ, điều này làm ảnh hưởng đến hoạt động của hệ tiêu hóa. Tình trạng thiếu rau xanh sẽ làm trẻ trở nên mệt mỏi, uể oải, da xỉn màu và các hệ lụy sức khỏe khác.</span><br></p>', 'post_photo_1675222280.jpg', 6, 0, 1, 1, 1, 3, '2023-01-31 20:31:20', '2023-01-31 20:33:18'),
(45, 16, 'Is eating fruit instead of vegetables good for health?', '<p>I don\'t eat vegetables, only meat, so I try to use more fruit instead. Is it good to eat fruits instead of green vegetables? (Quyen, 27 years old).</p><p><span style=\"text-align: var(--bs-body-text-align);\">Answer:</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Many people think that fruit can be used to replace vegetables, which is completely wrong. Green vegetables play an important role in daily meals, are indispensable components in building a healthy meal. Green vegetables provide essential vitamins and minerals, fiber for the body. Therefore, it is necessary to have green vegetables in the meal.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Fruits have a large amount of simple sugars, if eaten in large quantities can affect weight, in addition, it is not good for people with chronic diseases to control carbohydrates. If you eat a lot of fruit in the long run, it causes the risk of excess energy, simple sugar, not good for health.</span></p><p>The recommendations all say that each person needs to eat enough and at the same time green vegetables and fruits. On the other hand, the amount of green vegetables must be greater than the amount of fruit. With green vegetables, an adult per day is about 400-500 g, ie a bowl of vegetables per meal; 100-150 g of ripe fruit. We need to eat both green vegetables and ripe fruits, not replace green vegetables with ripe ones.</p><p><span style=\"text-align: var(--bs-body-text-align);\">If eating fruits instead of green vegetables, the child\'s body will be lacking in fiber, which affects the functioning of the digestive system. The lack of green vegetables will make children become tired, sluggish, dull skin and other health consequences.</span></p>', 'post_photo_1675222344.jpg', 1, 0, 1, 1, 1, 1, '2023-01-31 20:32:24', '2023-01-31 20:32:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_ticker_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_ticker_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_date_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_email_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `news_ticker_total`, `news_ticker_status`, `video_total`, `video_status`, `logo`, `favicon`, `top_bar_date_status`, `top_bar_email`, `top_bar_email_status`, `theme_color_1`, `theme_color_2`, `analytic_id`, `analytic_status`, `disqus_code`, `created_at`, `updated_at`) VALUES
(1, '2', 'Show', '6', 'Show', 'logo.png', 'favicon.png', 'Show', 'kietminh070502@gmail.com', 'Show', '5374D3', '1DC175', 'UA-84213520-6', 'Show', '<script>\r\n                                (function() { // DON\'T EDIT BELOW THIS LINE\r\n                                    var d = document,\r\n                                        s = d.createElement(\'script\');\r\n                                    s.src = \'https://news-com-5.disqus.com/embed.js\';\r\n                                    s.setAttribute(\'data-timestamp\', +new Date());\r\n                                    (d.head || d.body).appendChild(s);\r\n                                })();\r\n                            </script>', NULL, '2023-01-29 08:06:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sidebar_advertisements`
--

CREATE TABLE `sidebar_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sidebar_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_ad_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sidebar_advertisements`
--

INSERT INTO `sidebar_advertisements` (`id`, `sidebar_ad`, `sidebar_ad_url`, `sidebar_ad_location`, `created_at`, `updated_at`) VALUES
(1, 'sidebar_ad_1673011896.jpg', NULL, 'Top', '2023-01-06 05:31:45', '2023-01-06 06:32:12'),
(2, 'sidebar_ad_1673011723.jpg', 'abc', 'Top', '2023-01-06 05:39:06', '2023-01-06 06:29:37'),
(4, 'sidebar_ad_1673012012.jpg', NULL, 'Bottom', '2023-01-06 06:33:32', '2023-01-06 06:33:32'),
(5, 'sidebar_ad_1673013860.png', 'aaa', 'Bottom', '2023-01-06 07:04:20', '2023-01-06 07:04:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_items`
--

CREATE TABLE `social_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_items`
--

INSERT INTO `social_items` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(2, 'fab fa-facebook-f', 'https://www.facebook.com/', '2023-01-17 06:46:06', '2023-01-17 06:46:06'),
(3, 'fab fa-twitter', 'https://twitter.com/', '2023-01-17 06:51:47', '2023-01-17 06:51:47'),
(4, 'fab fa-linkedin-in', 'https://www.linkedin.com', '2023-01-17 06:54:39', '2023-01-17 06:54:39'),
(5, 'fab fa-instagram', 'https://www.instagram.com', '2023-01-17 06:55:01', '2023-01-17 07:03:29'),
(6, 'fab fa-pinterest-p', 'https://www.pinterest.com', '2023-01-17 06:55:30', '2023-01-17 07:03:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(7, 'thinh@gmail.com', '', 'Active', '2023-01-28 20:44:34', '2023-01-28 20:44:51'),
(10, 'dat@gmail.com', '', 'Active', '2023-01-31 05:59:35', '2023-01-31 05:59:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_home` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Show',
  `sub_category_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `show_on_menu`, `show_on_home`, `sub_category_order`, `category_id`, `language_id`, `created_at`, `updated_at`) VALUES
(4, 'Arena of Valor', 'Show', 'Show', '3', 3, 1, '2023-01-07 09:01:54', '2023-01-29 20:09:00'),
(5, 'Liên Minh Huyền Thoại', 'Show', 'Show', '4', 5, 3, '2023-01-10 07:10:52', '2023-01-29 20:11:54'),
(9, 'League of Legends', 'Show', 'Show', '4', 3, 1, '2023-01-29 20:09:42', '2023-01-29 20:09:42'),
(11, 'Liên quân Mobile', 'Show', 'Show', '3', 5, 3, '2023-01-29 20:11:04', '2023-01-29 20:11:16'),
(12, 'Football', 'Show', 'Show', '1', 1, 1, '2023-01-31 19:09:51', '2023-01-31 19:09:51'),
(13, 'Bóng đá', 'Show', 'Show', '1', 4, 3, '2023-01-31 19:10:08', '2023-01-31 19:10:08'),
(14, 'Basketball', 'Show', 'Show', '2', 1, 1, '2023-01-31 19:10:30', '2023-01-31 19:10:30'),
(15, 'Bóng rổ', 'Show', 'Show', '2', 4, 3, '2023-01-31 19:10:52', '2023-01-31 19:10:52'),
(16, 'Nutrition', 'Show', 'Show', '5', 6, 1, '2023-01-31 19:12:02', '2023-01-31 19:12:02'),
(17, 'Dinh dưỡng', 'Show', 'Show', '5', 7, 3, '2023-01-31 19:12:13', '2023-01-31 19:12:13'),
(18, 'Health and beauty', 'Show', 'Show', '6', 6, 1, '2023-01-31 19:12:29', '2023-01-31 19:13:32'),
(19, 'Khỏe đẹp', 'Show', 'Show', '6', 7, 3, '2023-01-31 19:13:14', '2023-01-31 19:13:55'),
(20, 'Fashion', 'Show', 'Show', '7', 8, 1, '2023-01-31 19:26:43', '2023-01-31 19:26:43'),
(21, 'Thời trang', 'Show', 'Show', '7', 9, 3, '2023-01-31 19:27:00', '2023-01-31 19:27:00'),
(22, 'Make up for yourself', 'Show', 'Show', '8', 8, 1, '2023-01-31 19:27:31', '2023-01-31 19:27:31'),
(23, 'Làm đẹp', 'Show', 'Show', '8', 9, 3, '2023-01-31 19:27:44', '2023-01-31 19:27:44'),
(24, 'Computer Science', 'Show', 'Show', '9', 10, 1, '2023-01-31 19:29:09', '2023-01-31 19:29:09'),
(25, 'Khoa học máy tính', 'Show', 'Show', '9', 11, 3, '2023-01-31 19:29:22', '2023-01-31 19:29:22'),
(26, 'Blockchain', 'Show', 'Show', '10', 10, 1, '2023-01-31 19:30:44', '2023-01-31 19:30:44'),
(27, 'Blockchain', 'Show', 'Show', '10', 11, 3, '2023-01-31 19:31:02', '2023-01-31 19:31:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag_name`, `created_at`, `updated_at`) VALUES
(26, 12, 'car', '2023-01-09 06:30:39', '2023-01-09 06:30:39'),
(27, 13, 'cat', '2023-01-09 07:35:05', '2023-01-09 07:35:05'),
(28, 14, 'food', '2023-01-09 07:35:21', '2023-01-09 07:35:21'),
(29, 15, 'lien quan', '2023-01-10 07:10:35', '2023-01-10 07:10:35'),
(30, 16, 'lien minh', '2023-01-10 07:11:54', '2023-01-10 07:11:54'),
(31, 17, 'lien quan', '2023-01-10 07:14:45', '2023-01-10 07:14:45'),
(32, 17, 'game', '2023-01-10 07:14:46', '2023-01-10 07:14:46'),
(33, 18, 'lien quan', '2023-01-15 07:55:35', '2023-01-15 07:55:35'),
(34, 18, 'game', '2023-01-15 07:59:53', '2023-01-15 07:59:53'),
(40, 22, 'lien quan', '2023-01-30 05:24:51', '2023-01-30 05:24:51'),
(42, 21, 'xe', '2023-01-30 06:38:02', '2023-01-30 06:38:02'),
(43, 19, 'hot news', '2023-01-31 07:36:36', '2023-01-31 07:36:36'),
(44, 24, 'tin nóng', '2023-01-31 07:36:53', '2023-01-31 07:36:53'),
(45, 23, 'technology', '2023-01-31 07:37:13', '2023-01-31 07:37:13'),
(46, 25, 'công nghệ', '2023-01-31 07:37:31', '2023-01-31 07:37:31'),
(47, 26, 'arena of valor', '2023-01-31 19:47:20', '2023-01-31 19:47:20'),
(49, 27, 'liên quân mobile', '2023-01-31 19:57:09', '2023-01-31 19:57:09'),
(50, 29, 'arena of valor', '2023-01-31 20:00:59', '2023-01-31 20:00:59'),
(51, 30, 'liên minh huyền thoại', '2023-01-31 20:05:21', '2023-01-31 20:05:21'),
(52, 28, 'liên quân mobile', '2023-01-31 20:05:48', '2023-01-31 20:05:48'),
(53, 31, 'league of legends', '2023-01-31 20:08:10', '2023-01-31 20:08:10'),
(54, 32, 'liên minh huyền thoại', '2023-01-31 20:09:48', '2023-01-31 20:09:48'),
(55, 33, 'league of legends', '2023-01-31 20:11:00', '2023-01-31 20:11:00'),
(56, 34, 'bóng đá', '2023-01-31 20:15:06', '2023-01-31 20:15:06'),
(57, 35, 'football', '2023-01-31 20:16:07', '2023-01-31 20:16:07'),
(58, 36, 'bóng đá', '2023-01-31 20:17:34', '2023-01-31 20:17:34'),
(59, 37, 'football', '2023-01-31 20:18:23', '2023-01-31 20:18:23'),
(60, 38, 'bóng rổ', '2023-01-31 20:21:45', '2023-01-31 20:21:45'),
(61, 39, 'basketball', '2023-01-31 20:22:48', '2023-01-31 20:22:48'),
(62, 40, 'bóng rổ', '2023-01-31 20:24:17', '2023-01-31 20:24:17'),
(63, 41, 'basketball', '2023-01-31 20:25:26', '2023-01-31 20:25:26'),
(64, 42, 'dinh dưỡng', '2023-01-31 20:29:10', '2023-01-31 20:29:10'),
(65, 43, 'nutrition', '2023-01-31 20:30:23', '2023-01-31 20:30:23'),
(66, 44, 'dinh dưỡng', '2023-01-31 20:31:20', '2023-01-31 20:31:20'),
(67, 45, 'nutrition', '2023-01-31 20:32:24', '2023-01-31 20:32:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `top_advertisements`
--

CREATE TABLE `top_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `top_advertisements`
--

INSERT INTO `top_advertisements` (`id`, `top_ad`, `top_ad_url`, `top_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'top_ad.png', NULL, 'Show', NULL, '2022-12-22 07:40:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `language_id`, `created_at`, `updated_at`) VALUES
(8, '94JmNb1IhX0', 'Build your first AI Chat Bot App using Flutter & ChatGPT', 1, '2023-01-11 06:53:55', '2023-01-11 06:53:55'),
(9, '3PGDvfB_Kb8', 'ALITA: BATTLE ANGEL | The Complete Journey of Creation and Failure', 1, '2023-01-11 06:54:17', '2023-01-31 01:17:47'),
(10, 'ImjX7O6PN5A', 'Frost Effect in Photoshop', 1, '2023-01-11 06:54:48', '2023-01-11 06:54:48'),
(11, 'NVySgoHRpqk', 'Highlights Atletico Madrid - Barcelona |Dembele is bright, extremely tense 2 red cards', 1, '2023-01-11 06:55:19', '2023-01-31 01:18:31'),
(12, 'K5R8ueo2Imc', 'Highlights Villarreal vs Real Madrid | Attractive doubles - Goals come in a row - Seismic happens', 1, '2023-01-11 06:55:37', '2023-01-31 01:19:03'),
(13, '94JmNb1IhX0', 'Xây dựng ứng dụng AI Chat Bot đầu tiên của bạn bằng Flutter & ChatGPT', 3, '2023-01-31 01:16:50', '2023-01-31 01:16:50'),
(14, '3PGDvfB_Kb8', 'ALITA: THIÊN THẦN CHIẾN | Hành Trình Tạo Ra và Thất Bại Toàn Tập', 3, '2023-01-31 01:17:18', '2023-01-31 01:17:18'),
(15, 'ImjX7O6PN5A', 'Hiệu ứng băng giá trong Photoshop', 3, '2023-01-31 01:18:05', '2023-01-31 01:18:05'),
(16, 'NVySgoHRpqk', 'Highlights Atletico Madrid - Barcelona |Dembele chói sáng, cực căng thẳng 2 thẻ đỏ', 3, '2023-01-31 01:18:44', '2023-01-31 01:18:44'),
(17, 'NVySgoHRpqk', 'Highlights Atletico Madrid - Barcelona |Dembele chói sáng, cực căng thẳng 2 thẻ đỏ', 3, '2023-01-31 01:19:19', '2023-01-31 01:19:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `home_advertisements`
--
ALTER TABLE `home_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `live_channels`
--
ALTER TABLE `live_channels`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `online_polls`
--
ALTER TABLE `online_polls`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_items`
--
ALTER TABLE `social_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `top_advertisements`
--
ALTER TABLE `top_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `home_advertisements`
--
ALTER TABLE `home_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `live_channels`
--
ALTER TABLE `live_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `online_polls`
--
ALTER TABLE `online_polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `social_items`
--
ALTER TABLE `social_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `top_advertisements`
--
ALTER TABLE `top_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
