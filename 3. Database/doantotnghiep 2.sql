-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 12, 2022 lúc 04:39 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doantotnghiep`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_so_xet_tuyen`
--

CREATE TABLE `ho_so_xet_tuyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `cccd` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `dia_chi` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `doi_tuong_uu_tien` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `gioi_tinh` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `ho_ten` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `khu_vuc_uu_tien` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `linkimg1` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `linkimg2` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `linkimg3` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `so_dien_thoai` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `so_dien_thoai_bo` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `so_dien_thoai_me` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_tai_khoan` int(10) UNSIGNED DEFAULT NULL,
  `id_truong_thpt10` int(10) UNSIGNED DEFAULT NULL,
  `id_truong_thpt11` int(10) UNSIGNED DEFAULT NULL,
  `id_truong_thpt12` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_so_xet_tuyen`
--

INSERT INTO `ho_so_xet_tuyen` (`id`, `cccd`, `dia_chi`, `doi_tuong_uu_tien`, `gioi_tinh`, `ho_ten`, `khu_vuc_uu_tien`, `linkimg1`, `linkimg2`, `linkimg3`, `ngay_sinh`, `so_dien_thoai`, `so_dien_thoai_bo`, `so_dien_thoai_me`, `id_tai_khoan`, `id_truong_thpt10`, `id_truong_thpt11`, `id_truong_thpt12`) VALUES
(1, '001099017269', '15 ngõ 158 - đại từ - Ứng Hòa - Hà Nội', '01', 'nam', 'Trịnh Văn Tú', 'KV3', '2295a8eded511a0f4340.pdf', NULL, NULL, '1999-05-12', '0964261480', '0964261213', '0964234532', 3, 1, 1, 1),
(2, '001099017004', 'Thôn đoàn xá - Đồng Tiến - Ứng Hòa - Hà Nội', '04', 'nam', 'Nguyễn Vĩnh Ngọc', 'KV2', '2295a8eded511a0f4340.pdf', NULL, NULL, '1999-03-01', '0964261481', '0964261325', '0964264353', 4, 2, 2, 2),
(3, '001099017213', 'Thôn Giang Đường - Đồng Tiến - Ứng Hòa - Hà Nội', '01', 'nam', 'Trịnh Văn Tùng', 'KV2', '2295a8eded511a0f4340.pdf', NULL, NULL, '1999-02-16', '0964261482', '0964261543', '0964223423', 5, 3, 3, 3),
(4, '001099017435', 'Thôn đoàn xá - Đồng Tiến - Ứng Hòa - Hà Nội', '05', 'nam', 'Trịnh Ngọc Thắng', 'KV1', '2295a8eded511a0f4340.pdf', NULL, NULL, '1999-07-16', '0964261545', '0964421245', '0964231132', 6, 7, 7, 7),
(5, '001099017342', 'Thôn đoàn xá - Đồng Tiến - Ứng Hòa - Hà Nội', '04', 'nam', 'Trịnh Văn Tú', 'KV1', '2295a8eded511a0f4340.pdf', NULL, NULL, '1999-05-21', '0964261532', '0963241342', '0964223423', 7, 4, 4, 4),
(6, '001099017342', '15 xuân la - tây hồ - hà nội', '01', 'nam', 'Nguyễn Tú Tài', 'KV2', '2295a8eded511a0f4340.pdf', NULL, NULL, '1999-05-16', '0964261754', '0923423556', '0964223425', 8, 4, 4, 4);

--
-- Bẫy `ho_so_xet_tuyen`
--
DELIMITER $$
CREATE TRIGGER `updateHS_update_DiemXetTuyen` AFTER UPDATE ON `ho_so_xet_tuyen` FOR EACH ROW BEGIN 
UPdate nguyen_vong set nguyen_vong.`diem_xet_tuyen` = 0 where `id_ho_so_xet_tuyen` = new.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int(10) UNSIGNED NOT NULL,
  `ma_khoa` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `mo_ta` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ten_khoa` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `ma_khoa`, `mo_ta`, `ten_khoa`) VALUES
(1, 'CT', NULL, 'Công trình'),
(2, 'CNTT', NULL, 'Công nghệ thông tin '),
(3, 'KT', NULL, 'Kinh Tế');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `id` int(10) UNSIGNED NOT NULL,
  `ma_nganh` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `mo_ta` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ten_nganh` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_khoa` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`id`, `ma_nganh`, `mo_ta`, `ten_nganh`, `id_khoa`) VALUES
(1, 'TLA101', NULL, 'Kỹ thuật xây dựng công trình thủy', 1),
(2, 'TLA111', NULL, 'Công nghệ kỹ thuật xây dựng', 1),
(3, 'TLA104', NULL, 'Kỹ thuật xây dựng', 1),
(4, 'TLA106', NULL, 'Công nghệ thông tin', 2),
(5, 'TLA117', NULL, 'Kỹ thuật phần mềm', 2),
(6, 'TLA116', NULL, 'Hệ thống thông tin', 2),
(7, 'TLA401', NULL, 'Kinh tế', 3),
(8, 'TLA402', NULL, 'Quản trị kinh doanh', 3),
(9, 'TLA403', NULL, 'Kế toán', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyen_vong`
--

CREATE TABLE `nguyen_vong` (
  `id` int(10) UNSIGNED NOT NULL,
  `diem_xet_tuyen` double DEFAULT NULL,
  `diemtb_mon_ba` double NOT NULL,
  `diemtb_mon_hai` double NOT NULL,
  `diemtb_mon_mot` double NOT NULL,
  `id_ho_so_xet_tuyen` int(10) UNSIGNED NOT NULL,
  `id_to_hop_mon` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguyen_vong`
--

INSERT INTO `nguyen_vong` (`id`, `diem_xet_tuyen`, `diemtb_mon_ba`, `diemtb_mon_hai`, `diemtb_mon_mot`, `id_ho_so_xet_tuyen`, `id_to_hop_mon`) VALUES
(1, 20, 6, 6, 6, 1, 13),
(2, 22, 6, 6, 8, 1, 14),
(3, 24.25, 9, 6, 7, 2, 1),
(4, 26.25, 9, 6, 9, 2, 2),
(5, 22.25, 7, 5, 8, 6, 15),
(6, 23.75, 7, 6, 8, 5, 16),
(7, 23.25, 5, 8, 8, 3, 10),
(8, 28.75, 9, 9, 9, 4, 1),
(9, 24.25, 5, 8, 9, 3, 9),
(10, 27.75, 9, 9, 8, 4, 2),
(11, 24.75, 7, 6, 9, 5, 13);

--
-- Bẫy `nguyen_vong`
--
DELIMITER $$
CREATE TRIGGER `updateNV_update_DiemXetTuyen` BEFORE UPDATE ON `nguyen_vong` FOR EACH ROW BEGIN 
    DECLARE kvut VARCHAR(60) DEFAULT 'KV3' ;
    DECLARE dtut VARCHAR(60) DEFAULT '00' ;
    DECLARE dkvut DOUBLE DEFAULT 0.0; 
    DECLARE ddtut DOUBLE DEFAULT 0.0; 
    SELECT `ho_so_xet_tuyen`.`khu_vuc_uu_tien`, `ho_so_xet_tuyen`.`doi_tuong_uu_tien`  INTO kvut, dtut FROM `ho_so_xet_tuyen` WHERE `ho_so_xet_tuyen`.id = new.id_ho_so_xet_tuyen LIMIT 1;
    IF kvut LIKE 'KV3' THEN 
	SET dkvut = 0;
	ELSEIF kvut LIKE  'KV2'  THEN  
		SET dkvut = 0.25;
	ELSEIF kvut LIKE  'KV2-NT' THEN 
		SET dkvut = 0.5; 
	ELSE SET dkvut = 0.75;  
	END IF;
	IF dtut LIKE '01' OR dtut LIKE '02' OR dtut LIKE '03' OR dtut LIKE '04' THEN 
	SET ddtut = 2.0;
	ELSEIF dtut LIKE '04' OR dtut LIKE '05' OR dtut LIKE '06'  THEN 
		SET ddtut = 1.0;
	ELSE SET ddtut = 0.0;  
	END IF;
	
	SET new.diem_xet_tuyen = (new.diemtb_mon_ba + new.diemtb_mon_hai + new.diemtb_mon_mot + dkvut + ddtut);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_DiemXetTuyen` BEFORE INSERT ON `nguyen_vong` FOR EACH ROW BEGIN 
    DECLARE kvut VARCHAR(60) DEFAULT 'KV3' ;
    DECLARE dtut VARCHAR(60) DEFAULT '00' ;
    DECLARE dkvut Double DEFAULT 0.0; 
    DECLARE ddtut DOUBLE DEFAULT 0.0; 
    DECLARE idnew INT; 
    SELECT MAX(id) INTO idnew FROM `nguyen_vong` ;
    SET new.id = idnew + 1; 
    SELECT `ho_so_xet_tuyen`.`khu_vuc_uu_tien`, `ho_so_xet_tuyen`.`doi_tuong_uu_tien`  INTO kvut, dtut FROM `ho_so_xet_tuyen` WHERE `ho_so_xet_tuyen`.id = new.id_ho_so_xet_tuyen LIMIT 1;
    IF kvut LIKE 'KV3' THEN 
	Set dkvut = 0;
	ELSEIF kvut LIKE  'KV2'  THEN  
		SET dkvut = 0.25;
	ELSEIF kvut LIKE  'KV2-NT' THEN 
		SET dkvut = 0.5; 
	ELSE SET dkvut = 0.75;  
	END IF;
	IF dtut LIKE '01' OR dtut LIKE '02' OR dtut LIKE '03' OR dtut LIKE '04' THEN 
	SET ddtut = 2.0;
	ELSEIF dtut LIKE '04' OR dtut LIKE '05' OR dtut LIKE '06'  THEN 
		SET ddtut = 1.0;
	ELSE SET ddtut = 0.0;  
	END IF;
	
	SET new.diem_xet_tuyen = (new.diemtb_mon_ba + new.diemtb_mon_hai + new.diemtb_mon_mot + dkvut + ddtut);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `role` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `email`, `enabled`, `name`, `password`, `phone`, `role`) VALUES
(1, 'admintlu@gmail.com', b'1', 'admin', '123456', '0964261480', 'ROLE_ADMIN'),
(2, 'btstlu@gmail.com', b'1', 'bts', '123456', '0964261480', 'ROLE_BTS'),
(3, 'hstlu@gmail.com', b'1', 'hs', '123456', '0964261480', 'ROLE_USER'),
(4, 'hst2lu@gmail.com', b'1', 'hs', '123456', '0964261480', 'ROLE_USER'),
(5, 'hst3lu@gmail.com', b'1', 'hs', '123456', '0964261480', 'ROLE_USER'),
(6, 'hst4lu@gmail.com', b'1', 'hs', '123456', '0964261480', 'ROLE_USER'),
(7, 'hst5lu@gmail.com', b'1', 'hs', '123456', '0964261480', 'ROLE_USER'),
(8, 'hst6lu@gmail.com', b'1', 'hs', '123456', '0964261480', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `to_hop_mon`
--

CREATE TABLE `to_hop_mon` (
  `id` int(10) UNSIGNED NOT NULL,
  `ma_to_hop_mon` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_nganh` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `to_hop_mon`
--

INSERT INTO `to_hop_mon` (`id`, `ma_to_hop_mon`, `id_nganh`) VALUES
(1, 'A00', 1),
(2, 'A01', 1),
(3, 'D01', 1),
(4, 'D07', 1),
(9, 'A00', 2),
(10, 'A01', 2),
(11, 'D01', 2),
(12, 'D07', 2),
(5, 'A00', 3),
(6, 'A01', 3),
(7, 'D01', 3),
(8, 'D07', 3),
(13, 'A00', 4),
(14, 'A01', 4),
(15, 'D01', 4),
(16, 'D07', 4),
(17, 'A00', 5),
(18, 'A01', 5),
(19, 'D01', 5),
(20, 'D07', 5),
(21, 'A00', 6),
(22, 'A01', 6),
(23, 'D01', 6),
(24, 'D07', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truong_thpt`
--

CREATE TABLE `truong_thpt` (
  `id` int(10) UNSIGNED NOT NULL,
  `diem_uu_tien` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `khu_vuc_uu_tien` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `ma_truong` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `ten_truong` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `truong_thpt`
--

INSERT INTO `truong_thpt` (`id`, `diem_uu_tien`, `khu_vuc_uu_tien`, `ma_truong`, `ten_truong`) VALUES
(1, '0', 'KV3', '800', 'Học ở nước ngoài'),
(2, '0', 'KV3', '900', 'Quân nhân, Công an tại ngũ'),
(3, '0', 'KV3', '062', 'THPT Nguyễn Trãi-Ba Đình'),
(4, '0', 'KV3', '066', 'THPT Phan Đình Phùng'),
(5, '0.25', 'KV2', '103', 'THPT Nguyễn Sinh Sắc'),
(6, '0.25', 'KV2', '072', 'TC Nghề Tân Châu'),
(7, '0.25', 'KV2', '013', 'THPT Tân Châu'),
(8, '0.25', 'KV2', '017', 'PT Phú Tân'),
(9, '0.5', 'KV2-NT', '018', 'THPT Nguyễn Chí Thanh'),
(10, '0.5', 'KV2-NT', '046', ' THPT Hoà Lạc'),
(11, '0.5', 'KV2-NT', '052', 'THPT Bình Thạnh Đông'),
(12, '0.5', 'KV2-NT', '057', 'TTDN-GDTX Phú Tân'),
(13, '0.75', 'KV1', '024', 'THPT Tịnh Biên'),
(14, '0.75', 'KV1', '025', 'THPT Chi Lăng'),
(15, '0.75', 'KV1', '026', 'THPT Xuân Tô'),
(16, '0.75', 'KV1', '064', 'TTDN-GDTX Tịnh Biên');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ho_so_xet_tuyen`
--
ALTER TABLE `ho_so_xet_tuyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TAIKHOAN_HOSOXETTUYEN` (`id_tai_khoan`),
  ADD KEY `FK_TRUONG_HOSOXETTUYEN10` (`id_truong_thpt10`),
  ADD KEY `FK_TRUONG_HOSOXETTUYEN11` (`id_truong_thpt11`),
  ADD KEY `FK_TRUONG_HOSOXETTUYEN12` (`id_truong_thpt12`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_io0jg1ob71djaf0de6wc7og6k` (`ma_khoa`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_4mm7b0f6wq372e4kdmix8aox6` (`ma_nganh`),
  ADD UNIQUE KEY `UK_rx25cfgooetw23jq2wl3kbawb` (`ten_nganh`),
  ADD KEY `FK_KHOA_NGANH` (`id_khoa`);

--
-- Chỉ mục cho bảng `nguyen_vong`
--
ALTER TABLE `nguyen_vong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_ho_so_xet_tuyen` (`id_ho_so_xet_tuyen`,`id_to_hop_mon`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_d0golrlr34gkql6so1i4gbuw5` (`email`);

--
-- Chỉ mục cho bảng `to_hop_mon`
--
ALTER TABLE `to_hop_mon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`id_nganh`,`ma_to_hop_mon`);

--
-- Chỉ mục cho bảng `truong_thpt`
--
ALTER TABLE `truong_thpt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_eidf7f1wwc3p7s5p03dt8ixbu` (`ma_truong`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ho_so_xet_tuyen`
--
ALTER TABLE `ho_so_xet_tuyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nguyen_vong`
--
ALTER TABLE `nguyen_vong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `to_hop_mon`
--
ALTER TABLE `to_hop_mon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `truong_thpt`
--
ALTER TABLE `truong_thpt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ho_so_xet_tuyen`
--
ALTER TABLE `ho_so_xet_tuyen`
  ADD CONSTRAINT `FK_TAIKHOAN_HOSOXETTUYEN` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TRUONG_HOSOXETTUYEN10` FOREIGN KEY (`id_truong_thpt10`) REFERENCES `truong_thpt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TRUONG_HOSOXETTUYEN11` FOREIGN KEY (`id_truong_thpt11`) REFERENCES `truong_thpt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TRUONG_HOSOXETTUYEN12` FOREIGN KEY (`id_truong_thpt12`) REFERENCES `truong_thpt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `FK_KHOA_NGANH` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguyen_vong`
--
ALTER TABLE `nguyen_vong`
  ADD CONSTRAINT `FK_HOSOXETTUYEN_NGUYENVONG` FOREIGN KEY (`id_ho_so_xet_tuyen`) REFERENCES `ho_so_xet_tuyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TOHOPMON_NGUYENVONG` FOREIGN KEY (`id_to_hop_mon`) REFERENCES `to_hop_mon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `to_hop_mon`
--
ALTER TABLE `to_hop_mon`
  ADD CONSTRAINT `FK_NGANH_TOHOPMON` FOREIGN KEY (`id_nganh`) REFERENCES `nganh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
