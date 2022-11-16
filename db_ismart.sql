-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2022 lúc 11:37 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_ismart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 0,
  `creator` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_user` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_title`, `slug`, `parent_id`, `level`, `creator`, `created_at`, `updated_at`, `updated_user`) VALUES
(1, 'Điện thoại', 'dien-thoai', 0, 0, 'Nguyễn Kim Chí', 1663513888, 1663513945, 'Nguyễn Kim Chí'),
(2, 'Iphone', 'dien-thoai-iphone', 1, 1, 'Nguyễn Kim Chí', 1664385472, 1663517623, 'Nguyễn Kim Chí'),
(3, 'Samsung', 'dien-thoai-samsung', 1, 1, 'Nguyễn Kim Chí', 1664385548, NULL, NULL),
(4, 'Oppo', 'dien-thoai-oppo', 1, 1, 'Nguyễn Kim Chí', 1664385711, NULL, NULL),
(5, 'Máy tính bảng', 'may-tinh-bang', 0, 0, 'Nguyễn Kim Chí', 1663518005, 1664385279, 'Nguyễn Kim Chí'),
(6, 'Laptop', 'lap-top', 0, 0, 'Nguyễn Kim Chí', 1663518016, 1664385294, 'Nguyễn Kim Chí'),
(7, 'Asus', 'lap-top-asus', 6, 1, 'Nguyễn Kim Chí', 1664385730, NULL, NULL),
(8, 'Dell', 'lap-top-dell', 6, 1, 'Nguyễn Kim Chí', 1664385740, NULL, NULL),
(9, 'Tai nghe', 'tai-nghe', 0, 0, 'Nguyễn Kim Chí', 1663518037, 1664385307, 'Nguyễn Kim Chí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_guest`
--

CREATE TABLE `tbl_guest` (
  `guest_id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `address_ship` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `note` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_guest`
--

INSERT INTO `tbl_guest` (`guest_id`, `fullname`, `email`, `address_ship`, `phone_number`, `note`) VALUES
(3, 'Đinh Ngọc Tiên', 'ngoctien.dinh97@gmail.com', 'Hẻm 82 đường số 10, tăng nhơn phú B, quận 9, TPHCM', '0392265391', ''),
(4, 'Kim Chí', 'nguyenkimchi782@gmail.com', 'Hẻm 82 đường số 10, tăng nhơn phú B, quận 9, TPHCM', '0336293669', ''),
(5, 'Đinh Ngọc Tiên', 'ngoctien.dinh97@gmail.com', 'Hẻm 82 đường số 10, tăng nhơn phú B, quận 9, TPHCM', '0336293669', ''),
(6, 'Lê Văn Duẩn', 'levanduan032003@gmail.com', 'adsa', '0336293669', ''),
(7, 'Lê Văn Duẩn', 'duanlvps22818@fpt.edu.vn', 'Hẻm 82 đường số 10, tăng nhơn phú B, quận 9, TPHCM', '0336293669', ''),
(8, 'Nguyễn Kim Chí', 'nguyenkimchi782@gmail.com', 'Hẻm 82 đường số 10, tăng nhơn phú B, quận 9, TPHCM', '0336293669', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_layout`
--

CREATE TABLE `tbl_layout` (
  `id` int(11) NOT NULL,
  `store_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `store_phone` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `store_address` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `store_email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `store_introduce` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `bg_header` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `bg_body` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `bg_footer` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `num_order` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `guest_id`, `num_order`, `total_price`, `status`, `created_at`) VALUES
(2, 3, 5, 85950000, 2, 1664206249),
(3, 4, 4, 54360000, 0, 1664206986),
(4, 5, 1, 25990000, 0, 1664378060),
(5, 6, 1, 25990000, 0, 1665896071),
(6, 7, 1, 25990000, 0, 1665896197),
(7, 8, 1, 25990000, 0, 1665896365);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `product_id`, `price`, `quantity`, `sub_total_price`) VALUES
(3, 2, 1, 25990000, 3, 77970000),
(4, 2, 3, 3990000, 2, 7980000),
(5, 3, 1, 25990000, 1, 25990000),
(6, 3, 3, 3990000, 2, 7980000),
(7, 3, 19, 20390000, 1, 20390000),
(8, 4, 1, 25990000, 1, 25990000),
(9, 5, 1, 25990000, 1, 25990000),
(10, 6, 1, 25990000, 1, 25990000),
(11, 7, 1, 25990000, 1, 25990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `creator` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_user` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_pages`
--

INSERT INTO `tbl_pages` (`page_id`, `page_title`, `slug`, `content`, `created_at`, `creator`, `updated_at`, `updated_user`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', '<p>[Giới thiệu]</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &#39;de Finibus Bonorum et Malorum&#39; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &#39;Lorem ipsum dolor sit amet..&#39;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 1663513094, 'Nguyễn Kim Chí', 1663513419, 'Nguyễn Kim Chí'),
(2, 'Liên hệ', 'lien-he', '<p>[Liện hệ]</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &#39;de Finibus Bonorum et Malorum&#39; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &#39;Lorem ipsum dolor sit amet..&#39;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 1663513127, 'Nguyễn Kim Chí', 1663513411, 'Nguyễn Kim Chí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `post_content` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_thumb` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `creator` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_user` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `slug`, `post_content`, `post_thumb`, `cat_id`, `creator`, `created_at`, `updated_at`, `updated_user`) VALUES
(2, 'Flagship killer Realme GT Neo4 sẽ sớm xuất hiện, trang bị vi xử lý mạnh nhất nhà \'Rồng\'', 'Flagship-killer-Realme-GT-Neo', '<p><img alt=\"GT Neo3 lấy cảm hứng từ xe đua không biết GT Neo4 sẽ lấy cảm hứng từ đâu - Ảnh Yanshanpai\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471333/gtneo3laycamhungtuxeduakhongbietgtneo4selaycamhungtudau-anhyanshanpai_1280x720-800-resize.jpg\" title=\"GT Neo3 lấy cảm hứng từ xe đua không biết GT Neo4 sẽ lấy cảm hứng từ đâu - Ảnh Yanshanpai\" /></p>\r\n\r\n<p>Thiết kế GT Neo3 lấy cảm hứng từ xe đua, c&oacute; thể GT Neo4 cũng sẽ tương tự - Ảnh: Yanshanpai</p>\r\n\r\n<h2>Leaker Digital Chat Station đ&atilde; trở lại với th&ocirc;ng tin mới nhất về GT Neo4 - chiếc&nbsp;<a href=\"http://thegioididong.com/dtdd-choi-game\" target=\"_blank\" title=\"flagship\">flagship</a>&nbsp;sắp ra mắt v&agrave;o th&aacute;ng sau của&nbsp;<a href=\"http://thegioididong.com/dtdd-realme\" target=\"_blank\" title=\"Realme\">Realme</a>. Kh&ocirc;ng giống như tiền nhiệm GT Neo3,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/realme-gt-neo4\" target=\"_blank\" title=\"Realme GT Neo4\">Realme GT Neo4</a>&nbsp;được hướng theo con đường kh&aacute;c, đ&oacute; l&agrave; trang bị vi xử l&yacute; của c&aacute;c flagship.</h2>\r\n\r\n<p>Theo đ&oacute;, Realme GT Neo4 sẽ kh&ocirc;ng sử dụng c&aacute;c vi xử l&yacute; tầm trung (như Dimensity 8100), m&agrave; trang bị lu&ocirc;n Snapdragon 8+ Gen 1, m&aacute;y sở hữu m&agrave;n h&igrave;nh AMOLED dẻo với độ ph&acirc;n giải 1.5K (1.220p), tần số qu&eacute;t 120 Hz. Điều chế xung điện &aacute;p tải (PMW) l&ecirc;n tới 2.160 Hz (li&ecirc;n quan tới điều chỉnh mức độ s&aacute;ng tự động).</p>\r\n\r\n<p><img alt=\"Ảnh GT Neo 3 - Realme\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471333/anhgtneo3-realme_1280x956-800-resize.png\" title=\"Ảnh GT Neo 3 - Realme\" /></p>\r\n\r\n<p>Ảnh GT Neo 3 - Realme</p>\r\n\r\n<p>Realme GT Neo4 c&oacute; c&ocirc;ng suất sạc nhanh 100 W (thấp hơn bản sạc nhanh 150 W của GT Neo3). Digital Chat Station cho biết Redmi K60 sẽ l&agrave; đối thủ cạnh tranh trực tiếp với GT Neo4.</p>\r\n\r\n<p>Bạn mong đợi g&igrave; ở Realme GT Neo4? Đừng qu&ecirc;n để lại b&igrave;nh luận cho ch&uacute;ng m&igrave;nh biết nh&eacute;!</p>\r\n', 'post-1.jpg', 1, 'Nguyễn Kim Chí', 1663863307, 1664380692, 'Nguyễn Kim Chí'),
(3, 'Sự kiện INTEL TECH CAMP: Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn', '', '<p><img alt=\"Sự kiện INTEL TECH CAMP: Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471317/h2_1280x720-800-resize.jpg\" title=\"Sự kiện INTEL TECH CAMP: Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn\" /></p>\r\n\r\n<p>Sự kiện Intel Tech Camp</p>\r\n\r\n<h2>Intel Tech Camp l&agrave; sự kiện triển l&atilde;m c&ocirc;ng nghệ IT v&agrave; gaming đầu ti&ecirc;n tại Việt Nam với sự g&oacute;p mặt của hơn 18 nh&atilde;n h&agrave;ng v&agrave; 11 đại l&yacute;. Theo đ&oacute;,&nbsp;<a href=\"https://www.thegioididong.com/\" target=\"_blank\" title=\"Thế Giới Di Động\" type=\"Thế Giới Di Động\">Thế Giới Di Động</a>&nbsp;g&oacute;p mặt tại sự kiện với quyết t&acirc;m mang đến cho kh&aacute;ch h&agrave;ng một kh&ocirc;ng gian trải nghiệm vượt bậc c&ugrave;ng với những phần qu&agrave; hấp dẫn.</h2>\r\n\r\n<ul>\r\n	<li><strong>Thời gian:</strong>&nbsp;9h30 - 21h ng&agrave;y 24 - 25/9.</li>\r\n	<li><strong>Địa điểm:</strong>&nbsp;Nh&agrave; Văn Ho&aacute; Thanh Ni&ecirc;n (04 Phạm Ngọc Thạch, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh).</li>\r\n</ul>\r\n\r\n<p><img alt=\"Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471317/inteltechcamp_1280x1280-800-resize.jpg\" title=\"Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn\" /></p>\r\n\r\n<p>Thế Giới Di Động h&acirc;n hạnh g&oacute;p mặt tại sự kiện mang đến một kh&ocirc;ng gian trải nghiệm vượt bậc c&ugrave;ng nhiều phần qu&agrave; hấp dẫn. Đến ngay booth của Thế Giới Di Động để được:</p>\r\n\r\n<ul>\r\n	<li>Trải nghiệm v&agrave; tư vấn sản phẩm.</li>\r\n	<li>Chơi game kahoot.</li>\r\n	<li>Check-in liền tay nhận ngay qu&agrave; xịn.</li>\r\n	<li>R&uacute;t thăm tr&uacute;ng thưởng.</li>\r\n	<li>B&ugrave;ng nổ c&ugrave;ng c&aacute;c tiết mục tr&igrave;nh diễn.</li>\r\n</ul>\r\n\r\n<p>H&atilde;y đến tham gia sự kiện để trải nghiệm v&agrave; rinh những phần qu&agrave; xịn s&ograve; về nh&agrave; ngay tại booth của Thế Giới Di Động bạn nh&eacute;!!!</p>\r\n\r\n<p><img alt=\"Sự kiện INTEL TECH CAMP: Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471317/sukien_1280x1280-800-resize.jpg\" title=\"Sự kiện INTEL TECH CAMP: Lên đời laptop chỉ với 50K một ngày, quà tặng hấp dẫn\" /></p>\r\n\r\n<p>Thế Giới Di Động g&oacute;p mặt tại sự kiện Intel Tech Camp</p>\r\n\r\n<p><strong>Ngo&agrave;i ra, sự kiện c&ograve;n một số hoạt động nổi bật như:</strong></p>\r\n\r\n<ul>\r\n	<li>Intel Arc Launch.</li>\r\n	<li>Talkshow: Intel x Fujifim Workflow hiệu quả dành cho đơn vị sản xu&acirc;́t nội dung.</li>\r\n	<li>Talkshow: Nghệ Nh&acirc;n &amp; M&aacute;y T&iacute;nh.</li>\r\n	<li>Chung kết giải đ&acirc;́u Valorant: Walk of Glory.</li>\r\n	<li>Minigame.</li>\r\n	<li>Talkshow: Hiệu suất học tập v&agrave; l&agrave;m việc c&ugrave;ng Intel x&nbsp;<a href=\"http://www.thegioididong.com/phan-mem-microsoft\" target=\"_blank\" title=\"Microsoft\" type=\"Microsoft\">Microsoft</a>.</li>\r\n	<li>Talkshow: Trải nghiệm thi&ecirc;́t bị gaming &amp; Fan Meeting with KOL.</li>\r\n	<li>Chung kết giải đ&acirc;́u LOL: Rising of Legends.</li>\r\n	<li>Music Show.</li>\r\n	<li>Minigame.</li>\r\n</ul>\r\n\r\n<p>Nếu quan t&acirc;m, bạn c&oacute; thể xem nhiều hơn c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"laptop\" type=\"laptop\">laptop</a>&nbsp;gaming kh&aacute;c với gi&aacute; tốt c&ugrave;ng v&ocirc; v&agrave;n khuyến m&atilde;i hấp dẫn đang chờ đ&oacute;n tại&nbsp;Thế Giới Di&nbsp;Động,&nbsp;bằng c&aacute;ch click ngay n&uacute;t cam b&ecirc;n dưới!</p>\r\n', 'post-2.jpg', 6, 'Nguyễn Kim Chí', 1663863359, NULL, NULL),
(4, 'Trên tay OPPO Enco Buds2: Giá 1.29 triệu*, thiết kế nhỏ gọn, chất âm hay', '', '<h2>hững chiếc&nbsp;<a href=\"http://www.thegioididong.com/tai-nghe-khong-day\" target=\"_blank\" title=\"tai nghe không dây\" type=\"tai nghe không dây\">tai nghe kh&ocirc;ng d&acirc;y</a>&nbsp;ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&agrave; được nhiều đối tượng kh&aacute;ch h&agrave;ng ưa d&ugrave;ng bởi sự tiến lợi cũng như gọn g&agrave;ng m&agrave; thiết bị mang lại. Bắt nhịp xu hướng đ&oacute;,&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-oppo-khong-day\" target=\"_blank\" title=\"OPPO\" type=\"OPPO\">OPPO</a>&nbsp;đ&atilde; cho ra mắt chiếc tai nghe mới với t&ecirc;n gọi&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-tws-oppo-enco-buds-2-ete41-trang#top-article\" target=\"_blank\" title=\"OPPO Enco Buds2\" type=\"OPPO Enco Buds2\">OPPO Enco Buds2</a>, đ&acirc;y l&agrave; phi&ecirc;n bản kế nhiệm thế hệ&nbsp;OPPO Enco Buds với nhiều cải tiến hơn từ b&ecirc;n trong lẫn b&ecirc;n ngo&agrave;i nhằm hỗ trợ tốt hơn cho người d&ugrave;ng. Để biết OPPO đ&atilde; cải tiến thế n&agrave;o th&igrave; c&ugrave;ng m&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tren-tay-oppo-enco-buds2-1471139\" target=\"_blank\" title=\"trên tay OPPO Enco Buds2\" type=\"trên tay OPPO Enco Buds2\">tr&ecirc;n tay&nbsp;OPPO Enco Buds2</a>&nbsp;ngay nh&eacute;!</h2>\r\n\r\n<p><em>(*)Lưu &yacute;: Gi&aacute; của OPPO Enco Buds2 tại Thế Giới Di Động l&agrave; 1.29 triệu đồng.</em></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.thegioididong.com/tin-tuc/tren-tay-oppo-enco-air2-pro-1458885\" target=\"_blank\" title=\"Trên tay OPPO Enco Air2 Pro: Thiết kế đẹp mắt, chất âm ấn tượng\" type=\"Trên tay OPPO Enco Air2 Pro: Thiết kế đẹp mắt, chất âm ấn tượng\">Tr&ecirc;n tay OPPO Enco Air2 Pro: Thiết kế đẹp mắt, chất &acirc;m ấn tượng</a></li>\r\n	<li><a href=\"https://www.thegioididong.com/tin-tuc/oppo-enco-air-2-pro-ra-mat-1436393\" target=\"_blank\" title=\"OPPO Enco Air 2 Pro ra mắt: Chống ồn chủ động, xuyên âm, pin 28 giờ\" type=\"OPPO Enco Air 2 Pro ra mắt: Chống ồn chủ động, xuyên âm, pin 28 giờ\">OPPO Enco Air 2 Pro ra mắt: Chống ồn chủ động, xuy&ecirc;n &acirc;m, pin 28 giờ</a></li>\r\n</ul>\r\n\r\n<h3><strong>C&ugrave;ng m&igrave;nh mở hộp&nbsp;OPPO Enco Buds2 xem b&ecirc;n trong c&oacute; g&igrave; nh&eacute;!</strong></h3>\r\n\r\n<p>Giống với c&aacute;c thiết bị tai nghe kh&ocirc;ng d&acirc;y c&ugrave;ng nh&agrave; kh&aacute;c, phần hộp đựng của&nbsp;OPPO Enco Buds2 được l&agrave;m kh&aacute; chỉn chu v&agrave; đơn giản với hai t&ocirc;ng m&agrave;u đối lập đen - trắng tr&ocirc;ng cực kỳ h&uacute;t mắt người d&ugrave;ng. Mặt trước phần hộp đựng của thiết bị ch&iacute;nh l&agrave; t&ecirc;n v&agrave; h&igrave;nh ảnh sản phẩm nằm nổi bật ngay ch&iacute;nh diện v&agrave; c&aacute;ch cạnh b&ecirc;n v&agrave; mặt sau l&agrave; những th&ocirc;ng tin nổi bật của&nbsp;OPPO Enco Buds2.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-1-_2560x1440-800-resize.jpg\" title=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" /></p>\r\n\r\n<p>OPPO Enco Buds2 c&oacute; phần thiết kế vỏ hộp kh&aacute; đơn giản với hai gam m&agrave;u đen - trắng chủ đạo.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-7-_2560x1440-800-resize.jpg\" title=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" /></p>\r\n\r\n<p>Mặt sau hộp đựng của OPPO Enco Buds2 với những th&ocirc;ng tin cơ bản.</p>\r\n\r\n<p>B&ecirc;n trong phần hộp, h&atilde;ng cũng đ&atilde; trang bị người d&ugrave;ng những th&ocirc;ng tin cần thiết th&ocirc;ng qua s&aacute;ch hướng dẫn sử dụng c&ugrave;ng với đ&oacute; ch&iacute;nh l&agrave; nh&acirc;n vật ch&iacute;nh của ch&uacute;ng ta ng&agrave;y h&ocirc;m nay -&nbsp;OPPO Enco Buds2.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-8-_2560x1440-800-resize.jpg\" title=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" /></p>\r\n\r\n<p>H&atilde;ng cũng trang bị cho người d&ugrave;ng s&aacute;ch hướng dẫn sử dụng để thuận tiện cho việc sử dụng OPPO Enco Buds2.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống động\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-11-_2560x1440-800-resize.jpg\" title=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống độngq\" /></p>\r\n\r\n<p>Cuối c&ugrave;ng ch&iacute;nh l&agrave; nh&acirc;n vật ch&iacute;nh của ch&uacute;ng ta - OPPO Enco Buds2.</p>\r\n\r\n<h3><strong>Tr&ecirc;n tay OPPO Enco Buds2 với thiết kế cải tiến nhỏ gọn, hợp xu hướng</strong></h3>\r\n\r\n<p>Kh&aacute;c với h&igrave;nh vu&ocirc;ng hay h&igrave;nh chữ nhật đang được ưa chuộng tr&ecirc;n thị trường hiện nay, phần hộp sạc của&nbsp;OPPO Enco Buds2 được l&agrave;m kh&aacute;c hơn khi sở hữu tổng thể h&igrave;nh tr&ograve;n v&agrave; được l&agrave;m đẹp hơn so với c&aacute;c đối thủ kh&aacute;c. Kh&ocirc;ng chỉ c&oacute; h&igrave;nh dạng lạ hơn m&agrave;&nbsp;OPPO Enco Buds2 cũng rất nhẹ khi chỉ nặng 48 g (bao gồm cả tai nghe v&agrave; hộp sạc) n&ecirc;n ngoại h&igrave;nh n&agrave;y vừa gi&uacute;p cho&nbsp;OPPO Enco Buds2 trở n&ecirc;n nhỏ gọn hơn v&agrave; c&oacute; thể dễ d&agrave;ng mang theo b&ecirc;n cạnh bạn mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-53-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2\" /></p>\r\n\r\n<p>OPPO Enco Buds2 sở hữu tổng thể h&igrave;nh tr&ograve;n thay v&igrave; h&igrave;nh vu&ocirc;ng hay h&igrave;nh chữ nhật.</p>\r\n\r\n<p>Về phần hộp đựng của&nbsp;OPPO Enco Buds2, phi&ecirc;n bản m&igrave;nh tr&ecirc;n tay h&ocirc;m nay l&agrave; m&agrave;u trắng với phần hộp đựng được ho&agrave;n thiện từ chất liệu nhựa b&oacute;ng gi&uacute;p cho tổng thể&nbsp;OPPO Enco Buds2 lu&ocirc;n s&aacute;ng v&agrave; đẹp hơn. Tuy nhi&ecirc;n điểm hạn chế l&agrave; chất liệu n&agrave;y rất dễ b&aacute;m v&agrave; lưu lại v&acirc;n tay v&agrave; mồ h&ocirc;i cũng như sẽ dễ trầy xước hơn so với vẻ ngo&agrave;i phủ nh&aacute;m n&ecirc;n bạn sẽ phải bảo quản kỹ lượng hoặc bạn cũng c&oacute; thể d&ugrave;ng k&egrave;m với ốp để đảm bảo hơn cho thiết bị.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>OPPO Enco Buds2 được ho&agrave;n thiện từ nhựa b&oacute;ng.</p>\r\n\r\n<p>C&aacute;c thiết kế của OPPO Enco Buds2 cũng kh&aacute; đơn giản v&agrave; quen thuộc với mặt trước hộp sạc được điểm qua logo của h&atilde;ng ngay dưới phần nắp. Mặt sau phần hộp l&agrave; nơi để c&aacute;c th&ocirc;ng tin cơ bản c&ograve;n cạnh dưới sẽ c&oacute; cổng sạc USB Type-C.</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-13-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2\" /></p>\r\n\r\n<p>Mặt trước phần hộp sạc của OPPO Enco Buds2.</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-18-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2\" /></p>\r\n\r\n<p>Mặt sau phần hộp sạc của OPPO Enco Buds2.</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-20-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2\" /></p>\r\n\r\n<p>Cạnh dưới phần hộp sạc của OPPO Enco Buds2.</p>\r\n\r\n<p>Về chiếc tai nghe th&igrave; OPPO Enco Buds2 sử dụng thiết kế dạng thanh quen thuộc, hiện rất phổ biến trong c&aacute;c sản phẩm tai nghe kh&ocirc;ng d&acirc;y. Thiết bị c&oacute; thiết kế nhỏ gọn với ba bộ phận ch&iacute;nh l&agrave; n&uacute;t tai, loa ph&aacute;t v&agrave; th&acirc;n tai nghe. OPPO Enco Buds2 cũng được ho&agrave;n thiện từ chất liệu nhựa b&oacute;ng tương tự như phần vỏ hộp sạc, trừ phần n&uacute;t tai. Đ&acirc;y l&agrave; thiết kế được l&agrave;m mới hơn so với dạng hạt đậu ở thế hệ trước đ&acirc;y v&agrave; tổng thể mới n&agrave;y cũng chỉ nặng 4 g mỗi b&ecirc;n tai,&nbsp;gi&uacute;p mang lại cho người d&ugrave;ng một cảm gi&aacute;c khi đeo nhẹ nh&agrave;ng hơn&nbsp;đấy!</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-24-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2\" /></p>\r\n\r\n<p>Phần tai nghe của OPPO Enco Buds2 được l&agrave;m đổi mới hơn so với thế hệ tiền nhiệm.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh sử dụng th&igrave; ngo&agrave;i cảm gi&aacute;c đeo thoải m&aacute;i,&nbsp;OPPO Enco Buds2 c&ograve;n mang đến một chất &acirc;m kh&aacute; hay v&agrave; thời lượng sử dụng tương đối tốt so với c&aacute;c đối thủ kh&aacute;c tr&ecirc;n thị trường hiện nay. Vậy chất &acirc;m hay ra sao c&ugrave;ng m&igrave;nh đến với phần tiếp theo nh&eacute;!</p>\r\n\r\n<h3><strong>OPPO Enco Buds2 pin lớn cho thời lượng sử dụng l&ecirc;n đến 7 tiếng c&ugrave;ng chất lượng &acirc;m thanh tốt</strong></h3>\r\n\r\n<p>Trước ti&ecirc;n về phần vi&ecirc;n pin,&nbsp;OPPO Enco Buds2 sở hữu vi&ecirc;n pin kh&aacute; v&agrave; mang lại thời lượng sử dụng kh&aacute; tốt với với 7 tiếng hoạt động li&ecirc;n tục v&agrave; 28 tiếng khi sử dụng với hộp sạc. Đ&acirc;y l&agrave; một con số kh&aacute; tốt v&agrave; đủ để c&oacute; thể đ&aacute;p ứng nhu cầu của bạn trong cả một ng&agrave;y d&agrave;i thậm ch&iacute; hơn thế nữa n&ecirc;n m&igrave;nh tin với mức dung lượng tr&ecirc;n OPPO Enco Buds2 sẽ l&agrave; một người bạn đồng h&agrave;nh tuyệt vời của bạn đấy!</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2 có thể hoạt động liên tục đến 7 tiếng.\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-54-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2 có thể hoạt động liên tục đến 7 tiếng.\" /></p>\r\n\r\n<p>OPPO Enco Buds2 c&oacute; thể hoạt động li&ecirc;n tục đến 7 tiếng.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh trải nghiệm th&igrave; m&igrave;nh cảm thấy ấm thanh c&oacute; độ tr&ecirc;n kh&aacute; thấp v&agrave; điều n&agrave;y l&agrave; nhờ c&ocirc;ng nghệ kết nối Bluetooth 5.2, cho độ trễ &acirc;m thanh ph&aacute;t ra thấp ở mức 94 ms (theo th&ocirc;ng tin từ h&atilde;ng cung cấp) v&agrave; khả năng ổn định cao hơn. Với những trang bị tr&ecirc;n, OPPO Enco Buds2 ch&iacute;nh l&agrave; một thiết bị gi&uacute;p việc cho những trải nghiệm khi nghe nhạc hay chơi game của bạn được đồng bộ tốt hơn, hạn chế được c&aacute;c vấn đề đ&oacute;ng băng, nhiễu s&oacute;ng, ngắt kết nối v&agrave; lỗi tương th&iacute;ch, cho ph&eacute;p bạn phản ứng nhanh nhạy hơn. Độ chi tiết &acirc;m thanh cũng được&nbsp;OPPO Enco Buds2 thể hiện rất tốt, kh&ocirc;ng qu&aacute; r&egrave; d&ugrave; cho m&igrave;nh c&oacute; tăng &acirc;m lượng l&ecirc;n kh&aacute; cao.</p>\r\n\r\n<p><img alt=\"OPPO Enco Buds2\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-32-_2560x1440-800-resize.jpg\" title=\"OPPO Enco Buds2\" /></p>\r\n\r\n<p>Chất &acirc;m của OPPO Enco Buds2 thật sự nghe rất hay đấy!</p>\r\n\r\n<p>Kh&ocirc;ng những thế,&nbsp;OPPO Enco Buds2 c&ograve;n c&oacute; khả năng khử tiếng ồn s&acirc;u AI gi&uacute;p cho &acirc;m thanh m&agrave; thiết bị thu v&agrave;o sẽ c&oacute; phần trong trẻo v&agrave; hạn chế tạp &acirc;m khi nghe hơn. Điều n&agrave;y cũng gi&uacute;p &iacute;ch cho bạn rất nhiều đặc biệt l&agrave; trong l&uacute;c c&oacute; những cuộc gọi sẽ gi&uacute;p bạn nghe dễ d&agrave;ng v&agrave; r&otilde; r&agrave;ng hơn khi ở c&aacute;c khu vực ồn &agrave;o như khi đi xe ngo&agrave;i đường hay ở nơi đ&ocirc;ng người đấy.</p>\r\n\r\n<h3><strong>OPPO Enco Buds2 gi&aacute; bao nhi&ecirc;u?</strong></h3>\r\n\r\n<p>OPPO Enco Buds2&nbsp;hiện đang được b&aacute;n tại hệ thống Thế Giới Di Động với mức gi&aacute; l&agrave; 1.29 triệu đồng (C&oacute; thể thay đổi t&ugrave;y chương tr&igrave;nh khuyến m&atilde;i). Với một mức gi&aacute; chưa tới 2 triệu đồng nhưng lại c&oacute; thể sở hữu một chiếc tai nghe kh&ocirc;ng d&acirc;y với thiết kế nhỏ gọn, chất &acirc;m hay, pin kh&aacute; c&ugrave;ng loạt t&iacute;nh năng xịn s&ograve; th&igrave;&nbsp;OPPO Enco Buds2 ch&iacute;nh l&agrave; một sự lựa chọn m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua nếu như đang t&igrave;m kiếm một thiết bị c&oacute; đầy đủ c&aacute;c yếu tố tr&ecirc;n đ&acirc;u đấy!</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống độngq\" src=\"https://cdn.tgdd.vn/Files/2022/09/22/1471139/oppo-enco-buds2-41-_2560x1440-800-resize.jpg\" title=\"Trên tay OPPO Enco Buds2: Thiết kế nhỏ gọn, âm thanh sống độngq\" /></p>\r\n\r\n<p>Bạn nghĩ sao về OPPO Enco Buds2?</p>\r\n\r\n<p>Vậy bạn c&oacute; đ&aacute;nh gi&aacute; như thế n&agrave;o về OPPO Enco Buds2? Đừng qu&ecirc;n để lại &yacute; kiến b&ecirc;n dưới cho ch&uacute;ng m&igrave;nh được biết nh&eacute;!</p>\r\n', 'post-3.jpg', 9, 'Nguyễn Kim Chí', 1663863498, NULL, NULL),
(5, '5 cách khắc phục Bluetooth không hoạt động trên MacBook rất hiệu quả', '', '<h2>Bluetooth từ l&acirc;u đ&atilde; trở th&agrave;nh t&iacute;nh năng kh&ocirc;ng thể thiếu đối với nhiều thiết bị c&ocirc;ng nghệ. C&aacute;c thiết bị c&ocirc;ng nghệ ng&agrave;y nay c&agrave;ng sử dụng chuẩn Bluetooth cao hơn v&agrave; c&oacute; khả năng kết nối nhanh hơn rất nhiều. Điều n&agrave;y gi&uacute;p cho mọi thứ đều nhanh ch&oacute;ng v&agrave; thuận tiện cho người sử dụng. Tuy nhi&ecirc;n, đ&ocirc;i khi ch&uacute;ng ta cũng thường hay gặp phải những t&igrave;nh trạng Bluetooth kh&ocirc;ng hoạt động tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" title=\"MacBook\" type=\"MacBook\">MacBook</a>. V&agrave; trong b&agrave;i viết n&agrave;y m&igrave;nh sẽ hướng dẫn c&aacute;c bạn 5&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/cach-khac-phuc-bluetooth-khong-hoat-dong-tren-macbook-1453372\" target=\"_blank\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" type=\"cách khắc phục Bluetooth không hoạt động trên MacBook\">c&aacute;ch khắc phục Bluetooth kh&ocirc;ng hoạt động tr&ecirc;n MacBook</a>&nbsp;rất hiệu quả.</h2>\r\n\r\n<h3><strong>1. Bật, tắt lại kết nối Bluetooth</strong></h3>\r\n\r\n<p>Việc đầu ti&ecirc;n bạn cần l&agrave;m khi m&agrave; Bluetooth kh&ocirc;ng hoạt động đ&oacute; ch&iacute;nh l&agrave; bật, tắt lại t&iacute;nh năng Bluetooth. Tr&ecirc;n những chiếc MacBook, Bluetooth được bật trong thời gian d&agrave;i để sử dụng c&aacute;c thiết bị ngoại vi đ&ocirc;i khi sẽ xảy ra một v&agrave;i t&igrave;nh trạng chập chờn khi kết nối c&aacute;c thiết bị mới. Thậm ch&iacute; l&agrave; kh&ocirc;ng t&igrave;m thấy, l&uacute;c n&agrave;y h&atilde;y bật, tắt Bluetooth sẽ trở n&ecirc;n b&igrave;nh thường.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook111-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<h3><strong>2. Hủy gh&eacute;p nối v&agrave; kết nối lại</strong></h3>\r\n\r\n<p>Nếu như bạn đ&atilde; thực hiện c&aacute;ch 1 nhiều lần m&agrave; vẫn gặp phải t&igrave;nh trạng k&eacute;o d&agrave;i th&igrave; h&atilde;y thử hủy kết nối v&agrave; gh&eacute;p đ&ocirc;i lại từ đầu. Việc hủy kết nối sẽ tạo ra sự đứt g&atilde;y v&agrave; buộc Bluetooth sẽ t&igrave;m kiếm để kết nối lại thiết bị. H&atilde;y đảm bảo rằng thiết bị ngoại vi c&ograve;n pin v&agrave; được bật.</p>\r\n\r\n<p><strong>Bước 1:&nbsp;</strong>Nhấp v&agrave;o&nbsp;<strong>biểu tượng Bluetooth tr&ecirc;n thanh menu v&agrave; chọn T&ugrave;y chọn Bluetooth</strong>.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook3-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>Trong cửa sổ xuất hiện, di chuột qua&nbsp;<strong>thiết bị bạn muốn hủy gh&eacute;p nối</strong>&nbsp;v&agrave;&nbsp;<strong>nhấp v&agrave;o X b&ecirc;n cạnh thiết bị đ&oacute;</strong>.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook4-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong>Chọn&nbsp;<strong>X&oacute;a khi &ocirc; cửa sổ th&ocirc;ng b&aacute;o hiện ra</strong>&nbsp;v&agrave;&nbsp;<strong>thiết bị sẽ bị qu&ecirc;n</strong>. B&acirc;y giờ h&atilde;y bắt đầu kết nối lại Bluetooth nh&eacute;.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook5-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<h3><strong>3. Cập nhật phần mềm</strong></h3>\r\n\r\n<p>Đ&ocirc;i khi những phần mềm qu&aacute; cũ hay c&oacute; những bản v&aacute; bảo mật được ph&aacute;t h&agrave;nh, Apple sẽ hạn chế một v&agrave;i t&iacute;nh năng v&agrave; y&ecirc;u cầu người d&ugrave;ng n&acirc;ng cấp để c&oacute; thể sử dụng an to&agrave;n hơn. Ch&iacute;nh v&igrave; thế h&atilde;y kiểm tra thật kỹ lưỡng những th&ocirc;ng tin cập nhật của hệ thống bằng c&aacute;ch sau.</p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Chọn v&agrave;o&nbsp;<strong>biểu tượng Apple ở g&oacute;c tr&ecirc;n c&ugrave;ng b&ecirc;n tr&aacute;i</strong>&nbsp;v&agrave;&nbsp;<strong>t&igrave;m kiếm d&ograve;ng th&ocirc;ng tin về m&aacute;y t&iacute;nh Mac</strong>&nbsp;<strong>n&agrave;y</strong>.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook6-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Kiểm tra&nbsp;<strong>cập nhật phần mềm xem c&oacute; phi&ecirc;n bản mới chưa</strong>&nbsp;v&agrave;&nbsp;<strong>bắt đầu cập nhật</strong>.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook7-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<h3><strong>4. Restart lại m&aacute;y t&iacute;nh</strong></h3>\r\n\r\n<p>Việc sử dụng qu&aacute; l&acirc;u, đặc biệt đối với người MacBook c&agrave;ng kh&ocirc;ng bao giờ tắt nguồn m&aacute;y. Điều n&agrave;y dẫn đến một v&agrave;i thứ trở n&ecirc;n xung đột v&agrave; g&acirc;y rắc rối c&aacute;c t&iacute;nh năng cho người d&ugrave;ng. H&atilde;y thử khởi động lại m&aacute;y để m&aacute;y c&oacute; thể Clear Cache đảm bảo rằng c&aacute;c t&iacute;nh năng đều được hoạt động tốt nhất.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook3123-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<h3><strong>5. Đặt lại M&ocirc;-đun Bluetooth của MacBook</strong></h3>\r\n\r\n<p>Đặt lại m&ocirc;-đun Bluetooth sẽ l&agrave; phương &aacute;n cuối c&ugrave;ng v&agrave; hiệu quả nhất. To&agrave;n bộ những thiết bị trước kia kết nối với m&aacute;y t&iacute;nh của bạn sẽ bị ngắt kết nối ho&agrave;n to&agrave;n v&agrave; reset lại dữ liệu Bluetooth của m&aacute;y t&iacute;nh. L&uacute;c n&agrave;y bạn sẽ dễ d&agrave;ng lấy lại được những thiết bị Bluetooth của m&igrave;nh.</p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Mở&nbsp;<strong>Terminal&nbsp;</strong>bằng c&aacute;ch sử dụng&nbsp;<strong>Spotlight</strong>.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook9-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Nhập&nbsp;<strong>&quot;sudo pkill bluetoothd&quot; v&agrave; nhấn Enter</strong>. B&acirc;y giờ bạn sẽ khởi động lại m&aacute;y.</p>\r\n\r\n<p><img alt=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2022/08/05/1453372/cachkhacphucbluetoothkhonghoatdongtrenmacbook1-_1366x768-800-resize.jpg\" title=\"cách khắc phục Bluetooth không hoạt động trên MacBook\" /></p>\r\n\r\n<p>Bạn đ&atilde; biết c&aacute;ch khắc phục Bluetooth kh&ocirc;ng hoạt động tr&ecirc;n MacBook chưa? Nếu thấy b&agrave;i viết hữu &iacute;ch cho m&igrave;nh xin một like v&agrave; một share nh&eacute;. Rất cảm ơn c&aacute;c bạn đ&atilde; xem b&agrave;i viết.</p>\r\n\r\n<p>MacBook Air M2 đ&atilde; được n&acirc;ng cấp cả ngoại h&igrave;nh lẫn hiệu năng. Nếu bạn quan t&acirc;m h&atilde;y nhấn v&agrave;o n&uacute;t cam b&ecirc;n dưới để tham khảo nhiều ưu đ&atilde;i với gi&aacute; cực tốt tại Thế Giới Di Động nh&eacute;.</p>\r\n', 'post-4.jpg', 6, 'Nguyễn Kim Chí', 1663863571, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug_product` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `desc_short` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `product_detail` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_thumb` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `celling_product` tinyint(1) NOT NULL DEFAULT 0,
  `outstanding_product` tinyint(1) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `creator` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_user` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `slug_product`, `desc_short`, `product_detail`, `product_thumb`, `celling_product`, `outstanding_product`, `price`, `original_price`, `cat_id`, `creator`, `created_at`, `updated_at`, `updated_user`) VALUES
(1, 'Samsung Galaxy Z Flip4 5G ', 'Samsung-Galaxy-ZFlip', 'Khi mua sắm cho mình phiên bản này người dùng sẽ nhận được cho mình một chiếc Samsung Galaxy Z Flip4 5G phiên bản màu vàng và kèm theo bên trong sẽ là bộ quà tặng đến từ nhà Samsung.', '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-flip4-5g-dac-biet\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">Samsung Galaxy Z Flip4 5G Đặc Biệt</a>&nbsp;được cho ra mắt coi như lời cảm ơn d&agrave;nh cho người d&ugrave;ng v&igrave; đ&atilde; d&agrave;nh nhiều sự quan t&acirc;m đến với c&aacute;c thiết bị di động của h&atilde;ng, trang bị tr&ecirc;n m&aacute;y l&agrave; một cấu h&igrave;nh h&agrave;ng đầu đối với c&aacute;c thiết bị di động v&agrave; k&egrave;m theo đ&oacute; sẽ l&agrave; bộ qu&agrave; tặng cực kỳ hấp dẫn.</h3>\r\n\r\n<h3>Thiết kế gập mở tiện lợi</h3>\r\n\r\n<p>Khi mua sắm cho m&igrave;nh phi&ecirc;n bản n&agrave;y người d&ugrave;ng sẽ nhận được cho m&igrave;nh một chiếc Samsung Galaxy Z Flip4 5G phi&ecirc;n bản m&agrave;u v&agrave;ng v&agrave; k&egrave;m theo b&ecirc;n trong sẽ l&agrave; bộ qu&agrave; tặng đến từ nh&agrave; Samsung.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082155.jpg\" onclick=\"return false;\"><img alt=\"Ngoại hình cao cấp - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082155.jpg\" title=\"Ngoại hình cao cấp - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<p>Từ ngoại h&igrave;nh cho đến phần cứng b&ecirc;n trong th&igrave; m&aacute;y sẽ được thừa hưởng to&agrave;n bộ những g&igrave; c&oacute; tr&ecirc;n Galaxy Z Flip4 bản mặc định. Với cơ chế gập mở độc đ&aacute;o gi&uacute;p người d&ugrave;ng c&oacute; thể l&agrave;m mới c&aacute;ch sử dụng điện thoại của bản th&acirc;n, từ đ&oacute; n&acirc;ng cao mọi trải nghiệm của bạn l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p>Được ho&agrave;n thiện mặt sau bằng mặt k&iacute;nh Corning Gorilla Glass Victus+ c&ugrave;ng bộ khung v&agrave; bản lề l&agrave;m từ Armor Aluminum cứng c&aacute;p, điều n&agrave;y gi&uacute;p thiết bị của bạn c&oacute; thể bền bỉ hơn, n&acirc;ng cao số lần gập để đảm bảo&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;đồng h&agrave;nh c&ugrave;ng bạn trong khoảng thời gian l&acirc;u d&agrave;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082157.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế bền bỉ - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082157.jpg\" title=\"Thiết kế bền bỉ - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<h3>Trang bị m&agrave;n h&igrave;nh chất lượng</h3>\r\n\r\n<p>Mặt trước của m&aacute;y sẽ được trang bị một tấm nền Dynamic AMOLED 2X cao cấp khả năng hiển thị h&igrave;nh ảnh với m&agrave;u sắc sinh động v&agrave; hết sức rực rỡ, mang đến cho người d&ugrave;ng những nội dung bắt mắt hơn khi sử dụng c&aacute;c t&aacute;c vụ chơi game hay xem phim giải tr&iacute;.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213\" target=\"_blank\">M&agrave;n h&igrave;nh Dynamic AMOLED 2X l&agrave; g&igrave;? Điểm nổi bật? C&oacute; tr&ecirc;n điện thoại n&agrave;o</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082158.jpg\" onclick=\"return false;\"><img alt=\"Màn hình chất lượng - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082158.jpg\" title=\"Màn hình chất lượng - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&ecirc;n Galaxy Z Flip4 sẽ c&oacute; k&iacute;ch thước 6.7 inch gi&uacute;p cho bạn c&oacute; thể xem nội dung to r&otilde;, thao t&aacute;c cũng dễ d&agrave;ng hơn khi bạn chơi game hay g&otilde; văn bản.</p>\r\n\r\n<p>Nhằm hỗ trợ c&ocirc;ng việc của người d&ugrave;ng một c&aacute;ch thuận tiện th&igrave; h&atilde;ng cũng c&oacute; bổ sung cho m&aacute;y một m&agrave;n h&igrave;nh phụ 1.9 inch ở phần mặt lưng, được n&acirc;ng cấp so với thế hệ trước, giờ đ&acirc;y m&aacute;y c&oacute; thể nhận cuộc gọi hay trả lời tin nhắn (văn bản soạn sẵn) ngay từ m&agrave;n h&igrave;nh phụ m&agrave; kh&ocirc;ng cần phải bật/mở thiết bị.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-160922-043127.jpg\" onclick=\"return false;\"><img alt=\"Màn hình phụ chất lượng - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-160922-043127.jpg\" title=\"Màn hình phụ chất lượng - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<h3>N&acirc;ng cao chất lượng tr&ecirc;n từng bức ảnh</h3>\r\n\r\n<p>Ở mặt sau của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung đang kinh doanh tại Thế Giới Di Động\">điện thoại Samsung</a>&nbsp;người d&ugrave;ng sẽ thấy được cụm 2 camera đặt dọc theo th&acirc;n m&aacute;y, cả hai sẽ c&oacute; chung độ ph&acirc;n giải 12 MP v&agrave; hỗ trợ đầy đủ c&aacute;c t&iacute;nh năng như: AI Camera, ban đ&ecirc;m, g&oacute;c si&ecirc;u rộng, quay video hiển thị k&eacute;p,...</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-160922-042541.jpg\" onclick=\"return false;\"><img alt=\"Nâng cao chất lượng chụp ảnh - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-160922-042541.jpg\" title=\"Nâng cao chất lượng chụp ảnh - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<p>Với người d&ugrave;ng l&agrave;m c&aacute;c c&ocirc;ng việc về s&aacute;ng tạo nội dung th&igrave; Galaxy Z Flip4 ho&agrave;n to&agrave;n c&oacute; thể đem đến cho bạn những thước phim chất lượng, điều n&agrave;y được minh chứng qua việc h&atilde;ng hỗ trợ cho m&aacute;y khả năng quay video đạt chuẩn 4K 2160p@60fps v&agrave; đi k&egrave;m với c&ocirc;ng nghệ chống rung quang học OIS xịn s&ograve;.</p>\r\n\r\n<h3>Hiệu năng cực khủng đến từ nh&agrave; Qualcomm</h3>\r\n\r\n<p>Trang bị b&ecirc;n trong m&aacute;y sẽ l&agrave; con chip c&oacute; hiệu năng v&ocirc; c&ugrave;ng mạnh mẽ với t&ecirc;n gọi Snapdragon 8+ Gen 1, sở hữu tốc độ xung nhịp cao l&ecirc;n đến 3.18 GHz n&ecirc;n m&aacute;y ho&agrave;n to&agrave;n c&oacute; khả năng xử l&yacute; tốt tựa game đồ họa cao đang hiện h&agrave;nh tr&ecirc;n c&aacute;c thiết bị di động.&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng những thế con chip n&agrave;y c&ograve;n gi&uacute;p bạn c&oacute; thể r&uacute;t ngắn thời gian render (kết xuất) video khi xử l&yacute; những tệp tin nặng, nhiều hiệu ứng đặc biệt tr&ecirc;n thước phim.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082204.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mạnh mẽ - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082204.jpg\" title=\"Hiệu năng mạnh mẽ - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-ram-8gb\" target=\"_blank\" title=\"Tham khảo điện thoại có RAM 8 GB đang kinh doanh tại Thế Giới Di Động\">Điện thoại RAM 8 GB</a>&nbsp;đi k&egrave;m với sự tối ưu về giao diện tr&ecirc;n Android 12 sẽ gi&uacute;p cho m&aacute;y c&oacute; thể xử l&yacute; nhiều ứng dụng c&ugrave;ng l&uacute;c, đa nhiệm trơn tru v&agrave; mượt m&agrave; hơn để hạn chế t&igrave;nh trạng giật lag trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<h3>Hỗ trợ khả năng sạc nhanh</h3>\r\n\r\n<p>Samsung Galaxy Z Flip4 5G sẽ được trang bị c&ocirc;ng nghệ sạc nhanh 25 W nhằm r&uacute;t ngắn thời gian lấp đầy vi&ecirc;n pin 3700 mAh tr&ecirc;n m&aacute;y, điều n&agrave;y đảm bảo cho c&aacute;c t&aacute;c vụ của bạn c&oacute; thể diễn ra liền mạch hơn v&agrave; &iacute;t khi bị gi&aacute;n đoạn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082206.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ sạc nhanh - Samsung Galaxy Z Flip4 5G Đặc Biệt\" src=\"https://cdn.tgdd.vn/Products/Images/42/290748/samsung-galaxy-z-flip4-5g-dac-biet-150922-082206.jpg\" title=\"Hỗ trợ sạc nhanh - Samsung Galaxy Z Flip4 5G Đặc Biệt\" /></a></p>\r\n\r\n<p>Nếu bạn l&agrave; một người d&ugrave;ng y&ecirc;u th&iacute;ch c&aacute;c d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd?g=android\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">điện thoại Android</a>&nbsp;hay muốn kh&aacute;m ph&aacute; nhiều t&iacute;nh năng đỉnh cao tr&ecirc;n thị trường điện thoại di động, Samsung Galaxy Z Flip4 5G Đặc Biệt c&oacute; lẽ l&agrave; sự lựa chọn kh&aacute; hợp l&yacute; đến với bạn. Kh&ocirc;ng những thế, người d&ugrave;ng c&ograve;n được tặng k&egrave;m bộ qu&agrave; tặng cao cấp với nhiều m&oacute;n phụ kiện đắt tiền v&agrave; độc quyền đến từ Samsung.</p>\r\n', 'samsung.jpg', 1, 1, 25990000, 0, 3, 'Nguyễn Kim Chí', 1663514865, 1664383828, 'Nguyễn Kim Chí'),
(2, 'Điện thoại iPhone 11 64GB ', 'iphone-11-64gb', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', '<h3>Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-11\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 11 64GB</a>&nbsp;c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xr-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone Xr chính hãng\">iPhone Xr</a>&nbsp;ra mắt&nbsp;trước đ&oacute;.</h3>\r\n\r\n<h3>N&acirc;ng cấp mạnh mẽ về camera</h3>\r\n\r\n<p>N&oacute;i về n&acirc;ng cấp th&igrave; camera ch&iacute;nh l&agrave; điểm c&oacute; nhiều cải tiến nhất tr&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">iPhone</a>&nbsp;mới.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd42.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd42.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" /></a></p>\r\n\r\n<p>Nếu như trước đ&acirc;y iPhone Xr chỉ c&oacute; một camera th&igrave; nay với&nbsp;<a href=\"https://www.topzone.vn/iphone-11\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 đang kinh doanh tại TopZone thương hiệu của Thế Giới Di Động\">iPhone 11</a>&nbsp;ch&uacute;ng ta sẽ c&oacute; tới hai camera ở mặt sau.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-114-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-114-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Camera sau\" /></a></p>\r\n\r\n<p>Ngo&agrave;i camera ch&iacute;nh vẫn c&oacute; độ ph&acirc;n giải 12 MP th&igrave; ch&uacute;ng ta sẽ c&oacute; th&ecirc;m một camera g&oacute;c si&ecirc;u rộng v&agrave; cũng với độ ph&acirc;n giải tương tự.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p><em>Ảnh chụp ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p>Theo Apple th&igrave; việc chuyển đổi qua lại giữa hai ống k&iacute;nh th&igrave; sẽ kh&ocirc;ng l&agrave;m thay đổi m&agrave;u sắc của bức ảnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-2-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-2-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p><em>Ảnh chụp chế độ ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một điều được xem l&agrave; bước ngoặt bởi những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">smartphone</a>&nbsp;Android c&oacute; nhiều camera hiện nay sẽ thường bị sai lệch về m&agrave;u sắc khi chuyển đổi qua lại giữa c&aacute;c ống k&iacute;nh g&acirc;y cảm gi&aacute;c kh&aacute; kh&oacute; chịu cho người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd7.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" /></a></p>\r\n\r\n<p><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/deep-fusion-tren-dong-iphone-11-pro-la-gi-tinh-nan-1197418\" target=\"_blank\" title=\"Tìm hiểu tính năng Deel Fusion\" type=\"Tìm hiểu tính năng Deel Fusion\">Deep Fusion</a></em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; với iPhone 11 th&igrave; đ&acirc;y sẽ l&agrave; lần đầu ti&ecirc;n Apple trang bị khả năng chụp đ&ecirc;m l&ecirc;n chiếc iPhone của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" /></a></p>\r\n\r\n<p><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/night-mode-la-gi-diem-khac-nhau-giu-night-mode-va-1197122\" target=\"_blank\" title=\"Tìm hiểu chế độ Night Mode\" type=\"Tìm hiểu chế độ Night Mode\">chế độ Night Mode</a></em></p>\r\n\r\n<p>Theo trải nghiệm th&igrave; t&iacute;nh năng n&agrave;y hoạt động rất hiệu quả đặc biệt trong những m&ocirc;i trường cực kỳ thiếu s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" /></a></p>\r\n\r\n<p>K&iacute;ch hoạt chế độ chụp đ&ecirc;m sẽ do iPhone tự quyết định việc của bạn chỉ cần đưa m&aacute;y l&ecirc;n v&agrave; chụp, rất đơn giản.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" /></a></p>\r\n\r\n<p><em>Ảnh chụp chế độ g&oacute;c si&ecirc;u rộng</em></p>\r\n\r\n<p>Năm nay Apple cũng đ&atilde; n&acirc;ng cấp độ ph&acirc;n giải camera trước n&ecirc;n 12 MP thay v&igrave; 7 MP như thế hệ trước đ&oacute;.</p>\r\n\r\n<p>Camera trước cũng c&oacute; một t&iacute;nh năng th&ocirc;ng minh, khi bạn xoay ngang điện thoại n&oacute; sẽ tự k&iacute;ch hoạt chế độ selfie g&oacute;c rộng để bạn c&oacute; thể chụp với nhiều người hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-111.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh selfie bằng camera trước\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-111.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh selfie bằng camera trước\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra Apple cũng giới thiệu t&iacute;nh năng quay video slow motion d&agrave;nh cho camera trước, điều m&agrave; Apple chưa từng trang bị cho những chiếc iPhone trước đ&acirc;y.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-apple-iphone-11-iphone-2019-1191805\" target=\"_blank\" title=\"Đánh giá chi tiết iPhone 11\" type=\"Đánh giá chi tiết iPhone 11\">Đ&aacute;nh gi&aacute; chi tiết iPhone 11: H&oacute;a &#39;b&atilde;o tố&#39; hay th&agrave;nh &#39;bom xịt&#39;?</a></p>\r\n\r\n<h3>Hiệu năng mạnh mẽ h&agrave;ng đầu thế giới</h3>\r\n\r\n<p>Mỗi lần ra&nbsp;<a href=\"https://www.topzone.vn/iphone\" target=\"_blank\" title=\"Tham khảo iPhone kinh doanh tại TopZone thành viên của Thế Giới Di Động\">iPhone</a>&nbsp;mới l&agrave; mỗi lần Apple mang đến cho người d&ugrave;ng một trải nghiệm về hiệu năng &quot;chưa từng c&oacute;&quot;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd45.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Trải nghiệm chơi game trên iPhone 11\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd45.jpg\" title=\"Điện thoại iPhone 11 64GB | Trải nghiệm chơi game trên iPhone 11\" /></a></p>\r\n\r\n<p>Tr&ecirc;n iPhone 11 mới Apple n&acirc;ng cấp con chip của m&igrave;nh l&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a13-bionic-tren-iphone-11-n-1197492\" target=\"_blank\" title=\"Tìm hiểu về chip Apple A13 Bionic\" type=\"Tìm hiểu về chip Apple A13 Bionic\">Apple A13 Bionic</a>&nbsp;rất mạnh mẽ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx18.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Điểm hiệu năng Antutu Benchmark\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-dmx18.jpg\" title=\"Điện thoại iPhone 11 64GB | Điểm hiệu năng Antutu Benchmark\" /></a></p>\r\n\r\n<p>Chiếc iPhone n&agrave;y cũng được n&acirc;ng cấp dung lượng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-4gb\" target=\"_blank\" title=\"Tham khảo điện thoại có RAM 4 GB tại Thegioididong.com\">RAM 4 GB</a>&nbsp;thay v&igrave; 3 GB như thế hệ trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-119.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Trải nghiệm thao tác\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-119.jpg\" title=\"Điện thoại iPhone 11 64GB | Trải nghiệm thao tác\" /></a></p>\r\n\r\n<p>Ở mức cấu h&igrave;nh tr&ecirc;n gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd-choi-game\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại chơi game tại Thế Giới Di Động\">điện thoại chơi game</a>&nbsp;tốt với c&aacute;c tựa game phổ biến hiện nay một c&aacute;ch mượt m&agrave;, ổn định. Mọi thao t&aacute;c tr&ecirc;n iPhone mới cũng cho tốc độ phản hồi nhanh m&agrave; bạn gần như sẽ kh&ocirc;ng cảm nhận được sự giật lag cho d&ugrave; c&oacute; sử dụng trong một thời gian d&agrave;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd4.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Trải nghiệm chơi game\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd4.jpg\" title=\"Điện thoại iPhone 11 64GB | Trải nghiệm chơi game\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/thu-nghiem-do-ben-iphone-11-cao-xuoc-nung-nong-va-be-cong-1203631\" target=\"_blank\" title=\"Thử nghiệm độ bền iPhone 11\" type=\"Thử nghiệm độ bền iPhone 11\">Thử nghiệm độ bền iPhone 11: C&agrave;o xước, nung n&oacute;ng v&agrave; bẻ cong</a></p>\r\n\r\n<p>Phi&ecirc;n bản iOS 15 (12/2021) đi k&egrave;m với chiếc iPhone n&agrave;y cũng được trang bị nhiều t&iacute;nh năng hơn gi&uacute;p bạn sử dụng chiếc iPhone hiệu quả hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế thời trang\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế thời trang\" /></a></p>\r\n\r\n<p>Face ID tr&ecirc;n iPhone 11 cũng được cải tiến để c&oacute; thể nhận diện ở nhiều g&oacute;c độ hơn v&agrave; tốc độ phản hồi nhanh hơn.</p>\r\n\r\n<h3>Những thay đổi về thiết kế theo hướng t&iacute;ch cực</h3>\r\n\r\n<p>Ch&uacute;ng ta sẽ c&oacute; một mặt lưng ho&agrave;n thiện dưới dạng k&iacute;nh v&agrave; Apple n&oacute;i rằng họ đ&atilde; sử dụng loại k&iacute;nh bền nhất từ trước tới nay cho chiếc iPhone n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế cụm camera kép ở mặt sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế cụm camera kép ở mặt sau\" /></a></p>\r\n\r\n<p>Camera k&eacute;p tr&ecirc;n iPhone mới cũng được thiết kế lại v&agrave; tin vui l&agrave; n&oacute; sẽ bớt lồi hơn so với tr&ecirc;n iPhone Xr trước đ&acirc;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-115-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế thời trang\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-115-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế thời trang\" /></a></p>\r\n\r\n<p>Điểm nhấn về cụm camera to bản ở mặt sau sẽ gi&uacute;p người kh&aacute;c dễ d&agrave;ng nhận biết bạn đang sử dụng một chiếc iPhone 11 tr&ecirc;n tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-118.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Khay sim\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-118.jpg\" title=\"Điện thoại iPhone 11 64GB | Khay sim\" /></a></p>\r\n\r\n<p>Logo quả t&aacute;o truyền thống của Apple nay đ&atilde; được di chuyển về phần ch&iacute;nh giữa của mặt lớn thay v&igrave; đặt lệch về ph&iacute;a cạnh tr&ecirc;n như những đời iPhone trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd17.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Khả năng chóng nước chuẩn IP68\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd17.jpg\" title=\"Điện thoại iPhone 11 64GB | Khả năng chóng nước chuẩn IP68\" /></a></p>\r\n\r\n<p>Apple cho biết họ đ&atilde; ho&agrave;n thiện tr&ecirc;n iPhone mới để n&oacute; cho khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=chong-nuoc-bui\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chống nước chống bụi\">chống nước</a>&nbsp;tốt hơn v&agrave; người d&ugrave;ng c&oacute; thể y&ecirc;n t&acirc;m về điều đ&oacute;.&nbsp;</p>\r\n\r\n<h3>Thời lượng pin tốt nhất từ trước tới nay</h3>\r\n\r\n<p>Khi n&oacute;i đến thời lượng pin iPhone 11, hẳn nhiều người đ&atilde; ước ao rằng m&aacute;y sẽ c&oacute; vi&ecirc;n pin tốt giống như iPhone Xr (c&oacute; thời lượng pin tốt nhất so với bất kỳ iPhone hiện đại n&agrave;o).</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd46.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd46.jpg\" title=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n bạn sẽ c&ograve;n c&oacute; một chiếc m&aacute;y thậm ch&iacute; c&ograve;n tốt hơn nữa.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế hiện đại\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế hiện đại\" /></a></p>\r\n\r\n<p>Theo Apple th&igrave; chiếc iPhone mới sẽ c&oacute; thời lượng pin tr&acirc;u hơn 1 giờ so với chiếc iPhone Xr.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd40.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Giao diện Dark Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd40.jpg\" title=\"Điện thoại iPhone 11 64GB | Giao diện Dark Mode\" /></a></p>\r\n\r\n<p>Như vậy với iPhone mới bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng m&aacute;y l&ecirc;n tới 2 ng&agrave;y m&agrave; kh&ocirc;ng cần lo lắng việc thiết bị sẽ hết pin giữa chừng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd39.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd39.jpg\" title=\"Điện thoại iPhone 11 64GB | Thời lượng pin\" /></a></p>\r\n\r\n<p>Tất nhi&ecirc;n m&aacute;y cũng sẽ hỗ trợ c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone sạc pin nhanh\">sạc nhanh</a>&nbsp;nhưng bạn phải mua th&ecirc;m củ sạc b&ecirc;n ngo&agrave;i để c&oacute; thể sử dụng t&iacute;nh năng n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-117.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thời lượng sử dụng dài\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-117.jpg\" title=\"Điện thoại iPhone 11 64GB | Thời lượng sử dụng dài\" /></a></p>\r\n\r\n<p>Với chừng đ&oacute; t&iacute;nh năng, chừng đ&oacute; cải tiến th&igrave; chiếc iPhone 11 n&agrave;y tự tin sẽ l&agrave; một đối thủ đ&aacute;ng gờm với những chiếc flagship đến từ c&aacute;c h&atilde;ng Android đang c&oacute; mặt tr&ecirc;n thị trường.</p>\r\n', 'iphone-11-1-1.jpg', 0, 1, 11490000, 0, 2, 'Nguyễn Kim Chí', 1663517102, 1664384122, 'Nguyễn Kim Chí'),
(3, 'Điện thoại OPPO A54', 'OPPO-A54', 'OPPO tung ra mẫu điện thoại OPPO A54, được kế thừa thành công của OPPO A53, sở hữu bộ 3 camera AI thông minh, chấm camera selfie tinh tế nằm gọn trong màn hình tràn viền siêu rộng, vận hành mượt mà với hiệu năng ổn định và trở nên khác biệt so với các đối thủ trong tầm giá.', '<h3><a href=\"https://www.thegioididong.com/dtdd-oppo\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo giá điện thoại, smartphone OPPO chính hãng, nhiều khuyến mãi khủng tại Thegioididong.com\" type=\"Tham khảo giá điện thoại, smartphone OPPO chính hãng, nhiều khuyến mãi khủng tại Thegioididong.com\">OPPO</a>&nbsp;tung ra mẫu điện thoại OPPO A54, được&nbsp;kế thừa th&agrave;nh c&ocirc;ng của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-a53-2020\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo giá điện thoại OPPO A53 2020 chính hãng tại Thegioididong.com\" type=\"Tham khảo giá điện thoại OPPO A53 2020 chính hãng tại Thegioididong.com\">OPPO A53</a>, sở hữu&nbsp;bộ 3 camera AI th&ocirc;ng minh, chấm camera selfie tinh tế nằm gọn trong&nbsp;m&agrave;n h&igrave;nh tr&agrave;n viền si&ecirc;u rộng, vận h&agrave;nh mượt m&agrave; với hiệu năng ổn định v&agrave; trở n&ecirc;n kh&aacute;c biệt so với c&aacute;c đối thủ trong tầm gi&aacute;.</h3>\r\n\r\n<h3>Thiết kế tinh xảo với mặt lưng b&oacute;ng bẩy</h3>\r\n\r\n<p>Với kiểu thiết kế&nbsp;tr&agrave;n viền, cho ph&eacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-a54\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động\">OPPO A54</a>&nbsp;c&oacute; một m&agrave;n h&igrave;nh si&ecirc;u lớn nhưng vẫn vừa vặn trong l&ograve;ng b&agrave;n tay, ph&ugrave; hợp cho mọi hoạt động h&agrave;ng ng&agrave;y của người d&ugrave;ng trẻ năng động.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-008.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Thiết kế tràn viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-008.jpg\" title=\"OPPO A54 | Thiết kế tràn viền\" /></a></p>\r\n\r\n<p>Mặt lưng của OPPO A54 nổi bật với những m&agrave;u sắc gradient thời thượng, kh&ocirc;ng chỉ l&agrave; chiếc điện thoại m&agrave; A54 c&ograve;n như một m&oacute;n phụ kiện thời trang s&agrave;nh điệu c&aacute; t&iacute;nh cho giới trẻ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-001.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Màu sắc trẻ trung\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-001.jpg\" title=\"OPPO A54 | Màu sắc trẻ trung\" /></a></p>\r\n\r\n<p>N&uacute;t nguồn v&agrave; n&uacute;t &acirc;m lượng ở cạnh b&ecirc;n đặt ở vị tr&iacute; kh&aacute; thấp, vừa tầm với của ng&oacute;n tay, thuận tiện thao t&aacute;c khi sử dụng. Đồng thời,&nbsp;cảm biến v&acirc;n tay&nbsp;cũng được ẩn giấu trong n&uacute;t nguồn, gi&uacute;p bạn mở kh&oacute;a nhanh ngay khi vừa mở s&aacute;ng m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-009.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Cảm biến vân tay\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-009.jpg\" title=\"OPPO A54 | Cảm biến vân tay\" /></a></p>\r\n\r\n<h2>Bộ 3 camera sau AI lưu lại khoảnh khắc đ&aacute;ng nhớ</h2>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-oppo-a\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">Điện thoại OPPO A</a>&nbsp;trang bị hệ thống 3 camera ở mặt sau bao gồm: Camera ch&iacute;nh 13 MP,&nbsp;camera macro&nbsp;2 MP v&agrave; camera xo&aacute; ph&ocirc;ng&nbsp;2 MP với nhiều t&iacute;nh năng chụp phong ph&uacute; sẽ gi&uacute;p bạn thoải m&aacute;i ghi lại những khoảnh khắc hằng ng&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-003.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Camera chính 13 MP, camera macro siêu cận 2 MP và cảm biến 2 MP đo chiều sâu \" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-003.jpg\" title=\"OPPO A54 | Camera chính 13 MP, camera macro siêu cận 2 MP và cảm biến 2 MP đo chiều sâu \" /></a></p>\r\n\r\n<p>C&oacute; thể thấy, với thiết lập camera n&agrave;y OPPO A54 đ&aacute;p ứng tốt nhu cầu chụp ảnh đa dạng trong nhiều điều kiện chụp, cho bạn thỏa sức s&aacute;ng tạo, bắt kịp xu hướng mới với những kiểu chụp x&oacute;a ph&ocirc;ng hay si&ecirc;u cận macro ngay tr&ecirc;n thiết bị di động.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-010.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Giao diện chụp ảnh\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-010.jpg\" title=\"OPPO A54 | Giao diện chụp ảnh\" /></a></p>\r\n\r\n<p>Camera selfie được n&acirc;ng cấp với độ ph&acirc;n giải 16 MP, t&iacute;ch hợp AI Beauty 2.0 tự động điều chỉnh m&agrave;u da v&agrave; &aacute;nh s&aacute;ng xung quanh sẵn s&agrave;ng gi&uacute;p bạn trở n&ecirc;n rạng rỡ hơn hoặc lưu lại những khoảnh khắc vui vẻ c&ugrave;ng với bạn b&egrave; trong những bức ảnh selfie sống động v&agrave; đầy m&agrave;u sắc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-16.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Camera selfie 16 MP, tích hợp AI Beauty 2.0\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-16.jpg\" title=\"OPPO A54 | Camera selfie 16 MP, tích hợp AI Beauty 2.0\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh ổn định, bộ nhớ khủng lưu trữ thả ga</h3>\r\n\r\n<p>Sức mạnh của OPPO A54 được cung cấp từ vi xử l&yacute; Helio P35 8 nh&acirc;n, cho bạn những trải nghiệm mượt m&agrave;, nhanh ch&oacute;ng với c&aacute;c t&aacute;c vụ cơ bản như lướt web, xem phim video tr&ecirc;n Youtube, video call, dạo Facebook cũng như giải tr&iacute; với những tựa game nhẹ nh&agrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-17.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Trang bị vi xử lý Helio P35 8 nhân\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-17.jpg\" title=\"OPPO A54 | Trang bị vi xử lý Helio P35 8 nhân\" /></a></p>\r\n\r\n<p>OPPO A54 đ&aacute;p ứng nhu cầu lưu trữ ng&agrave;y c&agrave;ng cao của người d&ugrave;ng khi trang bị&nbsp;bộ nhớ trong 128 GB&nbsp;si&ecirc;u lớn, gi&uacute;p cho bạn thả ga c&agrave;i đặt ứng dụng hay lưu nhiều video v&agrave; ảnh chụp hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-7.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Bộ nhớ trong 128 GB, RAM 4 GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-7.jpg\" title=\"OPPO A54 | Bộ nhớ trong 128 GB, RAM 4 GB\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-ram-4gb\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">Điện thoại&nbsp;RAM 4 GB</a>&nbsp;c&ugrave;ng t&iacute;nh năng Hyperboost, gi&uacute;p quản l&yacute; RAM th&ocirc;ng minh v&agrave; hiệu quả hơn, bạn c&oacute; thể mở nhiều ứng dụng, game nhưng m&aacute;y vẫn hoạt động cực ổn định, kh&ocirc;ng bị giật lag qu&aacute; nhiều.</p>\r\n\r\n<h3>Trải nghiệm nhiều hơn với m&agrave;n h&igrave;nh lớn&nbsp;</h3>\r\n\r\n<p>Xu hướng m&agrave;n h&igrave;nh đục lỗ trở n&ecirc;n phổ biến hơn khi được trang bị tr&ecirc;n mẫu smartphone tầm trung OPPO A54, thiết kế n&agrave;y kh&ocirc;ng chỉ gi&uacute;p m&agrave;n h&igrave;nh rộng hơn m&agrave; c&ograve;n mang đến bạn trải nghiệm nội dung giải tr&iacute; một c&aacute;ch trọn vẹn nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-002.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Màn hình có kích thước đạt đến 6.5 inch chuẩn HD+\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-002.jpg\" title=\"OPPO A54 | Màn hình có kích thước đạt đến 6.5 inch chuẩn HD+\" /></a></p>\r\n\r\n<p>Chất lượng hiển thị của OPPO A54 kh&aacute; tốt, với m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước đạt đến 6.5 inch chuẩn HD+, phủ tấm nền IPS LCD, bạn sẽ được kh&aacute;m ph&aacute; những khung h&igrave;nh r&otilde; n&eacute;t, m&agrave;u sắc tươi tắn tự nhi&ecirc;n v&agrave; kh&ocirc;ng bị giảm chất lượng khi nh&igrave;n từ nhiều ph&iacute;a.</p>\r\n\r\n<h3>Pin khủng sử dụng thoải m&aacute;i 2 ng&agrave;y</h3>\r\n\r\n<p>Với&nbsp;dung lượng pin&nbsp;l&ecirc;n đến 5000 mAh, theo như h&atilde;ng c&ocirc;ng bố th&igrave; OPPO A54 cung cấp l&ecirc;n đến 19.9 giờ ph&aacute;t video trực tuyến v&agrave; 41 giờ nghe nhạc, chỉ cần 1 lần sạc đầy l&agrave; đủ để cho A54 đồng h&agrave;nh trong mọi hoạt động của bạn trong suốt cả ng&agrave;y d&agrave;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-005.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Pin dung lượng khủng\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-4g-005.jpg\" title=\"OPPO A54 | Pin dung lượng khủng\" /></a></p>\r\n\r\n<p>Bạn kh&ocirc;ng cần qu&aacute; lo lắng khi pin sắp hết, bởi chiếc điện thoại sẽ nhanh ch&oacute;ng được sạc đầy trở lại với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo thêm các mẫu điện thoại có hỗ trợ sạc nhanh tại Thegioididong.com\" type=\"Tham khảo thêm các mẫu điện thoại có hỗ trợ sạc nhanh tại Thegioididong.com\">sạc nhanh</a>&nbsp;18 W hoặc bật ngay chế độ si&ecirc;u tiết kiệm pin, với 5% pin cuối c&ugrave;ng bạn c&oacute; thể gọi điện đến 91 ph&uacute;t, duy tr&igrave; li&ecirc;n lạc v&agrave;o những l&uacute;c cần thiết.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-10.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Hỗ trợ sạc nhanh 18 W\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-10.jpg\" title=\"OPPO A54 | Hỗ trợ sạc nhanh 18 W\" /></a></p>\r\n\r\n<p>T&iacute;nh năng sạc qua đ&ecirc;m được tối ưu h&oacute;a gi&uacute;p việc sạc pin qua đ&ecirc;m an to&agrave;n hơn, điều chỉnh sạc theo giờ ngủ của bạn v&agrave; đảm bảo điện thoại được sạc đủ 100% ngay khi bạn thức dậy, gi&uacute;p duy tr&igrave; tuổi thọ pin l&acirc;u hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-9.jpg\" onclick=\"return false;\"><img alt=\"OPPO A54 | Tính năng sạc qua đêm được tối ưu hóa\" src=\"https://cdn.tgdd.vn/Products/Images/42/236768/oppo-a54-9.jpg\" title=\"OPPO A54 | Tính năng sạc qua đêm được tối ưu hóa\" /></a></p>\r\n\r\n<p>T&oacute;m lại, OPPO A54 vẫn mang trong m&igrave;nh sức h&uacute;t khi sở hữu đầy đủ ưu thế vốn c&oacute; của OPPO, chiếc smartphone sẽ ph&ugrave; hợp cho giới trẻ, những ai đang t&igrave;m một&nbsp;thiết bị vừa t&uacute;i tiền, c&oacute; thiết kế s&agrave;nh điệu v&agrave; thời lượng pin cực l&acirc;u để thỏa sức kh&aacute;m ph&aacute; những t&iacute;nh năng mới.&nbsp;</p>\r\n', 'oppo-a54-den-1-org.jpg', 1, 1, 3990000, 4490000, 4, 'Nguyễn Kim Chí', 1663600023, 1664382754, 'Nguyễn Kim Chí'),
(19, 'Laptop Acer Nitro 5', 'Laptop-Acer-Nitro-5', 'Hư gì đổi nấy trong 15 ngày nếu lỗi do nhà sản xuất (trừ các nhóm: Đồng hồ, phụ kiện có điện, Phụ kiện xe đạp, Phụ kiện không điện, xe đạp, xe đạp điện)\r\nKhông áp dụng chung với khuyến mãi khác.\r\nKhuyến mãi chưa bao gồm phí giao/chuyển hàng.', '<h3><a href=\"https://www.thegioididong.com/laptop/acer-nitro-5-gaming-an515-57-553e-i5-nhqensv006\" target=\"_blank\" title=\"Xem thêm laptop Acer Nitro 5 Gaming AN515 57 553E (NH.QENSV.006)\">Laptop Acer Nitro 5 Gaming AN515 57 553E (NH.QENSV.006)</a>&nbsp;l&agrave; sự c&acirc;n bằng ho&agrave;n hảo của diện mạo hầm hố chuẩn&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\" title=\"Xem thêm laptop gaming đang bán tại thegioididong.com\">laptop gaming</a>&nbsp;c&ugrave;ng hiệu năng của chip Intel thế hệ 11 mạnh mẽ kết hợp với card m&agrave;n h&igrave;nh rời NVIDIA sẵn s&agrave;ng c&ugrave;ng bạn chinh phục tr&ecirc;n mọi đấu trường ảo.</h3>\r\n\r\n<p>&bull; Sở hữu hiệu năng mạnh mẽ của&nbsp;<strong>CPU Intel Core i5&nbsp;11400H</strong>, đi k&egrave;m card m&agrave;n h&igrave;nh rời&nbsp;<strong>RTX 3050 4 GB&nbsp;</strong>cung cấp khả năng chiến game mượt m&agrave;, c&aacute;c t&aacute;c vụ hằng ng&agrave;y như: Word, Excel, PowerPoint,... hay thiết kế đồ hoạ Premiere, After Effect, Photoshop,... sẽ kh&ocirc;ng l&agrave;m kh&oacute; được chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Xem thêm laptop đang bán tại thegioididong.com\">laptop</a>&nbsp;n&agrave;y.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-acer-nitro\" target=\"_blank\" title=\"Xem thêm laptop Acer Nitro đang bán tại thegioididong.com\">Laptop Acer Nitro</a>&nbsp;c&oacute;&nbsp;<strong>RAM 8 GB&nbsp;</strong>gi&uacute;p đa nhiệm mượt m&agrave;, hạn chế t&igrave;nh trạng giật lag xảy ra.&nbsp;<strong>SSD 512 GB&nbsp;</strong>được trang bị tr&ecirc;n m&aacute;y mang lại kh&ocirc;ng gian lưu trữ đủ d&ugrave;ng, n&acirc;ng cao tốc độ truy xuất dữ liệu cũng như khởi động ứng dụng cực nhanh.</p>\r\n\r\n<p>&bull; M&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch&nbsp;</strong>với độ ph&acirc;n giải<strong>&nbsp;Full HD (1920 x 1080)</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>144 Hz</strong>, c&ocirc;ng nghệ&nbsp;<strong>IPS&nbsp;</strong>cho g&oacute;c nh&igrave;n người d&ugrave;ng l&ecirc;n đến&nbsp;<strong>178 độ</strong>. B&ecirc;n cạnh đ&oacute; chiếc m&aacute;y được t&iacute;ch hợp c&ocirc;ng nghệ&nbsp;<strong>LED Blacklit</strong>,&nbsp;<strong>TFT</strong>&nbsp;v&agrave;&nbsp;<strong>Acer ComfyView</strong>&nbsp;gi&uacute;p người d&ugrave;ng kh&ocirc;ng bị ch&oacute;i mắt sau thời gian d&agrave;i sử dụng.</p>\r\n\r\n<p>&bull; Được ho&agrave;n thiện từ lớp&nbsp;<strong>vỏ nhựa</strong>&nbsp;nhưng&nbsp;<a href=\"https://www.thegioididong.com/laptop-acer\" target=\"_blank\" title=\"Xem thêm laptop Acer đang bán tại thegioididong.com\">laptop Acer</a>&nbsp;vẫn rất cứng c&aacute;p, thiết kế mạnh mẽ c&ugrave;ng đ&egrave;n nền&nbsp;<strong>b&agrave;n ph&iacute;m chuyển m&agrave;u RGB</strong>&nbsp;cho ph&eacute;p người d&ugrave;ng tuỳ biến theo sở th&iacute;ch, chiếc m&aacute;y chỉ nặng&nbsp;<strong>2.2 kg&nbsp;</strong>v&agrave; d&agrave;y&nbsp;<strong>23.9 mm</strong>&nbsp;sẵn s&agrave;ng theo chủ nh&acirc;n đến mọi nơi.</p>\r\n\r\n<p>&bull; Đa dạng cổng kết nối với c&aacute;c thiết bị ngoại vi với 3 x USB 3.2, HDMI, Jack tai nghe 3.5 mm, LAN (RJ45), USB Type-C.</p>\r\n\r\n<p>&bull; C&ocirc;ng nghệ &acirc;m thanh&nbsp;<strong>DTS X:Ultra</strong>&nbsp;gi&uacute;p t&aacute;i tạo &acirc;m thanh tốt đem lại trải nghiệm ch&igrave;m đắm trong kh&ocirc;ng gian chiến game cực đ&atilde;.</p>\r\n', 'acer-nitro-5-avart.jpg', 1, 1, 20390000, 24990000, 6, 'Nguyễn Kim Chí', 1663853696, 1664382778, 'Nguyễn Kim Chí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `link_image` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`id`, `product_id`, `link_image`) VALUES
(34, 19, 'acer-nitro-5-gaming-an515-57-553e-i5-nhqensv006-4.jpg'),
(35, 19, 'acer-nitro-5-gaming-an515-57-553e-i5-nhqensv006-2.jpg'),
(36, 19, 'acer-nitro-5-gaming-an515-57-553e-i5-nhqensv006-1.jpg'),
(37, 3, 'oppo-a54-den-6-org.jpg'),
(38, 3, 'oppo-a54-den-5-org.jpg'),
(39, 3, 'oppo-a54-den-4-org.jpg'),
(43, 2, 'iphone-11-1-1.jpg'),
(44, 2, 'iphone-11-3-1.jpg'),
(45, 2, 'iphone-11-2-2.jpg'),
(58, 1, 'samsung-galaxy-z-flip4-tim-128gb-2.jpg'),
(59, 1, 'samsung-galaxy-z-flip4-tim-128gb-4.jpg'),
(60, 1, 'samsung-galaxy-z-flip4-tim-128gb-3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_service`
--

CREATE TABLE `tbl_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `service_thumb` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `service_desc` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `creator` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_user` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_service`
--

INSERT INTO `tbl_service` (`service_id`, `service_name`, `service_thumb`, `service_desc`, `creator`, `created_at`, `updated_user`, `updated_at`) VALUES
(1, 'Miễn phí vận chuyển', 'icon-1.png', 'Tới tận tay khách hàng', 'Nguyễn Kim Chí', 1663691632, 'Nguyễn Kim Chí', 1663693231),
(2, 'Tư vấn 24/7', 'icon-2.png', '1900.9999', 'Nguyễn Kim Chí', 1663691752, NULL, NULL),
(3, 'Tiết kiệm hơn', 'icon-3.png', 'Với nhiều ưu đãi cực lớn', 'Nguyễn Kim Chí', 1663691825, NULL, NULL),
(4, 'Thanh toán nhanh', 'icon-4.png', 'Hỗ trợ nhiều hình thức', 'Nguyễn Kim Chí', 1663691840, NULL, NULL),
(6, 'Đặt hàng online', 'icon-5.png', 'Thao tác đơn giản', 'Nguyễn Kim Chí', 1663692866, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slider_thumb` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_by` int(11) DEFAULT NULL,
  `slider_desc` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_user` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_thumb`, `order_by`, `slider_desc`, `creator`, `created_at`, `updated_at`, `updated_user`) VALUES
(1, 'Oppo F5', 'slider-02.png', 2, '<p>Oppo F5</p>\r\n', 'Nguyễn Kim Chí', 1663522768, 1663746433, 'Nguyễn Kim Chí'),
(3, 'Samsung ', 'slider-03.png', 3, '<p>Samsung</p>\r\n', 'Nguyễn Kim Chí', 1663556372, 1663746491, 'Nguyễn Kim Chí'),
(4, 'Samsung addwash', 'slider-01.png', 1, '<p>Samsung addwash</p>\r\n', 'Nguyễn Kim Chí', 1663746554, 1663772488, 'Nguyễn Kim Chí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `fullname`, `username`, `email`, `password`, `address`, `phone_number`, `created_at`) VALUES
(1, 'Nguyễn Kim Chí', 'nguyenkimchi10112003', 'nguyenkimchi10112003@gmail.com', '07fbbb3ffa16fd0431d55f93fd058fa2', NULL, NULL, NULL),
(2, 'Nguyễn Kim Chí', 'admin123', 'nguyenkimchi782@gmail.com', '0192023a7bbd73250516f069df18b500', '', NULL, 1666172136);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `tbl_guest`
--
ALTER TABLE `tbl_guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Chỉ mục cho bảng `tbl_layout`
--
ALTER TABLE `tbl_layout`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_guest`
--
ALTER TABLE `tbl_guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_layout`
--
ALTER TABLE `tbl_layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `tbl_guest` (`guest_id`);

--
-- Các ràng buộc cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD CONSTRAINT `tbl_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  ADD CONSTRAINT `tbl_order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`);

--
-- Các ràng buộc cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`);

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`);

--
-- Các ràng buộc cho bảng `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD CONSTRAINT `tbl_product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
