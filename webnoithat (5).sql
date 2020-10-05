-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2020 lúc 07:21 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webnoithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_clients`
--

CREATE TABLE `admin_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_clients`
--

INSERT INTO `admin_clients` (`id`, `name`, `content`, `country`, `image_path`, `image_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'bui quang linh', 'csfs', 'csfs', '/storage/clients//k0aEbbIkXGNSXc1tOTvs.png', 'icon-1.png', '2020-08-27 22:23:38', '2020-08-21 00:36:13', '2020-08-27 22:23:38'),
(2, 'bui quang linh', 'Tôi rất hài lòng với thiết kế căn biệt thự của An Cường. Thiết kế đẹp, thi công nhanh, đảm bảo chất lượng và thái độ làm việc của An Cường khiến tôi rất thỏa mãn.', 'hunng yeen', '/storage/clients/2/o8wqv8J7lB3NCLsIzXAE.png', 'icon-1.png', NULL, '2020-08-27 22:24:17', '2020-08-27 22:43:09'),
(3, 'Nguyễn Văn Chủ', 'Tôi rất hài lòng', 'Tôi rất hài lòng', '/storage/clients/2/crHrCvzImGZxSjmJ5uaE.jpg', 'service-5.jpg', NULL, '2020-09-16 01:00:30', '2020-09-16 01:00:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `slug`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kiến trúc', 'kien-truc', 0, '2020-08-20 04:32:37', '2020-08-20 04:10:49', '2020-08-20 04:32:37'),
(2, 'Thiết kế nhà ống', 'thiet-ke-nha-ong', 1, '2020-08-20 04:39:43', '2020-08-20 04:19:34', '2020-08-20 04:39:43'),
(3, 'Thiết kế biệt thự hiện đại', 'thiet-ke-biet-thu-hien-dai', 1, '2020-08-20 04:39:44', '2020-08-20 04:20:01', '2020-08-20 04:39:44'),
(4, 'Nội thất', 'noi-that', 0, '2020-08-20 04:39:45', '2020-08-20 04:25:16', '2020-08-20 04:39:45'),
(5, 'Biệt thự', 'biet-thu', 0, '2020-08-20 04:39:46', '2020-08-20 04:25:24', '2020-08-20 04:39:46'),
(6, 'Thiết kế nội thất nhà ống', 'thiet-ke-noi-that-nha-ong', 4, '2020-08-20 04:39:47', '2020-08-20 04:25:44', '2020-08-20 04:39:47'),
(7, 'Thiết kế biệt thự hiện đại', 'thiet-ke-biet-thu-hien-dai', 5, '2020-08-20 04:39:48', '2020-08-20 04:38:31', '2020-08-20 04:39:48'),
(8, 'bui quang linh', 'bui-quang-linh', 0, '2020-08-20 04:45:40', '2020-08-20 04:44:54', '2020-08-20 04:45:40'),
(9, 'Kiến trúc', 'kien-truc', 0, '2020-08-20 04:48:06', '2020-08-20 04:45:47', '2020-08-20 04:48:06'),
(10, 'Nội thất', 'noi-that', 0, '2020-08-20 04:48:08', '2020-08-20 04:46:00', '2020-08-20 04:48:08'),
(11, 'Nội thất được săn đón', 'noi-that-duoc-san-don', 10, '2020-08-20 04:51:39', '2020-08-20 04:46:08', '2020-08-20 04:51:39'),
(12, 'Thiết kế biệt thự hiện đại', 'thiet-ke-biet-thu-hien-dai', 9, '2020-08-20 04:51:40', '2020-08-20 04:46:19', '2020-08-20 04:51:40'),
(13, 'Thiết kế văn phòng', 'thiet-ke-van-phong', 0, '2020-08-20 04:51:42', '2020-08-20 04:46:34', '2020-08-20 04:51:42'),
(14, 'Nội thất', 'noi-that', 0, NULL, '2020-08-20 04:52:03', '2020-08-20 04:52:03'),
(15, 'Nội thất được săn đón', 'noi-that-duoc-san-don', 14, NULL, '2020-08-20 04:52:16', '2020-08-20 04:52:16'),
(16, 'Kiến trúc', 'kien-truc', 0, NULL, '2020-08-20 04:52:26', '2020-08-20 04:52:26'),
(17, 'Biệt thự', 'biet-thu', 0, NULL, '2020-08-20 04:53:12', '2020-08-20 04:53:12'),
(18, 'Biệt thự đẹp', 'biet-thu-dep', 17, NULL, '2020-08-20 04:53:35', '2020-08-20 04:53:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_news`
--

CREATE TABLE `admin_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `features` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_news`
--

INSERT INTO `admin_news` (`id`, `title`, `description`, `content`, `image_path`, `image_name`, `deleted_at`, `created_at`, `updated_at`, `features`, `slug`, `post_id`, `user_id`) VALUES
(1, 'Bootcamp coding có tác dụng gì', 'asdas', '<p>asdasdasda</p>\r\n<p>&nbsp;</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -90px; top: 64.2px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '/storage/news/1/HO6Q3j2VbXjxl4qC4pc7.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-08-21 03:14:24', '2020-08-21 03:05:22', '2020-08-21 03:14:24', 0, '', 0, 0),
(2, 'Hello việt nam', 'Bootcamp coding đã và đang giúp hàng ngàn các bạn trẻ thành công, trưởng thành hơn trong sự nghiệp lập trình của bản thân mình', '<p>&aacute;đ&acirc;s</p>', '/storage/news/1/q2cMuTIRAcIwKAOPZIiq.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-08-21 03:32:05', '2020-08-21 03:21:30', '2020-08-21 03:32:05', 0, 'hello-viet-nam', 0, 0),
(3, 'Những Lưu Ý Khi Xem Phong Thuỷ Nhà Ở Chung Cư Bạn Cần Phải', 'Căn hộ chung cư là hình thức nhà ở rất phổ biến và được nhiều gia đình', '<h4 class=\"entry-title\">Gỗ C&ocirc;ng Nghiệp An Cường L&otilde;i Xanh L&agrave; G&igrave;? C&oacute; Tốt Kh&ocirc;ng?</h4>\r\n<div class=\"is-divider\">&nbsp;</div>\r\n<div class=\"entry-content\">\r\n<p>C&oacute; lẽ đối với nhiều người d&ugrave;ng gỗ c&ocirc;ng nghiệp l&acirc;u năm th&igrave; chắc chắn sẽ biết đến &ldquo;gỗ c&ocirc;ng nghiệp l&otilde;i xanh&rdquo;, thế nhưng những người mới tiếp x&uacute;c th&igrave; lại kh&ocirc;ng. Vậy&nbsp;<a href=\"https://kientrucancuong.vn/go-cong-nghiep-an-cuong-loi-xanh/\"><strong>gỗ c&ocirc;ng nghiệp An Cường l&otilde;i xanh</strong></a>&nbsp;l&agrave; g&igrave;? C&oacute; tốt kh&ocirc;ng? Ph&acirc;n biệt gỗ c&ocirc;ng nghiệp l&otilde;i xanh,&hellip; Tất cả sẽ được giải đ&aacute;p qua b&agrave;i viết ng&agrave;y h&ocirc;m nay, đừng bỏ lỡ b&agrave;i viết n&agrave;y nha.</p>\r\n<ul>\r\n<li>\r\n<h2><strong>Gỗ c&ocirc;ng nghiệp l&otilde;i xanh An Cường l&agrave; g&igrave;?</strong></h2>\r\n</li>\r\n</ul>\r\n<p><strong>Gỗ c&ocirc;ng nghiệp An Cường l&otilde;i xanh&nbsp;</strong>l&agrave; 1 loại gỗ c&oacute; khả năng chống ẩm tốt của h&atilde;ng gỗ c&ocirc;ng nghiệp An Cường.&nbsp;</p>\r\n</div>\r\n<p>đ&oacute;n gi&oacute; m&aacute;t, tr&aacute;nh nắng gắt, c&oacute; khoảng l&ugrave;i với đường giao th&ocirc;ng b&ecirc;n ngo&agrave;i để giảm xung s&aacute;t b&ecirc;n ngo&agrave;i x&acirc;m nhập v&agrave;o kh&ocirc;ng gian căn hộ.</p>\r\n<p><img src=\"/storage/photos/2/thiet-ke-noi-that-chung-cu-4.jpg\" alt=\"\" /></p>\r\n<p>MDF ch&iacute;nh l&agrave; t&ecirc;n viết tắt của &ldquo;Medium Density Fiberboard&rdquo; &ndash; c&oacute; nghĩa l&agrave; &ldquo;v&aacute;n sợi mật độ trung b&igrave;nh&rdquo;. V&agrave; trong nh&oacute;m gỗ MDF của An Cường được chia ra l&agrave;m 2 loại l&agrave;: gỗ MDF l&otilde;i xanh chống nước v&agrave; gỗ MDF thường.&nbsp;</p>\r\n<p>Gỗ MDF c&oacute; th&agrave;nh phần ch&iacute;nh l&agrave; được l&agrave;m từ gỗ tự nhi&ecirc;n được nghiền bằng m&aacute;y tạo th&agrave;nh những sợi cellulo, rồi sau đ&oacute; được rửa tr&ocirc;i tạp chất c&ograve;n s&oacute;t lại v&agrave; tiếp đến ch&iacute;nh l&agrave; kh&acirc;u trộn keo v&agrave; chất kết d&iacute;nh, rồi cuối c&ugrave;ng được n&eacute;n th&agrave;nh tấm.</p>\r\n<p>Đặc điểm của loại gỗ c&ocirc;ng nghiệp MDF n&agrave;y l&agrave; một loại vật liệu c&oacute; thiết kế, c&oacute; độ ổn định cao, cũng &iacute;t bị cong v&ecirc;nh. Bất kể l&agrave; ở dạng v&aacute;n hay tấm th&igrave; MDF thường c&oacute; bề mặt nhẵn mịn, kh&oacute; uốn cong n&ecirc;n rất ph&ugrave; hợp trong thiết kế đồ nội thất.</p>\r\n<p>Gỗ MDF n&agrave;y c&oacute; bề mặt b&oacute;ng, dễ d&agrave;ng sơn hoặc phủ l&ecirc;n bề tr&ecirc;n bề mặt 1 lớp Melamine, Acrylic hay l&agrave; Laminate,&hellip; Cho n&ecirc;n gỗ MDF, đặc biệt l&agrave; gỗ l&otilde;i xanh MDF rất l&agrave; đa dạng v&agrave; đặc biệt l&ocirc;i cuốn sự ch&uacute; &yacute; của c&aacute;c kh&aacute;ch h&agrave;ng.</p>\r\n<p>D&ugrave;ng gỗ MDF th&igrave; khỏi lo về độ bền, v&igrave; n&oacute; c&oacute; độ bền rất cao, so với c&aacute;c loại gỗ nh&acirc;n tạo, đặc biệt c&ograve;n được trang bị cho khả năng chống mối mọt cao. Hơn nữa, gỗ MDF c&oacute; gi&aacute; th&agrave;nh tương đối rẻ, nhất l&agrave; so với gỗ tự nhi&ecirc;n, v&igrave; thế n&ecirc;n đ&atilde; &ndash; đang &ndash; sẽ được nhiều người ưu ti&ecirc;n sử dụng, gi&uacute;p hỗ trợ tiết kiệm chi ph&iacute; thiết kế nội thất cho c&aacute;c gia đ&igrave;nh.</p>', '/storage/news/2/iveoTSp7UG3S84zWrdCZ.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-09-01 03:38:06', '2020-08-28 03:16:40', '2020-09-01 03:38:06', NULL, 'nhung-luu-y-khi-xem-phong-thuy-nha-o-chung-cu-ban-can-phai', 0, 0),
(4, 'Những Lưu Ý Khi Xem Phong Thuỷ Nhà Ở Chung Cư Bạn Cần Phải', 'Căn hộ chung cư là hình thức nhà ở rất phổ biến và được nhiều gia đình', '<p>Căn hộ chung cư l&agrave; h&igrave;nh thức nh&agrave; ở rất phổ biến v&agrave; được nhiều gia đ&igrave;nh trẻ ưa chuộng hiện nay.&nbsp;<a href=\"#\"><strong>Xem phong thuỷ nh&agrave; ở chung cư</strong></a>&nbsp;vẫn tu&acirc;n theo những nguy&ecirc;n tắc cơ bản của nh&agrave; truyền thống nhưng c&oacute; sự kh&aacute;c biệt v&agrave; cần điều chỉnh linh hoạt.</p>\r\n<h2><strong>Xem thế nh&agrave; chung cư</strong></h2>\r\n<p>Khi&nbsp;<strong>xem phong thuỷ nh&agrave; ở chung cư,</strong>&nbsp;ch&uacute;ng ta n&ecirc;n xem chung cư như một ng&ocirc;i nh&agrave; lớn v&agrave; c&oacute; nhiều ph&ograve;ng, nhiều tầng. Ng&ocirc;i nh&agrave; ấy cũng cần phải c&oacute; được c&aacute;c thuận lợi về phong thủy như hướng tốt, đ&oacute;n gi&oacute; m&aacute;t, tr&aacute;nh nắng gắt, c&oacute; khoảng l&ugrave;i với đường giao th&ocirc;ng b&ecirc;n ngo&agrave;i để giảm xung s&aacute;t b&ecirc;n ngo&agrave;i x&acirc;m nhập v&agrave;o kh&ocirc;ng gian căn hộ.</p>', '/storage/news/2/QJfC2GuEL22yRTWCUWX4.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-09-01 03:38:08', '2020-08-28 03:17:41', '2020-09-01 03:38:08', 0, 'nhung-luu-y-khi-xem-phong-thuy-nha-o-chung-cu-ban-can-phai', 0, 0),
(5, 'complete interface login and function logic,please check for me', 'Bootcamp coding đã và đang giúp hàng ngàn các bạn trẻ thành công, trưởng thành hơn trong sự nghiệp lập trình của bản thân mình', '<p>sadsd</p>', '/storage/news/2/N40XZOf5rFY0anEIc664.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-09-01 03:38:09', '2020-08-28 03:19:12', '2020-09-01 03:38:09', 0, 'complete-interface-login-and-function-logicplease-check-for-me', 0, 0),
(6, 'Bootcamp coding có tác dụng gì', 'asdasd', '<p>sdf</p>', '/storage/news/2/l192XZZj7AYcHZbzgPsr.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-09-01 03:38:11', '2020-08-28 03:19:41', '2020-09-01 03:38:11', 0, 'bootcamp-coding-co-tac-dung-gi', 0, 0),
(7, 'Hướng dẫn cách xem hướng bếp nhà chung cư – Tài Lộc vào nhà', 'Trong mỗi ngôi nhà, trong mỗi gia đình, nơi để các thành viên trong gia đình tụ tập, vui vẻ bên nhau, ngoài phòng khách thì còn có phòng khách. Hơn nữa, phòng khách theo quan niệm xưa được coi như là đại diện cho một vị Táo quân. Chính vì thế,  phòng bếp rất được các gia chủ chú trọng khi thiết kế. “Hướng dẫn xem hướng bếp nhà chung cư” ngày hôm nay sẽ giúp bạn tìm được một hướng tốt để đặt bếp.', '<p>adsdsa</p>', '/storage/news/2/JyhJV7PVWxVt4DUjPVsU.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', NULL, '2020-09-01 17:39:38', '2020-09-20 19:59:51', 0, 'huong-dan-cach-xem-huong-bep-nha-chung-cu-tai-loc-vao-nha', 3, 2),
(8, 'Dịch Vụ Xây Nhà Trọn Gói UY TÍN – CHUYÊN NGHIỆP – AN CƯỜNG', 'Dịch vụ xây nhà trọn gói hay chìa khóa trao tay chính là một loại hình xây nhà đang được người dân vô cùng ưa chuộng trong những năm gần đây. Bởi lẽ trong cuộc sống hiện đại này, con người quá bận rộn với những công việc ngoài xã hội. Cho nên dịch vụ xây nhà trọn gói chính là một giải pháp hữu hiệu giúp cho con người tiết giảm thời gian và chi phí xây dựng nhà.', '<p>dsđ&acirc;sd</p>', '/storage/news/2/MStt1XyrG98bgkIeKn4Z.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', NULL, '2020-09-01 17:40:26', '2020-09-01 17:40:26', 0, 'dich-vu-xay-nha-tron-goi-uy-tin-chuyen-nghiep-an-cuong', 4, 2),
(9, 'bài viết test', 'Bootcamp coding đã và đang giúp hàng ngàn các bạn trẻ thành công, trưởng thành hơn trong sự nghiệp lập trình của bản thân mình', '<p>b&agrave;i chia sẻ 1&nbsp;</p>', '/storage/news/2/g7a7urdhmTGXYjyHis5F.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', NULL, '2020-09-16 01:14:29', '2020-09-16 01:14:29', 0, 'bai-viet-test', 3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_pages`
--

CREATE TABLE `admin_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_pages` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_pages`
--

INSERT INTO `admin_pages` (`id`, `content`, `type_pages`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p><em>Lời giới thiệu:</em><em>&nbsp;C&ocirc;ng Ty Cổ Phần Kiến Tr&uacute;c An Cường được th&agrave;nh lập v&agrave; ph&aacute;t triển theo định hướng trở th&agrave;nh : Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh chuy&ecirc;n nghiệp trong hạng mục nh&agrave; ở cao cấp, kh&aacute;ch sạn v&agrave; nh&agrave; h&agrave;ng..</em></p>\r\n<p>Kiến tr&uacute;c An Cường l&agrave; nơi quy tụ c&aacute;c kiến tr&uacute;c sư, họa sĩ t&agrave;i năng h&agrave;ng đầu Việt Nam hiện nay với nhiều năm kinh nghiệm trong nghề, nhằm &ldquo;Kiến tạo kh&ocirc;ng gian&rdquo; sống hay những sản phẩm nội thất tinh tế, sang trọng v&agrave; đẳng cấp. Hiện tại, An Cường tập trung v&agrave;o những lĩnh vực ch&iacute;nh như: X&acirc;y nh&agrave; trọn g&oacute;i, Thiết kế kiến tr&uacute;c v&agrave; nội thất, Thi c&ocirc;ng kiến tr&uacute;c v&agrave; nội thất c&ocirc;ng tr&igrave;nh, sản xuất v&agrave; thi c&ocirc;ng đồ gỗ&rdquo;.</p>\r\n<p>Phương ch&acirc;m hoạt động v&agrave; ph&aacute;t triển bền vững, gắn liền lợi &iacute;ch kinh doanh với lợi &iacute;ch x&atilde; hội c&ugrave;ng h&agrave;ng trăm c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu trải d&agrave;i từ Bắc đến Nam, An Cường tự h&agrave;o l&agrave; thương hiệu uy t&iacute;n, đối t&aacute;c tin cậy của Qu&yacute; đối t&aacute;c, Qu&yacute; kh&aacute;ch tr&ecirc;n to&agrave;n quốc.</p>\r\n<p>Với sự s&aacute;ng tạo kh&ocirc;ng ngừng : Độc đ&aacute;o trong thiết k&ecirc; &ndash; Chất lượng trong thi c&ocirc;ng&rdquo;. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i hiện thực h&oacute;a giấc mơ của gia đ&igrave;nh bạn !</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/2/410-Logo An Cuong Architecture.jpg\" alt=\"\" width=\"443\" height=\"442\" /></p>\r\n<h3><em>Tầm nh&igrave;n v&agrave; Sứ mệnh của ch&uacute;ng t&ocirc;i:</em></h3>\r\n<p>An Cường lu&ocirc;n cố gắng đ&aacute;p ứng ho&agrave;n hảo về nhu cầu thiết kế &ndash; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh của Qu&yacute; kh&aacute;ch h&agrave;ng với chất lượng dịch vụ tốt nhất. Đ&acirc;y cũng l&agrave; sứ mệnh m&agrave; An Cường lấy l&agrave;m thước đo cho sự uy t&iacute;n v&agrave; hiệu quả hoạt động.</p>\r\n<p>Cung cấp c&aacute;c sản phẩm, dịch vụ &ldquo;Độc đ&aacute;o trong thiết kế &ndash; Chất lượng trong thi c&ocirc;ng&rdquo; với mong muốn hiện thực h&oacute;a giấc mơ an cư lạc nghiệp của mỗi gia đ&igrave;nh, An Cường hướng tới mục ti&ecirc;u trở th&agrave;nh &rdquo; Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn, thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh tại H&agrave; Nội, Tp Hồ Ch&iacute; Minh v&agrave; tr&ecirc;n to&agrave;n quốc</p>\r\n<h3><em>Gi&aacute; trị cốt l&otilde;i:</em></h3>\r\n<p>Mang lại cho qu&yacute; kh&aacute;ch c&aacute;c dịch vụ, sản phẩm với chất lượng ho&agrave;n hảo. S&aacute;ng tạo kh&ocirc;ng ngừng nghỉ l&agrave; một trong những yếu tố kh&ocirc;ng thể thiếu trong mọi lĩnh vực, đặc biệt trong lĩnh vực thiết kế kiến tr&uacute;c &ndash; nội thất. V&igrave; vậy bằng những s&aacute;ng tạo của m&igrave;nh, c&aacute;c kiến tr&uacute;c sư t&agrave;i năng của An Cường đem đến cho kh&aacute;ch h&agrave;ng những mẫu thiết kế hiện đại, sang trọng hay cổ điển cuốn h&uacute;t hợp gu theo c&aacute;c ri&ecirc;ng cho mỗi gia đ&igrave;nh.</p>\r\n<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn, tạo điều kiện thu nhập v&agrave; ph&aacute;t triển năng lực c&aacute; nh&acirc;n.</p>\r\n<p>&nbsp;</p>\r\n<h2><em>C&Ocirc;NG TY CỔ PHẦN KIẾN TR&Uacute;C AN CƯỜNG</em></h2>\r\n<p><em>Trụ sở ch&iacute;nh: Số 58 Ph&aacute;o Đ&agrave;i L&aacute;ng, P.L&aacute;ng Thượng, Q.Đống Đa, Tp H&agrave; Nội</em></p>\r\n<p><em>Văn Ph&ograve;ng GD: Tầng 6, 303 Vũ T&ocirc;ng Phan, P.Khương Đ&igrave;nh, Q.Thanh Xu&acirc;n, Tp H&agrave; Nội</em></p>\r\n<p><em>Email: Tuvan.kientrucancuong@gmail.com</em></p>\r\n<p><em>Website: kientrucancuong.vn / Website: kientrucancuong.com</em></p>\r\n<p><em>Hotline: 0906 213 688 / 0908 988 869</em></p>', NULL, '2020-08-22 00:29:56', '2020-08-22 00:26:10', '2020-08-22 00:29:56'),
(2, '<p><em>Lời giới thiệu:</em><em>&nbsp;C&ocirc;ng Ty Cổ Phần Kiến Tr&uacute;c An Cường được th&agrave;nh lập v&agrave; ph&aacute;t triển theo định hướng trở th&agrave;nh : Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh chuy&ecirc;n nghiệp trong hạng mục nh&agrave; ở cao cấp, kh&aacute;ch sạn v&agrave; nh&agrave; h&agrave;ng..</em></p>\r\n<p>Kiến tr&uacute;c An Cường l&agrave; nơi quy tụ c&aacute;c kiến tr&uacute;c sư, họa sĩ t&agrave;i năng h&agrave;ng đầu Việt Nam hiện nay với nhiều năm kinh nghiệm trong nghề, nhằm &ldquo;Kiến tạo kh&ocirc;ng gian&rdquo; sống hay những sản phẩm nội thất tinh tế, sang trọng v&agrave; đẳng cấp. Hiện tại, An Cường tập trung v&agrave;o những lĩnh vực ch&iacute;nh như: X&acirc;y nh&agrave; trọn g&oacute;i, Thiết kế kiến tr&uacute;c v&agrave; nội thất, Thi c&ocirc;ng kiến tr&uacute;c v&agrave; nội thất c&ocirc;ng tr&igrave;nh, sản xuất v&agrave; thi c&ocirc;ng đồ gỗ&rdquo;.</p>\r\n<p>Phương ch&acirc;m hoạt động v&agrave; ph&aacute;t triển bền vững, gắn liền lợi &iacute;ch kinh doanh với lợi &iacute;ch x&atilde; hội c&ugrave;ng h&agrave;ng trăm c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu trải d&agrave;i từ Bắc đến Nam, An Cường tự h&agrave;o l&agrave; thương hiệu uy t&iacute;n, đối t&aacute;c tin cậy của Qu&yacute; đối t&aacute;c, Qu&yacute; kh&aacute;ch tr&ecirc;n to&agrave;n quốc.</p>\r\n<p>Với sự s&aacute;ng tạo kh&ocirc;ng ngừng : Độc đ&aacute;o trong thiết k&ecirc; &ndash; Chất lượng trong thi c&ocirc;ng&rdquo;. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i hiện thực h&oacute;a giấc mơ của gia đ&igrave;nh bạn !</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/2/410-Logo An Cuong Architecture.jpg\" alt=\"\" width=\"443\" height=\"442\" /></p>\r\n<h3><em>Tầm nh&igrave;n v&agrave; Sứ mệnh của ch&uacute;ng t&ocirc;i:</em></h3>\r\n<p>An Cường lu&ocirc;n cố gắng đ&aacute;p ứng ho&agrave;n hảo về nhu cầu thiết kế &ndash; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh của Qu&yacute; kh&aacute;ch h&agrave;ng với chất lượng dịch vụ tốt nhất. Đ&acirc;y cũng l&agrave; sứ mệnh m&agrave; An Cường lấy l&agrave;m thước đo cho sự uy t&iacute;n v&agrave; hiệu quả hoạt động.</p>\r\n<p>Cung cấp c&aacute;c sản phẩm, dịch vụ &ldquo;Độc đ&aacute;o trong thiết kế &ndash; Chất lượng trong thi c&ocirc;ng&rdquo; với mong muốn hiện thực h&oacute;a giấc mơ an cư lạc nghiệp của mỗi gia đ&igrave;nh, An Cường hướng tới mục ti&ecirc;u trở th&agrave;nh &rdquo; Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn, thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh tại H&agrave; Nội, Tp Hồ Ch&iacute; Minh v&agrave; tr&ecirc;n to&agrave;n quốc</p>\r\n<h3><em>Gi&aacute; trị cốt l&otilde;i:</em></h3>\r\n<p>Mang lại cho qu&yacute; kh&aacute;ch c&aacute;c dịch vụ, sản phẩm với chất lượng ho&agrave;n hảo. S&aacute;ng tạo kh&ocirc;ng ngừng nghỉ l&agrave; một trong những yếu tố kh&ocirc;ng thể thiếu trong mọi lĩnh vực, đặc biệt trong lĩnh vực thiết kế kiến tr&uacute;c &ndash; nội thất. V&igrave; vậy bằng những s&aacute;ng tạo của m&igrave;nh, c&aacute;c kiến tr&uacute;c sư t&agrave;i năng của An Cường đem đến cho kh&aacute;ch h&agrave;ng những mẫu thiết kế hiện đại, sang trọng hay cổ điển cuốn h&uacute;t hợp gu theo c&aacute;c ri&ecirc;ng cho mỗi gia đ&igrave;nh.</p>\r\n<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn, tạo điều kiện thu nhập v&agrave; ph&aacute;t triển năng lực c&aacute; nh&acirc;n.</p>\r\n<p>&nbsp;</p>\r\n<h2><em>C&Ocirc;NG TY CỔ PHẦN KIẾN TR&Uacute;C AN CƯỜNG</em></h2>\r\n<p><em>Trụ sở ch&iacute;nh: Số 58 Ph&aacute;o Đ&agrave;i L&aacute;ng, P.L&aacute;ng Thượng, Q.Đống Đa, Tp H&agrave; Nội</em></p>\r\n<p><em>Văn Ph&ograve;ng GD: Tầng 6, 303 Vũ T&ocirc;ng Phan, P.Khương Đ&igrave;nh, Q.Thanh Xu&acirc;n, Tp H&agrave; Nội</em></p>\r\n<p><em>Email: Tuvan.kientrucancuong@gmail.com</em></p>\r\n<p><em>Website: kientrucancuong.vn / Website: kientrucancuong.com</em></p>\r\n<p><em>Hotline: 0906 213 688 / 0908 988 869</em></p>', 1, '2020-08-22 00:29:54', '2020-08-22 00:29:09', '2020-08-22 00:29:54'),
(3, '<p><em>Lời giới thiệu:</em><em>&nbsp;C&ocirc;ng Ty Cổ Phần Kiến Tr&uacute;c An Cường được th&agrave;nh lập v&agrave; ph&aacute;t triển theo định hướng trở th&agrave;nh : Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh chuy&ecirc;n nghiệp trong hạng mục nh&agrave; ở cao cấp, kh&aacute;ch sạn v&agrave; nh&agrave; h&agrave;ng..</em></p>\r\n<p>Kiến tr&uacute;c An Cường l&agrave; nơi quy tụ c&aacute;c kiến tr&uacute;c sư, họa sĩ t&agrave;i năng h&agrave;ng đầu Việt Nam hiện nay với nhiều năm kinh nghiệm trong nghề, nhằm &ldquo;Kiến tạo kh&ocirc;ng gian&rdquo; sống hay những sản phẩm nội thất tinh tế, sang trọng v&agrave; đẳng cấp. Hiện tại, An Cường tập trung v&agrave;o những lĩnh vực ch&iacute;nh như: X&acirc;y nh&agrave; trọn g&oacute;i, Thiết kế kiến tr&uacute;c v&agrave; nội thất, Thi c&ocirc;ng kiến tr&uacute;c v&agrave; nội thất c&ocirc;ng tr&igrave;nh, sản xuất v&agrave; thi c&ocirc;ng đồ gỗ&rdquo;.</p>\r\n<p>Phương ch&acirc;m hoạt động v&agrave; ph&aacute;t triển bền vững, gắn liền lợi &iacute;ch kinh doanh với lợi &iacute;ch x&atilde; hội c&ugrave;ng h&agrave;ng trăm c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu trải d&agrave;i từ Bắc đến Nam, An Cường tự h&agrave;o l&agrave; thương hiệu uy t&iacute;n, đối t&aacute;c tin cậy của Qu&yacute; đối t&aacute;c, Qu&yacute; kh&aacute;ch tr&ecirc;n to&agrave;n quốc.</p>\r\n<p>Với sự s&aacute;ng tạo kh&ocirc;ng ngừng : Độc đ&aacute;o trong thiết k&ecirc; &ndash; Chất lượng trong thi c&ocirc;ng&rdquo;. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i hiện thực h&oacute;a giấc mơ của gia đ&igrave;nh bạn !</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/2/410-Logo An Cuong Architecture.jpg\" alt=\"\" width=\"443\" height=\"442\" /></p>\r\n<h3><em>Tầm nh&igrave;n v&agrave; Sứ mệnh của ch&uacute;ng t&ocirc;i:</em></h3>\r\n<p>An Cường lu&ocirc;n cố gắng đ&aacute;p ứng ho&agrave;n hảo về nhu cầu thiết kế &ndash; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh của Qu&yacute; kh&aacute;ch h&agrave;ng với chất lượng dịch vụ tốt nhất. Đ&acirc;y cũng l&agrave; sứ mệnh m&agrave; An Cường lấy l&agrave;m thước đo cho sự uy t&iacute;n v&agrave; hiệu quả hoạt động.</p>\r\n<p>Cung cấp c&aacute;c sản phẩm, dịch vụ &ldquo;Độc đ&aacute;o trong thiết kế &ndash; Chất lượng trong thi c&ocirc;ng&rdquo; với mong muốn hiện thực h&oacute;a giấc mơ an cư lạc nghiệp của mỗi gia đ&igrave;nh, An Cường hướng tới mục ti&ecirc;u trở th&agrave;nh &rdquo; Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn, thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh tại H&agrave; Nội, Tp Hồ Ch&iacute; Minh v&agrave; tr&ecirc;n to&agrave;n quốc</p>\r\n<h3><em>Gi&aacute; trị cốt l&otilde;i:</em></h3>\r\n<p>Mang lại cho qu&yacute; kh&aacute;ch c&aacute;c dịch vụ, sản phẩm với chất lượng ho&agrave;n hảo. S&aacute;ng tạo kh&ocirc;ng ngừng nghỉ l&agrave; một trong những yếu tố kh&ocirc;ng thể thiếu trong mọi lĩnh vực, đặc biệt trong lĩnh vực thiết kế kiến tr&uacute;c &ndash; nội thất. V&igrave; vậy bằng những s&aacute;ng tạo của m&igrave;nh, c&aacute;c kiến tr&uacute;c sư t&agrave;i năng của An Cường đem đến cho kh&aacute;ch h&agrave;ng những mẫu thiết kế hiện đại, sang trọng hay cổ điển cuốn h&uacute;t hợp gu theo c&aacute;c ri&ecirc;ng cho mỗi gia đ&igrave;nh.</p>\r\n<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn, tạo điều kiện thu nhập v&agrave; ph&aacute;t triển năng lực c&aacute; nh&acirc;n.</p>\r\n<p>&nbsp;</p>\r\n<h2><em>C&Ocirc;NG TY CỔ PHẦN KIẾN TR&Uacute;C AN CƯỜNG</em></h2>\r\n<p><em>Trụ sở ch&iacute;nh: Số 58 Ph&aacute;o Đ&agrave;i L&aacute;ng, P.L&aacute;ng Thượng, Q.Đống Đa, Tp H&agrave; Nội</em></p>\r\n<p><em>Văn Ph&ograve;ng GD: Tầng 6, 303 Vũ T&ocirc;ng Phan, P.Khương Đ&igrave;nh, Q.Thanh Xu&acirc;n, Tp H&agrave; Nội</em></p>\r\n<p><em>Email: Tuvan.kientrucancuong@gmail.com</em></p>\r\n<p><em>Website: kientrucancuong.vn / Website: kientrucancuong.com</em></p>\r\n<p><em>Hotline: 0906 213 688 / 0908 988 869</em></p>', 1, '2020-08-22 00:29:58', '2020-08-22 00:29:16', '2020-08-22 00:29:58'),
(4, '<p><em>Lời giới thiệu:</em><em>&nbsp;C&ocirc;ng Ty Cổ Phần Kiến Tr&uacute;c An Cường được th&agrave;nh lập v&agrave; ph&aacute;t triển theo định hướng trở th&agrave;nh : Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh chuy&ecirc;n nghiệp trong hạng mục nh&agrave; ở cao cấp, kh&aacute;ch sạn v&agrave; nh&agrave; h&agrave;ng..</em></p>\r\n<p>Kiến tr&uacute;c An Cường l&agrave; nơi quy tụ c&aacute;c kiến tr&uacute;c sư, họa sĩ t&agrave;i năng h&agrave;ng đầu Việt Nam hiện nay với nhiều năm kinh nghiệm trong nghề, nhằm &ldquo;Kiến tạo kh&ocirc;ng gian&rdquo; sống hay những sản phẩm nội thất tinh tế, sang trọng v&agrave; đẳng cấp. Hiện tại, An Cường tập trung v&agrave;o những lĩnh vực ch&iacute;nh như: X&acirc;y nh&agrave; trọn g&oacute;i, Thiết kế kiến tr&uacute;c v&agrave; nội thất, Thi c&ocirc;ng kiến tr&uacute;c v&agrave; nội thất c&ocirc;ng tr&igrave;nh, sản xuất v&agrave; thi c&ocirc;ng đồ gỗ&rdquo;.</p>\r\n<p>Phương ch&acirc;m hoạt động v&agrave; ph&aacute;t triển bền vững, gắn liền lợi &iacute;ch kinh doanh với lợi &iacute;ch x&atilde; hội c&ugrave;ng h&agrave;ng trăm c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu trải d&agrave;i từ Bắc đến Nam, An Cường tự h&agrave;o l&agrave; thương hiệu uy t&iacute;n, đối t&aacute;c tin cậy của Qu&yacute; đối t&aacute;c, Qu&yacute; kh&aacute;ch tr&ecirc;n to&agrave;n quốc.</p>\r\n<p>Với sự s&aacute;ng tạo kh&ocirc;ng ngừng : Độc đ&aacute;o trong thiết k&ecirc; &ndash; Chất lượng trong thi c&ocirc;ng&rdquo;. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i hiện thực h&oacute;a giấc mơ của gia đ&igrave;nh bạn !</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/2/410-Logo An Cuong Architecture.jpg\" alt=\"\" width=\"443\" height=\"442\" /></p>\r\n<h3><em>Tầm nh&igrave;n v&agrave; Sứ mệnh của ch&uacute;ng t&ocirc;i:</em></h3>\r\n<p>An Cường lu&ocirc;n cố gắng đ&aacute;p ứng ho&agrave;n hảo về nhu cầu thiết kế &ndash; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh của Qu&yacute; kh&aacute;ch h&agrave;ng với chất lượng dịch vụ tốt nhất. Đ&acirc;y cũng l&agrave; sứ mệnh m&agrave; An Cường lấy l&agrave;m thước đo cho sự uy t&iacute;n v&agrave; hiệu quả hoạt động.</p>\r\n<p>Cung cấp c&aacute;c sản phẩm, dịch vụ &ldquo;Độc đ&aacute;o trong thiết kế &ndash; Chất lượng trong thi c&ocirc;ng&rdquo; với mong muốn hiện thực h&oacute;a giấc mơ an cư lạc nghiệp của mỗi gia đ&igrave;nh, An Cường hướng tới mục ti&ecirc;u trở th&agrave;nh &rdquo; Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn, thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh tại H&agrave; Nội, Tp Hồ Ch&iacute; Minh v&agrave; tr&ecirc;n to&agrave;n quốc</p>\r\n<h3><em>Gi&aacute; trị cốt l&otilde;i:</em></h3>\r\n<p>Mang lại cho qu&yacute; kh&aacute;ch c&aacute;c dịch vụ, sản phẩm với chất lượng ho&agrave;n hảo. S&aacute;ng tạo kh&ocirc;ng ngừng nghỉ l&agrave; một trong những yếu tố kh&ocirc;ng thể thiếu trong mọi lĩnh vực, đặc biệt trong lĩnh vực thiết kế kiến tr&uacute;c &ndash; nội thất. V&igrave; vậy bằng những s&aacute;ng tạo của m&igrave;nh, c&aacute;c kiến tr&uacute;c sư t&agrave;i năng của An Cường đem đến cho kh&aacute;ch h&agrave;ng những mẫu thiết kế hiện đại, sang trọng hay cổ điển cuốn h&uacute;t hợp gu theo c&aacute;c ri&ecirc;ng cho mỗi gia đ&igrave;nh.</p>\r\n<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn, tạo điều kiện thu nhập v&agrave; ph&aacute;t triển năng lực c&aacute; nh&acirc;n.</p>\r\n<p>&nbsp;</p>\r\n<h2><em>C&Ocirc;NG TY CỔ PHẦN KIẾN TR&Uacute;C AN CƯỜNG</em></h2>\r\n<p><em>Trụ sở ch&iacute;nh: Số 58 Ph&aacute;o Đ&agrave;i L&aacute;ng, P.L&aacute;ng Thượng, Q.Đống Đa, Tp H&agrave; Nội</em></p>\r\n<p><em>Văn Ph&ograve;ng GD: Tầng 6, 303 Vũ T&ocirc;ng Phan, P.Khương Đ&igrave;nh, Q.Thanh Xu&acirc;n, Tp H&agrave; Nội</em></p>\r\n<p><em>Email: Tuvan.kientrucancuong@gmail.com</em></p>\r\n<p><em>Website: kientrucancuong.vn / Website: kientrucancuong.com</em></p>\r\n<p><em>Hotline: 0906 213 688 / 0908 988 869</em></p>', 1, '2020-08-22 00:29:59', '2020-08-22 00:29:38', '2020-08-22 00:29:59'),
(5, '<p>asdasdad</p>', NULL, '2020-08-22 00:34:56', '2020-08-22 00:30:58', '2020-08-22 00:34:56'),
(6, '<h3><strong>Lời giới thiệu:&nbsp;C&ocirc;ng Ty Cổ Phần Kiến Tr&uacute;c An Cường được th&agrave;nh lập v&agrave; ph&aacute;t triển theo định hướng trở th&agrave;nh : Thương hiệu uy t&iacute;n nhất Việt Nam&rdquo; trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh chuy&ecirc;n nghiệp trong hạng mục nh&agrave; ở cao cấp, kh&aacute;ch sạn v&agrave; nh&agrave; h&agrave;ng..</strong></h3>\r\n<p>Kiến tr&uacute;c An Cường l&agrave; nơi quy tụ c&aacute;c kiến tr&uacute;c sư, họa sĩ t&agrave;i năng h&agrave;ng đầu Việt Nam hiện nay với nhiều năm kinh nghiệm trong nghề, nhằm &ldquo;Kiến tạo kh&ocirc;ng gian&rdquo; sống hay những sản phẩm nội thất tinh tế, sang trọng v&agrave; đẳng cấp. Hiện tại, An Cường tập trung v&agrave;o những lĩnh vực ch&iacute;nh như: X&acirc;y nh&agrave; trọn g&oacute;i, Thiết kế kiến tr&uacute;c v&agrave; nội thất, Thi c&ocirc;ng kiến tr&uacute;c v&agrave; nội thất c&ocirc;ng tr&igrave;nh, sản xuất v&agrave; thi c&ocirc;ng đồ gỗ&rdquo;.</p>\r\n<p>Phương ch&acirc;m hoạt động v&agrave; ph&aacute;t triển bền vững, gắn liền lợi &iacute;ch kinh doanh với lợi &iacute;ch x&atilde; hội c&ugrave;ng h&agrave;ng trăm c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu trải d&agrave;i từ Bắc đến Nam, An Cường tự h&agrave;o l&agrave; thương hiệu uy t&iacute;n, đối t&aacute;c tin cậy của Qu&yacute; đối t&aacute;c, Qu&yacute; kh&aacute;ch tr&ecirc;n to&agrave;n quốc.</p>\r\n<p>Với sự s&aacute;ng tạo kh&ocirc;ng ngừng : Độc đ&aacute;o trong thiết k&ecirc; &ndash; Chất lượng trong thi c&ocirc;ng&rdquo;. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i hiện thực h&oacute;a giấc mơ của gia đ&igrave;nh bạn !</p>\r\n<p><img src=\"/storage/photos/2/thiet-ke-noi-that-chung-cu-4.jpg\" alt=\"\" /></p>', NULL, NULL, '2020-08-29 01:04:34', '2020-09-17 09:54:44'),
(7, '<h4>TH&Ocirc;NG TIN LI&Ecirc;N HỆ</h4>\r\n<p><em>C&Ocirc;NG TY CP KIẾN TR&Uacute;C AN CƯỜNG</em></p>\r\n<p><em>Tầng 6, 303 Vũ T&ocirc;ng Phan, P.Khương Đ&igrave;nh, Q.Thanh Xu&acirc;n, Tp.H&agrave; Nội</em></p>\r\n<p><em>Website:kientrucancuong.vn</em></p>\r\n<p><em>Email: Tuvan.kientrucancuong@gmail.com</em></p>\r\n<p><em>Hotine: 0906 213 688 /0908 988 869</em></p>', 1, NULL, '2020-08-29 01:26:58', '2020-08-29 01:26:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_partners`
--

CREATE TABLE `admin_partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_partners`
--

INSERT INTO `admin_partners` (`id`, `image_path`, `image_name`, `deleted_at`, `created_at`, `updated_at`, `features`) VALUES
(1, '/storage/partners//pbc9sEFqCbaUe21TKdI8.png', 'dt2.png', '2020-08-21 23:33:40', '2020-08-21 00:14:53', '2020-08-21 23:33:40', NULL),
(2, '/storage/partners//kEiHBI6fR3GS8H4VgZET.png', 'dt2.png', NULL, '2020-08-21 00:15:07', '2020-08-21 00:15:07', NULL),
(3, '/storage/partners/2/FkmPcfOxQTgPSZoYXSuZ.jpg', 'service-5.jpg', NULL, '2020-09-16 01:01:19', '2020-09-16 01:01:19', NULL),
(4, '/storage/partners/2/zTwBt2A6RN7bKDZMGxIp.jpg', 'service-3.jpg', NULL, '2020-09-17 01:26:05', '2020-09-17 02:22:22', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_post_categories`
--

CREATE TABLE `admin_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_post_categories`
--

INSERT INTO `admin_post_categories` (`id`, `name`, `slug`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dịch vụ', 'dich-vu', 0, '2020-09-01 17:36:11', '2020-09-01 03:31:48', '2020-09-01 17:36:11'),
(2, 'bui quang linh', 'bui-quang-linh', 0, '2020-09-01 17:36:13', '2020-09-01 03:33:10', '2020-09-01 17:36:13'),
(3, 'kiến thức nhà đẹp', 'kien-thuc-nha-dep', 0, NULL, '2020-09-01 17:36:22', '2020-09-01 17:36:22'),
(4, 'Xây nhà trọn gói', 'xay-nha-tron-goi', 5, NULL, '2020-09-01 17:37:06', '2020-09-01 17:37:25'),
(5, 'Dịch vụ', 'dich-vu', 0, NULL, '2020-09-01 17:37:19', '2020-09-01 17:37:19'),
(6, 'Thi công nội thất trung cư', 'thi-cong-noi-that-trung-cu', 5, NULL, '2020-09-01 17:37:40', '2020-09-01 17:37:40'),
(7, 'Kiến thức biệt thự', 'kien-thuc-biet-thu', 3, NULL, '2020-09-16 01:16:51', '2020-09-16 01:16:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_products`
--

CREATE TABLE `admin_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `investor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_ct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `related_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_products`
--

INSERT INTO `admin_products` (`id`, `title`, `content`, `investor`, `slug`, `image_path`, `image_name`, `code_ct`, `deleted_at`, `created_at`, `updated_at`, `user_id`, `category_id`, `related_product`) VALUES
(28, 'Thiết kế nhà', '<p>asdasdasd</p>', ': Anh Hoàng Văn Phúc', 'thiet-ke-nha', '/storage/products/2/ioV5q6FMyxmSkxAuX1kX.jpg', 'banner-3.jpg', 'sdad', '2020-09-16 02:35:58', '2020-08-22 23:42:43', '2020-09-16 02:35:58', 2, 14, NULL),
(29, 'Thiết kế nhà ống diện tích 100m2', '<p>asdasdasd</p>', ': Anh Hoàng Văn Phúc', 'thiet-ke-nha-ong-dien-tich-100m2', '/storage/products/2/98pLLXQ3qpP5mVK3fmul.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', 'sdad', '2020-09-16 02:36:03', '2020-08-22 23:43:16', '2020-09-16 02:36:03', 2, 14, '1'),
(30, 'complete interface login and function logic,please check for me', '<p>asdasd</p>', 'asdasd', 'complete-interface-login-and-function-logicplease-check-for-me', '/storage/products/2/pjK6U29uD1lY9Aewzt7k.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '312', '2020-09-16 02:34:38', '2020-08-27 22:19:31', '2020-09-16 02:34:38', 2, 16, '1'),
(31, 'Thiết kế nhà ống diện tích 100m2', '<p>asdasdasd</p>', ': Anh Hoàng Văn Phúc', 'thiet-ke-nha-ong-dien-tich-100m2', '/storage/products/2/jOQ2yG9k4WsLRSr3Yjqp.jpg', 'banner-2.jpg', 'sdad', NULL, '2020-08-30 03:49:13', '2020-08-30 03:51:27', 2, 14, NULL),
(32, 'Thiết kế nhà ống diện tích 100m2', '<p>asdasdasd</p>', ': Anh Hoàng Văn Phúc', 'thiet-ke-nha-ong-dien-tich-100m2', NULL, NULL, 'sdad', '2020-08-30 03:50:48', '2020-08-30 03:50:29', '2020-08-30 03:50:48', 2, 14, NULL),
(33, 'Thiết kế nhà 1', '<p>sản phẩm 1</p>\r\n<p><img src=\"/storage/photos/2/quy-trinh-thiet-ke-thi-cong-1.jpg\" alt=\"\" width=\"752\" height=\"251\" /></p>\r\n<p>&aacute;đ&aacute;</p>', 'Nguyễn văn chủ', 'thiet-ke-nha-1', '/storage/products/2/q6LnYTHSe9ap5FSUZos1.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '1234', NULL, '2020-09-16 01:05:24', '2020-09-16 01:05:24', 2, 15, '1'),
(34, 'sản phẩm của nội thất trung cư', '<p style=\"text-align: center;\"><em><strong>gẮN LINK chữ</strong></em> <a href=\"https://www.youtube.com/watch?v=Em-QDIh7g08&amp;list=PL3V6a6RU5ogEAKIuGjfPEJ77FGmEAQXTT&amp;index=83&amp;ab_channel=L%E1%BA%ADptr%C3%ACnhvi%C3%AAnFullstack\" target=\"_blank\" rel=\"noopener\">thiết kế nội thất</a></p>\r\n<p>&nbsp;</p>', 'Bùi quang linh', 'san-pham-cua-noi-that-trung-cu', '/storage/products/2/DU5e3UXGvDwc1PIRxAbv.jpg', 'service-1.jpg', '34234', NULL, '2020-09-16 01:10:44', '2020-09-16 01:10:44', 2, 22, NULL),
(35, 'Sản phẩm test', '<p>test</p>', 'Bùi quang linh', 'san-pham-test', '/storage/products/2/9y1ZSh4YS2eip411MceE.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '1234', NULL, '2020-09-16 01:43:01', '2020-09-16 01:43:01', 2, 14, '1'),
(36, 'test 3', '<p>tes 3</p>', 'ads', 'test-3', '/storage/products/2/P0k9mv0DJcYLSGOFPW1u.jpg', 'service-1.jpg', 'sd', NULL, '2020-09-16 01:45:51', '2020-09-16 01:45:51', 2, 14, NULL),
(37, 'san phẩm thiết kế cổ điển', '<p>&aacute;d</p>', 'bùi quang linh', 'san-pham-thiet-ke-co-dien', '/storage/products/2/4Ewp3ndlboGeHkFGrDen.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '312', NULL, '2020-09-16 02:36:42', '2020-09-18 06:27:23', 2, 16, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_product_categories`
--

CREATE TABLE `admin_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_product_categories`
--

INSERT INTO `admin_product_categories` (`id`, `name`, `slug`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 'Thiết kế nội thất', 'thiet-ke-noi-that', 0, NULL, '2020-08-22 22:49:45', '2020-09-16 01:07:03'),
(15, 'Nội thất được săn đón', 'noi-that-duoc-san-don', 14, NULL, '2020-08-22 22:49:52', '2020-08-22 22:49:52'),
(16, 'Thiết kế cổ điển', 'thiet-ke-co-dien', 0, NULL, '2020-08-27 20:54:05', '2020-08-27 20:54:05'),
(17, 'Biệt thự', 'biet-thu', 0, NULL, '2020-08-29 19:05:59', '2020-08-29 19:05:59'),
(18, 'Biệt thự 1 tầng', 'biet-thu-1-tang', 17, NULL, '2020-08-29 19:13:16', '2020-08-29 19:13:16'),
(19, 'Biệt thự 2 tầng', 'biet-thu-2-tang', 17, NULL, '2020-08-29 19:13:32', '2020-08-29 19:13:32'),
(20, 'Biệt thự 3 tầng', 'biet-thu-3-tang', 18, '2020-08-29 19:20:02', '2020-08-29 19:15:50', '2020-08-29 19:20:02'),
(21, 'dịch vụ', 'dich-vu', 0, NULL, '2020-09-01 03:31:16', '2020-09-01 03:31:16'),
(22, 'Nội thất chung cư', 'noi-that-chung-cu', 14, NULL, '2020-09-16 01:08:25', '2020-09-16 01:08:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_services`
--

CREATE TABLE `admin_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_choose` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_services`
--

INSERT INTO `admin_services` (`id`, `content`, `image_path`, `image_name`, `type_choose`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Đội ngũ KTS kinh nghiệm giàu ki', '/storage/services//c9tQFQ3stBZ5DzetTzlE.png', 'icon-1.png', 1, '2020-08-21 00:08:55', '2020-08-20 22:10:24', '2020-08-21 00:08:55'),
(2, 'Với hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services//RHutLLjkONx1bKpVV3BH.png', 'icon-1.png', NULL, '2020-08-27 20:39:08', '2020-08-20 22:22:52', '2020-08-27 20:39:08'),
(3, 'Tôi rất hài lòng với thiết kế căn biệt thự của An Cường. Thiết kế đẹp, thi công nhanh, đảm bảo chất lượng và thái độ làm việc của An Cường khiến tôi rất thỏa mãn.', '/storage/services//VFtoq8xTiythjdxFmqDV.png', 'icon-1.png', NULL, '2020-08-27 20:39:10', '2020-08-21 00:35:30', '2020-08-27 20:39:10'),
(4, 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', '/storage/services/1/i3YKcMwgAuQzXQZjVxCf.png', 'Screenshot_1.png', 1, '2020-08-21 03:35:20', '2020-08-21 03:34:08', '2020-08-21 03:35:20'),
(5, 'Những người có nhu cầu về thiết kế thi công nội thất các căn hộ chung cư.', '/storage/services/2/Hxrv85s2horUUvsxXMXx.png', 'icon-1.png', NULL, '2020-08-30 06:23:50', '2020-08-27 20:39:53', '2020-08-30 06:23:50'),
(6, 'Khách hàng có một mảnh đất hoặc một căn biệt thự cần thiết kế kiến trúc, xây dựng và hoàn thiện.', '/storage/services/2/OPscY18fuBtuKtg31J0W.png', 'icon-1.png', NULL, '2020-08-30 06:23:51', '2020-08-27 20:43:24', '2020-08-30 06:23:51'),
(7, 'Chủ nhà hàng, showroom, quán cafe muốn tạo cho mình một không gian kinh doanh khác biệt và độc đáo.', '/storage/services/2/vomx4qr3ZhZQnWRS32rn.png', 'icon-1.png', NULL, '2020-08-30 06:23:53', '2020-08-27 20:43:45', '2020-08-30 06:23:53'),
(8, 'Các khách hàng muốn đặt hàng các sản phẩm nội thất thông minh cho tổ ấm của mình.', '/storage/services/2/bPyo6Uv4t55W94PoHAV7.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', NULL, NULL, '2020-08-27 20:44:03', '2020-08-27 20:44:03'),
(9, 'Đội ngũ KTS kinh nghiệm giàu kinh nghiệm trong tối ưu diện tích, thiết kế không gian từ các căn hộ chung cư đến biệt thự, các nhà hàng, showroom.', '/storage/services/2/Y9iahamOjWhjcm1eu5WI.png', 'icon-1.png', 1, '2020-08-30 06:23:59', '2020-08-27 20:44:46', '2020-08-30 06:23:59'),
(10, 'Với hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services/2/2z5PlcBQe9qituapKBCg.png', 'icon-1.png', NULL, '2020-08-30 06:24:02', '2020-08-27 20:46:57', '2020-08-30 06:24:02'),
(11, 'Với hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services/2/UIQUM7k2lIZm4oBZTmbw.png', 'icon-1.png', 1, '2020-08-30 06:24:06', '2020-08-27 20:47:12', '2020-08-30 06:24:06'),
(12, 'Với hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services/2/2RIxC9hn7ALL4mA7UO2W.png', 'icon-1.png', 1, '2020-08-30 06:24:08', '2020-08-27 20:47:43', '2020-08-30 06:24:08'),
(13, 'Với hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services/2/Nvem2HC1eZBX9edc7obF.png', 'icon-1.png', 1, '2020-08-30 06:24:09', '2020-08-27 20:47:57', '2020-08-30 06:24:09'),
(14, 'Với hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services/2/KZC9RgNaPUTDpmoe3YcZ.png', 'icon-1.png', 1, '2020-08-30 06:24:11', '2020-08-27 20:48:35', '2020-08-30 06:24:11'),
(15, 'saVới hơn 10 năm kinh nghiệm quản lý chất lượng tại các dự án, chúng tôi luôn áp dụng những công nghệ mới nhất, tiêu chuẩn kỹ thuật cao cho các công trình.', '/storage/services/2/qRgRmw0aGpkbYCaS80K4.png', 'icon-1.png', NULL, '2020-08-30 06:24:04', '2020-08-27 20:48:47', '2020-08-30 06:24:04'),
(16, 'Các khách hàng muốn đặt hàng các sản phẩm nội thất thông minh cho tổ ấm của mình.', '/storage/services/2/GEZK7YcXANHnkmurVpFA.jpg', 'Biệt-thự-nhà-vườn-1-tầng-hiện-đại-đẹp-3.jpg', 1, NULL, '2020-08-30 06:24:31', '2020-08-30 06:24:31'),
(17, 'Các khách hàng muốn đặt hàng các sản phẩm nội thất thông minh cho tổ ấm của mình.', '/storage/services/2/gExBGXEezIeXYolBxptd.jpg', 'service-1.jpg', NULL, NULL, '2020-09-16 00:58:53', '2020-09-16 00:58:53'),
(18, 'Các khách hàng muốn đặt hàng các sản phẩm nội thất thông minh cho tổ ấm của mình.', '/storage/services/2/ytNRFFzGuDBJeTdQMiE0.jpg', 'service-5.jpg', 1, NULL, '2020-09-16 00:59:24', '2020-09-16 00:59:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `config_key`, `config_value`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'thong tin lien he footer', 'Tầng 6, 303 Vũ Tông Phan, P. Khương Đình, Q. Thanh Xuân, TP. Hà Nội', 'Textarea', '2020-08-30 05:17:44', '2020-08-30 05:17:44', NULL),
(6, 'button-xem-them-slider', '#', 'Text', '2020-08-30 05:27:12', '2020-08-30 05:27:12', NULL),
(7, 'link-fb', 'https://www.facebook.com/', 'Text', '2020-08-30 05:29:50', '2020-08-30 05:29:50', NULL),
(8, 'copy-right', 'Copyright © 2020 websitekienchu. All rights reserved', 'Text', '2020-08-30 05:30:47', '2020-08-30 05:31:01', NULL),
(9, 'dia-chi', 'CT4B Bắc Linh Đàm,Hoàng Mai,Hà Nội', 'Text', '2020-08-30 05:33:18', '2020-09-16 01:23:59', NULL),
(10, 'fanpage', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FKientrucAncuong%2F&tabs=timeline&width=240&height=210&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=168015681053039', 'Text', '2020-08-30 05:34:37', '2020-08-30 05:34:37', NULL),
(11, 'name-company', 'CÔNG TY CP KIẾN TRÚC BIG I HOME', 'Text', '2020-08-30 05:36:01', '2020-09-16 01:22:55', NULL),
(12, 'map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.9887694354293!2d105.81232511429717!3d20.993087294372497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac922c867531%3A0x9bdfdbd6088a56a3!2zMzAzIFbFqSBUw7RuZyBQaGFuLCBLaMawxqFuZyDEkMOsbmgsIFRoYW5oIFh1w6JuLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1574315928638!5m2!1svi!2s', 'Textarea', '2020-08-30 05:38:04', '2020-08-30 05:38:04', NULL),
(13, 'text-gioi-thieu', 'Nhà ống với diện tích nhỏ hẹp xuất hiện ngày càng nhiều, vì vậy việc bố trí không gian nội thất cho nhà ống diện tích nhỏ hẹp được gia chủ rất quan tâm. Với nhà ống phong cách hiện đại luôn được ưa thích bởi những người trẻ tuổi, ưa thích sụ đơn giản, bằng phẳng và Kiến Trúc An Cường là một trong những đơn vị thiết kế, thi công nội thất và xây dựng nhà ống trọn gói uy tín hàng đầu tại Hà Nội, Đà Nẵng, Tp.HCM xin giới thiệu với quỵ vị những công trình thiết kế mà đơn vị chúng tôi đã thực hiện:', 'Text', '2020-08-30 05:53:41', '2020-08-30 05:53:41', NULL),
(14, 'text-san-pham', 'Nhà ống với diện tích nhỏ hẹp xuất hiện ngày càng nhiều, vì vậy việc bố trí không gian nội thất cho nhà ống diện tích nhỏ hẹp được gia chủ rất quan tâm. Với nhà ống phong cách hiện đại luôn được ưa thích bởi những người trẻ tuổi, ưa thích sụ đơn giản, bằng phẳng và Kiến Trúc An Cường là một trong những đơn vị thiết kế, thi công nội thất và xây dựng nhà ống trọn gói uy tín hàng đầu tại Hà Nội, Đà Nẵng, Tp.HCM xin giới thiệu với quỵ vị những công trình thiết kế mà đơn vị chúng tôi đã thực hiện:', 'Text', '2020-08-30 05:54:07', '2020-09-16 01:21:19', '2020-09-16 01:21:19'),
(15, 'banner-quy-trinh', 'google.com', 'Text', '2020-09-02 22:51:50', '2020-09-16 01:21:06', '2020-09-16 01:21:06'),
(16, 'fanpage', 'https://www.facebook.com/oncodeacademy', 'Text', '2020-09-06 20:57:06', '2020-09-16 01:21:11', '2020-09-16 01:21:11'),
(18, 'link-banner', 'https://kientrucancuong.vn', 'Text', '2020-09-16 01:32:50', '2020-09-16 01:32:50', NULL),
(19, 'gioi-thieu-ve-chung-toi-footer', 'http://bigihome.vn/', 'Text', '2020-09-16 01:37:22', '2020-09-16 01:37:22', NULL),
(21, 'link-zalo', 'https://chat.zalo.me/', 'Text', '2020-09-16 20:47:16', '2020-09-16 20:47:41', NULL),
(23, 'phone', '01689689988', 'Text', '2020-09-16 21:38:18', '2020-09-16 21:38:18', NULL),
(24, 'email', 'buiquanglinh410@gmail.com', 'Text', '2020-09-16 21:38:35', '2020-09-16 21:38:35', NULL),
(25, 'website', 'http://bigihome.vn/', 'Text', '2020-09-16 21:42:48', '2020-09-16 21:42:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_sliders`
--

CREATE TABLE `admin_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_sliders`
--

INSERT INTO `admin_sliders` (`id`, `title`, `description`, `image_path`, `image_name`, `deleted_at`, `created_at`, `updated_at`, `features`) VALUES
(1, 'slider1', 'asdasdasd6rrt', '/storage/slider//jxUPUwWS5bPYx6SvuhhM.png', 'Screenshot_1.png', '2020-08-20 05:48:59', '2020-08-20 05:17:05', '2020-08-20 05:48:59', ''),
(2, 'slider2123123', 'Bootcamp coding đã và đang giúp hàng ngàn các bạn trẻ thành công, trưởng thành hơn trong sự nghiệp lập trình của bản thân mình', '/storage/slider//qv0LNnHnhDi5Z0cmdpx2.png', 'Screenshot_1.png', '2020-08-29 00:21:04', '2020-08-20 05:19:31', '2020-08-29 00:21:04', ''),
(3, 'slider 1', 'Bootcamp coding', '/storage/slider/2/8G22Hiv8T30xYbBHapDg.jpg', 'banner-1.jpg', NULL, '2020-08-29 00:21:35', '2020-09-16 01:30:34', NULL),
(4, 'complete interface login and function logic,please check for me', 'dasdas', '/storage/slider/2/2fiWnaUQKBmbt2NXKiAY.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg', '2020-09-06 00:57:40', '2020-09-06 00:47:07', '2020-09-06 00:57:40', NULL),
(5, 'Bootcamp coding có tác dụng gì', NULL, '/storage/slider/2/CfmLCYrIFikmwtOzJDab.jpg', 'quy-trinh-thiet-ke-thi-cong-1.jpg', '2020-09-16 00:52:24', '2020-09-06 01:02:57', '2020-09-16 00:52:24', '1'),
(6, 'slider2', 'Đồng hành cùng bạn trong suốt quá trình phát triển kỹ noàn', '/storage/slider/2/jZG8GGarTvF3WjYRVGpc.jpg', 'quy-trinh-thiet-ke-thi-cong-1.jpg', '2020-09-21 01:29:20', '2020-09-16 00:51:47', '2020-09-21 01:29:20', NULL),
(7, 'complete interface login and function logic,please check for me', 'dasdas', '/storage/slider/2/pOPgHkBo3oBXPoat4FdU.jpg', 'service-1.jpg', '2020-09-16 00:56:24', '2020-09-16 00:52:52', '2020-09-16 00:56:24', 'on'),
(8, 'complete interface login and function logic,please check for me', 'dasdas', '/storage/slider/2/SiKfVeAh4AsdTSs12aeC.jpg', 'service-1.jpg', '2020-09-17 10:01:45', '2020-09-16 00:56:34', '2020-09-17 10:01:45', '1'),
(9, 'rter', 'erwer', '/storage/slider/2/xUlImarMvl01EBD7u5pq.jpg', 'service-5.jpg', NULL, '2020-09-17 10:23:59', '2020-09-17 10:23:59', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(3, 'bui quang linh', 'buiquanglinh410@gmail.com', '0904506621', NULL, '2020-08-29 01:50:51', '2020-08-29 01:50:51'),
(4, 'qweqw', 'qweqwe', '0904506621', NULL, '2020-08-29 01:51:58', '2020-08-29 01:51:58'),
(5, 'bui quang linh', 'buiquanglinh4210@gmail.com', '0904506621', 'aSASDAS', '2020-08-29 02:02:45', '2020-08-29 02:02:45'),
(10, 'Nội thất', 'linhbq683@wru.vn', '09045066231', 'asdasd', '2020-08-30 06:09:18', '2020-08-30 06:09:18'),
(11, 'bui quang linh345', 'buiquanglinh4120@gmail.com', '090450662331', 'áđá', '2020-08-30 06:14:38', '2020-08-30 06:14:38'),
(12, 'asd', 'buiquanglinh3410@gmail.com', '090450633621', 'df', '2020-08-30 06:14:58', '2020-08-30 06:14:58'),
(13, 'nguyên đức thắng', 'buiquanglinh332410@gmail.com', '09045036621', 'dsda', '2020-08-30 06:16:07', '2020-08-30 06:16:07'),
(14, 'bui quang linh2342', 'buiquanglinh334410@gmail.com', '09045063621', 'áđá', '2020-08-30 06:35:26', '2020-08-30 06:35:26'),
(15, 'áđá', 'buiquanglinh4310@gmail.com', '01789789988', 'áđá', '2020-08-30 06:36:04', '2020-08-30 06:36:04'),
(16, 'bui quanqưeqưe linh', 'buiquanglin32h410@gmail.com', '090450662123', '234', '2020-08-30 06:36:36', '2020-08-30 06:36:36'),
(17, 'bui quang linh', 'buiquanglinh4130@gmail.com', '0904506621', 'sad', '2020-09-01 02:58:32', '2020-09-01 02:58:32'),
(20, NULL, NULL, '0977653117', 'sd', '2020-09-11 07:25:56', '2020-09-11 07:25:56'),
(21, NULL, NULL, '0977653117', 'sd', '2020-09-11 07:26:32', '2020-09-11 07:26:32'),
(22, NULL, NULL, '0977653117', 'sd', '2020-09-11 07:26:40', '2020-09-11 07:26:40'),
(23, NULL, NULL, '0977653117', 'sd', '2020-09-11 07:26:50', '2020-09-11 07:26:50'),
(24, NULL, NULL, '0977653117', 'sd', '2020-09-11 07:29:20', '2020-09-11 07:29:20'),
(25, NULL, NULL, '0986652283', 'Tôi muốn đăng ký', '2020-09-16 01:26:54', '2020-09-16 01:26:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2020_08_20_073700_create_admin_menus_table', 1),
(30, '2020_08_20_081633_create_admin_sliders_table', 1),
(31, '2020_08_20_083715_create_admin_services_table', 1),
(32, '2020_08_20_084002_create_admin_products_table', 1),
(33, '2020_08_20_084329_create_admin_product_categories_table', 1),
(34, '2020_08_20_084414_create_admin_clients_table', 1),
(35, '2020_08_20_084521_create_admin_partners_table', 1),
(36, '2020_08_20_084601_create_admin_pages_table', 1),
(37, '2020_08_20_090354_create_admin_news_table', 1),
(38, '2020_08_20_091204_create_product_cates_table', 1),
(39, '2020_08_21_085031_add_features_to_news_table', 2),
(40, '2020_08_21_095041_add_images_to_users_table', 3),
(41, '2020_08_21_101854_add_slug_to_news_table', 4),
(42, '2020_08_22_081740_add_category_to_products_table', 5),
(43, '2020_08_22_100947_add_user_id_to_products_table', 6),
(44, '2020_08_22_102830_remove_cate_id_to_products_table', 7),
(45, '2020_08_23_064132_add_cate_id_to_products_table', 8),
(46, '2020_08_29_030018_create_customers_table', 9),
(47, '2020_08_30_103956_add_related_product_to_products_table', 10),
(48, '2020_08_30_114921_create_admin_settings_table', 11),
(49, '2020_08_30_120003_add_deleted_at_to_settings_table', 12),
(50, '2020_09_01_100720_create_admin_post_categories_table', 13),
(51, '2020_09_01_101250_add_post_id_to_admin_post_cate_table', 13),
(52, '2020_09_01_101400_remove_post_id_to_admin_post_cate_table', 14),
(53, '2020_09_01_101455_add_post_id_to_admin_news_table', 14),
(54, '2020_09_01_101620_add_user_id_to_admin_news_table', 15),
(55, '2020_09_06_073539_add_features_to_admin_sliders_table', 16),
(56, '2020_09_17_081419_add_features_to_admin_partner_table', 17);

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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `image_path`, `image_name`) VALUES
(2, 'Linh Bùi', 'buiquanglinh410@gmail.com', NULL, '$2y$10$gnSrKUfStWxN6g49dDmTXOyKxEXa5L9ZGAD4zyNvN.SgRdsJ2DNSq', 0, NULL, NULL, '2020-08-21 21:36:06', '2020-09-11 07:30:09', '/storage/users/1/TZxnRlut8kFn9igb0tlm.jpg', 'thiet-ke-noi-that-chung-cu-4.jpg'),
(3, 'bui quang linh 123', 'linhbq68@wru.vn', NULL, '$2y$10$PHdTQgc0H.HsZCoj13kjEOGa3QtdGBdv92cyv8xJDKiklXwT9bPhO', 0, NULL, NULL, '2020-08-21 23:41:46', '2020-08-21 23:42:15', '/storage/users/2/00Xt82RPbvFCu19pkcO9.png', 'icon-1.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_clients`
--
ALTER TABLE `admin_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_news`
--
ALTER TABLE `admin_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_pages`
--
ALTER TABLE `admin_pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_partners`
--
ALTER TABLE `admin_partners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_post_categories`
--
ALTER TABLE `admin_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_products`
--
ALTER TABLE `admin_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_product_categories`
--
ALTER TABLE `admin_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_services`
--
ALTER TABLE `admin_services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_sliders`
--
ALTER TABLE `admin_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_clients`
--
ALTER TABLE `admin_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `admin_news`
--
ALTER TABLE `admin_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `admin_pages`
--
ALTER TABLE `admin_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `admin_partners`
--
ALTER TABLE `admin_partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `admin_post_categories`
--
ALTER TABLE `admin_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `admin_products`
--
ALTER TABLE `admin_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `admin_product_categories`
--
ALTER TABLE `admin_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `admin_services`
--
ALTER TABLE `admin_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `admin_sliders`
--
ALTER TABLE `admin_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
