-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 09:46 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techie1b_gforce`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `postContent` longtext NOT NULL,
  `categoryId` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_title` longtext NOT NULL,
  `page_description` longtext NOT NULL,
  `page_schema` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `userId`, `title`, `status`, `postContent`, `categoryId`, `image`, `created_at`, `updated_at`, `page_title`, `page_description`, `page_schema`) VALUES
(16, 1, 'Lorem Ipsum is simply', '1', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br /></p>', 19, '20230414080393109414gelai-dancehall 2 (1) copy.png', '2023-04-14 02:33:00', '2023-04-14 02:33:00', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply'),
(17, 1, 'Lorem Ipsum is simply', '1', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br /></p>', 19, '2023041408031750431566gelai-dancehall 2 (2) copy.png', '2023-04-14 02:33:27', '2023-04-14 02:33:27', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply'),
(18, 1, 'Lorem Ipsum is simply', '1', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br /></p>', 19, '20230414080367963049gelai-dancehall 2 copy.png', '2023-04-14 02:33:55', '2023-04-14 02:33:55', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply'),
(19, 1, 'Lorem Ipsum is simply', '1', '<div><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br /></p><br /></div>', 28, '2023041408041015232338gelai-dancehall 2 (1).png', '2023-04-14 02:34:21', '2023-04-18 02:49:26', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply'),
(20, 1, 'Lorem Ipsum is simply', '1', '<div><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br /></p><br /></div>', 28, '2023041408041846171710gelai-dancehall 2.png', '2023-04-14 02:34:50', '2023-04-18 02:49:10', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply'),
(21, 1, 'Lorem Ipsum is simply', '1', '<div><div><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br /></p><br /></div><br /></div>', 27, '202304140805132506163gelai-dancehall 2 (2).png', '2023-04-14 02:35:16', '2023-04-18 02:48:56', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply', 'Lorem Ipsum is simply');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE `blogcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`id`, `name`, `created_at`, `updated_at`) VALUES
(19, 'G force Blog', '2023-04-06 02:40:45', '2023-04-06 02:40:45'),
(27, 'Cat-2', '2023-04-14 05:13:09', '2023-04-14 05:13:09'),
(28, 'Cat-3', '2023-04-14 05:13:27', '2023-04-14 05:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concert` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_tbl`
--

INSERT INTO `booking_tbl` (`id`, `name`, `email`, `phone`, `concert`, `paymode`, `payid`, `seats`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jitendra Singh', 'js@gmail.com', '9876543210', 'Batch 5 - 6:30pm', 'gcash', 'pay_68m5j9qjp4hMfcAixXw82vVo', 'ORD-403, ORD-404', '0', '2023-04-13 09:28:09', '2023-04-13 09:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fulllocation` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `batch` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `fulllocation`, `city`, `state`, `country`, `batch`) VALUES
(1, 'Quezon City', 'Quezon City, Metro Manila, Philippines', '$req->city', '$req->state', '$req->country', ''),
(2, 'Cebu City', 'Cebu City, Cebu, Philippines', '$req->city', '$req->state', '$req->country', ''),
(3, 'Alabang', 'Alabang, Muntinlupa, Metro Manila, Philippines', '$req->city', '$req->state', '$req->country', '');

-- --------------------------------------------------------

--
-- Table structure for table `carrer_tbl`
--

CREATE TABLE `carrer_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intrestedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coverlatter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrer_tbl`
--

INSERT INTO `carrer_tbl` (`id`, `name`, `email`, `phone`, `intrestedin`, `resume`, `coverlatter`, `message`, `created_at`, `updated_at`) VALUES
(1, 'mann', 'js@gmail.com', '9876543210', 'cricket', '20230417080745730387Screenshot (332).png', 'something.....', 'hello', '2023-04-17 02:37:12', '2023-04-17 02:37:12'),
(2, 'mann', 'js@gmail.com', '9876543210', 'cricket', '2023041708071793436262Screenshot (338).png', 'something.....', 'hello', '2023-04-17 02:37:25', '2023-04-17 02:37:25'),
(3, 'mannjj', 'js@gmail.com', '9876543210', 'cricket', '2023041708081889656837home.pdf', 'something.....', 'hello', '2023-04-17 02:38:16', '2023-04-17 02:38:16'),
(4, 'mannjj', 'js@gmail.com', '9876543210', 'cricket', '2023041708212131862719home.pdf', 'something.....', 'hello', '2023-04-17 02:51:30', '2023-04-17 02:51:30'),
(5, 'mannjj', 'js@gmail.com', '9876543210', 'cricket', '202304170831256085732home.pdf', 'something.....', 'hello', '2023-04-17 03:01:30', '2023-04-17 03:01:30'),
(6, 'mannjj', 'js@gmail.com', '9876543210', 'cricket', '202304170925520815889home.pdf', 'something.....', 'hello', '2023-04-17 03:55:00', '2023-04-17 03:55:00'),
(7, 'iiii', 'js@gmail.com', '9876543210', 'cricket', '202304170926187116875home.pdf', 'something.....', 'hello', '2023-04-17 03:56:18', '2023-04-17 03:56:18'),
(8, 'iiii', 'js@gmail.com', '9876543210', 'cricket', '2023041709291213467003home.pdf', 'something.....', 'hello', '2023-04-17 03:59:09', '2023-04-17 03:59:09'),
(9, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'Cricket', '2023041710111690950868property-detail-page.pdf', '20230417101114972971G - Force  UML Diagram (2).pdf', 'This is juts for testing purposes', '2023-04-17 04:41:12', '2023-04-17 04:41:12'),
(10, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'Cricket', '2023041710121280146181property-detail-page.pdf', '2023041710121592772985G - Force  UML Diagram (2).pdf', 'This is juts for testing purposes', '2023-04-17 04:42:12', '2023-04-17 04:42:12'),
(11, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'Cricket', 'property-detail-page.pdf', 'G - Force  UML Diagram (2).pdf', 'This is juts for testing purposes', '2023-04-17 04:44:44', '2023-04-17 04:44:44'),
(12, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'Cricket', 'property-detail-page.pdf', 'blog-page.pdf', 'This is juts for testing purposes', '2023-04-17 04:46:48', '2023-04-17 04:46:48'),
(13, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'Cricket', 'property-detail-page.pdf', 'blog-page.pdf', 'This is juts for testing purposes', '2023-04-17 07:01:16', '2023-04-17 07:01:16'),
(14, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'Cricket', 'property-detail-page.pdf', 'blog-page.pdf', 'This is juts for testing purposes', '2023-04-17 07:03:21', '2023-04-17 07:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tbl`
--

CREATE TABLE `contact_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_tbl`
--

INSERT INTO `contact_tbl` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Avinash Singh', 'js@gmail.com', '9876543210', 'This is just for testing purposes.', '2023-04-17 00:56:01', '2023-04-17 00:56:01'),
(2, 'Ayush Singh', 'ayush@gmail.com', '9876543210', 'This is just for testing purposes.', '2023-04-17 00:56:37', '2023-04-17 00:56:37'),
(3, 'Jitendra Singh', 'jitendra@gmail.com', '9876543210', 'This is just for testing purposes.', '2023-04-17 00:57:23', '2023-04-17 00:57:23'),
(4, 'Abhay Singh', 'abhay@gmail.com', '9876543210', 'This is juts for testing purposes', '2023-04-17 06:59:47', '2023-04-17 06:59:47'),
(5, 'Avinash Singh', 'avinash@gmail.com', '9876543210', 'This is just for testing purposes', '2023-04-18 06:14:10', '2023-04-18 06:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `customize`
--

CREATE TABLE `customize` (
  `id` int(11) NOT NULL,
  `footer_desc` longtext NOT NULL,
  `dance_desc` longtext NOT NULL,
  `c_number` varchar(250) NOT NULL,
  `w_number` varchar(250) NOT NULL,
  `ameneties` longtext,
  `header_code` longtext,
  `footer_code` longtext,
  `cUsEmail` varchar(250) DEFAULT NULL,
  `creersEmail` varchar(250) DEFAULT NULL,
  `page_title` longtext NOT NULL,
  `page_description` longtext NOT NULL,
  `page_schema` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customize`
--

INSERT INTO `customize` (`id`, `footer_desc`, `dance_desc`, `c_number`, `w_number`, `ameneties`, `header_code`, `footer_code`, `cUsEmail`, `creersEmail`, `page_title`, `page_description`, `page_schema`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '+97143739500', '+97143739500', '[{\"id\":5,\"icon\":\"fab fa-facebook-f\",\"text\":\"https://www.facebook.com/GForceOfficial/\"},{\"id\":3,\"icon\":\"fab fa-instagram\",\"text\":\"https://www.instagram.com/gforce_official/\"},{\"id\":3,\"icon\":\"fab fa-youtube-play\",\"text\":\"https://www.youtube.com/gforce\"}]', '<!-- Meta Pixel Code -->\r\n  <script>\r\n\r\n    !(function (f, b, e, v, n, t, s) {\r\n      if (f.fbq) return;\r\n      n = f.fbq = function () {\r\n        n.callMethod\r\n          ? n.callMethod.apply(n, arguments)\r\n          : n.queue.push(arguments);\r\n      };\r\n      if (!f._fbq) f._fbq = n;\r\n      n.push = n;\r\n      n.loaded = !0;\r\n      n.version = \"2.0\";\r\n      n.queue = [];\r\n      t = b.createElement(e);\r\n      t.async = !0;\r\n      t.src = v;\r\n      s = b.getElementsByTagName(e)[0];\r\n      s.parentNode.insertBefore(t, s);\r\n    })(\r\n      window,\r\n      document,\r\n      \"script\",\r\n      \"https://connect.facebook.net/en_US/fbevents.js\"\r\n    );\r\n    fbq(\"init\", \"498730972354209\");\r\n    fbq(\"track\", \"PageView\");\r\n  </script>\r\n  <noscript\r\n    ><img\r\n      height=\"1\"\r\n      width=\"1\"\r\n      style=\"display: none\"\r\n      src=\"https://www.facebook.com/tr?id=498730972354209&ev=PageView&noscript=1\"\r\n  /></noscript>\r\n  <!-- End Meta Pixel Code -->\r\n  <!-- Google tag (gtag.js) -->\r\n  <script\r\n    async\r\n    src=\"https://www.googletagmanager.com/gtag/js?id=G-BHXR0NYFFE\"\r\n  ></script>\r\n  <script>\r\n    window.dataLayer = window.dataLayer || [];\r\n    function gtag() {\r\n      dataLayer.push(arguments);\r\n    }\r\n    gtag(\"js\", new Date());\r\n    gtag(\"config\", \"G-BHXR0NYFFE\");\r\n  </script>\r\n  <script type=\"text/javascript\" id=\"zsiqchat\">\r\n    var $zoho = $zoho || {};\r\n    $zoho.salesiq = $zoho.salesiq || {\r\n      widgetcode:\r\n        \"1210e83a9fdf8bb9e34d335cc2a17ddbbdf9767d453855d468b71dd1a16e9c5f\",\r\n      values: {},\r\n      ready: function () {},\r\n    };\r\n    var d = document;\r\n    s = d.createElement(\"script\");\r\n    s.type = \"text/javascript\";\r\n    s.id = \"zsiqscript\";\r\n    s.defer = true;\r\n    s.src = \"https://salesiq.zoho.com/widget?plugin_source=wordpress\";\r\n    t = d.getElementsByTagName(\"script\")[0];\r\n    t.parentNode.insertBefore(s, t);\r\n  </script>', '<!-- Meta Pixel Code -->\r\n  <script>\r\n\r\n    !(function (f, b, e, v, n, t, s) {\r\n      if (f.fbq) return;\r\n      n = f.fbq = function () {\r\n        n.callMethod\r\n          ? n.callMethod.apply(n, arguments)\r\n          : n.queue.push(arguments);\r\n      };\r\n      if (!f._fbq) f._fbq = n;\r\n      n.push = n;\r\n      n.loaded = !0;\r\n      n.version = \"2.0\";\r\n      n.queue = [];\r\n      t = b.createElement(e);\r\n      t.async = !0;\r\n      t.src = v;\r\n      s = b.getElementsByTagName(e)[0];\r\n      s.parentNode.insertBefore(t, s);\r\n    })(\r\n      window,\r\n      document,\r\n      \"script\",\r\n      \"https://connect.facebook.net/en_US/fbevents.js\"\r\n    );\r\n    fbq(\"init\", \"498730972354209\");\r\n    fbq(\"track\", \"PageView\");\r\n  </script>\r\n  <noscript\r\n    ><img\r\n      height=\"1\"\r\n      width=\"1\"\r\n      style=\"display: none\"\r\n      src=\"https://www.facebook.com/tr?id=498730972354209&ev=PageView&noscript=1\"\r\n  /></noscript>\r\n  <!-- End Meta Pixel Code -->\r\n  <!-- Google tag (gtag.js) -->\r\n  <script\r\n    async\r\n    src=\"https://www.googletagmanager.com/gtag/js?id=G-BHXR0NYFFE\"\r\n  ></script>\r\n  <script>\r\n    window.dataLayer = window.dataLayer || [];\r\n    function gtag() {\r\n      dataLayer.push(arguments);\r\n    }\r\n    gtag(\"js\", new Date());\r\n    gtag(\"config\", \"G-BHXR0NYFFE\");\r\n  </script>\r\n  <script type=\"text/javascript\" id=\"zsiqchat\">\r\n    var $zoho = $zoho || {};\r\n    $zoho.salesiq = $zoho.salesiq || {\r\n      widgetcode:\r\n        \"1210e83a9fdf8bb9e34d335cc2a17ddbbdf9767d453855d468b71dd1a16e9c5f\",\r\n      values: {},\r\n      ready: function () {},\r\n    };\r\n    var d = document;\r\n    s = d.createElement(\"script\");\r\n    s.type = \"text/javascript\";\r\n    s.id = \"zsiqscript\";\r\n    s.defer = true;\r\n    s.src = \"https://salesiq.zoho.com/widget?plugin_source=wordpress\";\r\n    t = d.getElementsByTagName(\"script\")[0];\r\n    t.parentNode.insertBefore(s, t);\r\n  </script>', 'jitendra.techies@gmail.com', 'jitendra.techies@gmail.com', 'G force Official', 'G force Official', 'G force Official');

-- --------------------------------------------------------

--
-- Table structure for table `forgetpass`
--

CREATE TABLE `forgetpass` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `uniqcode` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forgetpass`
--

INSERT INTO `forgetpass` (`id`, `email`, `uniqcode`, `created_at`, `updated_at`) VALUES
(37, 'kitty@yopmail.com', '8566443', '2022-12-21 11:46:29', '2022-12-21 11:46:29'),
(39, 'lilo@yopmail.com', '8694382', '2022-12-21 11:50:44', '2022-12-21 11:50:44'),
(40, 'lilo@yopmail.com', '7563067', '2022-12-21 11:53:40', '2022-12-21 11:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_04_11_040610_create_trainer_tbl', 1),
(3, '2023_04_11_041731_create_trainer_tbl', 2);

-- --------------------------------------------------------

--
-- Table structure for table `open_class_tbl`
--

CREATE TABLE `open_class_tbl` (
  `id` int(10) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `trainer_id` varchar(250) NOT NULL,
  `scheduledate` varchar(250) NOT NULL,
  `scheduletime` varchar(255) NOT NULL,
  `facetofaceslot` varchar(255) DEFAULT NULL,
  `zoomlink` varchar(250) DEFAULT NULL,
  `regularrate` varchar(255) NOT NULL,
  `advancepayment` varchar(255) NOT NULL,
  `packagethumbmail` varchar(255) NOT NULL,
  `checkoutthumbmail` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` enum('1','0') NOT NULL,
  `page_title` longtext NOT NULL,
  `page_description` longtext NOT NULL,
  `page_schema` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `open_class_tbl`
--

INSERT INTO `open_class_tbl` (`id`, `classname`, `branchname`, `trainer_id`, `scheduledate`, `scheduletime`, `facetofaceslot`, `zoomlink`, `regularrate`, `advancepayment`, `packagethumbmail`, `checkoutthumbmail`, `description`, `status`, `page_title`, `page_description`, `page_schema`, `created_at`, `updated_at`) VALUES
(1, 'Wayne Holt', '3', '5', '2023-05-18', '18:13', '40', '74', 'Doloribus odio conse', 'Nulla aspernatur qui', '202304171102703750256chicken-soup-carrot-potato-greens-side-view.jpg', '2023041711021935229908latte-art-coffee-cup-cafe-table.jpg', '<div><div><div><div><div><p>Hello Open Class</p><br /></div><br /></div><br /></div><br /></div><br /></div>', '1', 'Dolorem culpa aliqua', 'Animi fugiat minim', 'Exercitation vero ve', '2023-03-31 04:32:50', '2023-04-17 05:32:40'),
(3, 'Tamara Vega', '2', '5', '2023-05-19', '07:12', '94', '12', 'Rem illo error autem', 'Deleniti optio sunt', '202304171103912141614warm-tomato-soup-serve-bowl.jpg', '2023041711031809122751chocolate-orange-cake-cappuccino.jpg', '<div><div><p>Hello New</p><br /></div><br /></div>', '1', 'Pariatur Quia eaque', 'Quibusdam amet nece', 'Quis harum ratione t', '2023-03-31 05:37:51', '2023-04-17 05:33:13'),
(4, 'Mari Butler', '2', '5', '2023-05-20', '21:03', '92', '31', 'Perferendis quis qui', 'Reprehenderit dolor', '2023041711031170425937delicious-popcorn_144627-12668.jpg', '2023041711031408308449anastasia-zhenina-Ivji5bb1Vh4-unsplash.jpg', '<div><p>Hello</p><br /></div>', '1', 'Deleniti vero deleni', 'Nisi exercitationem', 'Aut quas excepturi m', '2023-04-11 05:56:02', '2023-04-17 05:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `organization_calender`
--

CREATE TABLE `organization_calender` (
  `id` int(10) NOT NULL,
  `access` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization_calender`
--

INSERT INTO `organization_calender` (`id`, `access`, `created_at`, `updated_at`) VALUES
(1, '{\"d1\":true,\"d2\":true,\"d3\":true,\"d4\":true,\"d5\":true,\"d6\":false,\"d7\":true}', '2023-01-20 10:57:09', '2023-04-12 01:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `credit` varchar(250) NOT NULL,
  `expire` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `package_limit` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `price`, `credit`, `expire`, `branch`, `image`, `description`, `package_limit`) VALUES
(4, '5 Classes', '1350.00', '5', '14', '3', 'card1.png', 'Valid for 14 days', '-'),
(5, 'Premier Package 2', '28,000.00', '0', '15', '2', 'card1.png', 'no', '50'),
(6, '3 Classes', '1275.00', '3', '7', '4', 'card1.png', 'Valid for 7 days', '-');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int(10) NOT NULL,
  `privacy` longtext COLLATE utf8_unicode_ci NOT NULL,
  `term_condetion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `who_we_are` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `privacy`, `term_condetion`, `who_we_are`, `created_at`, `updated_at`) VALUES
(1, '<div><div><div><div><div><div><div><div class=\"row\" style=\" font-family: Optima, sans-serif; --bs-gutter-x:1.5rem; --bs-gutter-y:0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255)\"><div class=\"col-md-12 col-lg-12\" style=\" font-family: Optima, sans-serif; flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y)\"><h3 class=\"pp-heading\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\">How collected data is used?</h3><div class=\"pp-content\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; padding: 10px 0px\"><p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\">Company provides a number of internet-based services through its platform and shall include:</p><ul class=\"pp-list-style\" style=\" font-family: Optima, sans-serif; padding-left: 1rem; margin-bottom: 1rem\"><li style=\" font-family: Optima, sans-serif\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif\">Find a property through ace capital and its internet links.</li><li style=\" font-family: Optima, sans-serif\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif\">Post advertisements on ace capital.</li><li style=\" font-family: Optima, sans-serif\">Send advertisements and promotional messages through emails and messages.</li></ul></div></div></div>\r\n<div class=\"row\" style=\" font-family: Optima, sans-serif; --bs-gutter-x:1.5rem; --bs-gutter-y:0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255)\"><div class=\"col-md-12 col-lg-12\" style=\" font-family: Optima, sans-serif; flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y)\"><h3 class=\"pp-heading\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\">Information Automatically Collected/ Tracked While Navigation</h3><div class=\"pp-content\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; padding: 10px 0px\"><p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\">Company provides a number of internet-based services through its platform and shall include:</p><ol class=\"list-group-numbered\" style=\" font-family: Optima, sans-serif; padding-left: 1rem; margin-bottom: 1rem; list-style-type: none; counter-reset: section 0\"><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Find a property through ace capital and its internet links.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Post advertisements on ace capital.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Send advertisements and promotional messages through emails and messages.</li></ol></div></div></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div>', '<div><div><div><div><div><div><div><div><div><div><div class=\"row\" style=\" font-family: Optima, sans-serif; --bs-gutter-x:1.5rem; --bs-gutter-y:0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255)\"><div class=\"col-md-12 col-lg-12 tc-head\" style=\" font-family: Optima, sans-serif; flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y)\"><h2 class=\"text-center\" style=\" font-family: Optima, sans-serif; margin-bottom: 20px; font-weight: 700; line-height: 1.2; font-size: 30px; text-align: center !important; color: rgb(3, 129, 108)\"></h2><p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\"></p></div></div>\r\n<div class=\"row\" style=\" font-family: Optima, sans-serif; --bs-gutter-x:1.5rem; --bs-gutter-y:0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255)\"><div class=\"col-md-12 col-lg-12\" style=\" font-family: Optima, sans-serif; flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y)\"><h3 class=\"tc-heading\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; background-color: rgb(246, 246, 246); color: rgb(3, 129, 108); padding: 8px 12px\">Defined Terms:</h3><div class=\"tc-content\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; padding: 10px 12px\"><p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\">Company provides a number of internet-based services through its platform and shall include:</p><ol class=\"list-group-numbered\" style=\" font-family: Optima, sans-serif; padding-left: 2rem; margin-bottom: 1rem; list-style-type: none; counter-reset: section 0\"><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Find a property through ace capital and its internet links.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Post advertisements on ace capital.</li><li style=\" font-family: Optima, sans-serif; padding: 3px 0px\">Send advertisements and promotional messages through emails and messages.</li></ol></div></div></div>\r\n<div class=\"row\" style=\" font-family: Optima, sans-serif; --bs-gutter-x:1.5rem; --bs-gutter-y:0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255)\"><div class=\"col-md-12 col-lg-12\" style=\" font-family: Optima, sans-serif; flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y)\"><h3 class=\"tc-heading\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; background-color: rgb(246, 246, 246); color: rgb(3, 129, 108); padding: 8px 12px\">Subscription Fees:</h3><div class=\"tc-content\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; padding: 10px 12px\"><p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\">Company provides a number of internet-based services through its platform and shall include:</p><ul class=\"tc-list-style\" style=\" font-family: Optima, sans-serif; padding-left: 1rem; margin-bottom: 1rem\"><li style=\" font-family: Optima, sans-serif\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif\">Find a property through ace capital and its internet links.</li><li style=\" font-family: Optima, sans-serif\">Posting User profile or listing for the purpose of sale/rental of property, and related property services etc.</li><li style=\" font-family: Optima, sans-serif\">Post advertisements on ace capital.</li><li style=\" font-family: Optima, sans-serif\">Send advertisements and promotional messages through emails and messages.</li></ul></div></div></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div>', '<div><div><div><div><div><div><div><div><div><div><div><div><div><div><p></p><div><div><div><div><div><div>\r\n<div style=\"text-align: center;\"><br /></div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(33, 37, 41); font-family: Optima, sans-serif; font-size: 16px;\">Ace Capital is dedicated to finding the most suitable property based on the client\'s needs and expectations. Our real estate experts have years of experience and are committed to providing the finest service to our esteemed clients. We are here to guide you through the whole process and ensure that you make the best decisions possible at every stage of the process.</span></p>\r\n<div>\r\n<div style=\" font-family: Optima, sans-serif; color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255)\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div style=\" font-family: Optima, sans-serif\">\r\n<div class=\"row\" style=\" font-family: Optima, sans-serif; --bs-gutter-x:1.5rem; --bs-gutter-y:0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5)\">\r\n<div class=\"col-md-12 col-lg-12\" style=\" font-family: Optima, sans-serif; flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y)\">\r\n<h3 class=\"pp-heading\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h3><h2></h2><h2><span style=\"font-size: 24px; color: rgb(0, 128, 0);\">Who we do?</span></h2>\r\n<div class=\"pp-content\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; padding: 10px 0px\">\r\n<p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\">A top-rated real estate brokerage firm that specializes in helping affluent individuals find the perfect homes and maximize their ROI. With a strong hold on the secondary market and off plans, Ace Capital\'s ultimate goal is to help buyers and sellers find mutually beneficial investments, regardless of the technical details involved. Ace Capital has a reputation for providing superior service to its clients, and its team of experienced professionals is dedicated to helping you find the perfect home. Whether they are residential or commercial properties, Ace Capital is always looking to provide the best options for its clients. Our goal is to provide our customers with the most recent information about the real estate market so that they can make informed decisions about their investments.</p>\r\n</div>\r\n<h4 class=\"pp-heading\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h4><h2><span style=\"text-decoration-line: underline; font-size: 24px; color: rgb(0, 128, 0);\">Services</span></h2>\r\n<div class=\"pp-content\" style=\" font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; padding: 10px 0px\">\r\n<p style=\" font-family: Optima, sans-serif; margin-bottom: 1rem\">Ace Capital has a stronghold on the real estate market in Dubai, thanks to its vibrant and dynamic team of professional brokers. Due to the ethics and hard work of our team of experienced brokers, we have been able to grab potential clientele willing to invest in luxurious properties in Dubai\r\n\r\n<span style=\"color: rgb(33, 37, 41); font-family: Optima, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255)\">Ace Capital has a stronghold on the real estate market in Dubai, thanks to its vibrant and dynamic team of professional brokers. Due to the ethics and hard work of our team of experienced brokers, we have been able to grab potential clientele willing to invest in luxurious properties in Dubai</span>\r\n.</p></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div>\r\n\r\n<h4 class=\"pp-heading\" style=\" background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h4><h3></h3><h3></h3><h4><span style=\"text-decoration-line: underline; font-size: 18px; color: rgb(0, 128, 0);\">Off-plan:</span></h4><div class=\"pp-content\" style=\"color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; padding: 10px 0px\"><p style=\"font-family: Optima, sans-serif; margin-bottom: 1rem\">We have a selection of off-plan properties that are ideal for investment purposes. These properties can either be used to settle-in in a few years or used to enjoy as an investment keeping in mind the increase in value over time.</p></div>\r\n\r\n\r\n<h4 class=\"pp-heading\" style=\" background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h4><h3><span style=\"text-decoration-line: underline; color: rgb(0, 128, 0);\">Secondary Market:</span></h3><div class=\"pp-content\" style=\"color: rgb(33, 37, 41); font-size: 16px; background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; padding: 10px 0px\"><p style=\"font-family: Optima, sans-serif; margin-bottom: 1rem\">We can help you find a luxurious property that is ready to move into. We have a wide range of magnificently built properties that are ready to be sold.</p></div>\r\n\r\n\r\n<h4 class=\"pp-heading\" style=\" background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h4><h3><span style=\"text-decoration-line: underline; color: rgb(0, 128, 0);\">Renting/Leasing:</span></h3><div class=\"pp-content\" style=\"font-size: 16px; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; padding: 10px 0px\"><p style=\"font-family: Optima, sans-serif; margin-bottom: 1rem\">We are here to help individuals make the most of their investments. We have several options fitting different budgets. We offer quality properties and can help individuals find the right type of property depending on their needs, whether suitable for short-term or permanent residential use. We can also help renters find properties to lease. We can provide a list of potential tenants and facilitate the rental process.\r\n</p></div>\r\n<br /></div>\r\n\r\n<h4 class=\"pp-heading\" style=\" background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h4><h3><span style=\"text-decoration-line: underline; color: rgb(0, 128, 0);\">Property Management:</span></h3><div class=\"pp-content\" style=\"font-size: 16px; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; padding: 10px 0px\"><p style=\"font-family: Optima, sans-serif; margin-bottom: 1rem\">Our mission is to supervise and manage real estate properties. This includes looking after all day-to-day operations for a property including rental income, tenant complaints, and more. The number of responsibilities we will have will depend on the terms of our contract with the landlord.</p></div>\r\n<br /></div>\r\n<p>\r\n\r\n</p><h4 class=\"pp-heading\" style=\" background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; font-weight: 600; line-height: 1.2; font-size: 17px; color: rgb(3, 129, 108); padding: 8px 0px\"></h4><h3><span style=\"text-decoration-line: underline; color: rgb(0, 128, 0);\">Real Estate Advertisement/Marketing:</span></h3><div class=\"pp-content\" style=\"font-size: 16px; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-family: &quot;Nunito Sans&quot;, sans-serif; padding: 10px 0px\"><p style=\"font-family: Optima, sans-serif; margin-bottom: 1rem\">We can help you promote listings as well as generate buyer leads for your property. It is a great way to reach a wider audience more effectively and easily than ever before.</p></div></div></div></div></div></div></div></div></div></div>\r\n<link rel=\"File-List\r\n\" href=\"file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_filelist.xml\" />\r\n<link rel=\"themeData\r\n\" href=\"file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_themedata.thmx\" />\r\n<link rel=\"colorSchemeMapping\r\n\" href=\"file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_colorschememapping.xml\" /><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div>', '2023-02-03 08:42:29', '2023-04-12 01:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `project_class_tbl`
--

CREATE TABLE `project_class_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `branchname` varchar(250) NOT NULL,
  `bacthname` varchar(255) NOT NULL,
  `trainer_id` varchar(250) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `location` varchar(250) DEFAULT NULL,
  `regularrate` longtext NOT NULL,
  `advancepayment` varchar(255) NOT NULL,
  `gtreat` varchar(250) NOT NULL,
  `slots` varchar(250) NOT NULL,
  `classimg` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_title` longtext NOT NULL,
  `page_description` longtext NOT NULL,
  `page_schema` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_class_tbl`
--

INSERT INTO `project_class_tbl` (`id`, `name`, `branchname`, `bacthname`, `trainer_id`, `starttime`, `endtime`, `description`, `location`, `regularrate`, `advancepayment`, `gtreat`, `slots`, `classimg`, `status`, `created_at`, `updated_at`, `page_title`, `page_description`, `page_schema`) VALUES
(6, 'Benjamin Townsend', '1', '1', '4', '11:57', '09:51', '<div><div><div><div><p>Hello New</p><br /></div><br /></div><br /></div><br /></div>', '', 'Ad qui aperiam quia', 'Ipsum aut in consequ', 'In corrupti dolores', 'Tempor qui natus Nam', '20230418100293644841Group 16056 copy.png', '1', '2023-04-18 10:02:22', '2023-04-18 04:32:22', 'Facere tenetur et ea', 'Quisquam dolorem dol', 'Incididunt consequat'),
(10, 'Edward Wooten', '2', '2', '5', '00:31', '17:27', '<div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><p>Hello this is just for testing purposes.</p><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div>', '', 'Aut non corporis sed', 'Dicta magna nulla vo', 'Veniam eaque impedi', 'Hic facere ut quas r', '2023041810022091473358Group 16057.png', '1', '2023-04-18 10:02:39', '2023-04-18 04:32:39', 'Esse laborum Disti', 'Ut placeat odit dic', 'Necessitatibus ut no'),
(12, 'Jarrod Luna', '3', '3', '4', '15:28', '06:54', '<div><div><div><p>Hello New</p><br /></div><br /></div><br /></div>', NULL, 'Hic placeat reprehe', 'Aliquip voluptas ad', 'Eu rerum culpa sit', 'Dolore in consequat', '2023041809571391785296Group 16055 copy.png', '1', '2023-04-18 09:57:34', '2023-04-18 04:27:34', 'Voluptas repellendus', 'Maxime est proident', 'Aut ut aperiam quaer');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `access`, `created_at`, `updated_at`) VALUES
(9, 'Admin', '{\"p1\":true,\"p2\":true,\"p3\":true,\"p4\":true,\"b1\":true,\"b2\":true,\"b3\":true,\"b4\":true}', '2022-11-14 04:41:40', '2022-11-13 23:11:40'),
(10, 'Agent', '{\"p1\":true,\"p2\":true,\"p3\":true,\"p4\":true,\"b1\":false,\"b2\":false,\"b3\":false,\"b4\":false}', '2023-02-07 11:18:22', '2023-02-07 18:18:22'),
(11, 'Blogger', '{\"p1\":false,\"p2\":false,\"p3\":false,\"p4\":false,\"b1\":true,\"b2\":true,\"b3\":true,\"b4\":true}', '2022-12-20 05:21:43', '2022-12-20 10:21:43'),
(17, 'Hello', '{\"p1\":false,\"p2\":false,\"p3\":true,\"p4\":true,\"b1\":true,\"b2\":true,\"b3\":false,\"b4\":false}', '2022-12-22 08:20:46', '2022-12-22 08:20:46'),
(22, 'new', '{\"p1\":true,\"p2\":true,\"p3\":true,\"p4\":true,\"b1\":true,\"b2\":true,\"b3\":true,\"b4\":true}', '2022-12-22 06:46:55', '2022-12-22 06:46:55'),
(23, 'Blog/Agent', '{\"p1\":true,\"p2\":false,\"p3\":true,\"p4\":true,\"b1\":true,\"b2\":false,\"b3\":false,\"b4\":true}', '2023-01-02 07:09:08', '2023-01-02 12:09:08'),
(24, 'blogger', '{\"p1\":false,\"p2\":false,\"p3\":false,\"p4\":false,\"b1\":true,\"b2\":true,\"b3\":true,\"b4\":true}', '2023-02-15 04:54:50', '2023-02-15 11:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `siteTitle` varchar(255) DEFAULT NULL,
  `siteLogo` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `userId`, `siteTitle`, `siteLogo`, `currency`, `created_at`, `updated_at`) VALUES
(3, 1, 'Ace Capital', '2022111506101969619565deadpool-superhero-minimal-4k-ds-1366x768.jpg', 'INR', '2022-11-15 06:15:31', '2022-11-15 00:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(250) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `dob` varchar(250) NOT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `token` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_tbl`
--

INSERT INTO `student_tbl` (`id`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `status`, `dob`, `gender`, `password`, `image`, `address`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Jhone', 'Doy', 'Lio', 'jhon@gmai9l.com', '9876543210', '1', '2023-04-13', 'male', '123', 'C:\\fakepath\\card1.png', 'Lucknow', '', '2023-03-30 10:22:52', '2023-03-30 10:22:52'),
(2, 'f', 'm', 'l', 'fml@gmail.com', '9876543210', '1', '2023-04-13', 'male', '123', 'C:\\fakepath\\card1.png', 'abc', '', '2023-04-05 02:21:32', '2023-04-05 02:21:32'),
(3, 'demo', 'demo', 'demo', 'demo@gmail.com', '3216549870', '1', '2023-04-20', NULL, '123', 'C:\\fakepath\\card12.png', 'abc', '2uZwQawj2ml7F92wpwt7', '2023-04-12 02:52:49', '2023-04-12 02:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_tbl`
--

CREATE TABLE `trainer_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_schema` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainer_tbl`
--

INSERT INTO `trainer_tbl` (`id`, `name`, `image`, `speciality`, `branch_id`, `status`, `page_title`, `page_description`, `page_schema`, `created_at`, `updated_at`) VALUES
(4, 'Aurora Williams', '202304171048144623553chocolate-orange-cake-cappuccino.jpg', 'Ea cupiditate eaque', '3', '1', 'Iure expedita irure', 'In voluptas tempor e', 'Rerum a consequat T', '2023-04-17 05:18:48', '2023-04-17 05:44:21'),
(5, 'Kane Skinner', '2023041710491002851597hot-art-coffee-cappuccino-cup-wooden-table-background-with-copy-space.jpg', 'Porro temporibus pra', '2', '1', 'In nisi molestiae vo', 'Iste eum proident v', 'Ipsa omnis dicta ut', '2023-04-17 05:19:13', '2023-04-17 05:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL,
  `role` int(11) DEFAULT NULL,
  `location` longtext NOT NULL,
  `token` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `email`, `department`, `phone`, `specialty`, `designation`, `photo`, `status`, `role`, `location`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Gforce', 'Gforce', 'e10adc3949ba59abbe56e057f20f883e', 'admin@admin.com', 'Admin', '9876543210', 'Admin', 'Admin', '2023041311582076086788gforce.png', '1', 9, 'Dubai - United Arab Emirates', '64e1b8d34f425d19e1ee2ea7236d3028347303400', '2023-04-17 10:47:16', '2023-04-17 05:17:16'),
(12, 'Elias', 'Halawangi', 'e10adc3949ba59abbe56e057f20f883e', 'elias@acecapitalrealty.com', 'SALES', '052-4609117', 'OFF-PLAN SPECIALIST', 'SENIOR PROPERTY CONSULTANT', '202211141219981700953one.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(13, 'Muhammad Loai', 'Marwan Mahroosa', 'e10adc3949ba59abbe56e057f20f883e', 'loai@acecapitalrealty.com', 'SALES', '052-3682779', 'BUSINESS BAY & OFF-PLAN SPECIALIST', 'SENIOR PROPERTY CONSULTANT', '2022111412211965063175one.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-02-02 04:42:53', '2023-02-02 11:42:53'),
(14, 'Wissam Abou', 'Rjeily', 'e10adc3949ba59abbe56e057f20f883e', 'wissam@acecapitalrealty.com', 'SALES', '052-4211485', 'OFF PLAN SPECIALIST', 'SENIOR PROPERTY CONSULTANT', '2022111412221932751917one.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(15, 'Raissa', 'Lima', 'e10adc3949ba59abbe56e057f20f883e', 'raissa@acecapitalrealty.com', 'SALES', '052-3902219', 'DUBAI HILLS ESTATE', 'SENIOR PROPERTY CONSULTANT', '202211141223476706315one.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(16, 'Yersaiyn Kharzanov', 'Kharzanov', 'e10adc3949ba59abbe56e057f20f883e', 'yersaiyn@acecapitalrealty.com', 'SALES', '052-2912985', 'MBR CITY & OFF-PLAN SPECIALIST', 'SENIOR SALES AGENT', '202211141224985571510one.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(17, 'Alaa Khaled', 'Shwayyat', 'e10adc3949ba59abbe56e057f20f883e', 'alaa@acecapitalrealty.com', 'SALES', '052-3466495', 'OFF-PLAN SPECIALIST', 'SENIOR PROPERTY CONSULTANT', '202211141224998924671one.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(27, 'Shilpa', 'Sharma', '5b1b68a9abf4d2cd155c81a9225fd158', 'shilpas@yopmail.com', 'Agent', '9781771170', 'Agent', 'Agent', '202302060529550236594vr.PNG', '1', 10, 'Dubai - United Arab Emirates', '', '2023-02-06 05:29:52', '2023-02-06 12:29:52'),
(28, 'Jitendra', 'Singh', 'e10adc3949ba59abbe56e057f20f883e', 'jitendra.techies@gmail.com', 'Engineering', '9876543210', 'Software Development', 'Software Developer', '2022122103341549503366newimg.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-02-07 11:18:01', '2023-02-07 18:18:01'),
(29, 'Harmanpreet', 'Singh', 'fcea920f7412b5da7be0cf42b8c93759', 'harman7b@gmail.com', 'IT', '+919876543210', 'demo', 'demo', '2022122106532084564312022112207501050365191HZDV-005-A.jpg', '1', 9, 'Dubai - United Arab Emirates', 'fc684e59667e5135ad4e93dbb2a2d2e31469109846', '2022-12-21 06:55:37', '2022-12-21 11:55:37'),
(30, 'Agent_Dubai_testing', 'Last', '0f9526a2dc3e8e6a28d71af5a5b6d108', 'agent@yopmail.com', 'real estate agents', '0919781771170', 'dubai UAE', 'agent', '2022122106561453820900IMG_20210516_193333.jpg', '1', 10, 'Dubai - United Arab Emirates', '', '2023-02-09 12:04:54', '2023-02-09 19:04:54'),
(31, 'hello', 'blogger/agent', 'e10adc3949ba59abbe56e057f20f883e', 'hello@yopmail.com', 'property linker', '9781771170', 'Dubai', 'agent', '2022122203221349973905IMG_20210516_193333.jpg', '1', 23, 'Dubai International Airport (DXB) - Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(32, 'Test User1', 'Sharma', 'e10adc3949ba59abbe56e057f20f883e', 'test@yopmail.com', 'Agent', '9781771170', 'Agent', 'Agent', '202212230136442462690jonas-kakaroto-KIPqvvTOC1s-unsplash.jpg', '1', 10, 'Dubai Hills Mall, Dubai Hills Estate - Al Khail Road - Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(33, 'test', 'tset', 'e10adc3949ba59abbe56e057f20f883e', 'test123456@gmail.com', 'Test', '9876543210', 'test', 'test', '202212230202542132440chocolate-orange-cake-cappuccino.jpg', '1', 10, 'Mumbai, Maharashtra, India', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(34, 'Test_User_2', 'Singh', 'e10adc3949ba59abbe56e057f20f883e', 'testuser@yopmail.com', 'Agent', '9781556671', 'Agent', 'Agent', '202212230211423993715jonas-kakaroto-KIPqvvTOC1s-unsplash.jpg', '1', 10, 'Dubai Airport Terminal 2 Arrivals - Dubai - United Arab Emirates', '', '2023-01-25 06:37:24', '2023-01-25 13:37:24'),
(39, 'Ashwani', 'Luna', 'e10adc3949ba59abbe56e057f20f883e', 'ashwani.luna@gmail.com', 'Real Estate', '9781771170', 'Dubai', 'Agent', '2023022105331324136431vr.PNG', '1', 10, 'Dubai Hills Mall - Al Khail Road - Dubai - United Arab Emirates', '', '2023-02-21 12:33:38', '2023-02-21 12:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_tbl`
--

CREATE TABLE `workshop_tbl` (
  `id` int(10) NOT NULL,
  `class_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainer_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workshopdates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starttime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymenttitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_schema` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workshop_tbl`
--

INSERT INTO `workshop_tbl` (`id`, `class_id`, `branch_id`, `trainer_id`, `title`, `workshopdates`, `starttime`, `endtime`, `image`, `short_description`, `description`, `price`, `paymenttitle`, `page_title`, `page_description`, `page_schema`, `status`, `created_at`, `updated_at`) VALUES
(17, '6', '2', '4', 'Ex commodi accusamus', '[\"04\\/04\\/2023\",\" 04\\/15\\/2023\"]', '01:11', '20:00', '202304181147352661742Rectangle 55.png', 'Praesentium et quo d', '<div><div><div><div><div><div><p>Hello New Test</p><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div>', '116', 'Qui ratione in nesci', 'Sit officia recusand', 'Pariatur Ullam esse', 'Aut illo quo id dict', '1', '2023-04-04 01:43:46', '2023-04-18 06:17:43'),
(18, '6', '1', '5', 'Id sint dolores tem', '[\"04\\/04\\/2023\",\" 04\\/07\\/2023\",\" 04\\/15\\/2023\",\" 04\\/22\\/2023\"]', '05:12', '12:44', '202304181147352145247Rectangle 55 (2).png', 'In ipsum est tempor', '<div><div><div><div><div><div><div><div><div><p>Hello This is our final testing</p><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div><br /></div>', '807', 'Dolores culpa facere', 'Autem aut omnis et N', 'Velit aut similique', 'Quia qui do velit au', '1', '2023-04-04 03:00:06', '2023-04-18 06:17:17'),
(19, '6', '1', '4', 'Nulla et doloremque', '[\"4\\/22\\/2023\",\" 4\\/27\\/2023\",\" 4\\/28\\/2023\",\" 4\\/29\\/2023\"]', '04:22', '06:54', '2023041811461362980621Rectangle 55 (1).png', 'Delectus dolorem ut', '<div><div><div><p>Hello this is just for testing purposes</p><br /></div><br /></div><br /></div>', '620', 'Vero ipsum quia vol', 'Incididunt vel venia', 'Enim incidunt quasi', 'Voluptatem repudiand', '1', '2023-04-14 06:47:20', '2023-04-18 06:16:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategory`
--
ALTER TABLE `blogcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrer_tbl`
--
ALTER TABLE `carrer_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgetpass`
--
ALTER TABLE `forgetpass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_class_tbl`
--
ALTER TABLE `open_class_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_calender`
--
ALTER TABLE `organization_calender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_class_tbl`
--
ALTER TABLE `project_class_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_tbl`
--
ALTER TABLE `trainer_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_tbl`
--
ALTER TABLE `workshop_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blogcategory`
--
ALTER TABLE `blogcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carrer_tbl`
--
ALTER TABLE `carrer_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `forgetpass`
--
ALTER TABLE `forgetpass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `open_class_tbl`
--
ALTER TABLE `open_class_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `organization_calender`
--
ALTER TABLE `organization_calender`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_class_tbl`
--
ALTER TABLE `project_class_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_tbl`
--
ALTER TABLE `student_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer_tbl`
--
ALTER TABLE `trainer_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `workshop_tbl`
--
ALTER TABLE `workshop_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
