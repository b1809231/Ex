/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     10/31/2022 12:26:11 PM                       */
/*==============================================================*/


drop table if exists BANTIN;

drop table if exists BENH;

drop table if exists CHAT;

drop table if exists CHISO;

drop table if exists COSOYTE;

drop table if exists DUOC;

drop table if exists KHAMBENH;

drop table if exists LICHTUVAN;

drop table if exists LOAIBENH;

drop table if exists LOAIDUOC;

drop table if exists LUYENTAP;

drop table if exists NGUOIDUNG;

drop table if exists NHANVIEN;

drop table if exists SOTIEM;

drop table if exists THONGBAO;

/*==============================================================*/
/* Table: BANTIN                                                */
/*==============================================================*/
create table BANTIN
(
   BT_ID                int UNSIGNED not null AUTO_INCREMENT,
   NV_ID               int UNSIGNED not null,
   BT_HINHANH           char(255),
   BT_CHUDE             varchar(2000),
   BT_NOIDUNG           text,
   BT_NGAYDANG          date,
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (BT_ID)
);

/*==============================================================*/
/* Table: BENH                                                  */
/*==============================================================*/
create table BENH
(
   B_ID                 int UNSIGNED not null AUTO_INCREMENT,
   NV_ID               int UNSIGNED not null,
   LB_ID                int UNSIGNED not null,
   B_HINHANH            char(255),
   B_TENBENH            varchar(500),
   B_THONGTINTONGQUAT   text,
   B_GHICHU             varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (B_ID)
);

/*==============================================================*/
/* Table: CHAT                                                  */
/*==============================================================*/
create table CHAT
(
   C_ID                 int UNSIGNED not null AUTO_INCREMENT,
   NV_ID               int UNSIGNED not null,
   ND_ID                int UNSIGNED not null,
   C_NOIDUNG            text,
   C_TRANGTHAI          int,
    created_at timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
   updated_at timestamp NULL DEFAULT NULL,
   primary key (C_ID)
);

/*==============================================================*/
/* Table: CHISO                                                 */
/*==============================================================*/
create table CHISO
(
   CS_ID                int UNSIGNED not null AUTO_INCREMENT,
   ND_ID                int UNSIGNED not null,
   CS_BMI               float,
   CS_DUONGHUYET        float,
   CS_HUYETAP           float,
   CS_CHOLESTEROL       float,
   CS_NHIPTIM           float,
   CS_NGAYNHAP          date,
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (CS_ID)
);

/*==============================================================*/
/* Table: COSOYTE                                               */
/*==============================================================*/
create table COSOYTE
(
   YT_ID                int UNSIGNED not null AUTO_INCREMENT,
   YT_HINHANH           char(255),
   YT_TEN               varchar(500),
   YT_THONGTIN          text,
   YT_GHICHU            varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (YT_ID)
);

/*==============================================================*/
/* Table: DUOC                                                  */
/*==============================================================*/
create table DUOC
(
   D_ID                 int UNSIGNED not null AUTO_INCREMENT,
   NV_ID               int UNSIGNED not null,
   LD_ID                int UNSIGNED not null,
   D_HINHANH            char(255),
   D_TENDUOC            varchar(500),
   D_THONGTINCHITIET    text,
   D_GHICHU             varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (D_ID)
);

/*==============================================================*/
/* Table: KHAMBENH                                              */
/*==============================================================*/
create table KHAMBENH
(
   KB_ID                int UNSIGNED not null AUTO_INCREMENT,
   ND_ID                int UNSIGNED not null,
   KB_NGAY              date,
   KB_CHUANDOAN         varchar(1000),
   KB_CHUATRI           varchar(1000),
   KB_GHICHU            varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (KB_ID)
);

/*==============================================================*/
/* Table: LICHTUVAN                                             */
/*==============================================================*/
create table LICHTUVAN
(
   L_ID                 int UNSIGNED not null AUTO_INCREMENT,
   NV_ID               int UNSIGNED not null,
   ND_ID                int UNSIGNED not null,
   L_NGAYDANGKY         date,
   L_GIODANGKY          text,
   L_TRANGTHAI          int,
   L_GHICHU             varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (L_ID)
);

/*==============================================================*/
/* Table: LOAIBENH                                              */
/*==============================================================*/
create table LOAIBENH
(
   LB_ID                int UNSIGNED not null AUTO_INCREMENT,
   LB_TENLOAI           varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (LB_ID)
);

/*==============================================================*/
/* Table: LOAIDUOC                                              */
/*==============================================================*/
create table LOAIDUOC
(
   LD_ID                int UNSIGNED not null AUTO_INCREMENT,
   LD_TENLOAI           varchar(200),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (LD_ID)
);

/*==============================================================*/
/* Table: LUYENTAP                                              */
/*==============================================================*/
create table LUYENTAP
(
   LT_ID                int UNSIGNED not null AUTO_INCREMENT,
   LT_HINHANH           char(255),
   LT_TEN               varchar(500),
   LT_HUONGDAN          text,
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (LT_ID)
);

/*==============================================================*/
/* Table: NGUOIDUNG                                             */
/*==============================================================*/
create table NGUOIDUNG
(
   ND_ID                int UNSIGNED not null AUTO_INCREMENT,
   ND_ANH               char(255),
   ND_HOVATEN           varchar(300),
   ND_GIOITINH          text,
   ND_NS                date,
   ND_DIACHI            varchar(300),
   ND_EMAIL             char(100),
   ND_SODIENTHOAI       char(10),
   ND_MATKHAU           char(255),
   ND_TRANGTHAI         int,
   ND_CHIEUCAO          float,
   ND_CANNANG           float,
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (ND_ID)
);

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN
(
   NV_ID               int UNSIGNED not null AUTO_INCREMENT,
   NV_HINHANH           char(255),
   NV_HOTEN             varchar(300),
   NV_GIOITINH          text,
   NV_NGAYSINH          date,
   NV_DIACHI            varchar(300),
   NV_MAIL              char(100),
   NV_SDT               char(10),
   NV_MATKHAU           char(255),
   NV_TRANGTHAI         int,
   NV_QUYENSD           tinyint,
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (NV_ID)
);

/*==============================================================*/
/* Table: SOTIEM                                                */
/*==============================================================*/
create table SOTIEM
(
   ST_ID                int UNSIGNED not null AUTO_INCREMENT,
   ND_ID                int UNSIGNED not null,
   ST_TENTHUOC          varchar(500),
   ST_TENMUI            varchar(500),
   ST_NGAYTIEM          date,
   ST_GHICHU            varchar(500),
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (ST_ID)
);

/*==============================================================*/
/* Table: THONGBAO                                              */
/*==============================================================*/
create table THONGBAO
(
   TB_ID                int UNSIGNED not null AUTO_INCREMENT,
   ND_ID                int UNSIGNED not null,
   NV_ID               int UNSIGNED not null,
   L_ID                 int UNSIGNED not null,
   TB_TIEUDE            varchar(300),
   TB_TRANGTHAI         int,
    created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
   primary key (TB_ID)
);

alter table BANTIN add constraint FK_NHANVIEN_BANTIN foreign key (NV_ID)
      references NHANVIEN (NV_ID) on delete restrict on update restrict;

alter table BENH add constraint FK_LOAIBENH_BENH foreign key (LB_ID)
      references LOAIBENH (LB_ID) on delete restrict on update restrict;

alter table BENH add constraint FK_NHANVIEN_BENH foreign key (NV_ID)
      references NHANVIEN (NV_ID) on delete restrict on update restrict;

alter table CHAT add constraint FK_NGUOIDUNG_CHAT foreign key (ND_ID)
      references NGUOIDUNG (ND_ID) on delete restrict on update restrict;

alter table CHAT add constraint FK_NHANVIEN_CHAT foreign key (NV_ID)
      references NHANVIEN (NV_ID) on delete restrict on update restrict;

alter table CHISO add constraint FK_NHAP foreign key (ND_ID)
      references NGUOIDUNG (ND_ID) on delete restrict on update restrict;



alter table DUOC add constraint FK_LOAIDUOC_DUOC foreign key (LD_ID)
      references LOAIDUOC (LD_ID) on delete restrict on update restrict;

alter table DUOC add constraint FK_NHANVIEN_DUOC foreign key (NV_ID)
      references NHANVIEN (NV_ID) on delete restrict on update restrict;

alter table KHAMBENH add constraint FK_ND_KB foreign key (ND_ID)
      references NGUOIDUNG (ND_ID) on delete restrict on update restrict;

alter table LICHTUVAN add constraint FK_DATICH foreign key (ND_ID)
      references NGUOIDUNG (ND_ID) on delete restrict on update restrict;

alter table LICHTUVAN add constraint FK_NHANVIEN_LICHTV foreign key (NV_ID)
      references NHANVIEN (NV_ID) on delete restrict on update restrict;



alter table SOTIEM add constraint FK_NGUOIDUNG_SOTEM foreign key (ND_ID)
      references NGUOIDUNG (ND_ID) on delete restrict on update restrict;

alter table THONGBAO add constraint FK_NHANVIEN_THONGBAO foreign key (NV_ID)
      references NHANVIEN (NV_ID) on delete restrict on update restrict;

alter table THONGBAO add constraint FK_RELATIONSHIP_14 foreign key (ND_ID)
      references NGUOIDUNG (ND_ID) on delete restrict on update restrict;

alter table THONGBAO add constraint FK_THONGBAO_LICHTV foreign key (L_ID)
      references LICHTUVAN (L_ID) on delete restrict on update restrict;

