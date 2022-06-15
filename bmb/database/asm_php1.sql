-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2022 lúc 11:12 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm_php1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Addidas', '2022-05-05 11:50:15', '2022-05-05 16:05:24'),
(2, 'Sneaker', '2022-05-05 11:50:15', '2022-05-05 14:16:54'),
(3, 'Nike', '2022-05-05 11:50:15', '2022-05-05 16:12:25'),
(38, 'Li-ning', '2022-05-05 10:57:52', '2022-05-05 11:00:33'),
(49, 'Peak', '2022-05-05 14:24:54', '2022-05-09 05:13:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone_number`, `email`, `address`, `note`, `order_date`) VALUES
(143, 'Nguyễn Đăng Thành', '0387578520', 'bossryo68a@gmail.com', '68.65.120.213, viet nam', '', '2022-05-05 08:37:06'),
(144, 'DEMO', '03875723232', 'DEMO@gmail.com', 'DEMO', 'DEMO', '2022-05-05 08:42:16'),
(145, 'đào đức huy', '0123456789', 'huycute@gmail.com', '1 ha noi', 'dep nha', '2022-05-09 15:51:53'),
(146, 'đào đức huy', '123456789', 'huy@gmail.com', 'ha noi', '1', '2022-05-12 16:37:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `num`, `price`, `status`) VALUES
(1, 143, 2, 7, 3, 35000, 'Đã hủy'),
(2, 143, 4, 7, 1, 25000, 'Đã hủy'),
(3, 143, 12, 7, 1, 30000, 'Đã hủy'),
(4, 143, 14, 7, 1, 35000, 'Đã hủy'),
(5, 144, 12, 8, 11, 30000, 'Đã hủy'),
(6, 145, 2, 7, 1, 2500000, 'Đang giao'),
(155, 146, 12, 7, 12, 1953820, 'Đang chuẩn bị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `number`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`) VALUES
(2, 'GIÀY SUPERSTAR PRIDE', 2500000, 100, 'uploads/addidas.jpg', '<font color=\"#000000\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</font><br>', 1, '2022-05-05 17:41:08', '2022-05-05 14:50:49'),
(4, 'Nike Air Jordan 1 High Zoom CMFT – Black Chile Red', 5100000, 30, 'uploads/nike.jpg', 'Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.', 3, '2022-04-17 17:25:47', '2022-05-05 16:12:51'),
(5, 'AIR JORDAN 1 CYBER ACTIVE FUCHSIA', 4000000, 10, 'uploads/sneaker.jpg', '<span style=\"color: rgb(83, 56, 44); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</span><br>', 2, '2022-04-17 18:36:37', '2022-05-05 16:24:51'),
(8, 'GIÀY CONTINENTAL 80', 2700000, 10, 'uploads/addidas1.jpg', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 20px;=\"\" font-weight:=\"\" 700;=\"\" text-align:=\"\" center;\"=\"\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</span><br></p>', 1, '2022-04-17 16:07:58', '2022-05-05 16:44:51'),
(9, 'GIÀY SUPERSTAR', 2500000, 46, 'uploads/addidas3.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 1, '2022-04-17 16:38:58', '2022-05-05 16:02:52'),
(10, 'Giày Super Light 18 nam ARVR007-1\n', 2150180, 44, 'uploads/lining4.jpg', '<p><font color=\"#53382c\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</font><br></p>', 38, '2022-04-17 16:12:59', '2022-05-05 16:18:52'),
(12, 'Giày chạy bộ nam ARSR019-N\n', 1953820, 15, 'uploads/lining3.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 38, '2022-04-17 10:20:53', '2022-05-05 16:45:54'),
(13, 'NEW BALANCE 550 WHITE NAVY', 4000000, 20, 'uploads/sneaker1.jpg', '<span style=\"color: rgb(83, 56, 44); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</span><br>', 2, '2022-04-17 17:41:08', '2022-05-05 16:40:53'),
(14, 'MLB CHUNKY LOW WHITE', 1790000, 5, 'uploads/sneaker2.jpg', '<span style=\"color: rgb(83, 56, 44); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</span><br>', 2, '2022-04-17 17:41:08', '2022-05-05 16:00:55'),
(16, 'Nike Lebron Lebron Soldier 14 \'USA\' CK6024-100', 3250000, 30, 'uploads/nike1.jpg', 'Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.', 3, '2022-04-17 17:25:47', '2022-05-05 16:17:55'),
(17, 'AIR MAX 97 SAIL WHEAT', 2890000, 10, 'uploads/sneaker4.jpg', 'Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.', 2, '2022-04-17 18:36:37', '2022-05-05 16:35:55'),
(18, 'GIÀY STAN SMITH PRIDE', 2500000, 10, 'uploads/addidas2.jpg', '<p><span style=\"color: rgb(0, 0, 0); font-size: 1rem;\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</span><br></p><p><br></p>', 1, '2022-04-17 16:07:58', '2022-05-05 16:48:55'),
(19, 'GIÀY CONTINENTAL 80 STRIPES', 2700000, 46, 'uploads/addidas4.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 1, '2022-04-17 16:38:58', '2022-05-05 16:03:56'),
(20, 'GIÀY GALAXY 5', 1500000, 44, 'uploads/addidas5.jpg', '<p><span style=\"color: rgb(83, 56, 44); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</span><br></p>', 1, '2022-04-17 16:12:59', '2022-05-05 16:20:56'),
(21, 'Giày chạy bộ nam ARHR033-2\n', 1367670, 15, 'uploads/lining2.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 38, '2022-04-17 10:20:53', '2022-05-05 16:42:56'),
(26, 'AIR JORDAN 1 ZOOM AIR CMFT PINK OXFORD', 5290000, 100, 'uploads/sneaker3.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 2, '2022-04-17 08:36:27', '2022-05-05 16:57:56'),
(28, ' Nike Court Legacy White Desert Ochre CU4150-102', 2180000, 90, 'uploads/nike2.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 3, '2022-04-17 08:25:31', '2022-05-05 16:13:57'),
(29, 'Nike Renew Run 2 Men\'s Road Running Shoe CU3504-005', 3250000, 20, 'uploads/nike3.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 3, '2022-04-17 08:19:32', '2022-05-05 16:28:57'),
(30, 'Giày chạy bộ nam ARMS003-2', 2150180, 100, 'uploads/lining.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 38, '2022-04-17 08:01:37', '2022-05-05 17:03:01'),
(31, 'Giày chạy bộ nam ARMS015-4', 3230180, 90, 'uploads/lining1.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.<br></p>', 38, '2022-04-17 08:51:37', '2022-05-05 17:28:01'),
(43, 'Giày bóng rổ Nam PEAK Taichi Flash 3.0 ET21093A – Vàng Cam', 2290000, 10, 'uploads/peak.jpg', '<p>Mẫu giày thường xuyên cập nhật những đôi mới nhất, HOT NHẤT.</p>', 49, '2022-05-05 14:42:55', '2022-05-05 14:42:55'),
(44, 'Giày Bóng Rổ Nam Peak Basketball Outdoor Beast 7.2 E221041A – Hồng', 1690000, 100, 'uploads/peak1.jpg', '<p>giày đẹp</p>', 49, '2022-05-09 15:03:46', '2022-05-09 15:03:46'),
(45, 'Giày Bóng Rổ Nam Peak Basketball Outdoor Beast 7.2 E221041A – Vàng Cam', 1690000, 100, 'uploads/peak2.jpg', '<p>giày peak bóng rổ đẹp</p>', 49, '2022-05-09 15:12:47', '2022-05-09 15:12:47'),
(46, 'Giày bóng rổ Nam PEAK Beast E14021A – Xanh Lá', 1606000, 100, 'uploads/peak3.jpg', '<p>giày peak bóng rổ đẹp</p>', 49, '2022-05-09 15:12:48', '2022-05-09 15:12:48'),
(47, 'Giày Bóng Rổ Nam PEAK Basketball Cavalry E14101A – Trắng Xanh', 1511000, 100, 'uploads/peak4.jpg', '<p>giày peak đẹp nè mua đê mua dê</p>', 49, '2022-05-09 15:17:49', '2022-05-09 15:17:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(28) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `hoten`, `username`, `password`, `phone`, `email`) VALUES
(7, 'Dương Đình Khánh', 'AdminKhanh', 'khanh2001', '0985363602', 'kiniemboquenjerry@gmail.com'),
(8, 'Đào Đức Huy', 'huy1', 'huy2001', '0387578520', 'daoduchuy@gmail.com'),
(59, 'Dương Đình Khánh', 'khanhlangta01', '5182254dk', '0945678489', 'kiniemboquenjerry@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
