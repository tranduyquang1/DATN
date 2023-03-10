-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2021 lúc 08:16 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thue_can_ho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `can_ho`
--

CREATE TABLE `can_ho` (
  `ma_can` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ma_quan` int(12) NOT NULL COMMENT 'mã quận',
  `id` int(12) NOT NULL COMMENT 'mã phường',
  `ma_loai` int(12) NOT NULL COMMENT 'mã loại căn',
  `ma_tk` int(12) NOT NULL,
  `amount` int(11) DEFAULT NULL COMMENT 'Số phòng trống ',
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ',
  `ten_can_ho` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'tên căn hộ',
  `dien_tich` float DEFAULT NULL COMMENT 'diện tích ',
  `tang` tinyint(3) DEFAULT NULL COMMENT 'Số tầng',
  `huong_nha` tinyint(8) DEFAULT NULL COMMENT 'hướng nhà',
  `tien_ich` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tiện ích',
  `chi_phi_khac` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'chi phí khác',
  `so_phong_ngu` tinyint(2) DEFAULT NULL COMMENT 'Số phòng ngủ',
  `so_phong_vs` tinyint(2) DEFAULT NULL COMMENT 'Số phòng vệ sinh',
  `gia_thue` float NOT NULL DEFAULT 0 COMMENT 'Giá thuê',
  `hinh` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinha` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhb` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhc` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `an_hien` tinyint(1) DEFAULT NULL COMMENT 'Ẩn hiện',
  `trang_thai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `can_ho`
--

INSERT INTO `can_ho` (`ma_can`, `ma_quan`, `id`, `ma_loai`, `ma_tk`, `amount`, `dia_chi`, `ten_can_ho`, `dien_tich`, `tang`, `huong_nha`, `tien_ich`, `chi_phi_khac`, `so_phong_ngu`, `so_phong_vs`, `gia_thue`, `hinh`, `hinha`, `hinhb`, `hinhc`, `an_hien`, `trang_thai`, `ghi_chu`) VALUES
(13, 4, 48, 1, 12, 10, 'Đ. Bến Vân Đồn, P.12, Q.4', 'Cho thuê căn hộ tầng trung Saigon Royal quận 4 - Nội thất đầy đủ, Thông thoáng', 50, 23, 1, '<p>gần c&aacute;c trường học từ mẫu gi&aacute;o cho đến đại học danh tiếng : Trường mầm non Sao Mai , Trường cấp 1 Đặng Trần C&ocirc;n , Trường cấp 2 Nguyễn Hữu Thọ , Trường cấp 3 Nguyễn Tr&atilde;i , Trường đại học Luật TP. Hồ Ch&iacute; Minh, bệnh viện Quận 4,...</p>\r\n', '', 2, 1, 18500000, 'nha1-1.jpg', 'nha1-2.jpg', 'nha1-3.jpg', 'nha1-4.jpg', 1, '1', 'Còn phòng'),
(14, 4, 48, 2, 12, 12, 'Đ. Bến Vân Đồn, P.12, Q.4', 'Cho thuê căn hộ Officetel tầng thấp Sài Gòn Royal quận 4', 40, 0, 2, '<p>Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 12000000, 'nha2-1.jpg', 'nha2-2.jpg', 'nha2-3.jpg', 'nha2-4.jpg', 1, '1', 'Còn phòng'),
(15, 4, 48, 1, 12, 1, 'Đ. Bến Vân Đồn, P.12, Q.4', 'Cho thuê căn hộ Officetel tầng cao Sài Gòn Royal quận 4 - Nội thất đầy đủ, View Betexco', 35, 0, 1, '<p>Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 13000000, 'nha3-1.jpg', 'nha3-2.jpg', 'nha3-3.jpg', 'nha3-4.jpg', 1, '1', 'Còn phòng'),
(20, 4, 48, 2, 22, 9, 'Đ. Bến Vân Đồn, P.12, Q.4', 'Cho thuê trọ tại Cổ Điền', 115, 0, 7, '<p>-&nbsp;<strong>Được trang bị nội thất gồm:&nbsp;m&aacute;y lạnh, sofa, giường tủ,&nbsp;thiết bị ph&ograve;ng tắm, ph&ograve;ng vệ sinh,...</strong></p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt , khu thương mại , ph&ograve;ng tập GYM hiện đại, vườn thượng uyển s&acirc;n thượng, nh&agrave; h&agrave;ng, caf&eacute;, khu vui chơi trẻ em v&agrave; vườn treo Babylon tại tầng thượng.</p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch ngoại khu</strong>:&nbsp;gần c&aacute;c trường học từ mẫu gi&aacute;o cho đến đại học danh tiếng : Trường mầm non Sao Mai , Trường cấp 1 Đặng Trần C&ocirc;n , Trường cấp 2 Nguyễn Hữu Thọ , Trường cấp 3 Nguyễn Tr&atilde;', '', 3, 2, 46710000, 'nha8-1.jpg', 'nha8-2.jpg', 'nha8-3.jpg', 'nha8-4.jpg', 1, '1', 'Còn phòng'),
(21, 4, 48, 1, 21, 8, '15/6 Đường Đoàn Nhữ Hài, Phường 12, Quận 4, Hồ Chí Minh', 'Cho thuê căn hộ 3 phòng ngủ tầng cao Saigon Royal quận 4 - Nội thất đầy đủ, Thông thoáng', 40, 0, 7, '<p>-&nbsp;<strong>Được trang bị nội thất gồm:&nbsp;m&aacute;y lạnh, sofa, giường tủ,&nbsp;thiết bị ph&ograve;ng tắm, ph&ograve;ng vệ sinh,...</strong></p>\n\nCăn hộ mới xây dựng, sạch sẽ thoáng mát, an ninh, tiện lợi miễn phí wifi, xe oto đậu thoải mái\n\nCăn hộ fun tiện nghi 1,diện tích 25m2 đến 45m2.có wc,tủ lạnh,giường,nệm,tủ quần áo,máy lạnh,máy giặt,tivi,sân phơi đồ (nội thất tiêu chuẩn khách sạn) Giá: 3,5tr đến 6tr/ tr/tháng có phòng bếp,phòng ngủ riêng biệt\n\nĐiện nước tính theo giá nhà nước.\n\nkế bên quận 1 sát bên trường đại học nguyễn tất thành.......vvv\n\nĐịa chỉ : 15/6 Đoàn Như Hài,P12,Quận 4,TP HCM\n\nLiên hệ chính chủ : Mr Thắng 0902224136', '', 1, 1, 13000000, 'nha9-1.jpg', 'nha9-2.jpg', 'nha9-3.jpg', 'nha9-4.jpg', 1, '0', 'Còn phòng'),
(22, 4, 48, 1, 21, 0, 'Đ. Bến Vân Đồn, P.12, Q.4', 'Cho thuê căn hộ Officetel tầng thấp Sài Gòn Royal quận 4 - Nội thất đầy đủ', 34, 0, 8, '<p><strong>- Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt, khu thương mại, ph&ograve;ng tập GYM hiện đại...</p>\r\n\r\n<p><strong>- Tiện &iacute;ch ngoại khu:</strong>&nbsp;Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 10000000, 'nha10-1.jpg', 'nha10-2.jpg', 'nha10-3.jpg', 'nha10-4.jpg', 0, '1', 'Còn phòng'),
(23, 6, 70, 2, 21, 5, 'Đ. Bến Vân Đồn, P.12, Q.4', 'Cho thuê trọ sinh viên', 21, 2, 0, '<p>- <strong>Tiện ích nội khu</strong>: Hồ bơi, phòng Gym, Sân vườn nội bộ, hệ thống an ninh...</p>\r\n\r\n<p>- <strong>Tiện ích ngoại khu:</strong> Trường TH Nguyễn Văn Trỗi, Trường THCS Chi Lăng, UBND Phường, Trạm y tế...</p>\r\n\r\n<p>- <strong>Giá thuê 12 triệu/tháng. Hợp đồng thuê tối thiểu 1 năm - Đặt cọc 2 tháng tiền thuê nhà.</strong></p>\r\n', '', 1, 1, 12000000, 'nha11-1.jpg', 'nha11-2.jpg', 'nha11-3.jpg', 'nha11-4.jpg', 1, '1', 'Còn phòng'),
(25, 3, 22, 2, 21, 3, 'Võ Thị Sáu, Phường 8, Quận 3, Hồ Chí Minh', 'Cho thuê căn hộ quận 3\r\n', 205, 1, 1, '<p><strong>- Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt, khu thương mại, ph&ograve;ng tập GYM hiện đại...</p>\r\n', '', 1, 1, 4520000, 'nha13-1.jpg', 'nha13-2.jpg', 'nha13-3.jpg', 'nha13-4.jpg', 1, '1', 'Còn phòng'),
(28, 11, 145, 1, 22, 0, ' 262/20 Lạc Long Quân, Phường 10, Quận 11, Hồ Chí Minh', 'Cần cho thuê căn hộ Hoa Sen', 74, 0, 8, '<p>- <strong>Tiện ích nội khu</strong>: Hồ bơi, phòng Gym, Sân vườn nội bộ, hệ thống an ninh...</p>\r\n\r\n<p>- <strong>Tiện ích ngoại khu:</strong> Trường TH Nguyễn Văn Trỗi, Trường THCS Chi Lăng, UBND Phường, Trạm y tế...</p>\r\n\r\n<p>- <strong>Giá thuê 12 triệu/tháng. Hợp đồng thuê tối thiểu 1 năm - Đặt cọc 2 tháng tiền thuê nhà.</strong></p>\r\n', '', 2, 2, 13000000, 'nha16-1.jpg', 'nha16-2.jpg', 'nha16-3.jpg', 'nha16-4.jpg', 1, '1', 'Còn phòng'),
(32, 5, 61, 2, 22, 5, '120 Đường Hồng Bàng, Phường 3, Quận 5, Hồ Chí Minh', 'Cho thuê căn hộ tầng trệt chung cư mini quận 5\r\n', 79, 0, 7, 'Vị trí: 120 Hồng Bàng, Phường 3 Quận 5\r\n\r\n- Hẻm lớn, oto ra vào thoải mái, đưa đón tận cửa\r\n\r\n- Gần ĐH Y Dược HCM, ĐH Sài Gòn, ĐH Sư Phạm\r\n\r\n- Thuận tiện di chuyển Q4, Q1, Q8, Q10, Q3.', '', 2, 2, 8000000, 'nha20-1.jpg', 'nha20-2.jpg', 'nha20-3.jpg', 'nha20-4.jpg', 1, '1', 'Còn phòng'),
(34, 4, 37, 2, 12, 10, '30 Tôn Thất Thuyết, Phường 18, Quận 4, Hồ Chí Minh', 'Cho thuê phòng trọ ', 58, 0, 4, '<p>- Vị tr&iacute; căn hộ ngay&nbsp;<strong>mặt tiền Nguyễn Kho&aacute;i</strong>. Thuận tiện di chuyển&nbsp;<strong>sang quận 1, 5, 7, 8...</strong></p>\r\n\r\n<p>-&nbsp;Tiện &iacute;ch:<strong>&nbsp;khu vui chơi, cửa h&agrave;ng tiện lợi, xung quanh c&oacute; c&aacute;c trường tiểu học, Hồ bơi, C&ocirc;ng an phường, Si&ecirc;u thị...</strong></p>\r\n', '', 2, 2, 16000000, 'nha22-1.jpg', 'nha22-2.jpg', 'nha22-3.jpg', 'nha22-4.jpg', 1, '1', 'Còn phòng'),
(38, 6, 80, 1, 12, 8, '963A1 Đường Lò Gốm, Phường 8, Quận 6, Hồ Chí Minh', 'Cho Thuê Căn Hộ Lò Gốm - Lầu Cao Thoáng Mát - Full Nội Thất', 97, 19, 2, 'Tiện đi lại: Cách Metro 5 phút, quận 5 10 phút, quận 1 15P, ngay vị trí đẹp nhà mặt tiền, cách 2 căn nhà là phòng gym (nam, nữ) giúp bạn cơ thể khỏe mạnh và săn chắc, đối diện nhà là chợ.\r\n\r\nTiện nghi trong phòng.\r\n\r\n+ Máy lạnh.\r\n\r\n+ Giường nêm\r\n\r\n+ Bàn làm việc\r\n\r\n+ Tivi\r\n\r\n+ Tủ gỗ.\r\n', '', 3, 2, 15000000, 'nha26-1.jpg', 'nha26-2.jpg', 'nha26-3.jpg', 'nha26-4.jpg', 1, '1', 'Còn phòng'),
(39, 6, 80, 2, 12, 8, '433 Đường Nguyễn Văn Luông, Phường 12, Quận 6, Hồ Chí Minh', 'Cho thuê căn hộ full nội thất\r\n', 97, 19, 2, 'Cho thuê căn hộ full nội thất, view công viên thoáng mát, mới 100%, full nội thất tại 27/18H đường Kinh Dương Vương, P12, Q6. Thông ra hẻm 433 Nguyễn văn Luông, Cách vòng xoay Phú Lâm 50m, diện tích 97m2. Free ngay 1 tháng tiền phòng - giá 4,2- 4,5 triệu.\r\n\r\nTiện ích của căn hộ:\r\n\r\n* Thang máy.\r\n\r\n* Máy lạnh.\r\n\r\n* Phòng vệ sinh sử dụng riêng có cửa sổ nhỏ.', '', 3, 2, 4500000, 'nha27-1.jpg', 'nha27-2.jpg', 'nha27-3.jpg', 'nha27-4.jpg', 1, '1', 'Còn phòng'),
(40, 7, 84, 1, 12, 0, '67 Đường số 3, Phường Tân Kiểng, Quận 7, Hồ Chí Minh', 'Cho thuê căn hộ 78m2 Chung cư Oriental Plaza Quận 7 - Căn hộ full nội thất dọn vào ở ngay', 81, 0, 1, 'CẦN LẮM KHÔNG GIAN YÊN TĨNH GIỮA SÀI GÒN NHỘM NHỊP\r\n\r\nCăn hộ mini cao cấp HHT FULL HOUSE Quận 7 đầy đủ tiện nghi thích hợp cho các bạn dân văn phòng và sinh viên ,... không gian rộng , cửa sổ thoáng mát\r\n\r\nĐiện 3.800\r\n\r\nNước 100/người\r\n\r\nQuản lý 150k\r\n\r\nBạn được nuôi thú cưng\r\n\r\nĐặt biệt giá siêu ngầu \r\n', '', 2, 2, 24522000, 'nha28-1.jpg', 'nha28-2.jpg', 'nha28-3.jpg', 'nha28-4.jpg', 1, '1', 'Còn phòng'),
(42, 7, 84, 1, 12, 2, '37 Đường Mai Văn Vĩnh, Phường Tân Quy, Quận 7, Hồ Chí Minh', 'Chung cư mini giá tốt', 91, 0, 1, 'ần Lotte mart Q7, BigC Q7, Phú Mỹ Hưng, Cresent mall, Vivo city\r\n\r\nGần chợ to chả bá nhất Q7, đầy đủ mọi thứ cho bữa cơm gia đình ấm cúng mỗi ngày\r\n\r\nGần các trường Đh lớn: Đh Tôn Đức Thắng, Đh RMIT, Đh TC Marketting, Đh Nguyễn Tất Thành..\r\n\r\nWifi chạy tốc độ 100km/h bao sài, thang máy chạy như running man\r\n\r\nLiên hệ ngay 0906.324.504 anna để tư vấn nhaaaaa', '', 2, 2, 23355000, 'nha30-1.jpg', 'nha30-2.jpg', 'nha30-3.jpg', 'nha30-4.jpg', 1, '0', 'Còn phòng'),
(44, 7, 84, 2, 12, 0, '240 Đường số 8, Phường Tân Thuận Tây, Quận 7, Hồ Chí Minh', 'Cho thuê căn hộ An Gia Garden quận 7', 120, 16, 6, 'Áp dụng cho hợp đồng 1 năm\r\n\r\n️Chỉ tính điện 4000kwh\r\n\r\n️Tặng dịch vụ dọn phòng, free xe, phí quản lý, nước sinh hoạt\r\n\r\nthuê ngay hôm nay để được\r\n\r\nPhòng đẹp giá rẻ có 1 0 2\r\n\r\nUnite Group hỗ trợ cọc\r\n\r\nTặng phí vận chuyển\r\n\r\nCam kết hỗ trợ nhượng được phòng nếu khách đi trước hợp đồng\r\n\r\nLiên hệ Anna 0906.324.504 và booking sớm nha!!!', '', 3, 2, 42039000, 'nha32-1.jpg', 'nha32-2.jpg', 'nha32-3.jpg', 'nha32-3.jpg', 1, '1', 'Còn phòng'),
(45, 10, 137, 2, 12, 0, ' 129/1G Đường Bình Thới, Phường 7, Quận 10, Hồ Chí Minh', 'Cho thuê phòng trọ ở', 50, 0, 5, '<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n\r\n<p>- Xung quanh nhiều tiện &iacute;ch: Vạn Hạnh Mall, Big C miền đ&ocirc;ng, Bệnh viện 115, Bệnh viện Tim T&acirc;m Đức, Bệnh viện Nhi Đồng, Chợ H&ograve;a Hưng...</p>\r\n', '', 1, 1, 16500000, 'nha33-1.jpg', 'nha33-2.jpg', 'nha33-3.jpg', 'nha33-4.jpg', 1, '0', 'Còn phòng'),
(46, 9, 113, 1, 12, 5, '107 Đường số 12, Phường Phước Bình, Quận 9, Hồ Chí Minh', 'Cho Thuê Căn Hộ Chung Cư', 59, 0, 5, '<p>&nbsp;Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nnằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 2, 1, 6500000, 'nha34-1.jpg', 'nha34-2.jpg', 'nha34-3.jpg', 'nha34-4.jpg', 1, '1', 'Còn phòng'),
(48, 7, 84, 1, 12, 7, ' 801 Nguyễn Văn Linh, P. Tân Phú, Q7, TP. HCM', 'Cho thuê căn hộ 2 phòng ngủ 78 m2 chung cư The Signature - Midtown Quận 7 - Nội thất cao cấp đầy đủ', 81, 0, 4, '<p>&nbsp;Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 2, 2, 24522000, 'nha36-1.jpg', 'nha36-2.jpg', 'nha36-3.jpg', 'nha36-4.jpg', 1, '0', 'Còn phòng'),
(50, 10, 135, 2, 12, 3, 'Đ. Tô Hiến Thành, P.14, Q.10', 'Cho thuê nhà trọ giá rẻ khép kín', 108, 0, 6, '<p>-&nbsp;Vị tr&iacute; gần c&aacute;c tiện &iacute;ch c&ocirc;ng cộng như: UBND Quận T&acirc;n Ph&uacute;, Chợ B&agrave;u C&aacute;t, Coop Mart, Bệnh Viện Quận T&acirc;n Ph&uacute;, rạp chiếu phim Galaxy T&acirc;n B&igrave;nh,...&nbsp;C&aacute;ch s&acirc;n bay T&acirc;n Sơn Nhất 4km, c&aacute;ch Đầm Sen 2km.</p>\r\n', '', 3, 3, 35000000, 'nha38-1.jpg', 'nha38-2.jpg', 'nha38-3.jpg', 'nha38-4.jpg', 1, '1', 'Còn phòng'),
(51, 10, 135, 2, 12, 1, '334 Đường Tô Hiến Thành, Phường 14, Quận 10, Hồ Chí Minh', 'Cho thuê căn hộ 78m2 Chung cư Oriental Plaza Quận 10', 87, 0, 1, '<p>- Trong b&aacute;n k&iacute;nh 2km c&oacute; c&aacute;c tiện &iacute;ch:&nbsp;<strong>Học viện H&agrave;nh ch&iacute;nh Quốc gia, Nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Việt Nam Quốc tự,&nbsp;Bệnh viện B&igrave;nh D&acirc;n - Khu điều trị Kỹ thuật cao...</strong></p>\r\n\r\n<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n', '', 2, 2, 15000000, 'nha39-1.jpg', 'nha39-2.jpg', 'nha39-3.jpg', 'nha39-4.jpg', 1, '1', 'Còn phòng'),
(55, 7, 93, 1, 12, 0, '92A Gò Ô Môi, Phường Phú Thuận, Quận 7, Hồ Chí Minh', 'Cho thuê căn hộ quận 7 sân thượng siêu rộng', 250, 3, 1, 'Vị trí: Chợ Phú thuận Quận 7\r\n\r\nThang bộ lầu 3\r\n\r\nFull nội thất, máy giặt riêng luôn nhé\r\n\r\nTrai xinh gái đẹp nhà mình muốn ở 3,4 người cũng vô tư luôn nha\r\n\r\nAlo cho mình nha 0906.324.504 call/zalo)', '', 4, 4, 14000000, 'nha41-1.jpg', 'nha41-2.jpg', 'nha41-3.jpg', 'nha41-4.jpg', 1, '0', 'Còn phòng'),
(56, 8, 100, 2, 12, 7, 'Dương Bá Trạc, Phường 8, Quận 8, Hồ Chí Minh', 'cho thuê chung cư mini quận 8', 70, 0, 7, '<p><strong>-&nbsp;Vị tr&iacute;: Tầng 6,&nbsp;view nội khu v&agrave; hồ bơi, tho&aacute;ng m&aacute;t. Ban c&ocirc;ng th&ocirc;ng tho&aacute;ngđ&oacute;n &aacute;nh nắng tự nhi&ecirc;n.</strong></p>\r\n\r\n<p>- Trong b&aacute;n k&iacute;nh 2km c&oacute; c&aacute;c tiện &iacute;ch:&nbsp;<strong>Học viện H&agrave;nh ch&iacute;nh Quốc gia, Nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Việt Nam Quốc tự,&nbsp;Bệnh viện B&igrave;nh D&acirc;n - Khu điều trị Kỹ thuật cao...</strong></p>\r\n\r\n<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n', '', 2, 2, 8000000, 'nha42-1.jpg', 'nha42-2.jpg', 'nha42-3.jpg', 'nha42-3.jpg', 1, '0', 'Còn phòng'),
(58, 6, 80, 2, 12, 9, 'Đường Số 10 Cư Xá Ra Đa, Phường 13, Quận 6, Tp Hồ Chí Minh', 'Cho Thuê Nhà Hẻm quận 6', 20, 0, 6, 'Nhà ngay Phố Ẩm Thực\n\nPhòng rất đẹp, rộng rãi và rất thoáng mát. View ra mặt tiền đường rất phong cách\n\nNhà giờ giấc tự do, có chỗ để xe tại nhà, wc riêng tư, không chung chủ, camera an ninh 24/7...\n\nĐịa chỉ 2 : 20/2 Đường Bà Hom P13 Q6\n\nDT phòng 12m2 giá thuê 2,2tr/th (giá quá chất)\n\nPhòng đẹp, có gác lửng nên rất rộng và thoải mái. Giờ giấc tự do\n\nToilet riêng tư trong phòng, có chỗ để xe tại nhà.\n\nTất cả đều Ngay khu dân cư an ninh, yên tĩnh, dân trí cao..\n', '', 2, 2, 14500000, 'nha44-1.jpg', 'nha44-2.jpg', 'nha44-3.jpg', 'nha44-4.jpg', 1, '0', 'Còn phòng'),
(59, 8, 109, 2, 12, 0, '69, đường số 5, phạm hùng, phường 8, Quận 8, Hồ Chí Minh', 'Cho Thuê Nhà Hẻm quận 8', 74, 0, 4, '<p>Nh&agrave; ngay Phố Ẩm Thực Ph&ograve;ng rất đẹp, rộng r&atilde;i v&agrave; rất tho&aacute;ng m&aacute;t. View ra mặt tiền đường rất phong c&aacute;ch Nh&agrave; giờ giấc tự do, c&oacute; chỗ để xe tại nh&agrave;, wc ri&ecirc;ng tư, kh&ocirc;ng chung chủ, camera an ninh 24/7... Địa chỉ 2 : 69, đường số 5, phạm h&ugrave;ng, phường 8, Quận 8, Hồ Ch&iacute; Minh Ph&ograve;ng đẹp, c&oacute; g&aacute;c lửng n&ecirc;n rất rộng v&agrave; thoải m&aacute;i. Giờ giấc tự do Toilet ri&ecirc;ng tư trong ph&ograve;ng, c&oacute; chỗ để xe tại nh&agrave;. Tất cả đều Ngay khu d&acirc;n cư an ninh, y&ecirc;n tĩnh, d&acirc;n tr&iacute; cao..</p>\r\n', '', 2, 2, 3000000, 'nha10-1.jpg', 'nha10-2.jpg', 'nha10-3.jpg', 'canhodep12.jpg', 1, '1', 'Còn phòng'),
(60, 7, 84, 1, 12, 7, '142 Đường Nguyễn Thị Thập, Phường Bình Thuận, Quận 7, Hồ Chí Minh', 'Cho thuê chung cư mini ', 78, 0, 7, 'Gần trung tâm thương mại _Crescent Mall _ BigC Quận 7 , kế bên Chợ Tân Mỹ\r\n\r\nTòa nhà Quy mô 40 phòng mới xây 100%', '', 2, 2, 32697000, 'nha46-1.jpg', 'nha46-2.jpg', 'nha46-3.jpg', 'nha46-4.jpg', 1, '1', 'Còn phòng'),
(61, 7, 84, 1, 12, 6, '12 Đường số 35, Phường Tân Quy, Quận 7, Hồ Chí Minh', 'Cho thuê căn hộ gần Lotte', 80, 0, 6, 'ORCHIDS HOUSE\r\n\r\nĐịa chỉ: đường số 36 Nguyễn Thị Thập, Tân Quy, quận 7\r\n\r\n⏰⏰ Giờ giấc tự do, không chung chủ.\r\n\r\nHầm gửi xe rộng rãi\r\n\r\n️ Nội thất cao cấp ( y hình 100%):\r\n\r\n+Tủ lạnh\r\n\r\n+Máy lạnh\r\n\r\n+Ti vi', '', 2, 2, 26858000, 'nha47-1.jpg', 'nha47-2.jpg', 'nha47-3.jpg', 'nha47-4.jpg', 1, '0', 'Còn phòng'),
(62, 7, 84, 1, 12, 0, '20 Đường số 42, Phường Phú Mỹ, Quận 7, Hồ Chí Minh', 'Cho thuê chung cư mini ', 60, 0, 5, 'Căn hộ Hương Vị Nhiệt Đới ngay giữa lòng Thành phố\r\n\r\nAdd: P Phú Mỹ Q7\r\n\r\nNội thất cơ bản: tủ quần áo, máy lạnh, vòi sen, lavabo,... có cửa sổ thoáng mát, ban công xinh xắn nằm ngay Q7 nhiều tiện ích\r\n\r\nCó hầm giữ xe, thang máy,..\r\n\r\nPhòng đẹp, giá cả phải chăng, có gác rộng, có nội thất cơ bản', '', 2, 2, 22187000, 'nha48-1.jpg', 'nha48-2.jpg', 'nha48-3.jpg', 'nha48-4.jpg', 1, '1', 'Còn phòng'),
(63, 7, 84, 2, 12, 3, '142 Nguyễn Thị Thập, Phường Bình Thuận, Quận 7, Hồ Chí Minh', 'Cho Thuê Căn Hộ Chung Cư Quận 7', 78, 0, 2, 'Ngay tại khung đường Nguyễn Thị Thập, Quận 7\r\n\r\n️ Gần các điểm điểm như BigC, Lotte, DH Tôn Đức Thắng, RMIT, Phú Mỹ Hưng,...\r\n\r\n️ Thuận tiện qua các khu vực quận lân cận Quận 1, Quận 4, Quận 5, Quận 8,...\r\n\r\nTiện ích\r\n\r\nĐầy đủ nội thất chỉ cần dọn hành lý vào là ở\r\n\r\nAn ninh 24/7\r\n\r\nCó hồ bơi\r\n\r\nDịch vụ dọn phòng, giặt sấy 3 lần / tuần', '', 2, 2, 18684000, 'nha49-1.jpg', 'nha49-2.jpg', 'nha49-3.jpg', 'nha49-4.jpg', 1, '1', 'Còn phòng'),
(64, 6, 81, 2, 12, 7, 'Đ. Hậu Giang, P.11, Q.6', 'Cho thuê căn hộ 2 phòng ngủ 84 m2 chung cư - Nội thất cao cấp đầy đủ', 84, 0, 0, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p> - Tiện ích ngoại khu: <strong>Xung quanh trường học quốc tế: Nam Sài Gòn (SSIS), và trường quốc tế Đinh Thiện Lý, Trường quốc tế Canada, dễ dàng di chuyển đến các trung tâm thương mại như: SC Vivo City, Crescent Mall, Parkson; Công viên, Co.op Food, Citimart greenview ,... và các tiện ích xung quanh.</strong></p>\r\n', 'không', 2, 2, 25690000, 'nha50-1.jpg', 'nha50-2.jpg', 'nha50-3.jpg', 'nha50-3.jpg', 1, '1', 'Còn phòng'),
(65, 2, 15, 2, 42, 0, 'chung cư Phố Lương Định Của, Phường Bình Khánh, Quận 2, Hồ Chí Minh', 'Cho thuê căn hộ 2 phòng ngủ 60 m2 tầng thấp chung cư chung cư Phố Lương Định Của - Nội thất cao cấp đầy đủ', 54, 3, 3, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', 'không có', 4, 2, 3000000, '5445e08a1773b9f81e3777ae2eb47648.jpg', '5be956536389d90c40930238c01862f5.jpg', '4d461650adfdf44d9e3d52d2bf967479.jpg', '3b38fcb0fe245310e9cdb63f1cf19e98.jpg', 1, '2', 'Còn phòng'),
(68, 3, 49, 1, 51, NULL, 'Đ. Nguyễn Lương Bằng, P.Tân Phú, Q.7', 'Cho thuê căn hộ 2 phòng ngủ 84m2 chung cư The Signature - Midtown Quận 7 - Nội thất cao cấp đầy đủ', 25, 1, 2, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', 'bài đăng', 2, 2, 200000000, 'dong-tien-ao-bitcoin-la-gi-lam-sao-de-kiem-duoc-dong-bitcoin-5-760x367.jpg', 'Islander_2.PNG', 'ant_img_04.png', 'Islander_2.PNG', 0, NULL, ''),
(71, 11, 150, 2, 12, 1, '49/52 Đường Âu Cơ, Phường 14, Quận 11, Hồ Chí Minh', 'thue trọ sinh rẻ quận 11', 34, 2, 3, '<p>Liền Kề khu thể thao Ph&uacute; Thọ, v&ograve;ng xoay L&ecirc; Đại H&agrave;nh</p>\r\n\r\n<p>GầnTrường ĐH B&aacute;ch Khoa</p>\r\n\r\n<p>- Kh&ocirc;ng gian sống tiện &iacute;ch y&ecirc;n tỉnh .</p>\r\n\r\n<p>- Diện t&iacute;ch s&agrave;n 60m2, gồm 2 ph&ograve;ng v&agrave; tolet, căn hộ đc thiết kế hiện đại, hướng Đ&ocirc;ng Nam</p>\r\n\r\n<p>- Nh&agrave; sạch đẹp</p>\r\n\r\n<p>- Hướng đẹp, nắng s&aacute;ng, &iacute;t nắng chiều, m&aacute;t mẻ</p>\r\n', '100k điện nước vệ sinh...', 2, 1, 3000000, 'Screenshot_2.png', 'Screenshot_1.png', 'Screenshot_3.png', 'Screenshot_3.png', 1, NULL, 'Còn phòng'),
(74, 1, 1, 1, 12, 5, ' Phường Bến Nghé, Quận 1, Hồ Chí Minh', 'Căn hộ mini Quận 1', 25, 1, 2, '<p>gần cầu thị ngh&egrave;...</p>\r\n\r\n<p>Gần trường ĐH Hoa Sen 1 ph&uacute;t, phố đi bộ B&ugrave;i Viện 2 ph&uacute;t, chợ Bến Th&agrave;nh 3 ph&uacute;t, c&ocirc;ng vi&ecirc;n 23/9 2phut, c&ocirc;ng vi&ecirc;n Tao Đ&agrave;n 5 ph&uacute;t, trường ĐH Sư Phạm, ĐHkH Tự Nhi&ecirc;n , Đại Học S&agrave;i G&ograve;n 8 ph&uacute;t,... khu trung t&acirc;m sầm khuất S&agrave;i G&ograve;n. - Li&ecirc;n hệ ch&iacute;nh chủ: A. Tường.</p>\r\n', '+ Điện: 4.000/kwh\r\n+ Nước + giặt chung : 100.000/người\r\n+ Wifi + rác : 100.000/phòng/tháng\r\n\r\n+ Số n', 2, 1, 5000000, 'nha43-1.jpg', 'nha43-3.jpg', 'nha43-2.jpg', 'nha43-2.jpg', 1, NULL, 'Còn phòng'),
(75, 1, 1, 2, 12, NULL, '15B Đường Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Hồ Chí Minh', 'Giải cứu Home stay phố nhật', 20, 1, 6, '<p>Th&ocirc;ng tin tiện &iacute;ch xung quanh</p>\r\n\r\n<p>Xung quanh đi bộ ra l&agrave; dịch vụ ăn uống vui chơi giải tr&iacute; đầy đủ. Liền kề l&agrave; c&aacute;c t&ograve;a nh&agrave; office cao tầng thuận tiện việc l&agrave;m kinh doanh.</p>\r\n\r\n<p>Th&ocirc;ng tin ph&ograve;ng &nbsp;&bull;Diện t&iacute;ch 25M2 &nbsp;&bull;Wifi c&aacute;p quang tốc độ cao 60MBps,trang bị ri&ecirc;ng mỗi tầng. &nbsp;&bull;Nội thất cao cấp hiện đại ( m&aacute;y lạnh, tủ lạnh,m&aacute;y giặt, giường gỗ, nệm, tủ quần &aacute;o, bếp từ,kệ bếp) &nbsp;&bull;Nh&agrave; vệ sinh ri&ecirc;ng &nbsp;&bull;Ph&ograve;ng th&ocirc;ng tho&aacute;ng, mỗi ph&ograve;ng đều c&oacute; cửa sổ v&agrave; lan gi&oacute; cực m&aacute;t &nbsp;Th&ocirc;ng tin căn nh&agrave; &nbsp;&bull;Giờ giấc tự do &nbsp;&bull;Kh&ocirc;ng chung chủ &nbsp;Dịch vụ &nbsp;&bull;Điện: 4000/KW. &nbsp;&bull;Nước: 100.000đ/người. , &nbsp;Th&ocirc;ng tin tiện &iacute;ch xung quanh</p>\r\n', 'nước 100k/1 người\r\nwifi 100k/1 người', 2, 1, 10000000, 'nha47-1.jpg', 'nha47-2.jpg', 'nha47-3.jpg', 'nha47-3.jpg', 1, NULL, 'Còn phòng'),
(76, 9, 113, 1, 12, 3, ' Đường Nguyễn Xiển, Phường Long Thạnh Mỹ, Quận 9, Hồ Chí Minh', 'Căn hộ mini Quận 9', 67, 1, 8, '<p>C&ocirc;ng vi&ecirc;n &aacute;nh s&aacute;ng, C&ocirc;ng vi&ecirc;n nghệ thuật, C&ocirc;ng vi&ecirc;n nước.</p>\r\n\r\n<p>Quảng trường trung t&acirc;m., C&ocirc;ng vi&ecirc;n đi&ecirc;u khắc, Khu BBQ.</p>\r\n\r\n<p>C&ocirc;ng vi&ecirc;n hạnh ph&uacute;c, C&ocirc;ng vi&ecirc;n đ&aacute;nh b&oacute;ng, Chợ qu&ecirc; 3 miền.</p>\r\n\r\n<p>S&acirc;n đa năng, Ch&egrave;o thuyền Kayak, C&ocirc;ng vi&ecirc;n Gym.</p>\r\n\r\n<p>C&ocirc;ng vi&ecirc;n Yoga, Vườn cờ tướng.</p>\r\n\r\n<p>Hồ bơi, s&acirc;n tennis, s&acirc;n b&oacute;ng rổ</p>\r\n\r\n<p>Shophouse ngay dưới ch&acirc;n t&ograve;a nh&agrave; tiện mua sắm</p>\r\n', 'free wifi \r\nđiện nước 100k/ 1 người', 2, 2, 10000000, 'nha18-1.jpg', 'nha18-2.jpg', 'nha18-3.jpg', 'nha18-4.jpg', 1, NULL, 'Còn phòng'),
(77, 12, 155, 1, 12, 3, '10A Tô Ký, Phường Trung Mỹ Tây, Quận 12, Hồ Chí Minh', 'Căn hộ mini Quận 12', 65, 1, 1, '<p>Cho thu&ecirc; căn g&oacute;c A10.10 - Full nội thất cao cấp - kh&aacute;ch chỉ việc x&aacute;ch vali v&agrave;o ở.</p>\r\n\r\n<p>Tiện &iacute;ch căn hộ: Coopmart, ph&ograve;ng Gym, hồ bơi, đối diện l&agrave; chợ T&acirc;n Ch&aacute;nh Hiệp, 2 tầng hầm giữ xe rộng r&atilde;i, thang m&aacute;y thẻ từ, ...</p>\r\n\r\n<p>Thuận tiện cho việc di chuyển về trung t&acirc;m th&agrave;nh phố, s&aacute;t CV phần mềm Quang Trung. Khu vực đ&ocirc;ng d&acirc;n cư.</p>\r\n', 'wifi free\r\nđiện nước người 200k', 2, 1, 9500000, 'nha9-1.jpg', 'nha9-2.jpg', 'nha9-3.jpg', 'nha9-4.jpg', 1, NULL, 'Còn phòng'),
(78, 12, 163, 2, 12, 1, ' 711 Đường Quốc lộ 1A, Phường Thạnh Xuân, Quận 12, Hồ Chí Minh', 'Cho thuê trọ rẻ giá sinh viên', 25, 1, 5, '<p>NẾU KH&Ocirc;NG THU&Ecirc; TH&Igrave; LẠI TIẾC ️</p>\r\n\r\n<p>‼️KHAI TRƯƠNG CĂN HỘ CỰC CHILL NG&Atilde; TƯ GA Q12-G&Ograve; VẤP‼️</p>\r\n\r\n<p>️ Tiện &iacute;ch :</p>\r\n\r\n<p>- Full đầy đủ nội thất cực chill NHƯ ẢNH ( Cam kết đẹp y chang h&igrave;nh )</p>\r\n\r\n<p>- Rất gần trường đại học Nguyễn Tất Th&agrave;nh, CĐ Kỹ Thuật Miền Nam, 5p di chuyển về G&ograve; Vấp, ĐH C&ocirc;ng Nghiệp</p>\r\n', 'free mọi chi phí', 1, 1, 3500000, 'nha40-1.jpg', 'nha40-2.jpg', 'nha40-3.jpg', 'nha40-4.jpg', 1, NULL, 'Còn phòng'),
(79, 13, 183, 1, 12, 1, '57 Đường Quốc Lộ 13, Phường 26, Quận Bình Thạnh, Hồ Chí Minh', 'Cho thuê căn hộ The Morning star - Bình Thạnh', 97, 1, 3, '<p>&nbsp;Block A, lầu 12.</p>\r\n\r\n<p>- Hướng cửa ch&iacute;nh: Nam</p>\r\n\r\n<p>- Hướng ban c&ocirc;ng: T&acirc;y</p>\r\n\r\n<p>- Gồm: 2 ph&ograve;ng ngủ, 2 WC</p>\r\n\r\n<p>- Th&iacute;ch hợp: cho gia đ&igrave;nh nhỏ, nh&acirc;n vi&ecirc;n văn ph&ograve;ng, c&aacute;c bạn sinh vi&ecirc;n ở chung</p>\r\n\r\n<p>- Nội thất đầy đủ c&ograve;n mới v&agrave; cao cấp, chỉ cần dọn v&agrave;o ở ngay gồm: 1 Tủ lạnh Electrolux, 1 M&aacute;y giặt Sanyo, 1 Tivi Sharp 50&quot;, 4 M&aacute;y lạnh, 1 bộ b&agrave;n ghế ăn, 1 bộ ghế sofa, 2 m&aacute;y nước n&oacute;ng, 1 l&ograve; vi s&oacute;ng , 1 m&aacute;y h&uacute;t m&ugrave;i khi nấu ăn, 2 tủ quần &aacute;o to, 2 giường ngủ, 2 nệm, 3 bộ r&egrave;m cửa.</p>\r\n\r\n<p>- Nh&agrave; được thiết kế rất rộng r&atilde;i, tho&aacute;ng m&aacute;t v&agrave; s&aacute;ng sủa.</p>\r\n\r\n<p>- C&oacute; ban c&ocirc;ng rộng r&atilde;i, view đẹp, si&ecirc;u tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>- Chung cư si&ecirc;u an ninh, lu&ocirc;n c&oacute; bảo vệ trực 24/24.</p>\r\n', 'các chi phí phải chăng \r\nwifi free \r\nđiện nước tính theo số', 2, 2, 12500000, 'nha8-1.jpg', '8-3.jpg', '8-4.jpg', '8-3.jpg', 1, NULL, 'Còn phòng'),
(80, 13, 175, 1, 12, NULL, '188 Phố Nguyễn Xí, Phường 15, Quận Bình Thạnh, Hồ Chí Minh', 'Cho thuê Căn hộ Saigonres', 86, 1, 1, '<p>Ch&iacute;nh chủ Cần cho thu&ecirc;.</p>\r\n\r\n<p>- Căn hộ A12.04 Chung cư Saigonres Plaza.</p>\r\n\r\n<p>- Địa chỉ: 188 Nguyễn X&iacute;, P26, Q. B&igrave;nh Thạnh, HCM</p>\r\n\r\n<p>- Diện t&iacute;ch: 86m. Gồm 03 ph&ograve;ng ngủ; 02 WC.</p>\r\n\r\n<p>- Trang bị nội thất cơ bản</p>\r\n\r\n<p>- Thu&ecirc;: 13 tr/th&aacute;ng.</p>\r\n\r\n<p>- V&agrave;o ở đầu th&aacute;ng 11.</p>\r\n', 'wifi với vệ sinh free\r\nđiện 3000/ 1 số', 3, 2, 13000000, 'nha32-1.jpg', 'nha32-2.jpg', 'nha32-3.jpg', 'nha33-4.jpg', 1, NULL, 'Còn phòng'),
(81, 14, 199, 1, 12, NULL, '802B Đường Âu Cơ, Phường 14, Quận Tân Bình, Hồ Chí Minh', 'Căn hộ Cao cấp Bình Tân', 45, 1, 5, '<p>_VỊ TR&Iacute;:</p>\r\n\r\n<p>Đối diện Si&ecirc;u thị BigC &Acirc;u Cơ, si&ecirc;u thị Coopmart &Acirc;u cơ, Galaxy T&acirc;n B&igrave;nh,...</p>\r\n\r\n<p>Gần s&acirc;n bay T&acirc;n Sơn Nhất, 10 ph&uacute;t đi lại giữa c&aacute;c quận 3, 5, 10,T&acirc;n Ph&uacute;.</p>\r\n\r\n<p>_GI&Aacute;: 8 triệu</p>\r\n\r\n<p>C&aacute;c loại ph&ograve;ng đều c&oacute; ban c&ocirc;ng, cửa sổ lớn, lấy &aacute;nh s&aacute;ng tự nhi&ecirc;n tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>_TIỆN &Iacute;CH:</p>\r\n\r\n<p>Kh&ocirc;ng gian y&ecirc;n tĩnh, an ninh - t&ograve;a nh&agrave; chỉ c&oacute; 7 căn hộ.</p>\r\n', 'Wifi siêu mạnh, mỗi phòng có thiết bị phát wifi riêng.\r\nCửa khóa vân tay – camera an ninh 24/24 .\r\nV', 2, 1, 8000000, 'nha47-1.jpg', 'nha47-2.jpg', 'nha47-3.jpg', 'nha47-4.jpg', 1, NULL, 'Còn phòng'),
(82, 14, 194, 2, 12, NULL, ' 373/1/2A Phố Lý Thường Kiệt, Phường 9, Quận Tân Bình, Hồ Chí Minh', 'Cho thuê trọ Bình Tân mới xây', 30, 1, 1, '<p>PH&Ograve;NG TRỌ MỚI, ĐẸP SỐ 373/1/2a L&Yacute; THƯỜNG KIỆT, GẦN ĐH B&Aacute;CH KHOA</p>\r\n\r\n<p>- Ph&ograve;ng nằm ngay trung t&acirc;m quận T&acirc;n B&igrave;nh (xem h&igrave;nh thật). HẼM TH&Ocirc;NG, HẼM TO c&aacute;ch ĐƯỜNG L&Yacute; THƯỜNG KIỆT 30m.</p>\r\n\r\n<p>- Nằm c&aacute;ch Trường Đại Học B&Aacute;CH KHOA 700m, c&aacute;ch chợ &Ocirc;ng Địa 100m, Nằm sau lưng trường THPT Nguyễn Th&aacute;i B&igrave;nh, c&aacute;ch chợ T&acirc;n B&igrave;nh 800m</p>\r\n\r\n<p>- Ph&ograve;ng được ốp l&aacute;t gạch sạch sẽ , tất cả c&aacute;c ph&ograve;ng đều c&oacute; M&aacute;y lạnh, Quạt h&uacute;t nhưng Cửa sổ vẫn bao la&hellip; nhiều ph&ograve;ng c&oacute; BAN C&Ocirc;NG rất tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>- Ph&ograve;ng c&oacute; G&aacute;c lững đẹp nằm ngủ, c&oacute; kệ Bếp nấu ăn, Toilet đầy đủ thiết bị vệ sinh, nước n&oacute;ng năng lượng mặt trời</p>\r\n\r\n<p>- Thang m&aacute;y chất lượng thuận tiện đi lại, C&oacute; Camera an ninh quan s&aacute;t c&aacute;c tầng, kh&oacute;a v&acirc;n tay, S&acirc;n thượng phơi quần &aacute;o c&oacute; m&aacute;i che.</p>\r\n\r\n<p>- Internet c&aacute;p quang Wifi được lắp đặt từng ph&ograve;ng rất mạnh, c&aacute;p Tivi, Pccc tự động</p>\r\n\r\n<p>- Bỏ xe dưới tầng hầm bảo vệ trong coi, rất an ninh kh&ocirc;ng chung chủ.</p>\r\n\r\n<p>- Bảo vệ trong coi 24/24 gi&uacute;p Bạn c&oacute; cảm gi&aacute;c an to&agrave;n, kh&oacute;a v&acirc;n tay giờ giấc tự do.</p>\r\n', 'wifi free, giữ xe 50k/tháng', 1, 1, 3500000, 'nha12-1.jpg', 'nha12-2.jpg', 'nha12-3.jpg', 'nha12-4.jpg', 1, NULL, 'Còn phòng'),
(83, 15, 201, 1, 12, NULL, 'Phường An Lạc , Quận Bình Tân, Hồ Chí Minh', 'Căn Hộ tầng 17 Khu Tên Lửa', 79, 17, 5, '<p>ăn hộ khu T&ecirc;n Lửa tầng 17, 2PN 2WC, view đẹp nhất chung cư</p>\r\n\r\n<p>-Vị tr&iacute;: A-17 t&ograve;a nh&agrave; Moonlight Boulevard (510 Kinh Dương Vương, An Lạc, B&igrave;nh T&acirc;n)</p>\r\n\r\n<p>-Diện t&iacute;ch: 78,61 m2 (2PN, 2WC, bếp, ph&ograve;ng kh&aacute;ch, logia)</p>\r\n\r\n<p>-Tiện &iacute;ch nội khu: Hồ bơi skyview, c&agrave; ph&ecirc; tr&ecirc;n cao, ph&ograve;ng gym&hellip;</p>\r\n\r\n<p>-Tiện &iacute;ch ngoại khu: Bệnh viện, trường học, cửa h&agrave;ng tiện lợi&hellip;</p>\r\n\r\n<p>-Tọa lạc tại vị tr&iacute; đẹp, nhiều tiện &iacute;ch &amp; di chuyển cực kỳ thuận tiện</p>\r\n\r\n<p>-Nh&agrave; trống, gia chủ c&oacute; thể tự decor theo sở th&iacute;ch. Ưu ti&ecirc;n ở gia đ&igrave;nh l&acirc;u d&agrave;i</p>\r\n\r\n<p>-Đặc biệt căn hộ nằm ở g&oacute;c, gi&oacute; trời th&ocirc;ng nhau rất tho&aacute;ng.</p>\r\n\r\n<p>-Gi&aacute;: 12 triệu/th&aacute;ng (thương lượng)</p>\r\n', 'wifi free', 2, 2, 12000000, 'nha29-1.jpg', 'nha29-2.jpg', 'nha29-3.jpg', 'nha29-3.jpg', 1, NULL, ''),
(84, 16, 216, 1, 12, NULL, '36 Bờ Bao Tân Thắng, Phường Sơn Kỳ, Quận Tân Phú, Hồ Chí Minh', 'Cho thuê căn hộ Tân Phú', 95, 1, 8, '<p>Cho thu&ecirc; căn hộ Celadon City diện t&iacute;ch 95m2 3 ph&ograve;ng ngủ + 1 ph&ograve;ng để đồ, căn g&oacute;c rộng r&atilde;i tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Đầy đủ nội thất c&oacute; thể v&agrave;o ở ngay bao gồm: salon, giường, tủ quần &aacute;o, b&agrave;n l&agrave;m việc, m&aacute;y lạnh, tivi 49&quot;, tủ lạnh, m&aacute;y giặt.</p>\r\n\r\n<p>Kh&aacute;ch thu&ecirc; căn hộ sẽ được tận hưởng tiện &iacute;ch kh&ocirc;ng gian xanh sạch với c&ocirc;ng vi&ecirc;n c&acirc;y xanh rộng lớn m&agrave; kh&ocirc;ng nơi n&agrave;o c&oacute; được. B&ecirc;n cạnh đ&oacute; qu&yacute; kh&aacute;ch c&oacute; thể đi bộ đến si&ecirc;u thị Aeon liền kề, khu phức hợp thể thao cao cấp, chợ, trường học ...</p>\r\n', 'free điện nước', 3, 2, 10000000, 'nha28-1.jpg', 'nha28-2.jpg', 'nha28-3.jpg', 'nha28-3.jpg', 1, NULL, 'Còn phòng'),
(85, 17, 222, 1, 12, 1, '12 Đường Nguyễn Bỉnh Khiêm, Phường 1, Quận Gò Vấp, Hồ Chí Minh', 'Cho Thuê Căn Hộ M-One -Gò Vấp', 70, 1, 2, '<p>Ch&iacute;nh chủ cần cho thu&ecirc; căn hộ M-One Gia Định tại số 12 Nguyễn Bỉnh Khi&ecirc;m, Phường 1, G&ograve; Vấp. C&aacute;ch s&acirc;n bay T&acirc;n Sơn Nhất 5 ph&uacute;t. Thuận tiện di chuyển c&aacute;c quận: B&igrave;nh Thạnh, Ph&uacute; Nhuận, T&acirc;n B&igrave;nh, Quận 1,...</p>\r\n\r\n<p>Tiện &iacute;ch: bệnh viện, trường học, si&ecirc;u thị, chợ, trung t&acirc;m thương mại,... trong b&aacute;n k&iacute;nh 1km</p>\r\n\r\n<p>Căn hộ 2 ph&ograve;ng ngủ, 2WC diện t&iacute;ch 70m2</p>\r\n\r\n<p>C&oacute; ban c&ocirc;ng, logia phơi đồ ri&ecirc;ng rộng r&atilde;i, c&aacute;c ph&ograve;ng đều c&oacute; cửa sổ tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Nội thất cơ bản: tủ bếp tr&ecirc;n-dưới, bếp điện từ, h&uacute;t m&ugrave;i, m&agrave;n cửa, m&aacute;y lạnh, thiết bị vệ sinh đầy đủ,... dọn v&ocirc; ở liền.</p>\r\n\r\n<p>Tiện &iacute;ch nội khu: hồ bơi tầng thượng, khu vui chơi trẻ em, ph&ograve;ng tập GYM, sảnh đ&oacute;n sang trọng, tầng hầm giữ xe, ph&ograve;ng SHCĐ,... tất cả đều sử dụng miễn ph&iacute;.</p>\r\n\r\n<p>Savills quản l&yacute;.</p>\r\n\r\n<p>Thẻ từ thang m&aacute;y</p>\r\n\r\n<p>Bảo vệ 24/7</p>\r\n', 'Free wifi', 2, 2, 11000000, 'nha49-1.jpg', 'nha49-2.jpg', 'nha49-3.jpg', 'nha49-4.jpg', 1, NULL, 'Còn phòng'),
(86, 17, 233, 2, 12, NULL, '85 Phố số 59, Phường 14, Quận Gò Vấp, Hồ Chí Minh', 'Cho thuê trọ Gò Vấp', 40, 1, 1, '<p>DUY NHẤT 1 PH&Ograve;NG FULL NỘI THẤT A-Z</p>\r\n\r\n<p>Ph&ograve;ng ở mặt tiền số 85 đường số 59 P14&nbsp;(đi 2p ra C&acirc;y Tr&acirc;m, L&ecirc; Văn Thọ)</p>\r\n\r\n<p>Diện t&iacute;ch: 40m2 cực rộng gi&aacute; 4tr (ở được 4-5 người), c&oacute; cửa sổ giếng trời cực tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>Đầy đủ nội thất (m&aacute;y lạnh, tủ lạnh, giường nệm, tủ quần &aacute;o...) cho 4 ng, c&oacute; thang m&aacute;y, lau dọn vệ sinh mỗi tuần, ra v&agrave;o v&acirc;n tay tự do.</p>\r\n', 'Điện nước 300k/ 1 người', 1, 1, 4000000, 'nha42-1.jpg', 'nha42-3.jpg', 'nha42-2.jpg', 'nha42-4.jpg', 1, NULL, 'Còn phòng'),
(87, 18, 249, 1, 12, 1, ' 92 Lê Văn Sỹ, Phường 14, Quận Phú Nhuận, Hồ Chí Minh', 'Cho Thuê Căn Hộ Phú Nhuận', 45, 1, 8, '<p>Gần trục đường Ho&agrave;ng Văn Thụ, Ho&agrave;ng Diệu, Phạm Văn Hai, Huỳnh Văn B&aacute;nh, dễ d&agrave;ng di chuyển qua c&aacute;c quận huyện, c&aacute;c trường ĐH, bệnh viện</p>\r\n\r\n<p>5&rsquo; đến chợ d&acirc;n sinh,Coopmart, B&aacute;ch h&oacute;a xanh qu&aacute; tiện đi mua sắm thực phẩm đồ d&ugrave;ng</p>\r\n\r\n<p>Gần b&ecirc;n l&agrave; c&aacute;c cửa h&agrave;ng ăn uống, tha hồ lựa chọn ăn ngo&agrave;i khi kh&ocirc;ng muốn nấu nướng</p>\r\n\r\n<p>ĐẶC BIỆT, 4&#39;&#39; Cv Ho&agrave;ng Văn Thụ</p>\r\n', 'free tiền vệ sinh và wifi', 2, 2, 8500000, 'nha7-1.jpg', '7-2.jpg', '7-3.jpg', '7-4.jpg', 1, '1', 'Còn phòng'),
(88, 13, 177, 2, 54, NULL, '21 Xô Viết Nghệ Tĩnh-F17-Quận Bình Thạnh', 'Cho thuê nhà trọ Bình Thạnh', 40, 1, 3, 'gần Đại học thủy lợi gần bách hóa xanh \r\nđi bộ ra quận 1\r\nnhà đẹp full nội thất', 'free wifi\r\nvệ sinh hành thánh 100k', 2, 1, 3000000, 'Screenshot_6.png', 'Screenshot_7.png', 'Screenshot_8.png', 'Screenshot_9.png', 1, '1', 'Còn phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkytimnha`
--

CREATE TABLE `dangkytimnha` (
  `id` int(12) NOT NULL,
  `ho_ten` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `trangthai` tinyint(1) DEFAULT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkytimnha`
--

INSERT INTO `dangkytimnha` (`id`, `ho_ten`, `email`, `sdt`, `trangthai`, `notes`) VALUES
(2, 'phuongnguyen', 'Phuonnguyen@gmail.com', '0987147942', 1, NULL),
(3, 'Quang Trần', 'quangtran1998@gmail.com', '0944022425', 1, NULL),
(4, 'Lê huy', 'leduchuy@gmail.com', '0977955730', 1, NULL),
(5, ' Trần Duy Quang', 'tranduyquangcntt@gmail.com', '0944022415', 1, NULL),
(7, 'quangtran', 'tranduyquangcntt@gmail.com', '0987147942', 1, 'Đ. Bến Vân Đồn, P.12, Q.4'),
(11, 'quangtran', 'tranduyquangcntt@gmail.com', '0987147942', 1, '67 Đường số 3, Phường Tân Kiểng, Quận 7, Hồ Chí Minh'),
(15, 'quangtran', 'tranduyquangcntt@gmail.com', '0944022415', 0, 'Đ. Bến Vân Đồn, P.12, Q.4'),
(16, 'quangtran', 'tranduyquangcntt@gmail.com', '0944022415', 0, 'Đ. Bến Vân Đồn, P.12, Q.4'),
(17, 'quangtran', 'tranduyquangcntt@gmail.com', '0944022415', 0, 'quận 7'),
(18, 'quangtran', 'tranduyquangcntt@gmail.com', '0944022415', 0, 'quận 7'),
(19, 'quangtran', 'tranduyquangcntt@gmail.com', '0944022415', 0, 'Đ. Bến Vân Đồn, P.12, Q.4'),
(20, 'quangtran', 'tranduyquangcntt@gmail.com', '0944022415', 0, 'Đ. Bến Vân Đồn, P.12, Q.4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_lich`
--

CREATE TABLE `dat_lich` (
  `id` int(11) NOT NULL,
  `ma_dat` int(12) NOT NULL COMMENT 'mã đặt lịch xem',
  `ma_can` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ma_tk` int(12) NOT NULL COMMENT 'mã tài khoản',
  `trang_thai` tinyint(1) DEFAULT NULL,
  `ten_nguoi_dat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai_lich` tinyint(4) DEFAULT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_xem` time DEFAULT NULL,
  `ngay_dat` date DEFAULT NULL COMMENT 'ngày đặt',
  `ngay_xem` date DEFAULT NULL COMMENT 'ngày xem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dat_lich`
--

INSERT INTO `dat_lich` (`id`, `ma_dat`, `ma_can`, `ma_tk`, `trang_thai`, `ten_nguoi_dat`, `trang_thai_lich`, `ghi_chu`, `sodt`, `gio_xem`, `ngay_dat`, `ngay_xem`) VALUES
(67, 0, 87, 53, 1, 'Lê Thị Tố Quỳnh', 1, 'tôi muốn xem căn này', '090045678', '09:45:00', '2021-12-16', '2021-12-22'),
(68, 0, 87, 53, 1, 'Trần Duy Quang', 1, 'tôi muốn xem căn này', '0944022415', '08:30:00', '2021-12-16', '2021-12-22'),
(69, 0, 13, 54, 1, 'Tran Quang Duy', 1, 'tôi muốn xem căn này', '9843562132', '11:00:00', '2021-12-16', '2022-01-28'),
(70, 0, 38, 54, 1, 'Tran Quang Duy', 1, 'xem nhà', '9843562132', '10:00:00', '2021-12-16', '2022-01-19'),
(71, 0, 46, 12, 1, 'Trần Duy Quang', 1, 'tôi muốn xem căn này', '944022415', '09:00:00', '2023-11-12', '2022-01-28'),
(72, 0, 85, 12, 1, 'Trần Duy Quang', 1, 'tôi muốn xem căn này', '944022415', '11:30:00', '2021-12-16', '2022-01-14'),
(73, 0, 38, 12, 1, 'Trần Duy Quang', 1, 'tôi muốn xem căn này', '944022415', '00:00:00', '2021-12-16', '2022-01-27'),
(74, 0, 82, 12, 1, 'Trần Duy Quang', 1, 'tôi muốn xem căn này', '944022415', '11:01:00', '2021-12-17', '2022-01-20'),
(78, 0, 79, 12, NULL, 'Trần Duy Quang', 1, 'tôi muốn xem căn này', '944022415', '11:31:00', '2021-12-17', '2021-12-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hop_dong`
--

CREATE TABLE `hop_dong` (
  `id` int(11) NOT NULL,
  `ma_tk` int(11) DEFAULT NULL,
  `ma_can` int(11) DEFAULT NULL,
  `ten_can_ho` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_dung` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vi_tri` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chu_nha` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nguoi_thue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gia_thue` float DEFAULT NULL,
  `dien_tich` float DEFAULT NULL,
  `loai_can` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'trong bảng loại căn',
  `chi_phi_khac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_thue` date DEFAULT NULL,
  `ngay_het_han` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hop_dong`
--

INSERT INTO `hop_dong` (`id`, `ma_tk`, `ma_can`, `ten_can_ho`, `do_dung`, `vi_tri`, `chu_nha`, `nguoi_thue`, `gia_thue`, `dien_tich`, `loai_can`, `chi_phi_khac`, `ngay_thue`, `ngay_het_han`) VALUES
(1, 12, 67, 'Cho thuê trọ sinh viên', 'Tv , tủ lạnh , điều hòa', '496 Đường Mã Lò, Phường Bình Hưng Hòa, Quận Bình Tân, Hồ Chí Minh', 'Hảo', 'Trần Duy Quang', 6500000, 81, 'Chung cư mini', 'không', '2022-01-09', '2022-01-09'),
(2, 12, NULL, 'Căn hộ mini Quận 1', 'sdfsdf', 'Đ. Bến Vân Đồn, P.12, Q.4', 'dfsdfsdf', 'quang', 18500000, 50, 'Chung cư mini', 'adas', '2022-01-09', '2022-01-09'),
(3, 12, NULL, 'Căn hộ mini Quận 2', 'fulll', 'Đ. Bến Vân Đồn, P.12, Q.4345345', 'có', 'quang', 18500000, 50, 'Chung cư mini', 'adas', '2022-01-09', '2022-01-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_tk` int(12) NOT NULL COMMENT 'mã tài khoản',
  `ho_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'họ tên khách hàng',
  `hinh` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_tk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên tài khoản',
  `mat_khau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `sdt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'số điện thoại',
  `kich_hoat` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'kích hoạt',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email',
  `vai_tro` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'vai trò',
  `random_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'dãy số ngẫu nhiên',
  `currency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_tk`, `ho_ten`, `hinh`, `ten_tk`, `mat_khau`, `sdt`, `kich_hoat`, `email`, `vai_tro`, `random_key`, `currency`) VALUES
(12, 'Trần Duy Quang', 'anh.jpg', 'adminquang', 'f11eed37d737eb8929d13ab8ff1434e4', '944022415', 1, 'tranduyquangcntt@gmail.com', 1, 'fff46f4128a55e1f7bb1', 50000),
(42, 'Trần Văn Noob', '', 'minh noob', 'f11eed37d737eb8929d13ab8ff1434e4', '095551710', 1, 'noobkid1999@gmail.com', 2, '76bc01a7bf6d4d9e8fad', 250000),
(45, 'Ngô Huy', NULL, 'huygay1999', 'f11eed37d737eb8929d13ab8ff1434e4', '0356985643', 1, 'huygay@gmail.com', 1, '76bc01a7bf6d4d9e8fad', 750000),
(48, 'Vương Hoàng Bảo', '', 'baoga', 'f11eed37d737eb8929d13ab8ff1434e4', '0382535536', 1, 'baoga@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(49, 'Nguyên Hồng Phận', NULL, 'phannguyen', 'f11eed37d737eb8929d13ab8ff1434e4', '0365987146', 1, 'Phannoob@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(51, 'Nguyễn Đức Vuơng', NULL, 'vươngnoob', '17c55f2a141266a804ccc3201c720b82', NULL, 1, 'ducvuongvtg@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(53, 'Lê Thị Tố Quỳnh', NULL, 'quynhle', 'f11eed37d737eb8929d13ab8ff1434e4', '987147942', 1, 'letoquynh1999@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(54, 'Tran Quang Duy', 'anh1.jpg', 'quang123', 'f11eed37d737eb8929d13ab8ff1434e4', '9843562132', 1, 'tranduyquangcntt1@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(56, 'Trần Huy Dũng', NULL, 'dungtran', 'f11eed37d737eb8929d13ab8ff1434e4', NULL, 0, 'tranduyquangcntt123@gmail.com', 0, '76bc01a7bf6d4d9e8fad', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_can`
--

CREATE TABLE `loai_can` (
  `ma_loai` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ten_can` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên căn hộ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_can`
--

INSERT INTO `loai_can` (`ma_loai`, `ten_can`) VALUES
(1, 'Chung cư mini'),
(2, 'Nhà trọ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` int(12) NOT NULL COMMENT 'thành viên thanh toán',
  `ma_can` int(12) NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong`
--

CREATE TABLE `phuong` (
  `id` int(12) NOT NULL,
  `ma_quan` int(12) NOT NULL,
  `phuong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phuong`
--

INSERT INTO `phuong` (`id`, `ma_quan`, `phuong`) VALUES
(1, 1, 'Phường Bến Nghé'),
(2, 1, 'Phường Bến Thành'),
(3, 1, 'Phường Cô Giang'),
(4, 1, 'Phường Cầu Kho'),
(5, 1, 'Phường Ông Lãnh'),
(6, 1, 'Phường Đa Cao'),
(7, 1, 'Phường Nguyễn Cư Trinh'),
(8, 1, 'Phường Nguyễn Thái Bình'),
(9, 1, 'Phường Phạm Ngũ lão'),
(10, 1, 'Phường Tân Định'),
(11, 2, 'Phường An Khánh'),
(12, 2, 'Phường An Lợi Đông'),
(13, 2, 'Phường An Phú'),
(14, 2, 'Phường Bình An'),
(15, 2, 'Phường Bình Khánh'),
(16, 2, 'Phường Bình Trưng Đông'),
(17, 2, 'Phường Bình Trưng Tây'),
(18, 2, 'Phường Phường Cát Lái'),
(19, 2, 'Phường Thạnh Mỹ Lợi'),
(20, 2, 'Phường Thảo Điền'),
(21, 2, 'Phường Thủ Thiêm'),
(22, 3, 'Phường 1'),
(23, 3, 'Phường 1'),
(24, 3, 'Phường 2'),
(25, 3, 'Phường 3'),
(26, 3, 'Phường 4'),
(27, 3, 'Phường 5'),
(28, 3, 'Phường 6'),
(29, 3, 'Phường 7'),
(30, 3, 'Phường 8'),
(31, 3, 'Phường 9'),
(32, 3, 'Phường 10'),
(33, 3, 'Phường 11'),
(34, 3, 'Phường 12'),
(35, 3, 'Phường 13'),
(36, 3, 'Phường 14'),
(37, 4, 'Phường 1'),
(38, 4, 'Phường 2'),
(39, 4, 'Phường 3'),
(40, 4, 'Phường 4'),
(41, 4, 'Phường 5'),
(42, 4, 'Phường 6'),
(43, 4, 'Phường 7'),
(44, 4, 'Phường 8'),
(45, 4, 'Phường 9'),
(46, 4, 'Phường 10'),
(47, 4, 'Phường 11'),
(48, 4, 'Phường 12'),
(49, 4, 'Phường 13'),
(50, 4, 'Phường 14'),
(51, 4, 'Phường 15'),
(52, 4, 'Phường 16'),
(53, 4, 'Phường 17'),
(54, 4, 'Phường 18'),
(55, 5, 'Phường 1'),
(56, 5, 'Phường 2'),
(57, 5, 'Phường 3'),
(58, 5, 'Phường 4'),
(59, 5, 'Phường 5'),
(60, 5, 'Phường 6'),
(61, 5, 'Phường 7'),
(62, 5, 'Phường 8'),
(63, 5, 'Phường 9'),
(64, 5, 'Phường 10'),
(65, 5, 'Phường 11'),
(66, 5, 'Phường 12'),
(67, 5, 'Phường 13'),
(68, 5, 'Phường 14'),
(69, 5, 'Phường 15'),
(70, 6, 'Phường 1'),
(71, 6, 'Phường 2'),
(72, 6, 'Phường 3'),
(73, 6, 'Phường 4'),
(74, 6, 'Phường 5'),
(75, 6, 'Phường 6'),
(76, 6, 'Phường 7'),
(77, 6, 'Phường 8'),
(78, 6, 'Phường 9'),
(79, 6, 'Phường 10'),
(80, 6, 'Phường 11'),
(81, 6, 'Phường 12'),
(82, 6, 'Phường 13'),
(83, 6, 'Phường 14'),
(84, 7, 'Phường Tân Phú'),
(85, 7, 'Phường Phú Thuận'),
(86, 7, 'Phường Tân Phong'),
(87, 7, 'Phường Tân Thuận Đông'),
(88, 7, 'Phường Bình Thuận'),
(89, 7, 'Phường Tân Kiểng'),
(90, 7, 'Phường Tân Quy'),
(91, 7, 'Phường Phú Mỹ'),
(92, 7, 'Phường Tân Thuận Tây'),
(93, 7, 'Phường Tân Hưng'),
(94, 8, 'Phường 1'),
(95, 8, 'Phường 2'),
(96, 8, 'Phường 3'),
(97, 8, 'Phường 4'),
(98, 8, 'Phường 5'),
(99, 8, 'Phường 6'),
(100, 8, 'Phường 7'),
(101, 8, 'Phường 8'),
(102, 8, 'Phường 9'),
(103, 8, 'Phường 10'),
(104, 8, 'Phường 11'),
(105, 8, 'Phường 12'),
(106, 8, 'Phường 13'),
(107, 8, 'Phường 14'),
(108, 8, 'Phường 15'),
(109, 8, 'Phường 16'),
(110, 9, 'Phường Hiệp Phú'),
(111, 9, 'Phường Long Bình'),
(112, 9, 'Phường Long Phước'),
(113, 9, 'Phường Long Thạnh Mỹ'),
(114, 9, 'Phường Long Trường'),
(115, 9, 'Phường Phú Hữu'),
(116, 9, 'Phường Phước Bình'),
(117, 9, 'Phường Phước Long A'),
(118, 9, 'Phường Phước Long B'),
(119, 9, 'Phường Tân Phú'),
(120, 9, 'Phường Tăng Nhơn Phú A'),
(121, 9, 'Phường Tăng Nhơn Phú B'),
(122, 9, 'Phường Trường Thạnh'),
(123, 9, 'Phường Hiệp Phú'),
(124, 10, 'Phường 1'),
(125, 10, 'Phường 2'),
(126, 10, 'Phường 3'),
(127, 10, 'Phường 4'),
(128, 10, 'Phường 5'),
(129, 10, 'Phường 6'),
(130, 10, 'Phường 7'),
(131, 10, 'Phường 8'),
(132, 10, 'Phường 9'),
(133, 10, 'Phường 10'),
(134, 10, 'Phường 11'),
(135, 10, 'Phường 12'),
(136, 10, 'Phường 13'),
(137, 10, 'Phường 14'),
(138, 10, 'Phường 15'),
(139, 11, 'Phường 1'),
(140, 11, 'Phường 2'),
(141, 11, 'Phường 3'),
(142, 11, 'Phường 4'),
(143, 11, 'Phường 5'),
(144, 11, 'Phường 6'),
(145, 11, 'Phường 7'),
(146, 11, 'Phường 8'),
(147, 11, 'Phường 9'),
(148, 11, 'Phường 10'),
(149, 11, 'Phường 11'),
(150, 11, 'Phường 12'),
(151, 11, 'Phường 13'),
(152, 11, 'Phường 14'),
(153, 11, 'Phường 15'),
(154, 11, 'Phường 16'),
(155, 12, 'Phường An Phú Đông'),
(156, 12, 'Phường Đông Hưng Thuận'),
(157, 12, 'Phường Hiệp Thành'),
(158, 12, 'Phường Tân Chánh Hiệp'),
(159, 12, 'Phường Tân Hưng Thuận'),
(160, 12, 'Phường Tân Thới Hiệp'),
(161, 12, 'Phường Thân Thới Nhất'),
(162, 12, 'Phường Thanh Lộc'),
(163, 12, 'Phường Thạnh Xuân'),
(164, 12, 'Phường Thới An'),
(165, 12, 'Phường Trung Mỹ Tây'),
(166, 13, 'Phường 1'),
(167, 13, 'Phường 2'),
(168, 13, 'Phường 3'),
(169, 13, 'Phường 5'),
(170, 13, 'Phường 6'),
(171, 13, 'Phường 7'),
(172, 13, 'Phường 11'),
(173, 13, 'Phường 12'),
(174, 13, 'Phường 13'),
(175, 13, 'Phường 14'),
(176, 13, 'Phường 15'),
(177, 13, 'Phường 17'),
(178, 13, 'Phường 19'),
(179, 13, 'Phường 21'),
(180, 13, 'Phường 22'),
(181, 13, 'Phường 24'),
(182, 13, 'Phường 25'),
(183, 13, 'Phường 26'),
(184, 13, 'Phường 27'),
(185, 13, 'Phường 28'),
(186, 14, 'Phường 1'),
(187, 14, 'Phường 2'),
(188, 14, 'Phường 3'),
(189, 14, 'Phường 4'),
(190, 14, 'Phường 5'),
(191, 14, 'Phường 6'),
(192, 14, 'Phường 7'),
(193, 14, 'Phường 8'),
(194, 14, 'Phường 9'),
(195, 14, 'Phường 10'),
(196, 14, 'Phường 11'),
(197, 14, 'Phường 12'),
(198, 14, 'Phường 13'),
(199, 14, 'Phường 14'),
(200, 14, 'Phường 15'),
(201, 15, 'Phường An Lạc'),
(202, 15, 'Phường An Lạc 1'),
(203, 15, 'Phường Bình Hưng Hòa'),
(204, 15, 'Phường Bình Hưng Hòa A'),
(205, 15, 'Phường Bình Hưng Hòa B'),
(206, 15, 'Phường Bình Trị Đông'),
(207, 15, 'Phường Bình Trị Đông A'),
(208, 15, 'Phường Bình Trị Đông B'),
(209, 15, 'Phường Tân Tạo'),
(210, 15, 'Phường Tân Tạo A'),
(211, 16, 'Phường Hiệp Tân'),
(212, 16, 'Phường Hòa Thạnh'),
(213, 16, 'Phường Phú Thạnh'),
(214, 16, 'Phường Phú Thọ Hòa'),
(215, 16, 'Phường Phú Trung'),
(216, 16, 'Phường Sơn Kỳ'),
(217, 16, 'Phường Tân Quý'),
(218, 16, 'Phường Tân Sơn Nhì'),
(219, 16, 'Phường Tân Thành'),
(220, 16, 'Phường Tân Thới Hòa'),
(221, 16, 'Phường Tây Thạnh'),
(222, 17, 'Phường 1'),
(223, 17, 'Phường 3'),
(224, 17, 'Phường 4'),
(225, 17, 'Phường 5'),
(226, 17, 'Phường 6'),
(227, 17, 'Phường 7'),
(228, 17, 'Phường 8'),
(229, 17, 'Phường 9'),
(230, 17, 'Phường 10'),
(231, 17, 'Phường 11'),
(232, 17, 'Phường 13'),
(233, 17, 'Phường 14'),
(234, 17, 'Phường 15'),
(235, 17, 'Phường 16'),
(236, 17, 'Phường 17'),
(237, 18, 'Phường 1'),
(238, 18, 'Phường 2'),
(239, 18, 'Phường 3'),
(240, 18, 'Phường 4'),
(241, 18, 'Phường 5'),
(242, 18, 'Phường 7'),
(243, 18, 'Phường 8'),
(244, 18, 'Phường 9'),
(245, 18, 'Phường 10'),
(246, 18, 'Phường 11'),
(247, 18, 'Phường 12'),
(248, 18, 'Phường 13'),
(249, 18, 'Phường 14'),
(250, 18, 'Phường 15'),
(251, 18, 'Phường 17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan`
--

CREATE TABLE `quan` (
  `ma_quan` int(12) NOT NULL COMMENT 'mã quận',
  `ten_quan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên quận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan`
--

INSERT INTO `quan` (`ma_quan`, `ten_quan`) VALUES
(1, 'Quận 1'),
(2, 'Quận 2'),
(3, 'Quận 3'),
(4, 'Quận 4'),
(5, 'Quận 5'),
(6, 'Quận 6'),
(7, 'Quận 7'),
(8, 'Quận 8'),
(9, 'Quận 9'),
(10, 'Quận 10'),
(11, 'Quận 11'),
(12, 'Quận 12'),
(13, 'Quận Bình Thạnh'),
(14, 'Quận Tân Bình'),
(15, 'Quận Bình Tân'),
(16, 'Quận Tân Phú'),
(17, 'Quận Gò Vấp'),
(18, 'Quận Phú Nhuận');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `can_ho`
--
ALTER TABLE `can_ho`
  ADD PRIMARY KEY (`ma_can`),
  ADD KEY `FK_canho_loai` (`ma_loai`),
  ADD KEY `FK_canho_quan` (`ma_quan`),
  ADD KEY `FK_taikhoan_canho` (`ma_tk`),
  ADD KEY `FK_phuong_canho` (`id`),
  ADD KEY `ten_can_ho` (`ten_can_ho`),
  ADD KEY `gia_thue` (`gia_thue`),
  ADD KEY `chi_phi_khac` (`chi_phi_khac`),
  ADD KEY `dia_chi` (`dia_chi`),
  ADD KEY `dien_tich` (`dien_tich`);

--
-- Chỉ mục cho bảng `dangkytimnha`
--
ALTER TABLE `dangkytimnha`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_lich`
--
ALTER TABLE `dat_lich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_tk`),
  ADD KEY `ho_ten` (`ho_ten`);

--
-- Chỉ mục cho bảng `loai_can`
--
ALTER TABLE `loai_can`
  ADD PRIMARY KEY (`ma_loai`),
  ADD KEY `ten_can` (`ten_can`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hd_ch` (`ma_can`),
  ADD KEY `fk_hd_kh` (`thanh_vien`);

--
-- Chỉ mục cho bảng `phuong`
--
ALTER TABLE `phuong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_quan_phuong` (`ma_quan`);

--
-- Chỉ mục cho bảng `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`ma_quan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `can_ho`
--
ALTER TABLE `can_ho`
  MODIFY `ma_can` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã căn hộ', AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `dangkytimnha`
--
ALTER TABLE `dangkytimnha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `dat_lich`
--
ALTER TABLE `dat_lich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_tk` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã tài khoản', AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `loai_can`
--
ALTER TABLE `loai_can`
  MODIFY `ma_loai` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã căn hộ', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuong`
--
ALTER TABLE `phuong`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT cho bảng `quan`
--
ALTER TABLE `quan`
  MODIFY `ma_quan` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã quận', AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_hd_ch` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hd_kh` FOREIGN KEY (`thanh_vien`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phuong`
--
ALTER TABLE `phuong`
  ADD CONSTRAINT `fk_quan_phuong` FOREIGN KEY (`ma_quan`) REFERENCES `quan` (`ma_quan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
