/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.19-MariaDB : Database - doantotnghiep
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `ho_so_xet_tuyen` */

insert  into `ho_so_xet_tuyen`(`id`,`cccd`,`dia_chi`,`doi_tuong_uu_tien`,`gioi_tinh`,`ho_ten`,`khu_vuc_uu_tien`,`linkimg1`,`linkimg2`,`linkimg3`,`ngay_sinh`,`so_dien_thoai`,`so_dien_thoai_bo`,`so_dien_thoai_me`,`id_tai_khoan`,`id_truong_thpt10`,`id_truong_thpt11`,`id_truong_thpt12`) values (1,'001099017269','15 ngõ 158 - đại từ - Ứng Hòa - Hà Nội','01','nam','Trịnh Văn Tú','KV2','2295a8eded511a0f4340.pdf',NULL,NULL,'1999-05-12','0964261480','0964261213','0964234532',3,1,1,1);
insert  into `ho_so_xet_tuyen`(`id`,`cccd`,`dia_chi`,`doi_tuong_uu_tien`,`gioi_tinh`,`ho_ten`,`khu_vuc_uu_tien`,`linkimg1`,`linkimg2`,`linkimg3`,`ngay_sinh`,`so_dien_thoai`,`so_dien_thoai_bo`,`so_dien_thoai_me`,`id_tai_khoan`,`id_truong_thpt10`,`id_truong_thpt11`,`id_truong_thpt12`) values (2,'001099017004','Thôn đoàn xá - Đồng Tiến - Ứng Hòa - Hà Nội','04','nam','Nguyễn Vĩnh Ngọc','KV2','2295a8eded511a0f4340.pdf',NULL,NULL,'1999-03-01','0964261481','0964261325','0964264353',4,2,2,2);
insert  into `ho_so_xet_tuyen`(`id`,`cccd`,`dia_chi`,`doi_tuong_uu_tien`,`gioi_tinh`,`ho_ten`,`khu_vuc_uu_tien`,`linkimg1`,`linkimg2`,`linkimg3`,`ngay_sinh`,`so_dien_thoai`,`so_dien_thoai_bo`,`so_dien_thoai_me`,`id_tai_khoan`,`id_truong_thpt10`,`id_truong_thpt11`,`id_truong_thpt12`) values (3,'001099017213','Thôn Giang Đường - Đồng Tiến - Ứng Hòa - Hà Nội','01','nam','Trịnh Văn Tùng','KV2','2295a8eded511a0f4340.pdf',NULL,NULL,'1999-02-16','0964261482','0964261543','0964223423',5,3,3,3);
insert  into `ho_so_xet_tuyen`(`id`,`cccd`,`dia_chi`,`doi_tuong_uu_tien`,`gioi_tinh`,`ho_ten`,`khu_vuc_uu_tien`,`linkimg1`,`linkimg2`,`linkimg3`,`ngay_sinh`,`so_dien_thoai`,`so_dien_thoai_bo`,`so_dien_thoai_me`,`id_tai_khoan`,`id_truong_thpt10`,`id_truong_thpt11`,`id_truong_thpt12`) values (4,'001099017435','Thôn đoàn xá - Đồng Tiến - Ứng Hòa - Hà Nội','01','nam','Trịnh Ngọc Thắng','KV2','2295a8eded511a0f4340.pdf',NULL,NULL,'1999-07-16','0964261545','0964421245','0964231132',6,7,7,7);
insert  into `ho_so_xet_tuyen`(`id`,`cccd`,`dia_chi`,`doi_tuong_uu_tien`,`gioi_tinh`,`ho_ten`,`khu_vuc_uu_tien`,`linkimg1`,`linkimg2`,`linkimg3`,`ngay_sinh`,`so_dien_thoai`,`so_dien_thoai_bo`,`so_dien_thoai_me`,`id_tai_khoan`,`id_truong_thpt10`,`id_truong_thpt11`,`id_truong_thpt12`) values (5,'001099017342','Thôn đoàn xá - Đồng Tiến - Ứng Hòa - Hà Nội','04','nam','Trịnh Văn Tú','KV2','2295a8eded511a0f4340.pdf',NULL,NULL,'1999-05-21','0964261532','0963241342','0964223423',7,4,4,4);
insert  into `ho_so_xet_tuyen`(`id`,`cccd`,`dia_chi`,`doi_tuong_uu_tien`,`gioi_tinh`,`ho_ten`,`khu_vuc_uu_tien`,`linkimg1`,`linkimg2`,`linkimg3`,`ngay_sinh`,`so_dien_thoai`,`so_dien_thoai_bo`,`so_dien_thoai_me`,`id_tai_khoan`,`id_truong_thpt10`,`id_truong_thpt11`,`id_truong_thpt12`) values (6,'001099017342','15 xuân la - tây hồ - hà nội','01','nam','Nguyễn Tú Tài','KV2','2295a8eded511a0f4340.pdf',NULL,NULL,'1999-05-16','0964261754','0923423556','0964223425',8,4,4,4);

/*Data for the table `khoa` */

insert  into `khoa`(`id`,`ma_khoa`,`mo_ta`,`ten_khoa`) values (1,'CT',NULL,'Công trình');
insert  into `khoa`(`id`,`ma_khoa`,`mo_ta`,`ten_khoa`) values (2,'CNTT',NULL,'Công nghệ thông tin ');
insert  into `khoa`(`id`,`ma_khoa`,`mo_ta`,`ten_khoa`) values (3,'KT',NULL,'Kinh Tế');

/*Data for the table `nganh` */

insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (1,'TLA101',NULL,'Kỹ thuật xây dựng công trình thủy',1);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (2,'TLA111',NULL,'Công nghệ kỹ thuật xây dựng',1);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (3,'TLA104',NULL,'Kỹ thuật xây dựng',1);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (4,'TLA106',NULL,'Công nghệ thông tin',2);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (5,'TLA117',NULL,'Kỹ thuật phần mềm',2);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (6,'TLA116',NULL,'Hệ thống thông tin',2);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (7,'TLA401',NULL,'Kinh tế',3);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (8,'TLA402',NULL,'Quản trị kinh doanh',3);
insert  into `nganh`(`id`,`ma_nganh`,`mo_ta`,`ten_nganh`,`id_khoa`) values (9,'TLA403',NULL,'Kế toán',3);

/*Data for the table `nguyen_vong` */

insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (1,20,6,8,6,1,13);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (2,21,6,9,6,1,14);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (3,23,9,7,7,2,1);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (4,25,9,7,9,2,2);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (5,21,7,8,6,1,15);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (6,22,7,9,6,1,16);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (11,20,6,8,6,3,13);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (12,20,6,8,6,4,13);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (13,20,6,8,6,5,13);
insert  into `nguyen_vong`(`id`,`diem_xet_tuyen`,`diemtb_mon_ba`,`diemtb_mon_hai`,`diemtb_mon_mot`,`id_ho_so_xet_tuyen`,`id_to_hop_mon`) values (14,20,6,8,6,6,13);

/*Data for the table `tai_khoan` */

insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (1,'admintlu@gmail.com','','admin','123456','0964261480','ROLE_ADMIN');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (2,'btstlu@gmail.com','','bts','123456','0964261480','ROLE_BTS');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (3,'hstlu@gmail.com','','hs','123456','0964261480','ROLE_USER');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (4,'hst2lu@gmail.com','','hs','123456','0964261480','ROLE_USER');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (5,'hst3lu@gmail.com','','hs','123456','0964261480','ROLE_USER');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (6,'hst4lu@gmail.com','','hs','123456','0964261480','ROLE_USER');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (7,'hst5lu@gmail.com','','hs','123456','0964261480','ROLE_USER');
insert  into `tai_khoan`(`id`,`email`,`enabled`,`name`,`password`,`phone`,`role`) values (8,'hst6lu@gmail.com','','hs','123456','0964261480','ROLE_USER');

/*Data for the table `to_hop_mon` */

insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (1,'A00',1);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (2,'A01',1);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (3,'D01',1);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (4,'D07',1);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (9,'A00',2);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (10,'A01',2);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (11,'D01',2);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (12,'D07',2);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (5,'A00',3);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (6,'A01',3);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (7,'D01',3);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (8,'D07',3);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (13,'A00',4);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (14,'A01',4);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (15,'D01',4);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (16,'D07',4);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (17,'A00',5);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (18,'A01',5);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (19,'D01',5);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (20,'D07',5);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (21,'A00',6);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (22,'A01',6);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (23,'D01',6);
insert  into `to_hop_mon`(`id`,`ma_to_hop_mon`,`id_nganh`) values (24,'D07',6);

/*Data for the table `truong_thpt` */

insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (1,'0','KV3','800','Học ở nước ngoài');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (2,'0','KV3','900','Quân nhân, Công an tại ngũ');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (3,'0','KV3','062','THPT Nguyễn Trãi-Ba Đình');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (4,'0','KV3','066','THPT Phan Đình Phùng');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (5,'0.25','KV2','103','THPT Nguyễn Sinh Sắc');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (6,'0.25','KV2','072','TC Nghề Tân Châu');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (7,'0.25','KV2','013','THPT Tân Châu');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (8,'0.25','KV2','017','PT Phú Tân');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (9,'0.5','KV2-NT','018','THPT Nguyễn Chí Thanh');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (10,'0.5','KV2-NT','046',' THPT Hoà Lạc');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (11,'0.5','KV2-NT','052','THPT Bình Thạnh Đông');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (12,'0.5','KV2-NT','057','TTDN-GDTX Phú Tân');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (13,'0.75','KV1','024','THPT Tịnh Biên');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (14,'0.75','KV1','025','THPT Chi Lăng');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (15,'0.75','KV1','026','THPT Xuân Tô');
insert  into `truong_thpt`(`id`,`diem_uu_tien`,`khu_vuc_uu_tien`,`ma_truong`,`ten_truong`) values (16,'0.75','KV1','064','TTDN-GDTX Tịnh Biên');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
