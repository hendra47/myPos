/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : db_pos

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 29/01/2020 23:05:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id_kategori` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
BEGIN;
INSERT INTO `kategori` VALUES (1, 'AR935 REDLINE', '2020-01-29 14:22:24', '2020-01-29 14:22:24');
INSERT INTO `kategori` VALUES (2, 'PLATINUM WHEELS', '2020-01-29 14:32:07', '2020-01-29 14:32:07');
COMMIT;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id_member` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_member` bigint(20) unsigned NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member
-- ----------------------------
BEGIN;
INSERT INTO `member` VALUES (1, 1, 'Novi', 'Tangerang', '-', '2020-01-29 14:25:47', '2020-01-29 14:25:47');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_05_07_045833_buat_tabel_kategori', 1);
INSERT INTO `migrations` VALUES (4, '2018_05_07_045925_buat_tabel_produk', 1);
INSERT INTO `migrations` VALUES (5, '2018_05_07_050455_buat_tabel_supplier', 1);
INSERT INTO `migrations` VALUES (6, '2018_05_07_050504_buat_tabel_member', 1);
INSERT INTO `migrations` VALUES (7, '2018_05_07_050514_buat_tabel_pembelian', 1);
INSERT INTO `migrations` VALUES (8, '2018_05_07_050522_buat_tabel_pembelian_detail', 1);
INSERT INTO `migrations` VALUES (9, '2018_05_07_050535_buat_tabel_penjualan', 1);
INSERT INTO `migrations` VALUES (10, '2018_05_07_050546_buat_tabel_penjualan_detail', 1);
INSERT INTO `migrations` VALUES (11, '2018_05_07_050559_buat_tabel_pengeluaran', 1);
INSERT INTO `migrations` VALUES (12, '2018_05_07_050611_buat_tabel_setting', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for pembelian
-- ----------------------------
DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian` (
  `id_pembelian` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned NOT NULL,
  `total_item` int(10) unsigned NOT NULL,
  `total_harga` bigint(20) unsigned NOT NULL,
  `diskon` int(10) unsigned NOT NULL,
  `bayar` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pembelian
-- ----------------------------
BEGIN;
INSERT INTO `pembelian` VALUES (1, 1, 1, 1000000, 0, 1000000, '2020-01-29 14:42:06', '2020-01-29 14:42:17');
INSERT INTO `pembelian` VALUES (2, 1, 0, 0, 0, 0, '2020-01-29 14:43:59', '2020-01-29 14:43:59');
COMMIT;

-- ----------------------------
-- Table structure for pembelian_detail
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_detail`;
CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(10) unsigned NOT NULL,
  `kode_produk` bigint(20) unsigned NOT NULL,
  `harga_beli` bigint(20) unsigned NOT NULL,
  `jumlah` int(10) unsigned NOT NULL,
  `sub_total` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pembelian_detail
-- ----------------------------
BEGIN;
INSERT INTO `pembelian_detail` VALUES (1, 1, 1001001, 1000000, 1, 1000000, '2020-01-29 14:42:12', '2020-01-29 14:42:12');
COMMIT;

-- ----------------------------
-- Table structure for pengeluaran
-- ----------------------------
DROP TABLE IF EXISTS `pengeluaran`;
CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenis_pengeluaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pengeluaran
-- ----------------------------
BEGIN;
INSERT INTO `pengeluaran` VALUES (1, 'operasional', 100000, '2020-01-29 14:55:32', '2020-01-29 14:55:32');
COMMIT;

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan` (
  `id_penjualan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_member` bigint(20) unsigned NOT NULL,
  `total_item` int(10) unsigned NOT NULL,
  `total_harga` bigint(20) unsigned NOT NULL,
  `diskon` int(10) unsigned NOT NULL,
  `bayar` bigint(20) unsigned NOT NULL,
  `diterima` bigint(20) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
BEGIN;
INSERT INTO `penjualan` VALUES (2, 0, 1, 1300000, 0, 1300000, 1300000, 2, '2020-01-29 15:08:51', '2020-01-29 15:09:15');
INSERT INTO `penjualan` VALUES (5, 0, 1, 1300000, 0, 1300000, 0, 1, '2020-01-29 15:16:32', '2020-01-29 15:16:59');
INSERT INTO `penjualan` VALUES (6, 0, 1, 1300000, 0, 1300000, 1300000, 1, '2020-01-29 15:17:01', '2020-01-29 15:17:15');
INSERT INTO `penjualan` VALUES (7, 0, 0, 0, 0, 0, 0, 1, '2020-01-29 15:18:11', '2020-01-29 15:18:11');
INSERT INTO `penjualan` VALUES (8, 0, 1, 1300000, 0, 1300000, 1300000, 1, '2020-01-29 16:00:34', '2020-01-29 16:00:54');
INSERT INTO `penjualan` VALUES (9, 0, 0, 0, 0, 0, 0, 1, '2020-01-29 16:02:39', '2020-01-29 16:02:39');
INSERT INTO `penjualan` VALUES (10, 0, 0, 0, 0, 0, 0, 1, '2020-01-29 16:03:45', '2020-01-29 16:03:45');
INSERT INTO `penjualan` VALUES (11, 0, 0, 0, 0, 0, 0, 1, '2020-01-29 16:04:33', '2020-01-29 16:04:33');
COMMIT;

-- ----------------------------
-- Table structure for penjualan_detail
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_detail`;
CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(10) unsigned NOT NULL,
  `kode_produk` bigint(20) unsigned NOT NULL,
  `harga_jual` bigint(20) unsigned NOT NULL,
  `jumlah` int(10) unsigned NOT NULL,
  `diskon` int(10) unsigned NOT NULL,
  `sub_total` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of penjualan_detail
-- ----------------------------
BEGIN;
INSERT INTO `penjualan_detail` VALUES (1, 2, 1001001, 1300000, 1, 0, 1300000, '2020-01-29 15:08:55', '2020-01-29 15:08:55');
INSERT INTO `penjualan_detail` VALUES (2, 5, 1001001, 1300000, 1, 0, 1300000, '2020-01-29 15:16:49', '2020-01-29 15:16:49');
INSERT INTO `penjualan_detail` VALUES (3, 6, 1001001, 1300000, 1, 0, 1300000, '2020-01-29 15:17:07', '2020-01-29 15:17:07');
INSERT INTO `penjualan_detail` VALUES (4, 8, 1001001, 1300000, 1, 0, 1300000, '2020-01-29 16:00:45', '2020-01-29 16:00:45');
COMMIT;

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_produk` bigint(20) unsigned NOT NULL,
  `id_kategori` int(10) unsigned NOT NULL,
  `nama_produk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` bigint(20) unsigned NOT NULL,
  `diskon` int(10) unsigned NOT NULL,
  `harga_jual` bigint(20) unsigned NOT NULL,
  `stok` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of produk
-- ----------------------------
BEGIN;
INSERT INTO `produk` VALUES (1, 1001001, 1, 'BRUSHED SILVER  18\", 20\"', 'wheelspros', 1000000, 0, 1300000, 97, '2020-01-29 14:23:56', '2020-01-29 16:00:54');
INSERT INTO `produk` VALUES (2, 1001002, 1, 'GLOSS BLACK  18\", 20\"', 'wheelspros', 2000000, 0, 2400000, 10, '2020-01-29 14:25:05', '2020-01-29 14:25:05');
COMMIT;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kartu_member` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diskon_member` int(10) unsigned DEFAULT NULL,
  `tipe_nota` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of setting
-- ----------------------------
BEGIN;
INSERT INTO `setting` VALUES (1, 'ASHAR WHEELS', 'TANGERANG', '-', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` VALUES (1, 'WHEELS PROS', 'USA', '-', '2020-01-29 14:41:56', '2020-01-29 14:41:56');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) unsigned NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Admin', 'admin@gmail.com', '$2y$10$4kwsVf1x1KHu780MxQ/wZuwIvFYP9TRCZR09FsyYrOfcD/gFhDpWe', 'fotouser_1.jpg', 1, 'uk2evROLuvapNUU9QXQl6KryYxU14wLs7FJE0lWO7EsrQH0JOAafHsbmZz1P', NULL, '2020-01-29 14:54:03');
INSERT INTO `users` VALUES (2, 'staff', 'staff@gmail.com', '$2y$10$IROrOmTibgDsyqg10OR2H.dWCwVO9.qjBe3uC9YxmNu6z0u4KPOpe', 'user.png', 2, '2gkBWzl52tFqDuLmhY6jjWE6TKsEj3LIVDCuIJrcWylhUQ1EOgDVA1o78iRt', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
