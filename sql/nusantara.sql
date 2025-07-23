/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : nusantara

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 23/07/2025 13:21:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` VALUES ('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1751335758);
INSERT INTO `cache` VALUES ('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1751335758;', 1751335758);
INSERT INTO `cache` VALUES ('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1751357696);
INSERT INTO `cache` VALUES ('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1751357696;', 1751357696);

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for function_types
-- ----------------------------
DROP TABLE IF EXISTS `function_types`;
CREATE TABLE `function_types`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `function_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Function Name',
  `function_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Function Code',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `function_types_function_code_unique`(`function_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of function_types
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (7, '2025_06_10_084652_create_products_table', 1);
INSERT INTO `migrations` VALUES (9, '2025_06_30_065939_create_user_mails_table', 2);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED NULL DEFAULT NULL,
  `updated_by` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `net_weight` double NULL DEFAULT NULL,
  `gross_weight` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `products_product_id_unique`(`product_code` ASC) USING BTREE,
  INDEX `products_created_by_foreign`(`created_by` ASC) USING BTREE,
  INDEX `products_updated_by_foreign`(`updated_by` ASC) USING BTREE,
  CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'SZ 4103', 'Acrylic Resin 965', 'images/acrylic-resin-965-sz-4103.jpg', 1, 1, '2025-06-30 03:36:08', '2025-07-01 09:01:46', 'resin', 'Acrylic Resin adalah bahan serbaguna berbasis air yang menawarkan hasil akhir bening, daya rekat tinggi, dan daya tahan luar biasa. Ideal untuk mencampur pigmen, pengecoran, dan pelapisan permukaan seperti kanvas, kayu, hingga beton, resin ini cepat kering dan tahan terhadap sinar UV, menjaga warna tetap hidup dalam jangka panjang. Formulanya yang ramah lingkungan dan rendah bau membuatnya cocok untuk penggunaan di dalam ruangan, baik oleh seniman profesional, pengrajin, maupun industri kreatif yang membutuhkan hasil maksimal dengan efisiensi tinggi.', 190, 209);
INSERT INTO `products` VALUES (2, 'SZ 4106', 'Alkyd Resin 1362', 'images/alkyd-resin-1362-sz-4106.jpg', 1, 1, '2025-06-30 04:24:40', '2025-07-01 09:02:01', 'resin', 'Alkyd Resin adalah resin sintetis berbahan dasar poliester yang dimodifikasi dengan asam lemak, banyak digunakan dalam cat dan pelapis karena memberikan daya rekat yang sangat baik, hasil akhir mengilap, dan ketahanan terhadap cuaca serta bahan kimia. Resin ini mengering melalui proses oksidasi di udara, menjadikannya ideal untuk aplikasi tanpa perlu pemanasan, seperti pelapis kayu, logam, dan permukaan arsitektural lainnya. Dengan berbagai formulasi panjang rantai minyak, resin alkid dapat disesuaikan untuk kebutuhan fleksibilitas, waktu pengeringan, atau kekerasan lapisan, menjadikannya pilihan yang efisien dan serbaguna dalam industri pelapisan dan seni rupa.', 200, 219);
INSERT INTO `products` VALUES (3, 'SZ 4105', 'Alkyd Resin SM 389-8', 'images/alkyd-resin-sm-389-8-sz-4105.jpg', 1, 1, '2025-06-30 04:25:06', '2025-07-01 09:02:38', 'resin', 'Alkyd Resin adalah resin sintetis berbahan dasar poliester yang dimodifikasi dengan asam lemak, banyak digunakan dalam cat dan pelapis karena memberikan daya rekat yang sangat baik, hasil akhir mengilap, dan ketahanan terhadap cuaca serta bahan kimia. Resin ini mengering melalui proses oksidasi di udara, menjadikannya ideal untuk aplikasi tanpa perlu pemanasan, seperti pelapis kayu, logam, dan permukaan arsitektural lainnya. Dengan berbagai formulasi panjang rantai minyak, resin alkid dapat disesuaikan untuk kebutuhan fleksibilitas, waktu pengeringan, atau kekerasan lapisan, menjadikannya pilihan yang efisien dan serbaguna dalam industri pelapisan dan seni rupa.', 180, 199);
INSERT INTO `products` VALUES (4, 'SZ 4101', 'Epoxy Resin 601x75', 'images/epoxy-resin-601x75-sz-4101.jpg', 1, 1, '2025-06-30 04:25:36', '2025-07-01 09:00:21', 'resin', 'Epoxy Resin adalah bahan termoset dua komponen yang dikenal karena kekuatan mekanisnya yang tinggi, daya rekat luar biasa, dan ketahanan terhadap bahan kimia serta kelembapan. Setelah dicampur dengan hardener, resin ini akan mengeras menjadi lapisan bening yang kuat dan tahan lama, menjadikannya pilihan ideal untuk pelapisan lantai, pengecoran, laminasi, serta kerajinan tangan seperti meja resin dan perhiasan. Dengan hasil akhir yang mengilap dan kemampuan untuk menyesuaikan viskositas serta waktu pengerasan, resin epoksi sangat populer di kalangan industri maupun pengrajin yang mengutamakan presisi dan estetika.', 200, 219);
INSERT INTO `products` VALUES (5, 'SZ 4102', 'Epoxy Resin SM828', 'images/epoxy-resin-sm828-sz-4102.jpg', 1, 1, '2025-06-30 04:30:01', '2025-07-01 09:03:09', 'resin', 'Epoxy Resin adalah bahan termoset dua komponen yang dikenal karena kekuatan mekanisnya yang tinggi, daya rekat luar biasa, dan ketahanan terhadap bahan kimia serta kelembapan. Setelah dicampur dengan hardener, resin ini akan mengeras menjadi lapisan bening yang kuat dan tahan lama, menjadikannya pilihan ideal untuk pelapisan lantai, pengecoran, laminasi, serta kerajinan tangan seperti meja resin dan perhiasan. Dengan hasil akhir yang mengilap dan kemampuan untuk menyesuaikan viskositas serta waktu pengerasan, resin epoksi sangat populer di kalangan industri maupun pengrajin yang mengutamakan presisi dan estetika.', 240, 259);
INSERT INTO `products` VALUES (6, 'FL 1103', 'Barium Sulphate / Barite Powder', 'images/barium-sulphate-barite-powder-fl-1103.jpg', 1, 1, '2025-06-30 04:30:41', '2025-07-01 09:06:10', 'powder', 'Barium Sulphate / Barite Powder adalah mineral alami berbentuk bubuk yang memiliki berat jenis tinggi, kestabilan kimia, dan kelarutan yang sangat rendah. Berkat sifat-sifat ini, barit banyak digunakan dalam berbagai industri, mulai dari bahan penambah berat pada lumpur pengeboran minyak dan gas, hingga sebagai pengisi (filler) dalam cat, plastik, dan karet untuk meningkatkan kecerahan, ketahanan, dan kekuatan mekanis. Selain itu, barit juga digunakan dalam bidang medis sebagai agen kontras dalam prosedur pencitraan sinar-X karena kemampuannya menyerap radiasi. Kombinasi antara keamanannya yang tinggi dan performa teknis menjadikan barit pilihan unggulan dalam aplikasi industri dan diagnostik.', 500, 503);
INSERT INTO `products` VALUES (7, 'FL 2201', 'Barium Sulphate / Barite Powder', 'images/barium-sulphate-barite-powder-fl-2201.jpg', 1, 1, '2025-06-30 04:35:56', '2025-07-01 09:11:20', 'powder', 'Barium Sulfat / Barite Powder adalah mineral alami berbentuk bubuk yang memiliki berat jenis tinggi, kestabilan kimia, dan kelarutan yang sangat rendah. Berkat sifat-sifat ini, barit banyak digunakan dalam berbagai industri, mulai dari bahan penambah berat pada lumpur pengeboran minyak dan gas, hingga sebagai pengisi (filler) dalam cat, plastik, dan karet untuk meningkatkan kecerahan, ketahanan, dan kekuatan mekanis. Selain itu, barit juga digunakan dalam bidang medis sebagai agen kontras dalam prosedur pencitraan sinar-X karena kemampuannya menyerap radiasi. Kombinasi antara keamanannya yang tinggi dan performa teknis menjadikan barit pilihan unggulan dalam aplikasi industri dan diagnostik.', 1000, 1005);
INSERT INTO `products` VALUES (8, 'RY 1001', 'Acrylic Emulsion', 'images/acrylic-emulsion-ry-1001.jpg', 1, 1, '2025-06-30 04:43:01', '2025-07-01 09:11:10', 'resin', 'Acrylic Emulsion adalah dispersi polimer berbasis air yang digunakan secara luas sebagai bahan pengikat dalam cat, pelapis, dan perekat. Emulsi ini terbentuk dari polimerisasi monomer akrilik seperti asam akrilat, metil akrilat, atau butil metakrilat, menghasilkan bahan yang tahan air, fleksibel, dan memiliki daya rekat tinggi. Karena sifatnya yang cepat kering, rendah bau, dan ramah lingkungan, acrylic emulsion sangat populer dalam cat tembok interior dan eksterior, pelapis kayu, serta aplikasi industri lainnya. Formulasinya juga dapat disesuaikan untuk menghasilkan berbagai tingkat kilap, elastisitas, dan ketahanan terhadap cuaca atau bahan kimia, menjadikannya pilihan serbaguna dalam dunia konstruksi dan dekorasi.', 50, 52);
INSERT INTO `products` VALUES (9, 'RY 1002', 'Acrylic Lotion', 'images/acrylic-lotion-ry-1002.jpg', 1, 1, '2025-06-30 04:45:59', '2025-07-01 09:15:18', 'resin', 'Acrylic Lotion adalah bentuk emulsi polimer akrilik berbasis air yang digunakan secara luas dalam industri pelapis, perekat, dan bahan bangunan. Dengan partikel halus dan stabilitas tinggi, lotion ini memberikan daya rekat yang kuat, ketahanan terhadap air dan cuaca, serta fleksibilitas yang baik. Biasanya digunakan dalam formulasi cat tembok, pelapis anti air, dan modifikasi semen, acrylic lotion membantu meningkatkan elastisitas, daya tahan terhadap retak, dan umur pakai produk akhir. Karena sifatnya yang ramah lingkungan dan rendah VOC, bahan ini sangat cocok untuk aplikasi interior maupun eksterior yang membutuhkan performa tinggi dan keamanan pengguna.', 50, 52);
INSERT INTO `products` VALUES (10, 'RY 1003', 'Acrylic Emulsion', 'images/acrylic-emulsion-ry-1003.jpg', 1, 1, '2025-06-30 04:47:28', '2025-07-01 09:16:01', 'resin', 'Acrylic Emulsion adalah dispersi polimer berbasis air yang digunakan secara luas sebagai bahan pengikat dalam cat, pelapis, dan perekat. Emulsi ini terbentuk dari polimerisasi monomer akrilik seperti asam akrilat, metil akrilat, atau butil metakrilat, menghasilkan bahan yang tahan air, fleksibel, dan memiliki daya rekat tinggi. Karena sifatnya yang cepat kering, rendah bau, dan ramah lingkungan, acrylic emulsion sangat populer dalam cat tembok interior dan eksterior, pelapis kayu, serta aplikasi industri lainnya. Formulasinya juga dapat disesuaikan untuk menghasilkan berbagai tingkat kilap, elastisitas, dan ketahanan terhadap cuaca atau bahan kimia, menjadikannya pilihan serbaguna dalam dunia konstruksi dan dekorasi.', 50, 52);
INSERT INTO `products` VALUES (11, 'YL 3002', 'Iron Oxide Yellow 313-1', 'images/iron-oxide-yellow-313-1-yl-3002.jpg', 1, 1, '2025-06-30 04:51:03', '2025-07-01 09:19:15', 'pigment', 'Pigment Iron Oxide Yellow adalah pigmen anorganik berwarna kuning yang berasal dari mineral besi alami. Pigmen ini memiliki kestabilan warna yang sangat baik, tidak larut dalam air, dan tahan terhadap sinar UV serta panas, menjadikannya pilihan populer dalam berbagai aplikasi industri. Dalam dunia kosmetik, Iron Oxide Yellow digunakan untuk memberi warna pada produk seperti foundation, bedak, dan eyeshadow karena sifatnya yang aman dan tidak menyebabkan iritasi. Di industri cat dan pelapis, pigmen ini digunakan untuk menghasilkan warna kuning yang tahan lama dan tidak mudah pudar. Selain itu, ia juga digunakan sebagai bahan pengisi dalam plastik, karet, dan keramik untuk meningkatkan estetika dan performa produk akhir. Kombinasi antara kestabilan, keamanan, dan daya sebar yang baik menjadikan Iron Oxide Yellow sebagai pigmen serbaguna dalam berbagai sektor industri.', 700, 700);
INSERT INTO `products` VALUES (12, 'YL 3011', 'Pigment Yellow 83', 'images/pigment-yellow-83-yl-3011.jpg', 1, 1, '2025-06-30 04:52:26', '2025-07-01 09:22:15', 'pigment', 'Pigment Yellow 83 adalah pigmen organik berwarna kuning kemerahan yang sangat stabil dan memiliki kekuatan warna tinggi. Pigmen ini termasuk dalam kelompok azo dan banyak digunakan dalam berbagai aplikasi seperti tinta cetak, cat industri, plastik, karet, dan pelapis bubuk karena ketahanannya terhadap panas, pelarut, dan migrasi warna', 25, 25);
INSERT INTO `products` VALUES (13, 'Roller', 'Paint Roller', 'images/paint-roller-roller.jpg', 1, 1, '2025-06-30 06:04:53', '2025-07-01 09:26:16', 'roller', 'Cat Roller untuk keperluan pengecatan', 1, 1);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('0AK489oe8Vcj8aGudUSFYHungW0lbAK98yPVnBll', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFlHTHN6OTBjMGlhanI0UjRTNGtROGdHYUxmckdoTzF1Y1llWUplRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1752048278);
INSERT INTO `sessions` VALUES ('5QhU8ZfLXYT3kNudmQXUdFyEhrfSYipTi0wRWj3R', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSExyY3JnSmhqSUp1NkZlMjBZamZkQ2xXSGE4ZGhOYWZ0c1llU1ZuaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751527274);
INSERT INTO `sessions` VALUES ('APwm3M0rU2TGJU1zQ6yJWofoMrX2c2Xmxx9QAx1B', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidmlLbmhhdzU5d0lWelFJdTVScUFpZThTVFRQY2pua25meTRqN2VHZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L1NaJTIwNDEwNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkUHlZcVJrOGxYNndlclZvSVBjOUhjT2NrWnh5MEVybkRLNEZuS0lWakprRlVrMEV5UmJPVnEiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1751362962);
INSERT INTO `sessions` VALUES ('Khwc9xQGmgTDBKsMSqMxVLGx8liwCTFg03wNNMZ4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkxxS3dvUzYyR0FsZm1hWFNiM2dPSHFGcHJzdzQ3SGRrNVNuakhVbiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3Byb2R1Y3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751424452);
INSERT INTO `sessions` VALUES ('LMwTm5t6PEB9tuI0bJUqabMrCFEZM0Qgpk1VNBCB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1Viektpb1ZvV1k2U1JyZEg4bGhWd0tBdnRvS0w3V0ZpYUNsUmozeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753251356);

-- ----------------------------
-- Table structure for user_mails
-- ----------------------------
DROP TABLE IF EXISTS `user_mails`;
CREATE TABLE `user_mails`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `replied_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_mails
-- ----------------------------
INSERT INTO `user_mails` VALUES (1, '1', '2@2.com', 'halo \r\n\r\ndan terima kasih\r\n\r\nyeah', 'replied', 'yes, thank', 1, '2025-06-30 08:08:41', '2025-06-30 09:20:04');
INSERT INTO `user_mails` VALUES (2, 'HENDRA NOVYANTARA P', 'hendra.putra002@yahoo.com', 'halo \r\n\r\ndan terima kasih\r\n\r\nyeah', 'replied', 'yes', 1, '2025-07-01 01:09:54', '2025-07-01 01:45:28');
INSERT INTO `user_mails` VALUES (3, 'HENDRA NOVYANTARA P', 'hendra.putra002@yahoo.com', 'halo\r\ndan\r\nterima kasih', 'read', NULL, NULL, '2025-07-01 01:14:28', '2025-07-01 01:14:36');
INSERT INTO `user_mails` VALUES (4, 'HENDRA NOVYANTARA P', 'hendra.putra002@yahoo.com', 'pagi\r\nsiang\r\nmalam\r\nokay', 'read', NULL, NULL, '2025-07-01 02:03:12', '2025-07-01 02:04:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'yyz', 'hendra.putra002@yahoo.com', NULL, '$2y$12$PyYqRk8lX6werVoIPc9HcOckZxy0ErnDK4FnKIVjJkFUk0EyRbOVq', 'ju2baFPtaeiNzjfqKyE6z1o608f98mTCZyxxoLemUo9nuPvWTElxTF3uNbOu', '2025-06-11 04:15:49', '2025-06-11 04:15:49', 'admin');
INSERT INTO `users` VALUES (2, 'test2', 'test@test.com', NULL, '$2y$12$Bja.hYzXQ.kwDwaFrueWVOveAJwywYwy5fpulkd2kCUs.DERatj5m', NULL, '2025-06-30 06:47:57', '2025-06-30 06:47:57', 'user');

SET FOREIGN_KEY_CHECKS = 1;
