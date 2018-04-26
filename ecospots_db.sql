-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2018 at 06:40 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, '', NULL, 'controllers', 1, 778),
(2, 1, '', NULL, 'Acl', 2, 25),
(3, 2, '', NULL, 'AclActions', 3, 16),
(4, 3, '', NULL, 'admin_index', 4, 5),
(5, 3, '', NULL, 'admin_add', 6, 7),
(6, 3, '', NULL, 'admin_edit', 8, 9),
(7, 3, '', NULL, 'admin_delete', 10, 11),
(8, 3, '', NULL, 'admin_move', 12, 13),
(9, 3, '', NULL, 'admin_generate', 14, 15),
(10, 2, '', NULL, 'AclPermissions', 17, 24),
(11, 10, '', NULL, 'admin_index', 18, 19),
(12, 10, '', NULL, 'admin_toggle', 20, 21),
(13, 10, '', NULL, 'admin_upgrade', 22, 23),
(14, 1, '', NULL, 'Blocks', 26, 55),
(15, 14, '', NULL, 'Blocks', 27, 44),
(16, 15, '', NULL, 'admin_toggle', 28, 29),
(17, 15, '', NULL, 'admin_index', 30, 31),
(18, 15, '', NULL, 'admin_add', 32, 33),
(19, 15, '', NULL, 'admin_edit', 34, 35),
(20, 15, '', NULL, 'admin_delete', 36, 37),
(21, 15, '', NULL, 'admin_moveup', 38, 39),
(22, 15, '', NULL, 'admin_movedown', 40, 41),
(23, 15, '', NULL, 'admin_process', 42, 43),
(24, 14, '', NULL, 'Regions', 45, 54),
(25, 24, '', NULL, 'admin_index', 46, 47),
(26, 24, '', NULL, 'admin_add', 48, 49),
(27, 24, '', NULL, 'admin_edit', 50, 51),
(28, 24, '', NULL, 'admin_delete', 52, 53),
(29, 1, '', NULL, 'Comments', 56, 73),
(30, 29, '', NULL, 'Comments', 57, 72),
(31, 30, '', NULL, 'admin_index', 58, 59),
(32, 30, '', NULL, 'admin_edit', 60, 61),
(33, 30, '', NULL, 'admin_delete', 62, 63),
(34, 30, '', NULL, 'admin_process', 64, 65),
(35, 30, '', NULL, 'index', 66, 67),
(36, 30, '', NULL, 'add', 68, 69),
(37, 30, '', NULL, 'delete', 70, 71),
(38, 1, '', NULL, 'Contacts', 74, 97),
(39, 38, '', NULL, 'Contacts', 75, 86),
(40, 39, '', NULL, 'admin_index', 76, 77),
(41, 39, '', NULL, 'admin_add', 78, 79),
(42, 39, '', NULL, 'admin_edit', 80, 81),
(43, 39, '', NULL, 'admin_delete', 82, 83),
(44, 39, '', NULL, 'view', 84, 85),
(45, 38, '', NULL, 'Messages', 87, 96),
(46, 45, '', NULL, 'admin_index', 88, 89),
(47, 45, '', NULL, 'admin_edit', 90, 91),
(48, 45, '', NULL, 'admin_delete', 92, 93),
(49, 45, '', NULL, 'admin_process', 94, 95),
(50, 1, '', NULL, 'Croogo', 98, 99),
(51, 1, '', NULL, 'Extensions', 100, 149),
(52, 51, '', NULL, 'ExtensionsLocales', 101, 114),
(53, 52, '', NULL, 'admin_index', 102, 103),
(54, 52, '', NULL, 'admin_activate', 104, 105),
(55, 52, '', NULL, 'admin_add', 106, 107),
(56, 52, '', NULL, 'admin_edit', 108, 109),
(57, 52, '', NULL, 'admin_delete', 110, 111),
(58, 51, '', NULL, 'ExtensionsPlugins', 115, 130),
(59, 58, '', NULL, 'admin_index', 116, 117),
(60, 58, '', NULL, 'admin_add', 118, 119),
(61, 58, '', NULL, 'admin_delete', 120, 121),
(62, 58, '', NULL, 'admin_toggle', 122, 123),
(63, 58, '', NULL, 'admin_migrate', 124, 125),
(64, 51, '', NULL, 'ExtensionsThemes', 131, 144),
(65, 64, '', NULL, 'admin_index', 132, 133),
(66, 64, '', NULL, 'admin_activate', 134, 135),
(67, 64, '', NULL, 'admin_add', 136, 137),
(68, 64, '', NULL, 'admin_editor', 138, 139),
(69, 64, '', NULL, 'admin_save', 140, 141),
(70, 64, '', NULL, 'admin_delete', 142, 143),
(71, 1, '', NULL, 'FileManager', 150, 187),
(72, 71, '', NULL, 'Attachments', 151, 164),
(73, 72, '', NULL, 'admin_index', 152, 153),
(74, 72, '', NULL, 'admin_add', 154, 155),
(75, 72, '', NULL, 'admin_edit', 156, 157),
(76, 72, '', NULL, 'admin_delete', 158, 159),
(77, 72, '', NULL, 'admin_browse', 160, 161),
(78, 71, '', NULL, 'FileManager', 165, 186),
(79, 78, '', NULL, 'admin_index', 166, 167),
(80, 78, '', NULL, 'admin_browse', 168, 169),
(81, 78, '', NULL, 'admin_editfile', 170, 171),
(82, 78, '', NULL, 'admin_upload', 172, 173),
(83, 78, '', NULL, 'admin_delete_file', 174, 175),
(84, 78, '', NULL, 'admin_delete_directory', 176, 177),
(85, 78, '', NULL, 'admin_rename', 178, 179),
(86, 78, '', NULL, 'admin_create_directory', 180, 181),
(87, 78, '', NULL, 'admin_create_file', 182, 183),
(88, 78, '', NULL, 'admin_chmod', 184, 185),
(89, 1, '', NULL, 'Install', 188, 201),
(90, 89, '', NULL, 'Install', 189, 200),
(91, 90, '', NULL, 'index', 190, 191),
(92, 90, '', NULL, 'database', 192, 193),
(93, 90, '', NULL, 'data', 194, 195),
(94, 90, '', NULL, 'adminuser', 196, 197),
(95, 90, '', NULL, 'finish', 198, 199),
(96, 1, '', NULL, 'Menus', 202, 235),
(97, 96, '', NULL, 'Links', 203, 222),
(98, 97, '', NULL, 'admin_toggle', 204, 205),
(99, 97, '', NULL, 'admin_index', 206, 207),
(100, 97, '', NULL, 'admin_add', 208, 209),
(101, 97, '', NULL, 'admin_edit', 210, 211),
(102, 97, '', NULL, 'admin_delete', 212, 213),
(103, 97, '', NULL, 'admin_moveup', 214, 215),
(104, 97, '', NULL, 'admin_movedown', 216, 217),
(105, 97, '', NULL, 'admin_process', 218, 219),
(106, 96, '', NULL, 'Menus', 223, 234),
(107, 106, '', NULL, 'admin_index', 224, 225),
(108, 106, '', NULL, 'admin_add', 226, 227),
(109, 106, '', NULL, 'admin_edit', 228, 229),
(110, 106, '', NULL, 'admin_delete', 230, 231),
(111, 1, '', NULL, 'Meta', 236, 243),
(112, 1, '', NULL, 'Migrations', 244, 245),
(113, 1, '', NULL, 'Nodes', 246, 285),
(114, 113, '', NULL, 'Nodes', 247, 284),
(115, 114, '', NULL, 'admin_toggle', 248, 249),
(116, 114, '', NULL, 'admin_index', 250, 251),
(117, 114, '', NULL, 'admin_create', 252, 253),
(118, 114, '', NULL, 'admin_add', 254, 255),
(119, 114, '', NULL, 'admin_edit', 256, 257),
(120, 114, '', NULL, 'admin_update_paths', 258, 259),
(121, 114, '', NULL, 'admin_delete', 260, 261),
(122, 114, '', NULL, 'admin_delete_meta', 262, 263),
(123, 114, '', NULL, 'admin_add_meta', 264, 265),
(124, 114, '', NULL, 'admin_process', 266, 267),
(125, 114, '', NULL, 'index', 268, 269),
(126, 114, '', NULL, 'term', 270, 271),
(127, 114, '', NULL, 'promoted', 272, 273),
(128, 114, '', NULL, 'search', 274, 275),
(129, 114, '', NULL, 'view', 276, 277),
(130, 1, '', NULL, 'Search', 286, 287),
(131, 1, '', NULL, 'Settings', 288, 325),
(132, 131, '', NULL, 'Languages', 289, 304),
(133, 132, '', NULL, 'admin_index', 290, 291),
(134, 132, '', NULL, 'admin_add', 292, 293),
(135, 132, '', NULL, 'admin_edit', 294, 295),
(136, 132, '', NULL, 'admin_delete', 296, 297),
(137, 132, '', NULL, 'admin_moveup', 298, 299),
(138, 132, '', NULL, 'admin_movedown', 300, 301),
(139, 132, '', NULL, 'admin_select', 302, 303),
(140, 131, '', NULL, 'Settings', 305, 324),
(141, 140, '', NULL, 'admin_dashboard', 306, 307),
(142, 140, '', NULL, 'admin_index', 308, 309),
(143, 140, '', NULL, 'admin_view', 310, 311),
(144, 140, '', NULL, 'admin_add', 312, 313),
(145, 140, '', NULL, 'admin_edit', 314, 315),
(146, 140, '', NULL, 'admin_delete', 316, 317),
(147, 140, '', NULL, 'admin_prefix', 318, 319),
(148, 140, '', NULL, 'admin_moveup', 320, 321),
(149, 140, '', NULL, 'admin_movedown', 322, 323),
(150, 1, '', NULL, 'Taxonomy', 326, 365),
(151, 150, '', NULL, 'Terms', 327, 340),
(152, 151, '', NULL, 'admin_index', 328, 329),
(153, 151, '', NULL, 'admin_add', 330, 331),
(154, 151, '', NULL, 'admin_edit', 332, 333),
(155, 151, '', NULL, 'admin_delete', 334, 335),
(156, 151, '', NULL, 'admin_moveup', 336, 337),
(157, 151, '', NULL, 'admin_movedown', 338, 339),
(158, 150, '', NULL, 'Types', 341, 350),
(159, 158, '', NULL, 'admin_index', 342, 343),
(160, 158, '', NULL, 'admin_add', 344, 345),
(161, 158, '', NULL, 'admin_edit', 346, 347),
(162, 158, '', NULL, 'admin_delete', 348, 349),
(163, 150, '', NULL, 'Vocabularies', 351, 364),
(164, 163, '', NULL, 'admin_index', 352, 353),
(165, 163, '', NULL, 'admin_add', 354, 355),
(166, 163, '', NULL, 'admin_edit', 356, 357),
(167, 163, '', NULL, 'admin_delete', 358, 359),
(168, 163, '', NULL, 'admin_moveup', 360, 361),
(169, 163, '', NULL, 'admin_movedown', 362, 363),
(170, 1, '', NULL, 'Ckeditor', 366, 367),
(171, 1, '', NULL, 'Users', 368, 413),
(172, 171, '', NULL, 'Roles', 369, 378),
(173, 172, '', NULL, 'admin_index', 370, 371),
(174, 172, '', NULL, 'admin_add', 372, 373),
(175, 172, '', NULL, 'admin_edit', 374, 375),
(176, 172, '', NULL, 'admin_delete', 376, 377),
(177, 171, '', NULL, 'Users', 379, 412),
(178, 177, '', NULL, 'admin_index', 380, 381),
(179, 177, '', NULL, 'admin_add', 382, 383),
(180, 177, '', NULL, 'admin_edit', 384, 385),
(181, 177, '', NULL, 'admin_reset_password', 386, 387),
(182, 177, '', NULL, 'admin_delete', 388, 389),
(183, 177, '', NULL, 'admin_login', 390, 391),
(184, 177, '', NULL, 'admin_logout', 392, 393),
(185, 177, '', NULL, 'index', 394, 395),
(186, 177, '', NULL, 'add', 396, 397),
(187, 177, '', NULL, 'activate', 398, 399),
(188, 177, '', NULL, 'edit', 400, 401),
(189, 177, '', NULL, 'forgot', 402, 403),
(190, 177, '', NULL, 'reset', 404, 405),
(191, 177, '', NULL, 'login', 406, 407),
(192, 177, '', NULL, 'logout', 408, 409),
(193, 177, '', NULL, 'view', 410, 411),
(307, 1, NULL, NULL, 'MemberTypes', 414, 415),
(316, 1, NULL, NULL, 'DocumentCategories', 416, 425),
(317, 316, NULL, NULL, 'admin_index', 417, 418),
(318, 316, NULL, NULL, 'admin_add', 419, 420),
(319, 316, NULL, NULL, 'admin_edit', 421, 422),
(320, 316, NULL, NULL, 'admin_delete', 423, 424),
(321, 1, NULL, NULL, 'Documents', 426, 441),
(322, 321, NULL, NULL, 'admin_index', 427, 428),
(323, 321, NULL, NULL, 'admin_add', 429, 430),
(324, 321, NULL, NULL, 'admin_edit', 431, 432),
(325, 321, NULL, NULL, 'admin_delete', 433, 434),
(326, 321, NULL, NULL, 'admin_moveup', 435, 436),
(327, 321, NULL, NULL, 'admin_movedown', 437, 438),
(328, 321, NULL, NULL, 'index', 439, 440),
(329, 1, NULL, NULL, 'Media', 442, 461),
(330, 329, NULL, NULL, 'admin_index', 443, 444),
(331, 329, NULL, NULL, 'admin_add', 445, 446),
(332, 329, NULL, NULL, 'admin_edit', 447, 448),
(333, 329, NULL, NULL, 'admin_delete', 449, 450),
(334, 329, NULL, NULL, 'admin_moveup', 451, 452),
(335, 329, NULL, NULL, 'admin_movedown', 453, 454),
(336, 329, NULL, NULL, 'get_all', 455, 456),
(337, 329, NULL, NULL, 'photos', 457, 458),
(338, 329, NULL, NULL, 'videos', 459, 460),
(339, 1, NULL, NULL, 'SlideCategories', 462, 471),
(340, 339, NULL, NULL, 'admin_index', 463, 464),
(341, 339, NULL, NULL, 'admin_add', 465, 466),
(342, 339, NULL, NULL, 'admin_edit', 467, 468),
(343, 339, NULL, NULL, 'admin_delete', 469, 470),
(344, 1, NULL, NULL, 'Slides', 472, 491),
(345, 344, NULL, NULL, 'admin_index', 473, 474),
(346, 344, NULL, NULL, 'admin_add', 475, 476),
(347, 344, NULL, NULL, 'admin_edit', 477, 478),
(348, 344, NULL, NULL, 'admin_delete', 479, 480),
(349, 344, NULL, NULL, 'admin_moveup', 481, 482),
(350, 344, NULL, NULL, 'admin_movedown', 483, 484),
(351, 344, NULL, NULL, 'index', 485, 486),
(352, 344, NULL, NULL, 'get_banner', 487, 488),
(353, 344, NULL, NULL, 'view', 489, 490),
(354, 1, NULL, NULL, 'Assets', 492, 521),
(355, 354, NULL, NULL, 'AssetsAssetUsages', 493, 500),
(356, 355, NULL, NULL, 'admin_add', 494, 495),
(357, 355, NULL, NULL, 'admin_change_type', 496, 497),
(358, 355, NULL, NULL, 'admin_unregister', 498, 499),
(359, 354, NULL, NULL, 'AssetsAssets', 501, 504),
(360, 359, NULL, NULL, 'admin_delete', 502, 503),
(361, 354, NULL, NULL, 'AssetsAttachments', 505, 520),
(362, 361, NULL, NULL, 'admin_index', 506, 507),
(363, 361, NULL, NULL, 'admin_add', 508, 509),
(364, 361, NULL, NULL, 'admin_edit', 510, 511),
(365, 361, NULL, NULL, 'admin_delete', 512, 513),
(366, 361, NULL, NULL, 'admin_browse', 514, 515),
(367, 361, NULL, NULL, 'admin_list', 516, 517),
(368, 361, NULL, NULL, 'admin_resize', 518, 519),
(369, 51, NULL, NULL, 'ExtensionsDashboard', 145, 148),
(370, 369, NULL, NULL, 'admin_index', 146, 147),
(371, 52, NULL, NULL, 'admin_reset_locale', 112, 113),
(372, 58, NULL, NULL, 'admin_moveup', 126, 127),
(373, 58, NULL, NULL, 'admin_movedown', 128, 129),
(374, 72, NULL, NULL, 'admin_custom', 162, 163),
(375, 1, NULL, NULL, 'Imagine', 522, 523),
(379, 97, NULL, NULL, 'admin_link_chooser', 220, 221),
(380, 106, NULL, NULL, 'admin_toggle', 232, 233),
(381, 111, NULL, NULL, 'Meta', 237, 242),
(382, 381, NULL, NULL, 'admin_delete_meta', 238, 239),
(383, 381, NULL, NULL, 'admin_add_meta', 240, 241),
(384, 114, NULL, NULL, 'admin_hierarchy', 278, 279),
(385, 114, NULL, NULL, 'admin_moveup', 280, 281),
(386, 114, NULL, NULL, 'admin_movedown', 282, 283),
(387, NULL, NULL, NULL, 'api', 779, 794),
(388, 387, NULL, NULL, 'v1_0', 780, 793),
(389, 388, NULL, NULL, 'Nodes', 781, 786),
(390, 389, NULL, NULL, 'Nodes', 782, 785),
(391, 390, NULL, NULL, 'lookup', 783, 784),
(395, 388, NULL, NULL, 'Users', 787, 792),
(396, 395, NULL, NULL, 'Users', 788, 791),
(397, 396, NULL, NULL, 'lookup', 789, 790),
(398, 1, NULL, NULL, 'Wysiwyg', 524, 525),
(399, 1, NULL, NULL, 'Maps', 526, 555),
(400, 399, NULL, NULL, 'Maps', 527, 540),
(401, 400, NULL, NULL, 'admin_index', 528, 529),
(402, 400, NULL, NULL, 'admin_toggle', 530, 531),
(403, 400, NULL, NULL, 'admin_add', 532, 533),
(404, 400, NULL, NULL, 'admin_edit', 534, 535),
(405, 400, NULL, NULL, 'admin_delete', 536, 537),
(406, 400, NULL, NULL, 'view', 538, 539),
(407, 399, NULL, NULL, 'Markers', 541, 554),
(408, 407, NULL, NULL, 'admin_index', 542, 543),
(409, 407, NULL, NULL, 'admin_toggle', 544, 545),
(410, 407, NULL, NULL, 'admin_add', 546, 547),
(411, 407, NULL, NULL, 'admin_edit', 548, 549),
(412, 407, NULL, NULL, 'admin_delete', 550, 551),
(413, 407, NULL, NULL, 'view', 552, 553),
(470, 1, NULL, NULL, 'Categories', 556, 557),
(479, 1, NULL, NULL, 'Type', 558, 559),
(488, 1, NULL, NULL, 'Clients', 560, 561),
(530, 1, NULL, NULL, 'Business', 562, 627),
(531, 530, NULL, NULL, 'Business', 563, 578),
(532, 531, NULL, NULL, 'admin_index', 564, 565),
(533, 531, NULL, NULL, 'admin_view', 566, 567),
(534, 531, NULL, NULL, 'admin_add', 568, 569),
(535, 531, NULL, NULL, 'admin_edit', 570, 571),
(536, 531, NULL, NULL, 'admin_delete', 572, 573),
(537, 531, NULL, NULL, 'admin_moveup', 574, 575),
(538, 531, NULL, NULL, 'admin_movedown', 576, 577),
(539, 530, NULL, NULL, 'Categories', 579, 594),
(540, 539, NULL, NULL, 'admin_index', 580, 581),
(541, 539, NULL, NULL, 'admin_view', 582, 583),
(542, 539, NULL, NULL, 'admin_add', 584, 585),
(543, 539, NULL, NULL, 'admin_edit', 586, 587),
(544, 539, NULL, NULL, 'admin_delete', 588, 589),
(545, 539, NULL, NULL, 'admin_moveup', 590, 591),
(546, 539, NULL, NULL, 'admin_movedown', 592, 593),
(547, 530, NULL, NULL, 'Type', 595, 610),
(548, 547, NULL, NULL, 'admin_index', 596, 597),
(549, 547, NULL, NULL, 'admin_view', 598, 599),
(550, 547, NULL, NULL, 'admin_add', 600, 601),
(551, 547, NULL, NULL, 'admin_edit', 602, 603),
(552, 547, NULL, NULL, 'admin_delete', 604, 605),
(553, 547, NULL, NULL, 'admin_moveup', 606, 607),
(554, 547, NULL, NULL, 'admin_movedown', 608, 609),
(555, 530, NULL, NULL, 'Clients', 611, 626),
(556, 555, NULL, NULL, 'admin_index', 612, 613),
(557, 555, NULL, NULL, 'admin_view', 614, 615),
(558, 555, NULL, NULL, 'admin_add', 616, 617),
(559, 555, NULL, NULL, 'admin_edit', 618, 619),
(560, 555, NULL, NULL, 'admin_delete', 620, 621),
(561, 555, NULL, NULL, 'admin_moveup', 622, 623),
(562, 555, NULL, NULL, 'admin_movedown', 624, 625),
(566, 1, NULL, NULL, 'Translate', 628, 637),
(567, 566, NULL, NULL, 'Translate', 629, 636),
(568, 567, NULL, NULL, 'admin_index', 630, 631),
(569, 567, NULL, NULL, 'admin_edit', 632, 633),
(570, 567, NULL, NULL, 'admin_delete', 634, 635),
(571, 1, NULL, NULL, 'Ecospots', 638, 777),
(572, 571, NULL, NULL, 'Animals', 639, 652),
(573, 572, NULL, NULL, 'admin_index', 640, 641),
(574, 572, NULL, NULL, 'admin_add', 642, 643),
(575, 571, NULL, NULL, 'Plants', 653, 674),
(576, 575, NULL, NULL, 'admin_index', 654, 655),
(577, 575, NULL, NULL, 'admin_add', 656, 657),
(578, 571, NULL, NULL, 'Spots', 675, 692),
(579, 578, NULL, NULL, 'admin_index', 676, 677),
(580, 578, NULL, NULL, 'admin_add', 678, 679),
(581, 572, NULL, NULL, 'admin_edit', 644, 645),
(582, 572, NULL, NULL, 'admin_delete', 646, 647),
(583, 572, NULL, NULL, 'admin_moveup', 648, 649),
(584, 572, NULL, NULL, 'admin_movedown', 650, 651),
(585, 575, NULL, NULL, 'admin_edit', 658, 659),
(586, 575, NULL, NULL, 'admin_delete', 660, 661),
(587, 575, NULL, NULL, 'admin_moveup', 662, 663),
(588, 575, NULL, NULL, 'admin_movedown', 664, 665),
(589, 575, NULL, NULL, 'index', 666, 667),
(590, 575, NULL, NULL, 'view', 668, 669),
(591, 575, NULL, NULL, 'Plants_json', 670, 671),
(592, 575, NULL, NULL, 'Plant_json', 672, 673),
(593, 578, NULL, NULL, 'admin_edit', 680, 681),
(594, 578, NULL, NULL, 'view', 682, 683),
(595, 578, NULL, NULL, 'admin_delete', 684, 685),
(596, 578, NULL, NULL, 'admin_moveup', 686, 687),
(597, 578, NULL, NULL, 'admin_movedown', 688, 689),
(598, 578, NULL, NULL, 'index', 690, 691),
(599, 571, NULL, NULL, 'Activities', 693, 706),
(600, 599, NULL, NULL, 'admin_index', 694, 695),
(601, 599, NULL, NULL, 'admin_add', 696, 697),
(602, 571, NULL, NULL, 'Events', 707, 724),
(603, 602, NULL, NULL, 'admin_index', 708, 709),
(604, 602, NULL, NULL, 'admin_add', 710, 711),
(605, 599, NULL, NULL, 'admin_edit', 698, 699),
(606, 599, NULL, NULL, 'admin_delete', 700, 701),
(607, 599, NULL, NULL, 'admin_moveup', 702, 703),
(608, 599, NULL, NULL, 'admin_movedown', 704, 705),
(609, 571, NULL, NULL, 'Blogs', 725, 742),
(610, 609, NULL, NULL, 'admin_index', 726, 727),
(611, 609, NULL, NULL, 'admin_add', 728, 729),
(612, 609, NULL, NULL, 'admin_edit', 730, 731),
(613, 609, NULL, NULL, 'admin_delete', 732, 733),
(614, 609, NULL, NULL, 'admin_moveup', 734, 735),
(615, 609, NULL, NULL, 'admin_movedown', 736, 737),
(616, 609, NULL, NULL, 'index', 738, 739),
(617, 609, NULL, NULL, 'view', 740, 741),
(618, 602, NULL, NULL, 'admin_edit', 712, 713),
(619, 602, NULL, NULL, 'admin_delete', 714, 715),
(620, 602, NULL, NULL, 'view', 716, 717),
(621, 602, NULL, NULL, 'admin_moveup', 718, 719),
(622, 602, NULL, NULL, 'admin_movedown', 720, 721),
(623, 571, NULL, NULL, 'Reviews', 743, 758),
(624, 623, NULL, NULL, 'admin_index', 744, 745),
(625, 623, NULL, NULL, 'admin_add', 746, 747),
(626, 623, NULL, NULL, 'admin_edit', 748, 749),
(627, 623, NULL, NULL, 'admin_delete', 750, 751),
(628, 623, NULL, NULL, 'view', 752, 753),
(629, 623, NULL, NULL, 'admin_moveup', 754, 755),
(630, 623, NULL, NULL, 'admin_movedown', 756, 757),
(631, 571, NULL, NULL, 'Topics', 759, 776),
(632, 631, NULL, NULL, 'admin_index', 760, 761),
(633, 631, NULL, NULL, 'admin_add', 762, 763),
(634, 631, NULL, NULL, 'admin_edit', 764, 765),
(635, 631, NULL, NULL, 'admin_delete', 766, 767),
(636, 631, NULL, NULL, 'admin_moveup', 768, 769),
(637, 631, NULL, NULL, 'admin_movedown', 770, 771),
(638, 631, NULL, NULL, 'index', 772, 773),
(639, 631, NULL, NULL, 'view', 774, 775),
(640, 602, NULL, NULL, 'footerEvents', 722, 723);

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `name`, `ar_name`, `slug`, `weight`, `updated`, `created`) VALUES
(1, 'Sky Diving', 'لرعهخ', '', NULL, '2018-04-08 17:42:31', '2018-04-08 17:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `activities_spots`
--

CREATE TABLE `activities_spots` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `spot_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities_spots`
--

INSERT INTO `activities_spots` (`id`, `activity_id`, `spot_id`) VALUES
(3, 1, 1),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `danger` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `ar_name`, `slug`, `photo`, `description`, `ar_description`, `danger`, `weight`, `updated`, `created`) VALUES
(1, 'tiger', '', '', '', '<p>aaaaaaaaa</p>\r\n', '', 1, 1, '2018-04-08 17:18:42', '2018-04-08 17:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `animals_spots`
--

CREATE TABLE `animals_spots` (
  `id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `spot_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals_spots`
--

INSERT INTO `animals_spots` (`id`, `animal_id`, `spot_id`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, 2, 'Role', 1, 'Role-admin', 3, 6),
(2, 3, 'Role', 2, 'Role-registered', 2, 7),
(3, NULL, 'Role', 3, 'Role-public', 1, 8),
(4, 1, 'User', 1, 'admin', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 3, 35, '1', '1', '1', '1'),
(2, 3, 36, '1', '1', '1', '1'),
(3, 2, 37, '1', '1', '1', '1'),
(4, 3, 44, '1', '1', '1', '1'),
(5, 3, 125, '1', '1', '1', '1'),
(6, 3, 126, '1', '1', '1', '1'),
(7, 3, 127, '1', '1', '1', '1'),
(8, 3, 128, '1', '1', '1', '1'),
(9, 3, 129, '1', '1', '1', '1'),
(10, 2, 185, '1', '1', '1', '1'),
(11, 3, 186, '1', '1', '1', '1'),
(12, 3, 187, '1', '1', '1', '1'),
(13, 2, 188, '1', '1', '1', '1'),
(14, 3, 189, '1', '1', '1', '1'),
(15, 3, 190, '1', '1', '1', '1'),
(16, 3, 191, '1', '1', '1', '1'),
(17, 2, 192, '1', '1', '1', '1'),
(18, 2, 193, '1', '1', '1', '1'),
(19, 3, 183, '1', '1', '1', '1'),
(155, 1, 401, '1', '1', '1', '1'),
(156, 1, 402, '1', '1', '1', '1'),
(157, 1, 403, '1', '1', '1', '1'),
(158, 1, 404, '1', '1', '1', '1'),
(159, 1, 405, '1', '1', '1', '1'),
(160, 1, 406, '1', '1', '1', '1'),
(161, 3, 406, '1', '1', '1', '1'),
(162, 2, 406, '1', '1', '1', '1'),
(163, 1, 408, '1', '1', '1', '1'),
(164, 1, 409, '1', '1', '1', '1'),
(165, 1, 410, '1', '1', '1', '1'),
(166, 1, 411, '1', '1', '1', '1'),
(167, 1, 412, '1', '1', '1', '1'),
(168, 1, 413, '1', '1', '1', '1'),
(169, 3, 413, '1', '1', '1', '1'),
(170, 2, 413, '1', '1', '1', '1'),
(257, 1, 532, '1', '1', '1', '1'),
(258, 1, 533, '1', '1', '1', '1'),
(259, 1, 534, '1', '1', '1', '1'),
(260, 1, 535, '1', '1', '1', '1'),
(261, 1, 536, '1', '1', '1', '1'),
(262, 1, 537, '1', '1', '1', '1'),
(263, 1, 538, '1', '1', '1', '1'),
(264, 1, 540, '1', '1', '1', '1'),
(265, 1, 541, '1', '1', '1', '1'),
(266, 1, 542, '1', '1', '1', '1'),
(267, 1, 543, '1', '1', '1', '1'),
(268, 1, 544, '1', '1', '1', '1'),
(269, 1, 545, '1', '1', '1', '1'),
(270, 1, 546, '1', '1', '1', '1'),
(271, 1, 548, '1', '1', '1', '1'),
(272, 1, 549, '1', '1', '1', '1'),
(273, 1, 550, '1', '1', '1', '1'),
(274, 1, 551, '1', '1', '1', '1'),
(275, 1, 552, '1', '1', '1', '1'),
(276, 1, 553, '1', '1', '1', '1'),
(277, 1, 554, '1', '1', '1', '1'),
(278, 1, 556, '1', '1', '1', '1'),
(279, 1, 557, '1', '1', '1', '1'),
(280, 1, 558, '1', '1', '1', '1'),
(281, 1, 559, '1', '1', '1', '1'),
(282, 1, 560, '1', '1', '1', '1'),
(283, 1, 561, '1', '1', '1', '1'),
(284, 1, 562, '1', '1', '1', '1'),
(288, 3, 192, '1', '1', '1', '1'),
(289, 1, 573, '1', '1', '1', '1'),
(290, 1, 574, '1', '1', '1', '1'),
(291, 1, 576, '1', '1', '1', '1'),
(292, 1, 577, '1', '1', '1', '1'),
(293, 1, 579, '1', '1', '1', '1'),
(294, 1, 580, '1', '1', '1', '1'),
(295, 2, 594, '1', '1', '1', '1'),
(296, 3, 594, '1', '1', '1', '1'),
(297, 2, 598, '1', '1', '1', '1'),
(298, 3, 598, '1', '1', '1', '1'),
(299, 1, 600, '1', '1', '1', '1'),
(300, 1, 601, '1', '1', '1', '1'),
(301, 1, 603, '1', '1', '1', '1'),
(302, 1, 604, '1', '1', '1', '1'),
(303, 2, 640, '1', '1', '1', '1'),
(304, 3, 640, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `parent_asset_id` int(11) DEFAULT NULL,
  `foreign_key` varchar(36) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `filesize` int(16) DEFAULT NULL,
  `width` int(16) DEFAULT NULL,
  `height` int(16) DEFAULT NULL,
  `mime_type` varchar(32) NOT NULL,
  `extension` varchar(5) DEFAULT NULL,
  `hash` varchar(64) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `adapter` varchar(32) DEFAULT NULL COMMENT 'Gaufrette Storage Adapter Class',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `parent_asset_id`, `foreign_key`, `model`, `filename`, `filesize`, `width`, `height`, `mime_type`, `extension`, `hash`, `path`, `adapter`, `created`, `modified`) VALUES
(3, NULL, '1', 'AssetsAttachment', 'IMG_22092017_082418_0.png', 84817, 1253, 847, 'image/jpeg', 'png', '247d5c72cf3e13dc2b42d7d156356811239b46e9', '/assets/57\\91\\08/247d5c72cf3e13dc2b42d7d156356811239b46e9.png', 'LocalAttachment', '2018-03-17 21:30:57', '2018-03-17 21:30:57'),
(4, NULL, '2', 'AssetsAttachment', 'Goals.png', 196420, 1366, 639, 'image/png', 'png', 'f00de0f27daebff365831573d0215b50aa297d8b', '/assets/21\\21\\54/f00de0f27daebff365831573d0215b50aa297d8b.png', 'LocalAttachment', '2018-03-17 21:30:57', '2018-03-17 21:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `asset_usages`
--

CREATE TABLE `asset_usages` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `model` varchar(64) DEFAULT NULL,
  `foreign_key` varchar(36) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `params` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_usages`
--

INSERT INTO `asset_usages` (`id`, `asset_id`, `model`, `foreign_key`, `type`, `url`, `created`, `modified`, `params`) VALUES
(3, 4, 'Spot', '1', 'FeaturedImage', NULL, '2018-03-24 20:07:17', '2018-03-24 20:07:29', NULL),
(4, 3, 'Spot', '1', NULL, NULL, '2018-03-24 20:07:19', '2018-03-24 20:07:19', NULL),
(5, 4, 'Node', '6', 'FeaturedImage', NULL, '2018-04-19 15:26:54', '2018-04-19 15:34:20', NULL),
(6, 3, 'Node', '6', 'thumb', NULL, '2018-04-19 15:26:58', '2018-04-19 15:34:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `hash` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_path` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `asset_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `title`, `slug`, `body`, `excerpt`, `status`, `sticky`, `visibility_roles`, `hash`, `plugin`, `import_path`, `created`, `created_by`, `updated`, `updated_by`, `asset_count`) VALUES
(1, 'IMG_22092017_082418_0.png', 'IMG_22092017_082418_0.png', '', '', 1, 0, NULL, '247d5c72cf3e13dc2b42d7d156356811239b46e9', NULL, NULL, '2018-03-17 21:30:57', 1, '2018-03-17 21:30:57', 1, NULL),
(2, 'Goals.png', 'Goals.png', '', '', 1, 0, NULL, 'f00de0f27daebff365831573d0215b50aa297d8b', NULL, NULL, '2018-03-17 21:30:57', 1, '2018-03-17 21:30:57', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(20) NOT NULL,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `region_id`, `title`, `alias`, `body`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(13, 7, 'Header', 'header', '', 0, '', 1, 1, 'header', '', '', NULL, '', NULL, NULL, '2018-04-22 12:33:04', 1, '2017-12-12 22:24:56', 1),
(14, 8, 'Footer', 'footer', '', 0, '', 1, 2, 'footer', '', '', NULL, '', NULL, NULL, '2018-04-22 12:33:11', 1, '2017-12-12 23:24:14', 1),
(18, 19, 'Blog Index', 'blog-index', '', 0, '', 1, 3, 'blog-index', '', '[\"plugin:ecospots/controller:blogs/action:index\"]', NULL, '', NULL, NULL, '2018-04-22 12:32:45', 1, '2017-12-14 14:05:55', 1),
(20, 19, 'Blog view', 'blog-view', '', 0, '', 1, 4, 'blog-view', '', '[\"plugin:ecospots/controller:blogs/action:view\"]', NULL, '', NULL, NULL, '2018-04-22 12:32:32', 1, '2018-04-19 16:06:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `ar_name`, `slug`, `photo`, `excerpt`, `ar_excerpt`, `description`, `ar_description`, `author`, `weight`, `user_id`, `updated`, `created`) VALUES
(1, 'eded', '', 'eded', '', 'edede', '', '<p>dededededededed</p>\r\n', '', 'ededededededed', 1, 1, '2018-04-26 17:35:14', '2018-04-26 17:35:14'),
(2, 'rryhb', '', 'rryhb', '', 'hghrtgb', '', '<p>rghghttt</p>\r\n', '', 'thwh', 2, 1, '2018-04-26 17:35:26', '2018-04-26 17:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_topics`
--

CREATE TABLE `blogs_topics` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs_topics`
--

INSERT INTO `blogs_topics` (`id`, `topic_id`, `blog_id`) VALUES
(7, 1, 2),
(5, 1, 3),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `model`, `foreign_key`, `user_id`, `name`, `email`, `website`, `ip`, `title`, `body`, `rating`, `status`, `notify`, `type`, `comment_type`, `lft`, `rght`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, NULL, 'Node', 1, 0, 'Mr Croogo', 'email@example.com', 'http://www.croogo.org', '127.0.0.1', '', 'Hi, this is the first comment.', NULL, 1, 0, 'blog', 'comment', 1, 2, '2009-12-25 12:00:00', NULL, '2009-12-25 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'you@your-site.com', 1, 0, 0, 0, 0, 1, 1, '2009-10-07 22:07:49', NULL, '2009-09-16 01:45:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` int(20) NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `column` int(20) NOT NULL DEFAULT '0',
  `weight` int(20) NOT NULL DEFAULT '0',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `spot_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `ar_name`, `slug`, `photo`, `description`, `ar_description`, `weight`, `user_id`, `spot_id`, `date`, `updated`, `created`) VALUES
(4, 'Food Festival', '', 'food-festival', NULL, '<p>eat till your drop</p>\r\n', '', NULL, 1, 2, '2018-04-21 16:30:00', '2018-04-15 17:43:04', '2018-04-15 17:43:04'),
(5, 'Marathon', '', 'marathon', NULL, '<p>jhgjkh</p>\r\n', '', NULL, 1, 1, '2018-04-29 17:22:00', '2018-04-26 17:22:58', '2018-04-26 17:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `i18n`
--

CREATE TABLE `i18n` (
  `id` int(10) NOT NULL,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i18n`
--

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(5, 'arabic', 'Plant', 1, 'name', 'ؤءصثصث', '2018-03-24 18:51:39', 1, '2018-03-24 18:51:39', 1),
(6, 'arabic', 'Plant', 1, 'description', '<p>&nbsp;عصلكلاصثىيصث</p>\r\n\r\n<p>بب</p>\r\n\r\n<p>صقصثيءصثضءيصثي</p>\r\n\r\n<p>صث</p>\r\n', '2018-03-24 18:51:39', 1, '2018-03-24 18:51:39', 1),
(7, 'arabic', 'Spot', 2, 'name', '2يض2ثيي', '2018-03-24 18:51:58', 1, '2018-03-24 18:51:58', 1),
(8, 'arabic', 'Spot', 2, 'description', '<p>صهلؤصرلاصثرءيعغا ضصثلانم\\داءيلاىصث</p>\r\n\r\n<p>د</p>\r\n\r\n<p>يثءيضصثءيضصثءي</p>\r\n\r\n<p>يءضصث</p>\r\n', '2018-03-24 18:51:58', 1, '2018-03-24 18:51:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'English', 'English', 'eng', 1, 1, '2009-11-02 21:37:38', NULL, '2009-11-02 20:52:00', NULL),
(2, 'Arabic', 'العربية', 'arabic', 1, 2, '2018-03-12 20:41:39', 1, '2018-03-12 20:41:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `parent_id`, `menu_id`, `title`, `class`, `description`, `link`, `target`, `rel`, `status`, `lft`, `rght`, `visibility_roles`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(5, NULL, 4, 'About Ecospots', 'about-ecospots', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:about', '', '', 1, 3, 4, '', '', NULL, NULL, '2018-04-19 10:16:54', 1, '2009-08-19 12:23:33', NULL),
(6, NULL, 4, 'Upcoming Events', 'upcoming-events', '', '#', '', '', 1, 5, 6, '', '', NULL, NULL, '2018-04-19 10:17:20', 1, '2009-08-19 12:34:56', NULL),
(7, NULL, 3, 'Home', 'home', '', '/', '', '', 1, 5, 6, '', '', NULL, NULL, '2018-04-23 08:04:42', 1, '2009-09-06 21:32:54', NULL),
(10, NULL, 5, 'Site Admin', 'site-admin', '', '/admin', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-09-12 06:34:09', NULL, '2009-09-12 06:34:09', NULL),
(11, NULL, 5, 'Log out', 'log-out', '', '/plugin:users/controller:users/action:logout', '', '', 1, 7, 8, '[\"1\",\"2\"]', '', NULL, NULL, '2009-09-12 06:35:22', NULL, '2009-09-12 06:34:41', NULL),
(12, NULL, 6, 'Croogo', 'croogo', '', 'http://www.croogo.org', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-09-12 23:31:59', NULL, '2009-09-12 23:31:59', NULL),
(14, NULL, 6, 'CakePHP', 'cakephp', '', 'http://www.cakephp.org', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-10-07 03:25:25', NULL, '2009-09-12 23:38:43', NULL),
(16, NULL, 5, 'Entries (RSS)', 'entries-rss', '', '/promoted.rss', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-27 17:46:22', NULL, '2009-10-27 17:46:22', NULL),
(17, NULL, 5, 'Comments (RSS)', 'comments-rss', '', '/comments.rss', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-27 17:46:54', NULL, '2009-10-27 17:46:54', NULL),
(19, NULL, 3, 'Blog', 'blog', '', '/blogs', '', '', 1, 11, 12, '', '', NULL, NULL, '2018-04-23 07:49:52', 1, '2018-04-19 15:23:37', 1),
(20, NULL, 3, 'Spots', 'spots', '', '#', '', '', 1, 7, 8, '', '', NULL, NULL, '2018-04-20 13:30:56', 1, '2018-04-20 13:30:56', 1),
(21, NULL, 3, 'Events', 'events', '', '#', '', '', 1, 9, 10, '', '', NULL, NULL, '2018-04-20 13:31:27', 1, '2018-04-20 13:31:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zoom` int(2) DEFAULT '12',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'ROADMAP',
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `draggable` int(1) NOT NULL DEFAULT '1',
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `title`, `slug`, `latitude`, `longitude`, `zoom`, `type`, `language`, `draggable`, `element`, `google_api_key`, `status`, `updated`, `created`) VALUES
(1, 'Azgard', 'azgard', '-73.639488', '-1.281683', 14, 'ROADMAP', NULL, 1, NULL, 'test map key', 1, '2018-04-18 20:01:29', '2018-04-08 17:44:37'),
(2, 'Skyrim', 'skyrim', '1', '1', 12, 'ROADMAP', NULL, 1, NULL, 'test map key', 1, '2018-04-19 11:31:12', '2018-04-18 19:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `member_type_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `salary` float DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `title`, `member_type_id`, `photo`, `thumbnail`, `biography`, `salary`, `facebook`, `twitter`, `linkedin`, `instagram`, `weight`, `updated`, `created`) VALUES
(2, 'Ayman Hamdoun', 'A really cool developer', 1, 'Goals.png', '', 'Loves to code\r\n', NULL, '', '', '', '', 1, '2018-02-20 23:26:51', '2017-10-29 12:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `member_types`
--

CREATE TABLE `member_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `responsibilities` text,
  `recruiting` tinyint(1) DEFAULT '0',
  `min_experience` int(255) DEFAULT NULL,
  `max_experience` int(11) DEFAULT NULL,
  `starting_salary` float DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_types`
--

INSERT INTO `member_types` (`id`, `type`, `description`, `responsibilities`, `recruiting`, `min_experience`, `max_experience`, `starting_salary`, `weight`, `updated`, `created`) VALUES
(1, 'Web Developer', 'Person Responsible for developing and maintaining this website', NULL, 0, NULL, NULL, NULL, 1, '2017-10-29 12:28:58', '2017-10-29 12:28:58'),
(2, 'CEO', 'Chief Executor Officer', NULL, 0, NULL, NULL, NULL, 2, '2017-10-29 12:43:50', '2017-10-29 12:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'Main Menu', 'main', '', '', 1, NULL, 4, '', NULL, NULL, '2009-08-19 12:21:06', NULL, '2009-07-22 01:49:53', NULL),
(4, 'Footer', 'footer', '', '', 1, NULL, 2, '', NULL, NULL, '2009-08-19 12:22:42', NULL, '2009-08-19 12:22:42', NULL),
(5, 'Meta', 'meta', '', '', 1, NULL, 4, '', NULL, NULL, '2009-09-12 06:33:29', NULL, '2009-09-12 06:33:29', NULL),
(6, 'Blogroll', 'blogroll', '', '', 1, NULL, 2, '', NULL, NULL, '2009-09-12 23:30:24', NULL, '2009-09-12 23:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE `meta` (
  `id` int(20) NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_taxonomies`
--

CREATE TABLE `model_taxonomies` (
  `id` int(20) NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_taxonomies`
--

INSERT INTO `model_taxonomies` (`id`, `model`, `foreign_key`, `taxonomy_id`) VALUES
(4, 'Node', 10, 4),
(5, 'Node', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE `nodes` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(6, NULL, 1, 'Home', 'home', '', '', 1, NULL, 1, 0, 0, '/node/home', '', 0, 3, 4, '', 'node', NULL, NULL, '2018-03-12 20:40:39', 1, '2018-03-12 20:40:39', 1),
(7, NULL, 0, 'hareesa', 'hareesa.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/hareesa.jpg', NULL, 0, 1, 2, NULL, 'attachment', NULL, NULL, '2018-03-17 19:01:35', 1, '2018-03-17 19:01:35', 1),
(8, NULL, 0, 'cat', 'cat.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/cat.jpg', NULL, 0, 3, 4, NULL, 'attachment', NULL, NULL, '2018-03-17 19:21:50', 1, '2018-03-17 19:21:50', 1),
(9, NULL, 0, 'tulip', 'tulip.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/tulip.jpg', NULL, 0, 5, 6, NULL, 'attachment', NULL, NULL, '2018-03-17 19:23:47', 1, '2018-03-17 19:23:47', 1),
(10, NULL, 1, 'Test Blog', 'test-blog', '<p>ededed</p>\r\n', 'efe3d', 1, NULL, 1, 0, 0, '/blog/test-blog', '{\"4\":\"global-warming\",\"5\":\"poor-people\"}', 0, 7, 8, '', 'blog', NULL, NULL, '2018-04-22 07:07:14', 1, '2018-04-18 20:11:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `danger` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `name`, `ar_name`, `slug`, `photo`, `description`, `ar_description`, `danger`, `weight`, `updated`, `created`) VALUES
(1, 'tulip', '', '', '', '', '', 1, 1, '2018-04-08 17:18:55', '2018-04-08 17:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `plants_spots`
--

CREATE TABLE `plants_spots` (
  `id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `spot_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plants_spots`
--

INSERT INTO `plants_spots` (`id`, `plant_id`, `spot_id`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `alias`, `description`, `block_count`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(3, 'none', 'none', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(4, 'right', 'right', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(6, 'left', 'left', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(7, 'header', 'header', '', 1, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(8, 'footer', 'footer', '', 1, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(9, 'region1', 'region1', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(10, 'region2', 'region2', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(11, 'region3', 'region3', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(12, 'region4', 'region4', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(13, 'region5', 'region5', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(14, 'region6', 'region6', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(15, 'region7', 'region7', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(16, 'region8', 'region8', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(17, 'region9', 'region9', '', 0, '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(19, 'inside', 'inside', NULL, 2, '2017-12-14 14:00:53', 1, '2017-12-14 14:17:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `spot_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `ar_name`, `slug`, `photo`, `description`, `ar_description`, `weight`, `user_id`, `spot_id`, `updated`, `created`) VALUES
(1, 'Azgard is cool', 'صب', 'azgard-is-cool', NULL, '<p>cool place many gods and stuff</p>\r\n', '<p>صبض</p>\r\n', NULL, 1, 1, '2018-04-18 18:55:55', '2018-04-18 18:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', NULL, '2009-04-05 00:10:34', NULL),
(2, 'Registered', 'registered', '2009-04-05 00:10:50', NULL, '2009-04-06 05:20:38', NULL),
(3, 'Public', 'public', '2009-04-05 00:12:38', NULL, '2009-04-07 01:41:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2017-10-29 06:55:15'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2017-10-29 06:55:15'),
(3, 'IncreaseClassNameLength', 'Migrations', '2017-10-29 06:55:15'),
(4, 'FirstMigrationSettings', 'Settings', '2017-10-29 06:55:15'),
(5, 'SettingsTrackableFields', 'Settings', '2017-10-29 06:55:16'),
(6, 'AddedAssetTimestampSetting', 'Settings', '2017-10-29 06:55:16'),
(7, 'ExposeSiteThemeAndLocaleAndHomeUrl', 'Settings', '2017-10-29 06:55:16'),
(8, 'FirstMigrationAcl', 'Acl', '2017-10-29 06:55:16'),
(9, 'SplitSession', 'Acl', '2017-10-29 06:55:16'),
(10, 'FirstMigrationBlocks', 'Blocks', '2017-10-29 06:55:16'),
(11, 'BlocksTrackableFields', 'Blocks', '2017-10-29 06:55:16'),
(12, 'BlocksPublishingFields', 'Blocks', '2017-10-29 06:55:16'),
(13, 'FirstMigrationComments', 'Comments', '2017-10-29 06:55:16'),
(14, 'CommentsTrackableFields', 'Comments', '2017-10-29 06:55:16'),
(15, 'AddCommentsForeignKeys', 'Comments', '2017-10-29 06:55:16'),
(16, 'FirstMigrationContacts', 'Contacts', '2017-10-29 06:55:17'),
(17, 'ContactsTrackableFields', 'Contacts', '2017-10-29 06:55:17'),
(18, 'FirstMigrationMenus', 'Menus', '2017-10-29 06:55:17'),
(19, 'MenusTrackableFields', 'Menus', '2017-10-29 06:55:17'),
(20, 'MenusPublishingFields', 'Menus', '2017-10-29 06:55:17'),
(21, 'FirstMigrationMeta', 'Meta', '2017-10-29 06:55:17'),
(22, 'MetaTrackableFields', 'Meta', '2017-10-29 06:55:17'),
(23, 'FirstMigrationNodes', 'Nodes', '2017-10-29 06:55:17'),
(24, 'NodesTrackableFields', 'Nodes', '2017-10-29 06:55:17'),
(25, 'NodesPublishingFields', 'Nodes', '2017-10-29 06:55:17'),
(26, 'FirstMigrationTaxonomy', 'Taxonomy', '2017-10-29 06:55:17'),
(27, 'TaxonomyTrackableFields', 'Taxonomy', '2017-10-29 06:55:18'),
(28, 'RenameNodesTaxonomy', 'Taxonomy', '2017-10-29 06:55:18'),
(29, 'AddModelTaxonomyForeignKey', 'Taxonomy', '2017-10-29 06:55:18'),
(30, 'AddWysisygEnableField', 'Taxonomy', '2017-10-29 06:55:18'),
(31, 'FirstMigrationUsers', 'Users', '2017-10-29 06:55:18'),
(32, 'UsersTrackableFields', 'Users', '2017-10-29 06:55:18'),
(33, 'UsersEnlargeTimezone', 'Users', '2017-10-29 06:55:18'),
(34, 'FirstMigrationDashboard', 'Dashboards', '2017-10-29 06:55:18'),
(35, 'FirstMigrationAssets', 'Assets', '2017-10-29 10:22:36'),
(36, 'CounterCache', 'Assets', '2017-10-29 10:22:36'),
(37, 'FirstMigrationTranslate', 'Translate', '2018-03-12 20:40:06'),
(38, 'TranslateTrackableFields', 'Translate', '2018-03-12 20:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) NOT NULL,
  `node_id` int(10) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_robots` text COLLATE utf8_unicode_ci,
  `changefreq` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` tinytext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `node_id`, `meta_keywords`, `meta_description`, `meta_robots`, `changefreq`, `priority`) VALUES
(1, 5, '', '', '', '', ''),
(2, 6, '', '', '', '', ''),
(3, 6, '', '', '', '', ''),
(4, 7, '', '', '', '', ''),
(5, 6, '', '', '', '', ''),
(6, 10, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(20) NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(6, 'Site.title', 'EcoSpots', '', '', '', 1, 1, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:34', 1),
(7, 'Site.tagline', 'Eco Spots tagline', '', '', 'textarea', 1, 2, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(8, 'Site.email', 'you@your-site.com', '', '', '', 1, 3, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(12, 'Meta.robots', 'index, follow', '', '', '', 1, 6, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(13, 'Meta.keywords', 'croogo, Croogo', '', '', 'textarea', 1, 7, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(14, 'Meta.description', 'Croogo - A CakePHP powered Content Management System', '', '', 'textarea', 1, 8, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(15, 'Meta.generator', 'Croogo - Content Management System', '', '', '', 0, 9, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(20, 'Site.theme', 'EcoSpots', '', '', '', 0, 14, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', 1),
(21, 'Site.feed_url', '', '', '', '', 0, 15, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 16, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(23, 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', 1, 17, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(24, 'Comment.level', '1', '', 'levels deep (threaded comments)', '', 1, 18, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(25, 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', 1, 19, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(26, 'Site.locale', 'eng', '', '', 'text', 1, 20, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 21, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(28, 'Comment.date_time_format', 'M d, Y', '', '', '', 1, 22, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', '', 1, 4, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(32, 'Hook.bootstraps', 'Settings,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Wysiwyg,Ckeditor,Imagine,Assets,Maps,Translate,Ecospots', '', '', '', 0, 23, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', 1),
(33, 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', 1, 24, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 25, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 26, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '\"Remember Me\" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={\"Nodes.Node\": \"Node\", \"Blocks.Block\": \"Block\", \"Menus.Menu\": \"Menu\", \"Menus.Link\": \"Link\"}', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={\"0\": \"Disabled\", \"1\": \"Enabled in debug mode only\", \"force\": \"Always enabled\"}', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(40, 'Site.admin_theme', 'AdminExtras', 'Administration Theme', '', 'text', 1, 29, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', '2017-10-29 06:55:19', NULL, '2018-03-17 21:09:35', 1),
(42, 'Croogo.installed', '1', '', '', '', 0, 31, '', '2017-10-29 06:55:32', NULL, '2017-10-29 06:55:32', NULL),
(43, 'Croogo.version', '2.3.2', '', '', '', 0, 32, '', '2017-10-29 06:57:59', 1, '2017-10-29 06:57:59', 1),
(44, 'Social.facebook', '', '', 'Link your Facebook Account to your site by inserting your profile link above', 'text', 1, 33, '', '2017-10-29 07:12:03', 1, '2017-10-29 07:18:16', 1),
(45, 'Social.instagram', '', '', 'Link your Instagram Account to your site by inserting your profile link above', 'text', 1, 34, '', '2017-10-29 07:13:44', 1, '2017-10-29 07:17:56', 1),
(46, 'Social.twitter', '', '', 'Link your Twitter Account to your site by inserting your profile link above', 'text', 1, 35, '', '2017-10-29 07:14:05', 1, '2017-10-29 07:17:44', 1),
(47, 'Social.linkedin', '', '', 'Link your Linkedin Account to your site by inserting your profile link above', 'text', 1, 36, '', '2017-10-29 07:15:34', 1, '2017-10-29 07:17:35', 1),
(48, 'Social.google_plus', '', '', 'Link your Google Plus Account to your site by inserting your profile link above', 'text', 1, 37, '', '2017-10-29 07:19:03', 1, '2017-10-29 07:19:03', 1),
(49, 'Assets.installed', '1', '', '', '', 0, 38, '', '2017-10-29 10:22:36', 1, '2017-10-29 10:22:36', 1),
(52, 'Projects.model_name', 'Product', '', 'Is the model called Product or Project (used for labeling)', '', 1, 39, '', '2017-10-29 10:23:10', 1, '2017-11-02 11:34:28', 1),
(55, 'Seo.remove_settings_on_deactivate', 'NO', '', 'Remove settings on deactivate', '', 1, 40, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(56, 'Seo.changefreq', 'weekly', '', 'Default Changefeq of the SEO Sitemap entries', '', 1, 41, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(57, 'Seo.priority', '0.8', '', 'Default Priority of the SEO Sitemap entries', '', 1, 42, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(58, 'Seo.organize_by_vocabulary', '1', '', 'Organize the public sitemap by vocabulary?', '', 1, 43, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(59, 'Seo.homepage_title', 'Croogo', '', 'Homepage Title ', '', 1, 44, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(60, 'Seo.homepage_description', 'A CakePHP powered Content Management System.', '', 'Default Homepage META Description', '', 1, 45, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(61, 'Seo.show_per_page_stats', '0', '', 'Show Page Stats', '', 1, 46, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(62, 'Seo.hook_google', '0', '', 'Provide Hook to Google', '', 1, 47, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(63, 'Seo.hook_twitter', '0', '', 'Provide Hook to Twitter', '', 1, 48, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(64, 'Seo.hook_facebook', '0', '', 'Provide Hook to Facebook', '', 1, 49, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(65, 'Seo.alexa_verification_key', '', '', 'Alexa Verification Key', '', 1, 50, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(66, 'Seo.bing_webmaster_tools_key', '', '', 'Bing Webmaster Tools Key', '', 1, 51, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(67, 'Seo.google_adwords_tracking_for_messages', '', '', 'Google AdWords Tracking for Messages', '', 1, 52, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(68, 'Seo.google_webmaster_tools_key', '', '', 'Google Webmaster Tools Key', '', 1, 53, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(69, 'Seo.google_analytics_ua', 'UA-1-XXXXXXXXX', '', 'Google Analytics UA Property', '', 1, 54, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(70, 'Seo.google_analytics_domain', 'your-site.com', '', 'Google Analytics Domain', '', 1, 55, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(71, 'Seo.google_places_cid', '', '', 'Google Places CID', '', 1, 56, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(72, 'Seo.google_plus_cid', '', '', 'Google Plus CID', '', 1, 57, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(73, 'Seo.google_tag_manager', 'XXXX-XXXX', '', 'Google Tag Manager Code', '', 1, 58, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(74, 'Seo.meta_robots_default', 'INDEX, FOLLOW', '', 'Default robots entry for individual pages', '', 1, 59, '', '2017-10-29 18:39:11', 1, '2017-10-29 18:39:11', 1),
(75, 'Seo.insert_meta_description', '1', '', 'Insert META Description tag?', '', 1, 60, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(76, 'Seo.insert_meta_robots', '1', '', 'Insert META Robots tag?', '', 1, 61, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(77, 'Seo.insert_meta_keywords', '1', '', 'Insert META Keywords tag?', '', 1, 62, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(78, 'Seo.turn_off_promote_by_default', '1', '', 'Turn OFF \"Promoted\" by default', '', 1, 63, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(79, 'Seo.add_rss_ga_campaign_tags', '1', '', 'Add Google Analytics Campaign Trackers to link?', '', 1, 64, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(80, 'Seo.rss_ga_medium', 'rssfeed', '', 'Campaign Medium', '', 1, 65, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(81, 'Seo.rss_ga_campaign_name', 'RSSFeed', '', 'Campaign Name', '', 1, 66, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(82, 'Seo.rss_before', '', '', 'RSS Post Prefix', '', 1, 67, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(83, 'Seo.rss_after', '', '', 'RSS Post Suffix', '', 1, 68, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(84, 'Seo.add_copy_link', '1', '', 'Add page link when copied?', '', 1, 69, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(85, 'Seo.add_copy_link_ga_campaign_tags', '1', '', 'Add Google Analytics Campaign Trackers to link?', '', 1, 70, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(86, 'Seo.copy_link_ga_medium', 'copylink', '', 'Campaign Medium', '', 1, 71, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(87, 'Seo.copy_link_ga_campaign_name', 'CutNPaste', '', 'Campaign Name', '', 1, 72, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(88, 'Seo.copy_link_text', 'Read more at: {{current_page}} Copyright &copy; {{site_title}}', '', 'Text to add when copied.', '', 1, 73, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(89, 'Seo.facebook_link', '', '', 'Facebook Page', '', 1, 74, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(90, 'Seo.facebook_app_key', '', '', 'Facebook App Key', '', 1, 75, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(91, 'Seo.facebook_app_secret', '', '', 'Facebook App Secret', '', 1, 76, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(92, 'Seo.twitter_username', '', '', 'Twitter Username', '', 1, 77, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(93, 'Seo.twitter_consumer_key', '', '', 'Twitter Consumer Key', '', 1, 78, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(94, 'Seo.twitter_consumer_secret', '', '', 'Twitter Consumer Secret', '', 1, 79, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(95, 'Seo.twitter_access_token', '', '', 'Twitter Access Token', '', 1, 80, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(96, 'Seo.twitter_access_token_secret', '', '', 'Twitter Access Secret', '', 1, 81, '', '2017-10-29 18:39:12', 1, '2017-10-29 18:39:12', 1),
(97, 'Seo.version', '1.0', 'Version', '', '', 0, 82, '', '2017-10-29 18:39:13', 1, '2017-10-29 18:39:13', 1),
(104, 'Social.youtube', '', '', 'Link your Youtube Channel to your site by inserting your channel link above', 'text', 1, 83, '', '2018-01-23 22:58:56', 1, '2018-01-23 22:59:12', 1),
(105, 'Seo.adwords_conversion_key_contact', '', '', 'Conversion ID', '', 1, 84, '', '2018-02-22 14:34:14', 1, '2018-02-22 14:34:14', 1),
(106, 'Seo.adwords_conversion_language_contact', '', '', 'Conversion Language', '', 1, 85, '', '2018-02-22 14:34:14', 1, '2018-02-22 14:34:14', 1),
(107, 'Seo.adwords_conversion_format_contact', '', '', 'Conversion Format', '', 1, 86, '', '2018-02-22 14:34:14', 1, '2018-02-22 14:34:14', 1),
(108, 'Seo.adwords_conversion_color_contact', '', '', 'Conversion Color', '', 1, 87, '', '2018-02-22 14:34:14', 1, '2018-02-22 14:34:14', 1),
(109, 'Seo.adwords_conversion_label_contact', '', '', 'Conversion Label', '', 1, 88, '', '2018-02-22 14:34:14', 1, '2018-02-22 14:34:14', 1),
(110, 'Seo.adwords_conversion_value_contact', '', '', 'Conversion Value', '', 1, 89, '', '2018-02-22 14:34:14', 1, '2018-02-22 14:34:14', 1),
(111, 'Site.Google_Map_API_Key', 'test map key', 'Google Map API Key', 'Key to put in all google maps on the site', 'text', 1, 90, '', '2018-03-17 21:07:06', 1, '2018-03-17 21:09:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `spot_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`id`, `name`, `ar_name`, `slug`, `photo`, `description`, `ar_description`, `protected`, `weight`, `map_id`, `spot_id`, `updated`, `created`) VALUES
(1, 'Azgard', 'لاهخ', 'azgard', '', '<p>hello mello my name is jello</p>\r\n', '', 0, 1, 1, NULL, '2018-04-18 20:01:29', '2018-04-08 17:43:00'),
(2, 'Skyrim', '', 'skyrim', '', '<p>North of tamriel</p>\r\n', '', 0, 2, 2, 1, '2018-04-19 11:31:12', '2018-04-15 15:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`) VALUES
(4, NULL, 4, 3, 1, 2),
(5, NULL, 5, 3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Uncategorized', 'uncategorized', '', '2009-07-22 03:38:43', NULL, '2009-07-22 03:34:56', NULL),
(2, 'Announcements', 'announcements', '', '2010-05-16 23:57:06', NULL, '2009-07-22 03:45:37', NULL),
(3, 'mytag', 'mytag', '', '2009-08-26 14:42:43', NULL, '2009-08-26 14:42:43', NULL),
(4, 'Global Warming', 'global-warming', '', '2018-04-20 14:06:42', 1, '2018-04-20 14:06:42', 1),
(5, 'Poor People', 'poor-people', '', '2018-04-20 14:07:44', 1, '2018-04-20 14:07:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `ar_name`, `slug`, `description`, `ar_description`, `weight`, `updated`, `created`) VALUES
(1, 'Pollution', '', 'pollution', '', '', NULL, '2018-04-22 08:02:14', '2018-04-22 08:02:14'),
(2, 'Global Warming', '', 'global-warming', '', '', NULL, '2018-04-22 08:02:25', '2018-04-22 08:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `format_use_wysiwyg` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `format_use_wysiwyg`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 1, 0, 1, 0, 0, '', NULL, '2009-09-09 00:23:24', NULL, '2009-09-02 18:06:27', NULL),
(2, 'Blog', 'blog', 'A blog entry is a single post to an online journal, or blog.', 1, 1, 1, 2, 1, 0, 0, '', NULL, '2009-09-15 12:15:43', NULL, '2009-09-02 18:20:44', NULL),
(4, 'Node', 'node', 'Default content type.', 1, 1, 1, 2, 1, 0, 0, '', NULL, '2009-10-06 21:53:15', NULL, '2009-09-05 23:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types_vocabularies`
--

CREATE TABLE `types_vocabularies` (
  `id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types_vocabularies`
--

INSERT INTO `types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`) VALUES
(32, 2, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `status`, `updated`, `updated_by`, `created`, `timezone`, `created_by`) VALUES
(1, 1, 'admin', '1dd6faff40ed69c92f724aa3c2c3dd85bfbfbfa4', 'admin', '', NULL, 'e3701104de1fc85d8659269511685f11', NULL, NULL, 1, '2017-10-29 06:55:32', NULL, '2017-10-29 06:55:32', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vocabularies`
--

CREATE TABLE `vocabularies` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vocabularies`
--

INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'Topic', 'topic', 'What the blog is about', 1, 1, 0, NULL, 1, '2018-04-20 14:06:22', 1, '2018-04-20 14:06:22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities_spots`
--
ALTER TABLE `activities_spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animals_spots`
--
ALTER TABLE `animals_spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `un_assets_dimension` (`parent_asset_id`,`width`,`height`),
  ADD KEY `ix_assets_hash` (`hash`,`path`),
  ADD KEY `fk_assets` (`model`,`foreign_key`);

--
-- Indexes for table `asset_usages`
--
ALTER TABLE `asset_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_asset_usage` (`model`,`foreign_key`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_attachments_hash` (`hash`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_alias` (`alias`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_topics`
--
ALTER TABLE `blogs_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_fk` (`model`,`foreign_key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locale` (`locale`),
  ADD KEY `model` (`model`),
  ADD KEY `row_id` (`foreign_key`),
  ADD KEY `field` (`field`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_types`
--
ALTER TABLE `member_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_alias` (`alias`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_taxonomies`
--
ALTER TABLE `model_taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants_spots`
--
ALTER TABLE `plants_spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `region_alias` (`alias`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_alias` (`alias`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pk_role_users` (`user_id`,`role_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_alias` (`alias`);

--
-- Indexes for table `types_vocabularies`
--
ALTER TABLE `types_vocabularies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vocabularies`
--
ALTER TABLE `vocabularies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vocabulary_alias` (`alias`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;
--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `activities_spots`
--
ALTER TABLE `activities_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `animals_spots`
--
ALTER TABLE `animals_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `asset_usages`
--
ALTER TABLE `asset_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blogs_topics`
--
ALTER TABLE `blogs_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `member_types`
--
ALTER TABLE `member_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meta`
--
ALTER TABLE `meta`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `model_taxonomies`
--
ALTER TABLE `model_taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plants_spots`
--
ALTER TABLE `plants_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `types_vocabularies`
--
ALTER TABLE `types_vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vocabularies`
--
ALTER TABLE `vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
