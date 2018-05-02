-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 10:56 AM
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
(1, NULL, '', NULL, 'controllers', 1, 780),
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
(387, NULL, NULL, NULL, 'api', 781, 796),
(388, 387, NULL, NULL, 'v1_0', 782, 795),
(389, 388, NULL, NULL, 'Nodes', 783, 788),
(390, 389, NULL, NULL, 'Nodes', 784, 787),
(391, 390, NULL, NULL, 'lookup', 785, 786),
(395, 388, NULL, NULL, 'Users', 789, 794),
(396, 395, NULL, NULL, 'Users', 790, 793),
(397, 396, NULL, NULL, 'lookup', 791, 792),
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
(571, 1, NULL, NULL, 'Ecospots', 638, 779),
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
(602, 571, NULL, NULL, 'Events', 707, 726),
(603, 602, NULL, NULL, 'admin_index', 708, 709),
(604, 602, NULL, NULL, 'admin_add', 710, 711),
(605, 599, NULL, NULL, 'admin_edit', 698, 699),
(606, 599, NULL, NULL, 'admin_delete', 700, 701),
(607, 599, NULL, NULL, 'admin_moveup', 702, 703),
(608, 599, NULL, NULL, 'admin_movedown', 704, 705),
(609, 571, NULL, NULL, 'Blogs', 727, 744),
(610, 609, NULL, NULL, 'admin_index', 728, 729),
(611, 609, NULL, NULL, 'admin_add', 730, 731),
(612, 609, NULL, NULL, 'admin_edit', 732, 733),
(613, 609, NULL, NULL, 'admin_delete', 734, 735),
(614, 609, NULL, NULL, 'admin_moveup', 736, 737),
(615, 609, NULL, NULL, 'admin_movedown', 738, 739),
(616, 609, NULL, NULL, 'index', 740, 741),
(617, 609, NULL, NULL, 'view', 742, 743),
(618, 602, NULL, NULL, 'admin_edit', 712, 713),
(619, 602, NULL, NULL, 'admin_delete', 714, 715),
(620, 602, NULL, NULL, 'view', 716, 717),
(621, 602, NULL, NULL, 'admin_moveup', 718, 719),
(622, 602, NULL, NULL, 'admin_movedown', 720, 721),
(623, 571, NULL, NULL, 'Reviews', 745, 760),
(624, 623, NULL, NULL, 'admin_index', 746, 747),
(625, 623, NULL, NULL, 'admin_add', 748, 749),
(626, 623, NULL, NULL, 'admin_edit', 750, 751),
(627, 623, NULL, NULL, 'admin_delete', 752, 753),
(628, 623, NULL, NULL, 'view', 754, 755),
(629, 623, NULL, NULL, 'admin_moveup', 756, 757),
(630, 623, NULL, NULL, 'admin_movedown', 758, 759),
(631, 571, NULL, NULL, 'Topics', 761, 778),
(632, 631, NULL, NULL, 'admin_index', 762, 763),
(633, 631, NULL, NULL, 'admin_add', 764, 765),
(634, 631, NULL, NULL, 'admin_edit', 766, 767),
(635, 631, NULL, NULL, 'admin_delete', 768, 769),
(636, 631, NULL, NULL, 'admin_moveup', 770, 771),
(637, 631, NULL, NULL, 'admin_movedown', 772, 773),
(638, 631, NULL, NULL, 'index', 774, 775),
(639, 631, NULL, NULL, 'view', 776, 777),
(640, 602, NULL, NULL, 'footerEvents', 722, 723),
(641, 602, NULL, NULL, 'index', 724, 725);

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
(3, 'Sky Diving', '', 'sky-diving', NULL, '2018-04-28 13:13:30', '2018-04-28 13:13:30'),
(2, 'Scuba Diving', '', 'scuba-diving', NULL, '2018-04-28 12:58:38', '2018-04-28 12:58:38'),
(4, 'Hiking', '', 'hiking', NULL, '2018-05-01 13:52:15', '2018-05-01 13:52:15'),
(5, 'Telefrik', '', 'telefrik', NULL, '2018-05-01 17:56:16', '2018-05-01 17:56:16'),
(6, 'Parachute', '', 'parachute', NULL, '2018-05-01 17:56:31', '2018-05-01 17:56:31'),
(7, 'Biking', '', 'biking', NULL, '2018-05-01 17:56:43', '2018-05-01 17:56:43'),
(8, 'Running', '', 'running', NULL, '2018-05-01 17:56:54', '2018-05-01 17:56:54'),
(9, 'Boat tour', '', 'boat-tour', NULL, '2018-05-01 17:57:08', '2018-05-01 17:57:08');

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
(30, 5, 3),
(29, 4, 3),
(21, 9, 4),
(20, 5, 4),
(25, 7, 5),
(24, 4, 5),
(27, 4, 7),
(28, 4, 8);

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
(11, 1, 3);

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
(304, 3, 640, '1', '1', '1', '1'),
(305, 2, 620, '1', '1', '1', '1'),
(306, 3, 620, '1', '1', '1', '1'),
(307, 2, 641, '1', '1', '1', '1'),
(308, 3, 641, '1', '1', '1', '1'),
(309, 2, 616, '1', '1', '1', '1'),
(310, 2, 617, '1', '1', '1', '1'),
(311, 3, 616, '1', '1', '1', '1'),
(312, 3, 617, '1', '1', '1', '1'),
(313, 1, 610, '1', '1', '1', '1'),
(314, 1, 611, '1', '1', '1', '1'),
(315, 1, 632, '1', '1', '1', '1'),
(316, 1, 633, '1', '1', '1', '1');

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
(8, NULL, '6', 'AssetsAttachment', 'harisa-lebanon-3.jpg', 104895, 612, 612, 'image/jpeg', 'jpg', '181785494dc68de83dc0237eb37320ebdbbdb273', '/assets/82\\53\\58/181785494dc68de83dc0237eb37320ebdbbdb273.jpg', 'LocalAttachment', '2018-05-01 15:16:11', '2018-05-01 15:16:11'),
(4, NULL, '2', 'AssetsAttachment', 'Goals.png', 196420, 1366, 639, 'image/png', 'png', 'f00de0f27daebff365831573d0215b50aa297d8b', '/assets/21\\21\\54/f00de0f27daebff365831573d0215b50aa297d8b.png', 'LocalAttachment', '2018-03-17 21:30:57', '2018-03-17 21:30:57'),
(5, NULL, '3', 'AssetsAttachment', 'b.jpg', 153129, 940, 520, 'image/jpeg', 'jpg', '3d7a67a72c68a6efe71e9d56901c904a936deb0c', '/assets/50\\90\\22/3d7a67a72c68a6efe71e9d56901c904a936deb0c.jpg', 'LocalAttachment', '2018-05-01 12:22:46', '2018-05-01 12:22:46'),
(6, NULL, '4', 'AssetsAttachment', 'c.jpg', 259517, 1920, 1080, 'image/jpeg', 'jpg', '93682c099fe4cfc011fc5c3a700f368c1b046d74', '/assets/94\\51\\04/93682c099fe4cfc011fc5c3a700f368c1b046d74.jpg', 'LocalAttachment', '2018-05-01 12:22:46', '2018-05-01 12:22:46'),
(7, NULL, '5', 'AssetsAttachment', 'a.jpg', 329906, 1080, 720, 'image/jpeg', 'jpg', '5df38c80757e872370293f1f1c419ec200960644', '/assets/54\\53\\04/5df38c80757e872370293f1f1c419ec200960644.jpg', 'LocalAttachment', '2018-05-01 12:22:46', '2018-05-01 12:22:46'),
(9, NULL, '7', 'AssetsAttachment', 'harrea1.jpg', 265509, 1113, 713, 'image/jpeg', 'jpg', '70bf2b83415a3aea3c41e27570bc9938d8b93c91', '/assets/76\\02\\45/70bf2b83415a3aea3c41e27570bc9938d8b93c91.jpg', 'LocalAttachment', '2018-05-01 16:02:01', '2018-05-01 16:02:01'),
(10, NULL, '9', 'AssetsAttachment', '2-14-750x469.jpg', 75479, 750, 469, 'image/jpeg', 'jpg', '7d35f8f3d361dac17b3204eb6e556fea980cec65', '/assets/94\\41\\89/7d35f8f3d361dac17b3204eb6e556fea980cec65.jpg', 'LocalAttachment', '2018-05-01 16:05:08', '2018-05-01 16:05:08'),
(11, NULL, '10', 'AssetsAttachment', 'f28ff57aeda0acd19c35f4db2936202f.jpg', 119060, 770, 512, 'image/jpeg', 'jpg', 'adfa2f7afe1f21a57710687a2c0d854842988911', '/assets/37\\04\\32/adfa2f7afe1f21a57710687a2c0d854842988911.jpg', 'LocalAttachment', '2018-05-01 16:06:41', '2018-05-01 16:06:41'),
(12, NULL, '12', 'AssetsAttachment', 'arz-9.jpg', 1095681, 1500, 1000, 'image/jpeg', 'jpg', 'f824ad25773b633ff793adc511ae8b5d8aa21f8e', '/assets/44\\79\\09/f824ad25773b633ff793adc511ae8b5d8aa21f8e.jpg', 'LocalAttachment', '2018-05-01 16:10:35', '2018-05-01 16:10:35'),
(13, NULL, '19', 'AssetsAttachment', 'balou.jpg', 119060, 770, 512, 'image/jpeg', 'jpg', 'adfa2f7afe1f21a57710687a2c0d854842988911', '/assets/54\\55\\45/adfa2f7afe1f21a57710687a2c0d854842988911.jpg', 'LocalAttachment', '2018-05-01 16:12:27', '2018-05-01 16:12:27'),
(14, NULL, '21', 'AssetsAttachment', 'experience_balou_balaa_explore_zawareeb_douma.jpg', 329906, 1080, 720, 'image/jpeg', 'jpg', '5df38c80757e872370293f1f1c419ec200960644', '/assets/24\\22\\99/5df38c80757e872370293f1f1c419ec200960644.jpg', 'LocalAttachment', '2018-05-01 16:13:52', '2018-05-01 16:13:52'),
(15, NULL, '23', 'AssetsAttachment', 'grotto.jpg', 103851, 770, 430, 'image/jpeg', 'jpg', '5a764e8838ff45613ff5e8b6a211bea724d430b4', '/assets/46\\40\\03/5a764e8838ff45613ff5e8b6a211bea724d430b4.jpg', 'LocalAttachment', '2018-05-01 16:15:35', '2018-05-01 16:15:35'),
(16, NULL, '26', 'AssetsAttachment', 'arz-9.dsc.jpg', 1095681, 1500, 1000, 'image/jpeg', 'jpg', 'f824ad25773b633ff793adc511ae8b5d8aa21f8e', '/assets/50\\62\\17/f824ad25773b633ff793adc511ae8b5d8aa21f8e.jpg', 'LocalAttachment', '2018-05-01 16:17:16', '2018-05-01 16:17:16'),
(17, NULL, '28', 'AssetsAttachment', 'gettyimages-883483604_slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85.jpg', 124452, 800, 533, 'image/jpeg', 'jpg', 'bc3822f9c493453ae872477f6cfc43f172775b11', '/assets/81\\89\\77/bc3822f9c493453ae872477f6cfc43f172775b11.jpg', 'LocalAttachment', '2018-05-01 16:38:39', '2018-05-01 16:38:39'),
(18, NULL, '30', 'AssetsAttachment', 'AirPollutionHealthEffects.jpg.653x0_q80_crop-smart.jpg', 25800, 653, 436, 'image/jpeg', 'jpg', 'b6cb1743f2e8b7946afdc57b3aa8783b99f16db5', '/assets/55\\19\\15/b6cb1743f2e8b7946afdc57b3aa8783b99f16db5.jpg', 'LocalAttachment', '2018-05-01 16:46:04', '2018-05-01 16:46:04'),
(19, NULL, '32', 'AssetsAttachment', 'Jeita-grotto-940x520.jpg', 153129, 940, 520, 'image/jpeg', 'jpg', '3d7a67a72c68a6efe71e9d56901c904a936deb0c', '/assets/93\\77\\35/3d7a67a72c68a6efe71e9d56901c904a936deb0c.jpg', 'LocalAttachment', '2018-05-01 16:52:11', '2018-05-01 16:52:11'),
(20, NULL, '34', 'AssetsAttachment', 'cedars-lebanon-46.jpg', 339962, 1000, 664, 'image/jpeg', 'jpg', 'f336a5e431d57dbe9192cbeeb82bbcc5da183ca9', '/assets/15\\56\\78/f336a5e431d57dbe9192cbeeb82bbcc5da183ca9.jpg', 'LocalAttachment', '2018-05-01 17:06:29', '2018-05-01 17:06:29'),
(21, NULL, '36', 'AssetsAttachment', 'arzzzzzzzzzzzzz.jpg', 339962, 1000, 664, 'image/jpeg', 'jpg', 'f336a5e431d57dbe9192cbeeb82bbcc5da183ca9', '/assets/49\\47\\09/f336a5e431d57dbe9192cbeeb82bbcc5da183ca9.jpg', 'LocalAttachment', '2018-05-01 17:06:51', '2018-05-01 17:06:51'),
(22, NULL, '38', 'AssetsAttachment', 'cortez-animal-hospital-home-hero.jpg', 242502, 2000, 1200, 'image/jpeg', 'jpg', 'f272240a638efb71ca623d42d245961105c26f51', '/assets/93\\17\\09/f272240a638efb71ca623d42d245961105c26f51.jpg', 'LocalAttachment', '2018-05-01 17:22:36', '2018-05-01 17:22:36'),
(23, NULL, '40', 'AssetsAttachment', '180125071250-lebanons-trash-beaches-1-exlarge-169.jpg', 80415, 780, 438, 'image/jpeg', 'jpg', 'a41bc8724b2f81a3f8ff71fe07fdda9a3edbf77b', '/assets/77\\68\\77/a41bc8724b2f81a3f8ff71fe07fdda9a3edbf77b.jpg', 'LocalAttachment', '2018-05-01 17:36:48', '2018-05-01 17:36:48'),
(24, NULL, '42', 'AssetsAttachment', 'outreach.jpg', 102533, 400, 292, 'image/jpeg', 'jpg', 'd9276be019fd586d39c752185004264ec5a2cdda', '/assets/38\\77\\71/d9276be019fd586d39c752185004264ec5a2cdda.jpg', 'LocalAttachment', '2018-05-01 17:39:56', '2018-05-01 17:39:56'),
(25, NULL, '44', 'AssetsAttachment', 'rsz_adobestock_101333792-1-862x457.jpg', 114967, 862, 457, 'image/jpeg', 'jpg', '1ac99f3636baf42a347ce9e016999e96fc625ac0', '/assets/48\\93\\34/1ac99f3636baf42a347ce9e016999e96fc625ac0.jpg', 'LocalAttachment', '2018-05-01 17:43:09', '2018-05-01 17:43:09'),
(26, NULL, '48', 'AssetsAttachment', 'maxresdefault.jpg', 259517, 1920, 1080, 'image/jpeg', 'jpg', '93682c099fe4cfc011fc5c3a700f368c1b046d74', '/assets/60\\88\\97/93682c099fe4cfc011fc5c3a700f368c1b046d74.jpg', 'LocalAttachment', '2018-05-01 18:13:55', '2018-05-01 18:13:55'),
(27, NULL, '50', 'AssetsAttachment', '1444dbfb91889c964033cf90d6bc6cc9-jeita-grotto.jpg', 103851, 770, 430, 'image/jpeg', 'jpg', '5a764e8838ff45613ff5e8b6a211bea724d430b4', '/assets/87\\88\\38/5a764e8838ff45613ff5e8b6a211bea724d430b4.jpg', 'LocalAttachment', '2018-05-01 18:14:22', '2018-05-01 18:14:22'),
(28, NULL, '54', 'AssetsAttachment', '1200px-View_from_the_Barouk_Forest.jpg', 270132, 1200, 900, 'image/jpeg', 'jpg', '973e0801354b65671c0a952da944bf0fb79b350f', '/assets/58\\50\\74/973e0801354b65671c0a952da944bf0fb79b350f.jpg', 'LocalAttachment', '2018-05-01 18:25:53', '2018-05-01 18:25:53');

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
(28, 26, 'Spot', '3', NULL, NULL, '2018-05-01 18:13:56', '2018-05-01 18:13:56', NULL),
(19, 17, 'Blog', '3', NULL, NULL, '2018-05-01 16:38:39', '2018-05-01 16:38:39', NULL),
(18, 16, 'Node', '6', NULL, NULL, '2018-05-01 16:17:16', '2018-05-01 16:17:16', NULL),
(16, 14, 'Node', '6', NULL, NULL, '2018-05-01 16:13:52', '2018-05-01 16:13:52', NULL),
(20, 18, 'Blog', '4', NULL, NULL, '2018-05-01 16:46:05', '2018-05-01 16:46:05', NULL),
(21, 19, 'Blog', '5', NULL, NULL, '2018-05-01 16:52:12', '2018-05-01 16:52:12', NULL),
(22, 20, 'Blog', '6', NULL, NULL, '2018-05-01 17:06:29', '2018-05-01 17:06:29', NULL),
(24, 22, 'Blog', '8', NULL, NULL, '2018-05-01 17:22:36', '2018-05-01 17:22:36', NULL),
(25, 23, 'Blog', '10', NULL, NULL, '2018-05-01 17:36:48', '2018-05-01 17:36:48', NULL),
(26, 24, 'Blog', '11', NULL, NULL, '2018-05-01 17:39:56', '2018-05-01 17:39:56', NULL),
(27, 25, 'Blog', '12', NULL, NULL, '2018-05-01 17:43:09', '2018-05-01 17:43:09', NULL),
(29, 27, 'Spot', '4', NULL, NULL, '2018-05-01 18:14:22', '2018-05-01 18:14:22', NULL),
(30, 20, 'Spot', '5', NULL, NULL, '2018-05-01 18:15:21', '2018-05-01 18:15:21', NULL),
(31, 13, 'Spot', '6', NULL, NULL, '2018-05-01 18:15:51', '2018-05-01 18:15:51', NULL),
(32, 28, 'Spot', '8', NULL, NULL, '2018-05-01 18:25:53', '2018-05-01 18:25:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
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
(2, 'Goals.png', 'Goals.png', '', '', 1, 0, NULL, 'f00de0f27daebff365831573d0215b50aa297d8b', NULL, NULL, '2018-03-17 21:30:57', 1, '2018-03-17 21:30:57', 1, NULL),
(3, 'b.jpg', 'b.jpg', '', '', 1, 0, NULL, '3d7a67a72c68a6efe71e9d56901c904a936deb0c', NULL, NULL, '2018-05-01 12:22:46', 1, '2018-05-01 12:22:46', 1, NULL),
(4, 'c.jpg', 'c.jpg', '', '', 1, 0, NULL, '93682c099fe4cfc011fc5c3a700f368c1b046d74', NULL, NULL, '2018-05-01 12:22:46', 1, '2018-05-01 12:22:46', 1, NULL),
(5, 'a.jpg', 'a.jpg', '', '', 1, 0, NULL, '5df38c80757e872370293f1f1c419ec200960644', NULL, NULL, '2018-05-01 12:22:46', 1, '2018-05-01 12:22:46', 1, NULL),
(6, 'harisa-lebanon-3.jpg', 'harisa-lebanon-3.jpg', NULL, '', 1, 0, NULL, '181785494dc68de83dc0237eb37320ebdbbdb273', NULL, NULL, '2018-05-01 15:16:11', 1, '2018-05-01 15:16:11', 1, NULL),
(7, 'harrea1.jpg', 'harrea1.jpg', NULL, '', 1, 0, NULL, '70bf2b83415a3aea3c41e27570bc9938d8b93c91', NULL, NULL, '2018-05-01 16:02:01', 1, '2018-05-01 16:02:01', 1, NULL),
(9, '2-14-750x469.jpg', '2-14-750x469.jpg', NULL, '', 1, 0, NULL, '7d35f8f3d361dac17b3204eb6e556fea980cec65', NULL, NULL, '2018-05-01 16:05:08', 1, '2018-05-01 16:05:08', 1, NULL),
(10, 'f28ff57aeda0acd19c35f4db2936202f.jpg', 'f28ff57aeda0acd19c35f4db2936202f.jpg', NULL, '', 1, 0, NULL, 'adfa2f7afe1f21a57710687a2c0d854842988911', NULL, NULL, '2018-05-01 16:06:40', 1, '2018-05-01 16:06:40', 1, NULL),
(12, 'arz-9.jpg', 'arz-9.jpg', NULL, '', 1, 0, NULL, 'f824ad25773b633ff793adc511ae8b5d8aa21f8e', NULL, NULL, '2018-05-01 16:10:35', 1, '2018-05-01 16:10:35', 1, NULL),
(19, 'balou.jpg', 'balou.jpg', NULL, '', 1, 0, NULL, 'adfa2f7afe1f21a57710687a2c0d854842988911', NULL, NULL, '2018-05-01 16:12:27', 1, '2018-05-01 16:12:27', 1, NULL),
(21, 'experience_balou_balaa_explore_zawareeb_douma.jpg', 'experience_balou_balaa_explore_zawareeb_douma.jpg', NULL, '', 1, 0, NULL, '5df38c80757e872370293f1f1c419ec200960644', NULL, NULL, '2018-05-01 16:13:52', 1, '2018-05-01 16:13:52', 1, NULL),
(23, 'grotto.jpg', 'grotto.jpg', NULL, '', 1, 0, NULL, '5a764e8838ff45613ff5e8b6a211bea724d430b4', NULL, NULL, '2018-05-01 16:15:35', 1, '2018-05-01 16:15:35', 1, NULL),
(26, 'arz-9.dsc.jpg', 'arz-9.dsc.jpg', NULL, '', 1, 0, NULL, 'f824ad25773b633ff793adc511ae8b5d8aa21f8e', NULL, NULL, '2018-05-01 16:17:16', 1, '2018-05-01 16:17:16', 1, NULL),
(28, 'gettyimages-883483604_slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85.jpg', 'gettyimages-883483604_slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85.jpg', NULL, '', 1, 0, NULL, 'bc3822f9c493453ae872477f6cfc43f172775b11', NULL, NULL, '2018-05-01 16:38:39', 1, '2018-05-01 16:38:39', 1, NULL),
(30, 'AirPollutionHealthEffects.jpg.653x0_q80_crop-smart.jpg', 'AirPollutionHealthEffects.jpg.653x0_q80_crop-smart.jpg', NULL, '', 1, 0, NULL, 'b6cb1743f2e8b7946afdc57b3aa8783b99f16db5', NULL, NULL, '2018-05-01 16:46:04', 1, '2018-05-01 16:46:04', 1, NULL),
(32, 'Jeita-grotto-940x520.jpg', 'Jeita-grotto-940x520.jpg', NULL, '', 1, 0, NULL, '3d7a67a72c68a6efe71e9d56901c904a936deb0c', NULL, NULL, '2018-05-01 16:52:11', 1, '2018-05-01 16:52:11', 1, NULL),
(34, 'cedars-lebanon-46.jpg', 'cedars-lebanon-46.jpg', NULL, '', 1, 0, NULL, 'f336a5e431d57dbe9192cbeeb82bbcc5da183ca9', NULL, NULL, '2018-05-01 17:06:29', 1, '2018-05-01 17:06:29', 1, NULL),
(36, 'arzzzzzzzzzzzzz.jpg', 'arzzzzzzzzzzzzz.jpg', NULL, '', 1, 0, NULL, 'f336a5e431d57dbe9192cbeeb82bbcc5da183ca9', NULL, NULL, '2018-05-01 17:06:51', 1, '2018-05-01 17:06:51', 1, NULL),
(38, 'cortez-animal-hospital-home-hero.jpg', 'cortez-animal-hospital-home-hero.jpg', NULL, '', 1, 0, NULL, 'f272240a638efb71ca623d42d245961105c26f51', NULL, NULL, '2018-05-01 17:22:36', 1, '2018-05-01 17:22:36', 1, NULL),
(40, '180125071250-lebanons-trash-beaches-1-exlarge-169.jpg', '180125071250-lebanons-trash-beaches-1-exlarge-169.jpg', NULL, '', 1, 0, NULL, 'a41bc8724b2f81a3f8ff71fe07fdda9a3edbf77b', NULL, NULL, '2018-05-01 17:36:47', 1, '2018-05-01 17:36:47', 1, NULL),
(42, 'outreach.jpg', 'outreach.jpg', NULL, '', 1, 0, NULL, 'd9276be019fd586d39c752185004264ec5a2cdda', NULL, NULL, '2018-05-01 17:39:56', 1, '2018-05-01 17:39:56', 1, NULL),
(44, 'rsz_adobestock_101333792-1-862x457.jpg', 'rsz_adobestock_101333792-1-862x457.jpg', NULL, '', 1, 0, NULL, '1ac99f3636baf42a347ce9e016999e96fc625ac0', NULL, NULL, '2018-05-01 17:43:09', 1, '2018-05-01 17:43:09', 1, NULL),
(48, 'maxresdefault.jpg', 'maxresdefault.jpg', NULL, '', 1, 0, NULL, '93682c099fe4cfc011fc5c3a700f368c1b046d74', NULL, NULL, '2018-05-01 18:13:55', 1, '2018-05-01 18:13:55', 1, NULL),
(50, '1444dbfb91889c964033cf90d6bc6cc9-jeita-grotto.jpg', '1444dbfb91889c964033cf90d6bc6cc9-jeita-grotto.jpg', NULL, '', 1, 0, NULL, '5a764e8838ff45613ff5e8b6a211bea724d430b4', NULL, NULL, '2018-05-01 18:14:21', 1, '2018-05-01 18:14:21', 1, NULL),
(54, '1200px-View_from_the_Barouk_Forest.jpg', '1200px-View_from_the_Barouk_Forest.jpg', NULL, '', 1, 0, NULL, '973e0801354b65671c0a952da944bf0fb79b350f', NULL, NULL, '2018-05-01 18:25:53', 1, '2018-05-01 18:25:53', 1, NULL);

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
(18, 19, 'Blog Index', 'blog-index', '', 0, '', 1, 3, 'blog-index', '', '[\"plugin:ecospots/controller:blogs/action:index\"]', NULL, '', NULL, NULL, '2018-04-29 13:23:50', 1, '2017-12-14 14:05:55', 1),
(20, 19, 'Blog view', 'blog-view', '', 0, '', 1, 4, 'blog-view', '', '[\"plugin:ecospots/controller:blogs/action:view\"]', NULL, '', NULL, NULL, '2018-04-28 12:01:30', 1, '2018-04-19 16:06:58', 1),
(21, 19, 'Event Index', 'event-index', '', 0, '', 1, 5, 'event-index', '', '[\"plugin:ecospots/controller:events/action:index\"]', NULL, '', NULL, NULL, '2018-04-28 12:23:18', 1, '2018-04-28 10:58:06', 1),
(22, 19, 'Event View', 'event-view', '', 0, '', 1, 6, 'event-view', '', '[\"plugin:ecospots/controller:events/action:view\"]', NULL, '', NULL, NULL, '2018-04-28 12:01:43', 1, '2018-04-28 11:48:12', 1),
(23, 19, 'Spot Index', 'spot-index', '', 0, '', 1, 7, 'spot-index', '', '[\"plugin:ecospots/controller:spots/action:index\"]', NULL, '', NULL, NULL, '2018-04-28 12:22:38', 1, '2018-04-28 12:11:16', 1),
(24, 19, 'Spots View', 'spot-view', '', 0, '', 1, 8, 'spot-view', '', '[\"plugin:ecospots/controller:spots/action:view\"]', NULL, '', NULL, NULL, '2018-04-29 11:51:37', 1, '2018-04-29 11:51:37', 1),
(25, 19, 'Home Page', 'home-page', '', 0, '', 1, 9, 'home-page', '', '[\"plugin:nodes/controller:nodes/action:promoted\"]', NULL, '', NULL, NULL, '2018-05-01 10:23:40', 1, '2018-05-01 10:23:40', 1);

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
(3, ' Pollution - The Greatest Disaster of Lebanon', '', 'pollution-the-greatest-disaster-of-lebanon', 'gettyimages-883483604-slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85.jpg', 'Pollution in general is a major issue in Lebanon and concerns every citizen of the country.', '', '<p><big><font color=\"#000066\" face=\"Georgia, Times New Roman, Times, serif\">Pollution in general is a major issue in Lebanon and concerns every citizen of the country. There are many different forms of pollution affecting the people, which are clouding the atmosphere and greatly harming everyone&#39;s health.<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First of all, air pollution is the greatest threat towards the health of the Lebanese. Direct actions must be taken in order to protect the citizens and lessen the extreme dangers that are increasing daily. Toxic and virulent fumes have excessively been transmitted into the atmosphere by factories. &nbsp;This release of toxic fumes must be controlled. &nbsp;The production of many commodities will further contaminate the air, but by recycling, less toxins will be released.<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The enormous usage of cars should also be reduced through the use of buses and car-pooling, or riding bikes. By doing this, people could travel in a manner that is friendly to the environment, as well as get exercise to improve their health.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Next, compared to thier knowledge of air pollution,the Lebanese are not so familiar with soil pollution; it is still an important factor that risks the viridity of the nation. Little do most Lebanese know, but soil pollution should urgently be demolished. Certain sprays such as pesticides get absorbed into our fruits and vegetables, which may cause poisoning if they are not properly scrubbed and washed. They wickedly destroy the ozone layer and may also affect the natural genetic reproduction of certain foods, making them harmful to people. These hazardous sprays should stop immediately, and Lebanese farmers should grow their products more often in green houses to avoid insects and creepy crawlers.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></big></p>\r\n\r\n<p><big><font color=\"#000066\" face=\"Georgia, Times New Roman, Times, serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><font color=\"#000066\" face=\"Georgia, Times New Roman, Times, serif\">Water pollution is also not as familiar to the Lebanese people as air pollution is, but everyone should be aware of it.&nbsp; Our natural waste greatly harms our health. &nbsp;A cycle forms when we dump our wastes in the water: fish find it and eat it, and then people catch the fish to have for dinner. This is very dangerous and extremely harmful to our nutritional diet, causing bacteria build-up in our digestive systems. The sewage organization must be taken care of at once. It should be reasonably arranged and constructed by experts so that none of it is to get dumped into the water.<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Finally, land pollution, better known as trash, is a major problem here in Lebanon. Many people are too careless and lazy to find a garbage can, and dump their trash randomly on the streets. This produces intolerable odors and inhumanely polluted sites all around the country. In certain areas, the people try to get rid of their worthless wastes or matter of any kind by burning it to ashes. Also, the famous Sukleen Company has done a great deal of reducing the amounts of trash nation-wide, especially Beirut.&nbsp;&nbsp;Some measures have been taken to recycle some products such as glass, paper, and cardboard, but it is still not enough.The new and common tax added value to all products being sold could mean that the government is lacking required amounts of money. This is harming a vast number of people&#39;s income to support their families and pay debts. The money could be acquired by fining people who are caught throwing trash carelessly around the streets. Police and security must keep watch at all times to fine violators who threaten to destroy the striking and unique beauty of Lebanon.<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In conclusion, extreme measures must be taken as soon as possible in order to make every Lebanese citizen aware of the crucial corrupting condition of one of the most beautiful countries in the world. The Lebanese government must take action at once, by focusing everyone&#39;s attention to save the country. Gathering groups, creating advertisements, banners, or slogans could do this. Officers and police must be put on watch at all times and fine people who try to corrupt the beauty of Lebanon. We all must learn and eventually work together as one to vanquish the corruption, and to conserve the natural image of our country.</font></big></p>\r\n', '', 'Lena Kaakati', 1, 1, '2018-05-01 16:43:01', '2018-05-01 16:36:21'),
(4, 'Air Pollution in Lebanon', '', 'air-pollution-in-lebanon', 'AirPollutionHealthEffects-jpg-653x0-q80-crop-smart.jpg', 'Lebanon is a beautiful country, located at the crossroads of the Mediterranean Basin and the Arabian hinterland.', '', '<p>Unfortunately, there are two problems which prevents us from displaying it on the map like other countries:</p>\r\n\r\n<ul>\r\n	<li>Data is provided only once a day, while it is available for every hour for other countries.</li>\r\n	<li>Detailled readings, for each pollutants and expressed in mg/m3 is not available. Instead, only the composite AQI, without much information about the individual pollutant data or the <a>AQI scales</a> is use.\r\n	<p>We are now investigating with several institutions the possibility to setup an Air Quality monitoring network, which would allow to broadcast free hourly Air Quality information for several sites in Alger, and later in other Algerian cities.</p>\r\n\r\n	<p>The monitoring stations used for this network are the semi-professional <a href=\"http://aqicn.org/products/gaia/\">GAIA A12</a> Air Quality monitoring stations. The Gaia A12 are much more affordable than the <a href=\"http://aqicn.org/products/monitoring-stations/\">traditional</a> stations, but with a data quality as good and reliable as traditional stations.</p>\r\n\r\n	<p>If you are interested in knowing more about the project, about helping to host a station, or just about getting and rebroadcasting the real-time Air quality data, then please contact us with the form at the bottom of this page.</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<div style=\"clear:both\">&nbsp;</div>\r\n\r\n	<div style=\"height:20px;\">&nbsp;</div>\r\n	</li>\r\n</ul>\r\n', '', 'ACQICN', 2, 1, '2018-05-01 16:47:29', '2018-05-01 16:45:24'),
(5, 'Jeita Grotto: Millions of Years Were Captured in Drops of Water', '', 'jeita-grotto-millions-of-years-were-captured-in-drops-of-water', 'Jeita-grotto-940x520.jpg', 'Is the jewel of tourism in Lebanon', '', '<p><span class=\"s1\">ebanon is a country of karst areas rich with mountains that offer spectacular scenery and scenic view and the mountainous caves are spread in different regions. In one of these regions<b> </b>in the valley of Nahr El-Kalb at 18 km North of Beirut,<b> </b>is found <b>Je&iuml;ta Grotto,</b> one of the most marvelous natural wonders in the Middle-East, in spacious greenery<b>.</b> The road leading to the caverns is carved in the mountains and surrounded with trees. The all-around nature is perfectly in tune with the site. </span></p>\r\n\r\n<section class=\"vc_row-fluid vc_custom_1513072577809 padding-top-x2 padding-bottom text-center container \" id=\"2714\">\r\n<div>\r\n<div class=\"col-md-12\">\r\n<div class=\"text-left wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p class=\"p1\"><span class=\"s1\"><b>Je&iuml;ta Grotto</b> is the jewel of tourism in Lebanon offering to its visitors qualified modern services and accommodation in harmony with a fascinating nature<b>.</b> It<b> </b>creates a magical trip which enables them to spend a day of wonder-filled adventure by being carried away from a tangible world to a wonderland where are found <b>2 limestone crystallized grottoes</b> characterized by extraordinary concretions of stalactites and stalagmites sculpted naturally in different forms, sizes and colors<b>.</b> It is<b> </b>a source of attraction for whole the families wishing to discover a mysterious world in the heart of the earth.&nbsp;</span></p>\r\n\r\n<p class=\"p1\"><span class=\"s1\">The<b> &ldquo;Touristic Site of Je&iuml;ta&rdquo; </b>gathers all elements of nature such as stone, water, trees, flowers, air and animals in a verdurous environment and with a touch of Lebanese cultural heritage. It is one of the most impressive and interesting natural sites in the world. </span></p>\r\n\r\n<p class=\"p2\"><span class=\"s1\">The grotto was discovered in 1836 by an American missionary who, venturing some 50 m into the cave, fired a shot from his gun and found a cavern of major importance. Jeita Grotto is the superb work of Mother Nature. It&rsquo;s unimaginable how nature has sculpted such a masterpiece! At every step an astonishing limestone formation will surprise you!</span></p>\r\n\r\n<section class=\"vc_row-fluid vc_custom_1513072577809 padding-top-x2 padding-bottom text-center container \" id=\"4007\">\r\n<div>\r\n<div class=\"col-md-12\">\r\n<div class=\"text-left wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p class=\"p1\"><span class=\"s1\"><b>A lower cave&nbsp;</b>(temp.16&deg;) opened to public in 1958 and where visitors will take a short dreamy cruise in a rowboat at a distance of some 400 m from the cave&rsquo;s total of 7800 m, and marvel at the majestic forms of otherworldly concretions<b>.</b> You will discover a huge stalagmite formation leaning to one side similar to the Pisa tower. This boat ride offers a relaxing trip whilst gliding calmly into a tranquil river which reflects delicate limestone formations in a profound silence broken occasionally by the melodious sound of water drops.</span></p>\r\n\r\n<p class=\"p1\"><span class=\"s1\"><b>An upper cave&nbsp;</b>(temp.20&deg;) inaugurated in 1969 and where visitors will have a walking tour and be staggered at the view of extraordinary stone forms of curtains, columns, draperies, and mushrooms at a distance of some 700 m from the cave&rsquo;s total length of 2200 m. The cavern is so serene that it seems like an enormous cathedral. You will find one of the biggest stalactites in the world measuring 8,20 m as well as tiny stalagmites looking like candles, pillars and columns in several sizes, coral pipes, giant organs, flowing stone draperies and curtains lengthening 28 m, a giant tulip, a big mushroom heightening 26 m, autumn trees, flasks, etc&hellip;. </span></p>\r\n\r\n<p class=\"p1\"><span class=\"s1\">All these dimensions and stylish calciferous models characterize the specific beauty of this grotto and make it unique in the world of caverns. </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n', '', 'Dr. Issam Haddad', 3, 1, '2018-05-01 16:52:57', '2018-05-01 16:51:49'),
(6, 'The Cedars in History', '', 'the-cedars-in-history', 'arzzzzzzzzzzzzz.jpg', ' As remote as they are, the cedars are not untouched by history. ', '', '<p>&nbsp;As remote as they are, the cedars are not untouched by history. The grove we see today descends from an immense primeval forest of cedars and other trees such as cypress, pine and oak that once covered most of Mount Lebanon including part of its east facing slopes.<br />\r\n&nbsp;&nbsp;&nbsp; The Cedar is an historical entity mentioned often in the Bible and other ancient texts and it played an important part in the culture, trade and religious observances of the ancient Middle East. Serious exploitation of these forests began in the third millennium B.C., coastal towns such as Byblos.<br />\r\n&nbsp;&nbsp;&nbsp; Over the centuries, Assyrians, Babylonians and Persians made expedition to Mount Lebanon for timber or extracted tributes of wood from the coastal cities of Canaan-Phoenicia. The Phoenicians themselves made use of the cedar, especially for their merchant fleets. Solomon requested large supplies of cedar wood, along with architects and builders from King Hiram of Tyre to build his temple. Nebuchadnezzar boasted on a cuneiform, inscription: &quot;I brought for building, mighty cedars, which I cut down with my pure hands on Mount Lebanon&quot;. Prized for its fragrance and durability, the length of the great logs made cedar wood especially desirable. Cedar was important for shipbuilding and<br />\r\nwas used for the roofs of the temples, to construct tombs and other major buildings.<br />\r\nThe Egyptians used cedar resin for mummification, and pitch was extracted from these trees for waterproofing and caulking.<br />\r\n&nbsp;&nbsp;&nbsp; In the second century A.D., the Roman Emperor Hadrian attempted to protect the forest with boundary markers, most carved into living rock, others in the form of separate engraved stones. Today over 200 such markers have been recorded, allowing scholars to make an approximate reconstruction of the ancient forest boundaries. Two of these markers, carved in abbreviated Latin, can be seen at the American University of Beirut Museum. In the centuries after Hadrian, Lebanon&#39;s trees were used extensively as fuel, especially for lime burning kilns. In the Middle Ages mountain villagers cleared forests for farmland, using the wood for fuel and construction. The Ottomans in the 19th century destroyed much of the forest cover and during World War II British troops used the wood to build railroad between Tripoli and Haifa.</p>\r\n', '', 'Middle East ', 4, 1, '2018-05-01 17:23:12', '2018-05-01 17:06:00'),
(7, 'What Is Global Warming?', '', 'what-is-global-warming', '1525195031-Greenhouse-Effect.jpg', 'Glaciers are melting, sea levels are rising, cloud forests are dying, and wildlife is scrambling to keep pace.', '', '<div class=\"parbase smartbody section text\">\r\n<p><span class=\"clearfix\" itemprop=\"articleBody\">Glaciers are <a href=\"http://www.nationalgeographic.com/environment/global-warming/big-thaw\">melting</a>, sea levels are <a href=\"http://www.nationalgeographic.com/environment/global-warming/sea-level-rise\">rising</a>, cloud forests are <a href=\"http://www.nationalgeographic.com/environment/global-warming/deforestation\">dying</a>, and wildlife is scrambling to keep pace. It&#39;s becoming clear that humans have caused most of the past century&#39;s warming by <a href=\"http://www.nationalgeographic.com/environment/global-warming/pollution/\">releasing</a> heat-trapping gases as we power our modern lives. Called greenhouse gases, their levels are higher now than in the last 650,000 years.</span></p>\r\n</div>\r\n\r\n<div class=\"parbase smartbody section text\">\r\n<p><span class=\"clearfix\" itemprop=\"articleBody\">We call the result global warming, but it is causing a set of changes to the Earth&#39;s climate, or long-term weather patterns, that varies from place to place. As the Earth spins each day, the new heat swirls with it, picking up moisture over the oceans, rising here, settling there. It&#39;s changing the rhythms of climate that all living things have come to rely upon. [<a href=\"http://video.nationalgeographic.com/video/101-videos/polar-bears-101\">Watch Polar Bears 101</a>].</span></p>\r\n</div>\r\n\r\n<div class=\"parbase smartbody section text\">\r\n<p><span class=\"clearfix\" itemprop=\"articleBody\">What will we do to slow this warming? How will we cope with the changes we&#39;ve already <a href=\"http://www.nationalgeographic.com/environment/global-warming/global-warming-causes\">set into motion</a>? While we struggle to figure it all out, the face of the Earth as we know it&mdash;coasts, forests, farms and snow-capped mountains&mdash;<a href=\"http://www.nationalgeographic.com/environment/global-warming/global-warming-effects\">hangs in the balance</a>.</span></p>\r\n</div>\r\n\r\n<div class=\"parbase smartbody section text\">\r\n<h2><span class=\"clearfix\" itemprop=\"articleBody\">Greenhouse effect</span></h2>\r\n</div>\r\n\r\n<div class=\"parbase smartbody section text\">\r\n<p><span class=\"clearfix\" itemprop=\"articleBody\">The &quot;greenhouse effect&quot; is the warming that happens when certain gases in Earth&#39;s atmosphere trap heat. These gases let in light but keep heat from escaping, like the glass walls of a greenhouse.</span></p>\r\n</div>\r\n\r\n<div class=\"parbase smartbody section text\">\r\n<p><span class=\"clearfix\" itemprop=\"articleBody\">First, sunlight shines onto the Earth&#39;s surface, where it is absorbed and then radiates back into the atmosphere as heat. In the atmosphere, &ldquo;greenhouse&rdquo; gases trap some of this heat, and the rest escapes into space. The more greenhouse gases are in the atmosphere, the more heat gets trapped.</span></p>\r\n</div>\r\n', '', 'National Geographic', 5, 1, '2018-05-01 17:17:17', '2018-05-01 17:13:49'),
(8, 'Animals in Lebanon', '', 'animals-in-lebanon', 'cortez-animal-hospital-home-hero.jpg', 'When we think of animals, we usually think of vertebrates; mammals, birds, fish, reptiles and amphibians. ', '', '<p>When we think of animals, we usually think of vertebrates; mammals, birds, fish, reptiles and amphibians. In fact they make up only about 5% of animal species. The vast majority of animals are invertebrates, and of them, about &frac34; are insects. In terms of sheer numbers insects dominate biodiversity in Lebanon &ndash; and perform vital functions in the eco systems. They are the most important link in the food web between plants and other animals, the garbage collectors, pollinators and much much more.<br />\r\n&nbsp;&nbsp;But Lebanon does not only have a rich insect fauna, there is also a surprising number of mammal species (including large predators such as the Hyena) birds (it is on one of the world&rsquo;s most important bird migration highways), amphibians, reptiles and fish.<br />\r\n&nbsp;&nbsp;Follow the links to find out what&rsquo;s out there!</p>\r\n', '', 'Wild Lebanon', 6, 1, '2018-05-01 17:34:07', '2018-05-01 17:22:14'),
(9, 'Plant Safari', '', 'plant-safari', 'limoeiro-limoes.jpg', 'There is a truly astonishing variety of plants in Lebanon. It is estimated that there are 2597 species from 124 different families.', '', '<p class=\"body1\">There is a truly astonishing variety of plants in Lebanon. It is estimated that there are 2597 species from 124 different families. To find out why Lebanon is so rich in plants follow the link <a href=\"http://www.wildlebanon.org/en/pages/advanced/a_lebanons_biodiversity.pdf\" target=\"_blank\">A: Why Lebanon is so important for Biodiversity</a>.</p>\r\n\r\n<p class=\"body1\">Plants are often very colorful, they do not run away and, with such a huge range in Lebanon, they are a great group to study. They are also found everywhere, so whether you want to get to know your local area&rsquo;s plants or seek out some special species in more remote areas it can be great fun to go on a plant safari!</p>\r\n', '', 'Wild Lebanon', 7, 1, '2018-05-01 17:33:57', '2018-05-01 17:33:57');
INSERT INTO `blogs` (`id`, `name`, `ar_name`, `slug`, `photo`, `excerpt`, `ar_excerpt`, `description`, `ar_description`, `author`, `weight`, `user_id`, `updated`, `created`) VALUES
(10, 'Lebanon\'s garbage crisis washes up on the beach ', '', 'lebanon-s-garbage-crisis-washes-up-on-the-beach', '180125071250-lebanons-trash-beaches-1-exlarge-169.jpg', 'With long rakes, men in black raincoats scrape up scraps of plastic bags, water bottles and pieces of wood from the stony beach.', '', '<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\">\r\n<p class=\"zn-body__paragraph speakable\"><cite class=\"el-editorial-source\">Beirut, Lebanon (CNN)</cite>With long rakes, men in black raincoats scrape up scraps of plastic bags, water bottles and pieces of wood from the stony beach. Mostly Syrians, they work for a contractor hastily hired by Lebanese authorities to remove a carpet of rubbish that covers the coastline of Lebanon.</p>\r\n</div>\r\n\r\n<div class=\"zn-body__paragraph speakable\">&quot;This is the seventeenth time this beach has been cleaned,&quot; says environmental engineer Ziad Abi Chaker. &quot;This time by the municipality, the other 16 times by volunteers.&quot;&nbsp;</div>\r\n\r\n<div class=\"zn-body__paragraph speakable\">This beach, by the banks of the River Kalb north of Beirut, is just one of many full of garbage that has washed up in the aftermath of a string of winter storms. For a country that once prided itself on its beauty, the pictures of filthy beaches that have multiplied on social media are an embarrassment. It&#39;s a reminder of what Lebanon once was, and the mess it has become.\r\n<div class=\"zn-body__paragraph\">Since 2015, Lebanon has been grappling with a nation-wide garbage crisis. Existing landfills are full to bursting, and few towns and cities want new ones built nearby. In 2015, when the tiny country&#39;s main landfill passed its expiration date, the trash crisis came to a head. A movement called &quot;You Stink&quot; (in Arabic Til&#39;it Ree&#39;hitkom) put <a href=\"https://edition.cnn.com/2015/08/23/asia/beirut-lebanon-garbage-clashes/index.html\" target=\"_blank\">pressure on the government to clean up the mess. </a>Tens of thousands of Lebanese responding to You Stink&#39;s calls to protest took to the streets; some of the loudest chants called for the overthrow of the government, and after riots broke out, Lebanon&#39;s military was deployed to the streets.</div>\r\n\r\n<div class=\"zn-body__paragraph\">For months, the reek of rotting garbage hung over Beirut. At one point, <a href=\"https://edition.cnn.com/2016/02/24/middleeast/lebanon-garbage-crisis-river/index.html\" target=\"_blank\">a ridge of white garbage bags</a> snaked for several kilometers along the city&#39;s main river before finally being removed.&nbsp;</div>\r\n\r\n<div class=\"zn-body__paragraph\">Since the days of &quot;You Stink,&quot; the problem of trash has mostly been removed from plain view, but it hasn&#39;t been solved. Around 900 open landfills continue to fester, according to Human Rights Watch. Much of that trash is being burned.\r\n<div class=\"zn-body__paragraph\">But recent winter storms have brought the issue back to public attention.&nbsp;</div>\r\n\r\n<div class=\"zn-body__paragraph\">The trash that washes down the River Kalb has turned a once idyllic picnic spot into what, in some places, looks like a garbage dump.&nbsp;</div>\r\n\r\n<div class=\"zn-body__paragraph\">Johnny, a man in his early sixties, surveys the scene with despair. &quot;Our family brought food here on Sundays and holidays,&quot; he recalls. &quot;We would drink water from the river, clean water.&quot; &nbsp;</div>\r\n\r\n<div class=\"zn-body__paragraph\">And now? I ask.&nbsp;</div>\r\n\r\n<div class=\"zn-body__paragraph\">&quot;It&#39;s there in front of you,&quot; he responds, nodding to the gushing brown water, its banks strewn with blue and white plastic bags hanging from branches and twisted in the tall grass.</div>\r\n\r\n<div class=\"el__embedded el__embedded--fullwidth\">\r\n<div class=\"el__image--fullwidth js__image--fullwidth\">\r\n<div><img alt=\"One of many garbage collectors dispatched to Lebanon&amp;#39;s beaches after jarring images of trash-strewn shores circulated on social media. \" class=\"media__image media__image--responsive\" data-demand-load=\"loaded\" data-eq-pts=\"mini: 0,  xsmall: 221,  small: 308,  medium: 461,  large:  781\" data-eq-state=\"mini xsmall small medium\" data-src-full16x9=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-full-169.jpg\" data-src-large=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-super-169.jpg\" data-src-medium=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-exlarge-169.jpg\" data-src-mini=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-small-169.jpg\" data-src-mini1x1=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-small-11.jpg\" data-src-small=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-large-169.jpg\" data-src-xsmall=\"//cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-medium-plus-169.jpg\" src=\"https://cdn.cnn.com/cnnnext/dam/assets/180125073001-lebanons-trash-beaches-4-exlarge-169.jpg\" />\r\n<div class=\"img__preloader\">&nbsp;</div>\r\n\r\n<div class=\"media__caption el__gallery_image-title\">\r\n<div class=\"element-raw appearance-fullwidth\">One of many garbage collectors dispatched to Lebanon&#39;s beaches after jarring images of trash-strewn shores circulated on social media.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"zn-body__paragraph\">The uproar sparked by images of the trash-infested beaches has set off another round of blame and recrimination among Lebanese politicians, who excel at finger pointing but fall short when it comes to solutions.</div>\r\n\r\n<div class=\"zn-body__paragraph\">One possible remedy is to build a giant incinerator on the northern outskirts of Beirut. To environmental engineer Ziad Abi Chaker, it&#39;s a solution almost as bad as the problem it&#39;s intended to solve.</div>\r\n\r\n<div class=\"zn-body__paragraph\">&quot;I think that&#39;s the most reckless decision we can ever make,&quot; he tells me as we pick our way around the rubbish on the beach. &quot;They tell you, we&#39;re going to get the incinerator from Europe or from the States, or wherever. Yes, that&#39;s fine, but in Europe and the States, they have very stringent regulations on emissions. Who here is going to guarantee they aren&#39;t going to be emitting dioxins and furans into the air? All of these are carcinogenic gases.&quot;</div>\r\n\r\n<div class=\"zn-body__paragraph\">Abi Chaker has been fighting to clean up Lebanon&#39;s environment since his teenage years. While others gripe and complain, he is trying to change the country&#39;s deeply engrained &quot;use and toss&quot; mentality.</div>\r\n\r\n<div class=\"el__embedded el__embedded--fullwidth\">\r\n<div class=\"el__image--fullwidth js__image--fullwidth\">\r\n<div><img alt=\"A garbage collector overses a clean-up one of north Beirut&amp;#39;s trash-infested beaches.\" class=\"media__image media__image--responsive\" data-demand-load=\"loaded\" data-eq-pts=\"mini: 0,  xsmall: 221,  small: 308,  medium: 461,  large:  781\" data-eq-state=\"mini xsmall small medium\" data-src-full16x9=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-full-169.jpg\" data-src-large=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-super-169.jpg\" data-src-medium=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-exlarge-169.jpg\" data-src-mini=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-small-169.jpg\" data-src-mini1x1=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-small-11.jpg\" data-src-small=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-large-169.jpg\" data-src-xsmall=\"//cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-medium-plus-169.jpg\" src=\"https://cdn.cnn.com/cnnnext/dam/assets/180125071250-lebanons-trash-beaches-1-exlarge-169.jpg\" />\r\n<div class=\"img__preloader\">&nbsp;</div>\r\n\r\n<div class=\"media__caption el__gallery_image-title\">\r\n<div class=\"element-raw appearance-fullwidth\">A garbage collector overses a clean-up one of north Beirut&#39;s trash-infested beaches.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"zn-body__paragraph\">Surveying the mess at our feet, I ask if there is something that can be done with all of this.</div>\r\n\r\n<div class=\"zn-body__paragraph\">&quot;Of course!&quot; he responds, picking up three flattened, twisted plastic bottles. &quot;This is called PT plastic. This is one of the most expensive plastics you have, and this is entirely recyclable, infinitely recyclable.&quot;</div>\r\n\r\n<div class=\"zn-body__paragraph\">This beach, he added, has about $10,000 worth of recyclable plastics. And that&#39;s just one small beach among many.</div>\r\n\r\n<div class=\"zn-body__paragraph\">The name&nbsp;Lebanon&nbsp;comes from the Phoenician word for white, apparently a reference to the snowcapped peaks of Mount Lebanon, once easily visible from Beirut. Today the thick brown smog that hovers over the capital obscures the view of the mountains. The sea is awash with garbage in many parts and the country&#39;s once famous beaches are a mess. Perhaps the time has come for Lebanon to change its name.</div>\r\n\r\n<p class=\"zn-body__paragraph zn-body__footer\">&nbsp;</p>\r\n\r\n<div class=\"pg-body__social\">&nbsp;</div>\r\n\r\n<section class=\"zn zn-story-bottom zn-single-column zn--idx-1 zn--ordinary zn-has-multiple-containers zn-has-5-containers\" data-eq-pts=\"xsmall: 0, medium: 460, large: 780, full16x9: 1100\" data-eq-state=\"xsmall medium large\" data-vr-zone=\"zone-1-1\" data-zone-label=\"storyBottom\" id=\"story-bottom\">\r\n<div class=\"ad ad--epic ad--mobile\" data-ad-text=\"show\">\r\n<div data-ad-id=\"freewheel-rail-placeholder\" data-ad-position=\"mobile\" data-ad-refresh=\"default\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"zn-top\">\r\n<div class=\"zn-top__background\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"l-container zn__background--content-relative\">\r\n<div class=\"zn__containers\">\r\n<div class=\"column zn__column--idx-0\">\r\n<article class=\"cd cd--tool cd--tool__outbrain\" data-analytics=\"tool-type_list-hierarchical-small-horizontal_outbrain\" data-eq-pts=\"xsmall: 0, small: 300, medium: 460, large: 780\" data-eq-state=\"xsmall small medium large\" data-vr-contentbox=\"\">\r\n<div class=\"OB_AR_36\">\r\n<div class=\"ob-smartfeed-wrapper\">\r\n<div class=\"OUTBRAIN js-m-outbrain m-outbrain\" data-browser=\"firefox\" data-dynload=\"\" data-idx=\"1\" data-ob-mark=\"true\" data-ob-template=\"cnn\" data-os=\"win64\" data-src=\"https://edition.cnn.com/2018/01/25/middleeast/lebanon-beach-garbage-crisis-intl/index.html\" data-widget-id=\"AR_36\" id=\"outbrain_widget_1\">\r\n<div class=\"ob-widget ob-smartfeed-strip-layout AR_36\" data-dynamic-truncate=\"true\">\r\n<div class=\"ob-widget-section ob-first\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<div class=\"pg-rail pg-rail-tall__rail\" data-bundle=\"adzones\">\r\n<section class=\"zn zn-sponsored-outbrain-1 zn-balanced zn--idx-0 zn--ordinary zn-has-two-containers\" data-containers=\"2\" data-eq-pts=\"xsmall: 0, medium: 460, large: 780, full16x9: 1100\" data-eq-state=\"xsmall\" data-vr-zone=\"zone-2-0\" data-zn-id=\"sponsored-outbrain-1\" data-zone-label=\"rail-zone-1\" id=\"sponsored-outbrain-1\" style=\"height: 1847px; position: relative;\">\r\n<div class=\"l-container zn__background--content-relative\" style=\"position: absolute; bottom: 0px; width: 300px;\">\r\n<div class=\"zn__containers\">\r\n<div class=\"column zn__column--idx-0\">\r\n<div class=\"ad ad--epic ad--tablet\" data-ad-text=\"show\">\r\n<div data-ad-id=\"freewheel-rail-placeholder\" data-ad-position=\"tablet\" data-ad-refresh=\"default\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"ad ad--epic ad--tablet\" data-ad-text=\"show\">\r\n<div data-ad-id=\"ad_rect_atf_01\" data-ad-position=\"tablet\" data-ad-refresh=\"adtop\">&nbsp;</div>\r\n</div>\r\n\r\n<ul class=\"cn cn-list-hierarchical-small-horizontal cn--idx-0 cn-\" data-layout=\"list-hierarchical-small-horizontal\">\r\n	<li>\r\n	<article class=\"cd cd--tool cd--tool__outbrain\" data-analytics=\"tool-type_list-hierarchical-small-horizontal_outbrain\" data-eq-pts=\"xsmall: 0, small: 300, medium: 460, large: 780\" data-eq-state=\"xsmall small\" data-vr-contentbox=\"\">\r\n	<div class=\"OB_AR_38\">\r\n	<div class=\"OUTBRAIN js-m-outbrain m-outbrain\" data-browser=\"firefox\" data-dynload=\"\" data-idx=\"6\" data-ob-mark=\"true\" data-ob-template=\"cnn\" data-os=\"win64\" data-src=\"https://edition.cnn.com/2018/01/25/middleeast/lebanon-beach-garbage-crisis-intl/index.html\" data-widget-id=\"AR_38\" id=\"outbrain_widget_6\">\r\n	<div class=\"ob_strip_container AR_38\"><span class=\"ob_empty\"><wbr /></span> <span class=\"ob_org_header\"> News &amp; buzz </span>\r\n\r\n	<div class=\"ob_container\">\r\n	<div class=\"ob_container_recs\">\r\n	<div class=\"item-container ob-recIdx-0     ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=KdxJKdqXc8uT4iEh6IBjvNz5beyk2lULgAFWrtriURKe7h2sMrgaMyYILHGyixsXi-cNh2ctdLciq58eahO-ZiNHkyho3iZNDe5qsiCNLfw_jQ_JkdNJtPDvXdGfb7CILY183W00EH2GdN9ZkS-BUsTYBUgR-k0Jcx2NLqHRzIhCfUDCFOuwtO35Rg4kVl0lVSWZqobm2At1ldj7SFiin6faIuhlIbyXi1Nre2nHqFcn5kLfJTcf8vyQaqjzrKfEx8-unt66i9TzRmf2C2i0n5c4yK8RUzMh9vnu152RLXUCCLs1ARPZTC76hveJjdIrh_5YPWDtzGq_kp2ROFwy9ZeQE899_Ody0pU8h5TtR0nw6G59tyYlJLMT7ZYJxaw4wun3osmJmEkKvU2GIyRODmvYSXA3o3AqaNYx4BsYDO2kb5EDo-TJbgkoBtESRp23vv_PfBnwJp10z_A5FTgEFAQxlugtYRD2ElzLtAEeyEUPpuuilzDTXV03QLi-gngrjIQDQeKPgV9g7G_MyFlQiP5XhnoJj51aXf_NdCcip1VhXkT8ele_yuO08LJt06DzjwkCkaVVe3eTBu1XxUIRJfBEkiiYzTQwwDNsOBjF2-njgNy8z1M64k4zVcXx7So71oDvDIv1psRBSWacYuf97hUUO0Ba-sijVvvuDLh24UPHm2eIK3rRCrIxJpXitwJbpXoOleeqA2poRN0IrjqxD1i8BciaSdCP14MX87Ai1aae-vH_P1jVeCGR_Kyjvgf6&amp;c=c905e7b7&amp;v=3\" href=\"http://edition.cnn.com/style/article/french-museum-half-paintings-fake-intl/index.html?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_blank\"><img alt=\"French museum discovers more than half of its paintings are fakes\" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjkzN2U5NWNlZWQxNWRmOTQxMjM1MTMwOTJiNjQxN2ZkZjFhODRmMWRhOGU1MDkyNGZjODY1MjZiYTY5ZTc0YjYiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"French museum discovers more than half of its paintings are fakes\" width=\"75\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"French museum discovers more than half of its paintings are fakes\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=KdxJKdqXc8uT4iEh6IBjvNz5beyk2lULgAFWrtriURKe7h2sMrgaMyYILHGyixsXi-cNh2ctdLciq58eahO-ZiNHkyho3iZNDe5qsiCNLfw_jQ_JkdNJtPDvXdGfb7CILY183W00EH2GdN9ZkS-BUsTYBUgR-k0Jcx2NLqHRzIhCfUDCFOuwtO35Rg4kVl0lVSWZqobm2At1ldj7SFiin6faIuhlIbyXi1Nre2nHqFcn5kLfJTcf8vyQaqjzrKfEx8-unt66i9TzRmf2C2i0n5c4yK8RUzMh9vnu152RLXUCCLs1ARPZTC76hveJjdIrh_5YPWDtzGq_kp2ROFwy9ZeQE899_Ody0pU8h5TtR0nw6G59tyYlJLMT7ZYJxaw4wun3osmJmEkKvU2GIyRODmvYSXA3o3AqaNYx4BsYDO2kb5EDo-TJbgkoBtESRp23vv_PfBnwJp10z_A5FTgEFAQxlugtYRD2ElzLtAEeyEUPpuuilzDTXV03QLi-gngrjIQDQeKPgV9g7G_MyFlQiP5XhnoJj51aXf_NdCcip1VhXkT8ele_yuO08LJt06DzjwkCkaVVe3eTBu1XxUIRJfBEkiiYzTQwwDNsOBjF2-njgNy8z1M64k4zVcXx7So71oDvDIv1psRBSWacYuf97hUUO0Ba-sijVvvuDLh24UPHm2eIK3rRCrIxJpXitwJbpXoOleeqA2poRN0IrjqxD1i8BciaSdCP14MX87Ai1aae-vH_P1jVeCGR_Kyjvgf6&amp;c=c905e7b7&amp;v=3\" href=\"http://edition.cnn.com/style/article/french-museum-half-paintings-fake-intl/index.html?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_blank\">French museum discovers more than half of its paintings are fakes</a></div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container ob-recIdx-1    ob-last   ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=nFjv3oFutP2xgciuA6Y8IGNKLYrBeMC2JosW8AIFItyXUQBRtvEdYWH3ddhDPCqVS4ujCdJPwV7Bx_57kjyU5Z-Wy2bmQ9jBa-k5ngKetkt8Y4gKfvNVXlo_0z4Wrhz-tm1zDgWmjpLUAkE7Rm70NrEhcQvznRJBA_C9XiteIp5SPW5oMJxTkCGBXKu7rKZs_PlQSaoEAG5PAQpBk4EZbJ1lY6ebPOuCxZg9_ftnsp3a7nJpQJGRhGwllAsfUKjZMz9ZpayqGrIUZ_8aFx7TL_H3sKgXdFtvI8dF9d3oJ7ElPo6izlgzWNCJWgvyhgmwTwlu2XSZZmN28I4h7rkQFD88cWcPu6i_lkBdl96tG4StR2wvdnZ1SSI8JlZqoRnBBVzM2HNoFIpq66pqzdm7KedT1H4pUUgYGfzNeacNI4k6BfkPhtJMENVK8Ngk2dxMEqDaHPtuD4cOasD8zOSm6EQb7PWmi2nMXnUEuRyX-GMSotHRbGHXRoygr5848c07-tgh0IVaKBeBkKh89NEeNSyizEzLSXJ5ny7hAMVMM3BvfjyQa3VvvIAPAaxeEARsYx7YdwosXDD1U01CQYozzq72XsBfa1ZMvUCx5FWmdOU99MNYs7C8eK-9qUKT4Da8_aJV6VFuns5DF1qCe0zMhZcxhjO6sIBzqu2EZC5cTrej966RQPsPn1clS4KojDwjgfDffoyC4Ur0lFnfjUKdsHc7wGz-o-WmHW3ddGCfbiguR-40xq1KQptxch4p27bfHa3T2YQFI5R4vkXA43Mtig&amp;c=710f5393&amp;v=3\" href=\"http://edition.cnn.com/2018/04/30/middleeast/iran-khamenei-us-intl/?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_self\"><img alt=\"Iran\'s supreme leader: US \'feet must be cut off\'\" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjRjNThjZWRjNDQ3ZTQxYzQ3ODYwZTU4NTUxODI3ZmQxZmUwMzEyMTc4YjMzZDBkZmQwOGI3OTcxNjA2ZjhlZGQiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"Iran\'s supreme leader: US \'feet must be cut off\'\" width=\"75\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Iran\'s supreme leader: US \'feet must be cut off\'\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=nFjv3oFutP2xgciuA6Y8IGNKLYrBeMC2JosW8AIFItyXUQBRtvEdYWH3ddhDPCqVS4ujCdJPwV7Bx_57kjyU5Z-Wy2bmQ9jBa-k5ngKetkt8Y4gKfvNVXlo_0z4Wrhz-tm1zDgWmjpLUAkE7Rm70NrEhcQvznRJBA_C9XiteIp5SPW5oMJxTkCGBXKu7rKZs_PlQSaoEAG5PAQpBk4EZbJ1lY6ebPOuCxZg9_ftnsp3a7nJpQJGRhGwllAsfUKjZMz9ZpayqGrIUZ_8aFx7TL_H3sKgXdFtvI8dF9d3oJ7ElPo6izlgzWNCJWgvyhgmwTwlu2XSZZmN28I4h7rkQFD88cWcPu6i_lkBdl96tG4StR2wvdnZ1SSI8JlZqoRnBBVzM2HNoFIpq66pqzdm7KedT1H4pUUgYGfzNeacNI4k6BfkPhtJMENVK8Ngk2dxMEqDaHPtuD4cOasD8zOSm6EQb7PWmi2nMXnUEuRyX-GMSotHRbGHXRoygr5848c07-tgh0IVaKBeBkKh89NEeNSyizEzLSXJ5ny7hAMVMM3BvfjyQa3VvvIAPAaxeEARsYx7YdwosXDD1U01CQYozzq72XsBfa1ZMvUCx5FWmdOU99MNYs7C8eK-9qUKT4Da8_aJV6VFuns5DF1qCe0zMhZcxhjO6sIBzqu2EZC5cTrej966RQPsPn1clS4KojDwjgfDffoyC4Ur0lFnfjUKdsHc7wGz-o-WmHW3ddGCfbiguR-40xq1KQptxch4p27bfHa3T2YQFI5R4vkXA43Mtig&amp;c=710f5393&amp;v=3\" href=\"http://edition.cnn.com/2018/04/30/middleeast/iran-khamenei-us-intl/?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_self\">Iran&#39;s supreme leader: US &#39;feet must be cut off&#39;</a></div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"ob_container_shadow_outer\">\r\n	<div class=\"ob_container_shadow\">\r\n	<div class=\"item-container-shadow ob-recIdx-0   ob-odd\">\r\n	<div class=\"item-container ob-recIdx-0   \">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><img alt=\"French museum discovers more than half of its paintings are fakes\" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjkzN2U5NWNlZWQxNWRmOTQxMjM1MTMwOTJiNjQxN2ZkZjFhODRmMWRhOGU1MDkyNGZjODY1MjZiYTY5ZTc0YjYiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"French museum discovers more than half of its paintings are fakes\" width=\"75\" /></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"French museum discovers more than half of its paintings are fakes\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container-shadow ob-recIdx-1  ob-even\">\r\n	<div class=\"item-container ob-recIdx-1    ob-last \">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><img alt=\"Iran\'s supreme leader: US \'feet must be cut off\'\" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjRjNThjZWRjNDQ3ZTQxYzQ3ODYwZTU4NTUxODI3ZmQxZmUwMzEyMTc4YjMzZDBkZmQwOGI3OTcxNjA2ZjhlZGQiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"Iran\'s supreme leader: US \'feet must be cut off\'\" width=\"75\" /></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Iran\'s supreme leader: US \'feet must be cut off\'\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"ob-pixels\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</article>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column zn__column--idx-1\">\r\n<div class=\"ad ad--epic ad--desktop\" data-ad-text=\"show\">\r\n<div data-ad-id=\"freewheel-rail-placeholder\" data-ad-position=\"desktop\" data-ad-refresh=\"default\">\r\n<div class=\"ad-freewheel-rail-placeholder ad-refresh-default\" id=\"freewheel-rail-placeholder\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"ad ad--epic ad--desktop\" data-ad-text=\"show\">\r\n<div data-ad-id=\"ad_rect_atf_01\" data-ad-position=\"desktop\" data-ad-refresh=\"adtop\">\r\n<div class=\"ad-ad_rect_atf_01 ad-refresh-adtop adfuel-rendered\" data-google-query-id=\"CMXD1ZiG5doCFZGNGwodcakPnw\" id=\"ad_rect_atf_01\" style=\"\">\r\n<div id=\"google_ads_iframe_/8663477/CNNi/middle-east/leaf/vls_1__container__\" style=\"border: 0pt none;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"cn cn-list-hierarchical-xs cn--idx-1 cn-zoneAdContainer\" data-layout=\"list-hierarchical-xs\">\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"zn zn-sponsored-outbrain-2 zn-balanced zn--idx-1 zn--ordinary zn-has-one-container\" data-containers=\"1\" data-eq-pts=\"xsmall: 0, medium: 460, large: 780, full16x9: 1100\" data-eq-state=\"xsmall\" data-vr-zone=\"zone-2-1\" data-zn-id=\"sponsored-outbrain-2\" data-zone-label=\"rail-zone-2\" id=\"sponsored-outbrain-2\" style=\"height: 1842px;\">\r\n<div class=\"zn-top\">\r\n<div class=\"zn-top__background\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"l-container zn__background--content-relative\" style=\"position: fixed; top: 50px; width: 300px;\">\r\n<div class=\"zn__containers\">\r\n<div class=\"column zn__column--idx-0\">\r\n<ul class=\"cn cn-list-hierarchical-xs cn--idx-0 cn-\" data-layout=\"list-hierarchical-xs\">\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"zn zn-sponsored-outbrain-3 zn-balanced zn--idx-2 zn--ordinary zn-has-two-containers\" data-containers=\"2\" data-eq-pts=\"xsmall: 0, medium: 460, large: 780, full16x9: 1100\" data-eq-state=\"xsmall\" data-vr-zone=\"zone-2-2\" data-zn-id=\"sponsored-outbrain-3\" data-zone-label=\"rail-zone-3\" id=\"sponsored-outbrain-3\">\r\n<div class=\"zn-top\">\r\n<div class=\"zn-top__background\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"l-container zn__background--content-relative\">\r\n<div class=\"zn__containers\">\r\n<div class=\"column zn__column--idx-0\">\r\n<ul class=\"cn cn-list-hierarchical-small-horizontal cn--idx-0 cn-\" data-layout=\"list-hierarchical-small-horizontal\">\r\n	<li>\r\n	<article class=\"cd cd--tool cd--tool__outbrain\" data-analytics=\"tool-type_list-hierarchical-small-horizontal_outbrain\" data-eq-pts=\"xsmall: 0, small: 300, medium: 460, large: 780\" data-eq-state=\"xsmall small\" data-vr-contentbox=\"\">\r\n	<div class=\"OB_AR_18\">\r\n	<div class=\"OUTBRAIN js-m-outbrain m-outbrain\" data-browser=\"firefox\" data-dynload=\"\" data-idx=\"7\" data-ob-mark=\"true\" data-ob-template=\"cnn\" data-os=\"win64\" data-src=\"https://edition.cnn.com/2018/01/25/middleeast/lebanon-beach-garbage-crisis-intl/index.html\" data-widget-id=\"AR_18\" id=\"outbrain_widget_7\">\r\n	<div class=\"ob-widget ob-strip-layout AR_18\" data-dynamic-truncate=\"true\"><span style=\"position:fixed;top:-200px;\">&nbsp;</span>\r\n\r\n	<div class=\"ob-widget-section ob-first\">\r\n	<div class=\"ob-widget-header\">Paid Content</div>\r\n\r\n	<ul class=\"ob-widget-items-container\">\r\n		<li class=\"ob-dynamic-rec-container ob-recIdx-0 ob-p\" data-pos=\"0\">\r\n		<div class=\"ob-image-ratio\">&nbsp;</div>\r\n		<a class=\"ob-dynamic-rec-link \" href=\"https://plarium.com/play/en/vikings/013_pastoral_2_g?plid=119742&amp;pxl=outbrain&amp;PublisherID=003d51d3016a00dfc9f06fe254797bdb29&amp;placement=$publisher_name$_$section_id$&amp;clickID=$ob_click_id$&amp;obOrigUrl=true\" rel=\"nofollow\" target=\"_blank\"><span class=\"ob-unit ob-rec-image-container\" data-type=\"Image\"><img alt=\"Play This For 1 Minute &amp; See Why Everyone is Addicted\" class=\"ob-rec-image ob-show\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjFjNDNhYTFhYjgxNWJlZTBlMzlhOThmY2Y2ZDAxNGJmOTVlY2M5YTU1NzZjNWUzNjM3NDRmNjcxZWY3Zjk0ZjciLCJ3Ijo0MDAsImgiOjIyNiwiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" title=\"Play This For 1 Minute &amp; See Why Everyone is Addicted\" /> </span> <span class=\"ob-unit ob-rec-text\" data-type=\"Title\" title=\"Play This For 1 Minute &amp; See Why Everyone is Addicted\">Play This For 1 Minute &amp; See Why Everyone is Addicted</span> <span class=\"ob-unit ob-rec-source\" data-type=\"Source\">Vikings</span> </a></li>\r\n		<li class=\"ob-dynamic-rec-container ob-recIdx-1 ob-p\" data-pos=\"1\">\r\n		<div class=\"ob-image-ratio\">&nbsp;</div>\r\n		<a class=\"ob-dynamic-rec-link \" href=\"http://mansionglobal.com/articles/92975-heidi-klum-buys-soho-penthouse-for-5-1-million?utm_source=Adrizer&amp;utm_campaign=76662&amp;utm_term=$publisher_name$&amp;obOrigUrl=true\" rel=\"nofollow\" target=\"_blank\"><span class=\"ob-unit ob-rec-image-container\" data-type=\"Image\"><img alt=\"Heidi Klum’s New Penthouse Is “One Of The Last Of Its Kind”\" class=\"ob-rec-image ob-show\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjQzYWViZWE1ZGQxNGIxZDk1M2NiZGFiNmNhNzQ1MTk3YWQ3NzA2MmY0MGRkYTU1ZDMwMWI5NzU1ZjBjMzkxNWEiLCJ3Ijo0MDAsImgiOjIyNiwiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" title=\"Heidi Klum’s New Penthouse Is “One Of The Last Of Its Kind”\" /> </span> <span class=\"ob-unit ob-rec-text\" data-type=\"Title\" title=\"Heidi Klum’s New Penthouse Is “One Of The Last Of Its Kind”\">Heidi Klum&rsquo;s New Penthouse Is &ldquo;One Of The Last Of Its Kind&rdquo;</span> <span class=\"ob-unit ob-rec-source\" data-type=\"Source\">Mansion Global</span> </a></li>\r\n	</ul>\r\n\r\n	<ul class=\"ob-widget-items-container ob-multi-row ob-row-1\">\r\n		<li class=\"ob-dynamic-rec-container ob-recIdx-2 ob-p\" data-pos=\"2\">\r\n		<div class=\"ob-image-ratio\">&nbsp;</div>\r\n		<a class=\"ob-dynamic-rec-link \" href=\"https://omgcheckitout.com/post577237302/?utm_campaign=ob-ww-d-airport-1504-omg&amp;utm_source=outbrain&amp;utm_medium=$publisher_id$&amp;utm_term=$section_id$&amp;obOrigUrl=true\" rel=\"nofollow\" target=\"_blank\"><span class=\"ob-unit ob-rec-image-container\" data-type=\"Image\"><img alt=\"Unbelievable Photos Captured At Airports\" class=\"ob-rec-image ob-show\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjVlNjU2YTk5ZDAxODQ3YWJiOGU5NjQyZGY2YzYyNzc4OTJkMGM0MmE0ZjY3Y2Q1NzZkNzc2OGQ4NDg4MzI4N2QiLCJ3Ijo0MDAsImgiOjIyNiwiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" title=\"Unbelievable Photos Captured At Airports\" /> </span> <span class=\"ob-unit ob-rec-text\" data-type=\"Title\" title=\"Unbelievable Photos Captured At Airports\">Unbelievable Photos Captured At Airports</span> <span class=\"ob-unit ob-rec-source\" data-type=\"Source\">OMG!</span> </a></li>\r\n	</ul>\r\n	</div>\r\n\r\n	<div class=\"ob_what\"><a href=\"https://www.outbrain.com/what-is/default/en\" rel=\"nofollow\">by </a></div>\r\n\r\n	<div class=\"ob-pixels\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</article>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column zn__column--idx-1\">\r\n<ul class=\"cn cn-list-hierarchical-small-horizontal cn--idx-1 cn-\" data-layout=\"list-hierarchical-small-horizontal\">\r\n	<li>\r\n	<article class=\"cd cd--tool cd--tool__outbrain\" data-analytics=\"tool-type_list-hierarchical-small-horizontal_outbrain\" data-eq-pts=\"xsmall: 0, small: 300, medium: 460, large: 780\" data-eq-state=\"xsmall small\" data-vr-contentbox=\"\">\r\n	<div class=\"OB_AR_14\">\r\n	<div class=\"OUTBRAIN js-m-outbrain m-outbrain\" data-browser=\"firefox\" data-dynload=\"\" data-idx=\"8\" data-ob-mark=\"true\" data-ob-template=\"cnn\" data-os=\"win64\" data-src=\"https://edition.cnn.com/2018/01/25/middleeast/lebanon-beach-garbage-crisis-intl/index.html\" data-widget-id=\"AR_14\" id=\"outbrain_widget_8\">\r\n	<div class=\"ob_strip_container AR_14\"><span class=\"ob_org_header\">More from CNN </span>\r\n\r\n	<div class=\"ob_container\">\r\n	<div class=\"ob_container_recs\">\r\n	<div class=\"item-container ob-recIdx-0     ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=lKLSOjp4KsS8-DwiEvgm124-j_pWj8ju34ANFnYMpMsN_G44gToWZD9vEVpfF-FES2Bfi1ZXTQS6H6dnPlu2bkaZcYMtv-NeZeRVU248zZE93AaQ-YQN6Y9n9G3rTE0AtcLdqALFqUi2cDwxu0UJ7iJMs-VHfQSHiWNbhP-29r4aYRRtMtiI9uC18zjBoFb0ePfVb7ubvqgfbiMGU2krn0DBLaRS6yuPP-qjCsZybbJis7dYVt_eZpdilVtTgUeZ-19dTDZ0i3VIh6Du-ZLqdXTN-tgJ4ZSSo6fvj8sE-p7xgIG4jkdWwNbRJf0YP_AHNorEm85bmsaLpTi9SE_FU7QU1BZ6tGXk8D2jeYPF8yX8nc2HIbqe955ASs64WfnrV_jnJnUAON8_u7mTBmwa7JfUoxjS2tYrtUtsHgk0F4tiPlNB7c9FZrodi8f5_fFLTrbn3n1H7ojhZ-18JZlvwCRC6vkq6Eyr22-qQZNu1qoavdRQQp6DEcs2DuSeyAjELyRDgt47ncHTLyaE_q4sKrQ_TnzQxn7Op7GpB_EzUkbcNKZVCr1M0FzxyA_WXdQOvDpH6uNBwjDjCq-2omtWj3y7CPNj8HdIUUnTT4LUK-yLf8WOMSTkzRLTCAyUuMwgY5ap0v7wCmjYgmDfhOgG46RMqA6mqmiM8eUQf2Vzube5_utrrVaO1JLlXz_3DSQ_vzif7WXI6s3rhmiWoos208vBYpt3yH-1jLOlu6_z2VuU46tOSInI5I-K8iJwbrJ3GBzzC4aN31LLrMIa8v2qlTSY-jILEGwyFaaEyuSm58NIkyTI0CF52dmj7d-L68_6484EsDhyNEFjtgjltcJjcQ&amp;c=c9abbc05&amp;v=3\" href=\"http://edition.cnn.com/2018/04/23/europe/london-marathon-matt-campbell-dies-intl/index.html?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\"><img alt=\"UK Masterchef contestant dies in London Marathon\" class=\"strip-img\" height=\"113\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjQ3NjlmN2IyYWY3ODc2NjhkMjU3OGZhNGVmMWNkMzkwNDQxOTM5NTNiOTkzMzg3NDBjMjE3NTkyMWFlYzMwMDIiLCJ3IjoyMDAsImgiOjExMywiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" style=\"\" title=\"UK Masterchef contestant dies in London Marathon\" width=\"200\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"UK Masterchef contestant dies in London Marathon\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=lKLSOjp4KsS8-DwiEvgm124-j_pWj8ju34ANFnYMpMsN_G44gToWZD9vEVpfF-FES2Bfi1ZXTQS6H6dnPlu2bkaZcYMtv-NeZeRVU248zZE93AaQ-YQN6Y9n9G3rTE0AtcLdqALFqUi2cDwxu0UJ7iJMs-VHfQSHiWNbhP-29r4aYRRtMtiI9uC18zjBoFb0ePfVb7ubvqgfbiMGU2krn0DBLaRS6yuPP-qjCsZybbJis7dYVt_eZpdilVtTgUeZ-19dTDZ0i3VIh6Du-ZLqdXTN-tgJ4ZSSo6fvj8sE-p7xgIG4jkdWwNbRJf0YP_AHNorEm85bmsaLpTi9SE_FU7QU1BZ6tGXk8D2jeYPF8yX8nc2HIbqe955ASs64WfnrV_jnJnUAON8_u7mTBmwa7JfUoxjS2tYrtUtsHgk0F4tiPlNB7c9FZrodi8f5_fFLTrbn3n1H7ojhZ-18JZlvwCRC6vkq6Eyr22-qQZNu1qoavdRQQp6DEcs2DuSeyAjELyRDgt47ncHTLyaE_q4sKrQ_TnzQxn7Op7GpB_EzUkbcNKZVCr1M0FzxyA_WXdQOvDpH6uNBwjDjCq-2omtWj3y7CPNj8HdIUUnTT4LUK-yLf8WOMSTkzRLTCAyUuMwgY5ap0v7wCmjYgmDfhOgG46RMqA6mqmiM8eUQf2Vzube5_utrrVaO1JLlXz_3DSQ_vzif7WXI6s3rhmiWoos208vBYpt3yH-1jLOlu6_z2VuU46tOSInI5I-K8iJwbrJ3GBzzC4aN31LLrMIa8v2qlTSY-jILEGwyFaaEyuSm58NIkyTI0CF52dmj7d-L68_6484EsDhyNEFjtgjltcJjcQ&amp;c=c9abbc05&amp;v=3\" href=\"http://edition.cnn.com/2018/04/23/europe/london-marathon-matt-campbell-dies-intl/index.html?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\">UK Masterchef contestant dies in London Marathon</a></div>\r\n\r\n	<div class=\"strip-rec-link-source ob-lcolor\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container ob-recIdx-1     ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=OzKywlYuM4ZGosfydcXoyU_lJhsy1n3mwvRugPBO2Nd0TB0QE4HYBzvv8QW0Q8FkTkA4rxieMjOCNs7A7QCnHbx9pNUejAzIyWm_lRsaYe3Zg_42v6GkJRrO2d4smifElZLp-2ZZdp9rWJkhmt4ni95QX2O1d2fjW3-P944TcpUK6GT17t1Xa1jQhxqmFf-FcgbRsjKIoBSep4tK28yS1ak_esQ5rXtRtbXDOkFSjkRjsS36dwAnguSiYRC_hW_cWlFYxxXM0CH1dGdTcx26TjItzHaCmzOUC7cG9Et8xYNdE1J7lDcJ9QLluyxKhoz97zkdbvU3tHfSOhZlH42DCz5mT_V_S80gAHD0sKevafRPghIcsP3jE_G8nb3mMg73L_CHLNEjvB-CKUqchme-zshl9FtOtri-rFLGY9tj5-FFR6hjo_xIChlhlzqCKzhuBCOG6p3KcPt0Vj2vBOp-_EaQ42jmasANW-uLVrIkM_rF2wQSlI9cfVQKnQGPeuS0PCtRvcxywEVXTEKM8Jn9XV9VB0DEPWmDkNy1Mhaq8IKovxduVlrHbiJAH4Hb2qv1W8fOaVIRn6yb9fy0346vUesMxZ6yw8ez5kfJL1xJWmHtDgvdHE6Miv1XALLKSWU6Q5ICMYXUr6ctUaw7G_TSgKd3VFuWU7_a1_6dWDdoqvAuFpig4S3xyS_VcNyp1YAtuBwxmVPxUMH1vgTFCyWZQYhBQQhuJuG4IYOOT8m1wVAG45nDsPEm_tKLmQlIh5ohvQ4_etDXEwf_ATOIgPwCZhVa9hZHNTTDJaJyL7Ln1Hew4KHxxf6LM05Kip4hUsIMh2o8pmH9G5PCifPda6c-5A&amp;c=e5b59485&amp;v=3\" href=\"http://edition.cnn.com/2018/05/01/europe/british-toddler-missing-paderborn-investigation-intl/index.html?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\"><img alt=\"Police to dig up German riverbank in search for toddler who disappeared in 1981\" class=\"strip-img\" height=\"113\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjdlYWY3Y2RkZWRhNjZkNGQ4ZjE1NjA2NGU0MjUxZTEwOTEzNWZmNjhhNTk5ZjliYTQyNzI3MGI3N2ZhN2Y1ZmIiLCJ3IjoyMDAsImgiOjExMywiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" style=\"\" title=\"Police to dig up German riverbank in search for toddler who disappeared in 1981\" width=\"200\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Police to dig up German riverbank in search for toddler who disappeared in 1981\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=OzKywlYuM4ZGosfydcXoyU_lJhsy1n3mwvRugPBO2Nd0TB0QE4HYBzvv8QW0Q8FkTkA4rxieMjOCNs7A7QCnHbx9pNUejAzIyWm_lRsaYe3Zg_42v6GkJRrO2d4smifElZLp-2ZZdp9rWJkhmt4ni95QX2O1d2fjW3-P944TcpUK6GT17t1Xa1jQhxqmFf-FcgbRsjKIoBSep4tK28yS1ak_esQ5rXtRtbXDOkFSjkRjsS36dwAnguSiYRC_hW_cWlFYxxXM0CH1dGdTcx26TjItzHaCmzOUC7cG9Et8xYNdE1J7lDcJ9QLluyxKhoz97zkdbvU3tHfSOhZlH42DCz5mT_V_S80gAHD0sKevafRPghIcsP3jE_G8nb3mMg73L_CHLNEjvB-CKUqchme-zshl9FtOtri-rFLGY9tj5-FFR6hjo_xIChlhlzqCKzhuBCOG6p3KcPt0Vj2vBOp-_EaQ42jmasANW-uLVrIkM_rF2wQSlI9cfVQKnQGPeuS0PCtRvcxywEVXTEKM8Jn9XV9VB0DEPWmDkNy1Mhaq8IKovxduVlrHbiJAH4Hb2qv1W8fOaVIRn6yb9fy0346vUesMxZ6yw8ez5kfJL1xJWmHtDgvdHE6Miv1XALLKSWU6Q5ICMYXUr6ctUaw7G_TSgKd3VFuWU7_a1_6dWDdoqvAuFpig4S3xyS_VcNyp1YAtuBwxmVPxUMH1vgTFCyWZQYhBQQhuJuG4IYOOT8m1wVAG45nDsPEm_tKLmQlIh5ohvQ4_etDXEwf_ATOIgPwCZhVa9hZHNTTDJaJyL7Ln1Hew4KHxxf6LM05Kip4hUsIMh2o8pmH9G5PCifPda6c-5A&amp;c=e5b59485&amp;v=3\" href=\"http://edition.cnn.com/2018/05/01/europe/british-toddler-missing-paderborn-investigation-intl/index.html?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\">Police to dig up German riverbank in search for&hellip;</a></div>\r\n\r\n	<div class=\"strip-rec-link-source ob-lcolor\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container ob-recIdx-2     ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=9JnrXNigzDyLQ81aXatgJ5QHmhlBUu10PhlfLrMgG_zwkU5G097LGy96gaq_7WbCfs_EAlDDKCJIaaeDlaif70Xx7vT6DmVLuv7pU0HydceIySp2vC5fJl8iaeJZq9crjvXkSzoGwXMQ-5Az0WZ__7YPpleuzTCm4jonaPkifjvPGQp1dtJdKCOOFm1nFu2Po1WZa4XrIJlBWxSQGfQ2fofZE1F7JZTtRpmTg8L7A5UsAK8kwa1ZMKIN4BAg6Iqd-IxNDzlpKwBW8zlXuK0Y8i3GMVAbvwrGU-bfiTm4WM61IqSnlc7bevLKrT9gWjY99goat_VIA1h3MAByD4kJr4Jr4ivmZ3EhoTN44qL4DQwNhh2xKLCqRyvXTZfBZRyht8I_bNDdV1eCdiEMqDyXv9rvG41GQbixxyMtEo889IaMC0flMeTn6Pw_g6h5izZtOXfkpDI4GsOLZyKWjIFHmU6osmKeGPywQige6dpnTCv7TBTe3P1aAVjnmVgJsA40S8lkX8169eDj-IIkbtWOyXZFK0Nd1Mbx-idPMmLBOwKMVc9qqa1MezQ7sItksRfPxRmjAIkqrL_GVCTWWkC5hhRV_3b9gL6R7JQKETj4qjHWr_hGhVcLcljgH8BU4NUDnxM-f8F3_kepCVfXxNmi9ZJENQ2cJQl-lKzZ2r4lv1qMjx6s695D5zmUSI28iALQQkHsSxBVJDWjW0tqsIxOcDZnhGZQIaA4cBumclPsYjMKDf_pTu9XU_5_GFVUEDsJz0F51Hl10x-hOcABzmMyYb2RsDeS9t0guLs4mrx512W-fcGgUzriAzNXDsA5_ysXYfd0Eq7YW0nFE4GjtAFH-A&amp;c=64903219&amp;v=3\" href=\"http://edition.cnn.com/2018/04/26/asia/ri-sol-ju-kim-jong-un-wife-intl/?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\"><img alt=\"Who is Kim Jong Un\'s wife, Ri Sol Ju?\" class=\"strip-img\" height=\"113\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6ImNkNzU2ZmE2NThkNWEzZDJkZjJlMjBkMzc1YTc3MjZhMTExMDIzZjc1ZGI4ODBjZTc5YWI1NTU5Njg2ZTMxOGEiLCJ3IjoyMDAsImgiOjExMywiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" style=\"\" title=\"Who is Kim Jong Un\'s wife, Ri Sol Ju?\" width=\"200\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Who is Kim Jong Un\'s wife, Ri Sol Ju?\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=9JnrXNigzDyLQ81aXatgJ5QHmhlBUu10PhlfLrMgG_zwkU5G097LGy96gaq_7WbCfs_EAlDDKCJIaaeDlaif70Xx7vT6DmVLuv7pU0HydceIySp2vC5fJl8iaeJZq9crjvXkSzoGwXMQ-5Az0WZ__7YPpleuzTCm4jonaPkifjvPGQp1dtJdKCOOFm1nFu2Po1WZa4XrIJlBWxSQGfQ2fofZE1F7JZTtRpmTg8L7A5UsAK8kwa1ZMKIN4BAg6Iqd-IxNDzlpKwBW8zlXuK0Y8i3GMVAbvwrGU-bfiTm4WM61IqSnlc7bevLKrT9gWjY99goat_VIA1h3MAByD4kJr4Jr4ivmZ3EhoTN44qL4DQwNhh2xKLCqRyvXTZfBZRyht8I_bNDdV1eCdiEMqDyXv9rvG41GQbixxyMtEo889IaMC0flMeTn6Pw_g6h5izZtOXfkpDI4GsOLZyKWjIFHmU6osmKeGPywQige6dpnTCv7TBTe3P1aAVjnmVgJsA40S8lkX8169eDj-IIkbtWOyXZFK0Nd1Mbx-idPMmLBOwKMVc9qqa1MezQ7sItksRfPxRmjAIkqrL_GVCTWWkC5hhRV_3b9gL6R7JQKETj4qjHWr_hGhVcLcljgH8BU4NUDnxM-f8F3_kepCVfXxNmi9ZJENQ2cJQl-lKzZ2r4lv1qMjx6s695D5zmUSI28iALQQkHsSxBVJDWjW0tqsIxOcDZnhGZQIaA4cBumclPsYjMKDf_pTu9XU_5_GFVUEDsJz0F51Hl10x-hOcABzmMyYb2RsDeS9t0guLs4mrx512W-fcGgUzriAzNXDsA5_ysXYfd0Eq7YW0nFE4GjtAFH-A&amp;c=64903219&amp;v=3\" href=\"http://edition.cnn.com/2018/04/26/asia/ri-sol-ju-kim-jong-un-wife-intl/?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\">Who is Kim Jong Un&#39;s wife, Ri Sol Ju?</a></div>\r\n\r\n	<div class=\"strip-rec-link-source ob-lcolor\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container ob-recIdx-3    ob-last   ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=IHohCFgiY2WvfDhfVDt9pY2HxWYsHMe1I7wnX9Z4NOuLEy3BFOo_97Rfcpgjpgb-xK2PxXOtqR5TkPVSSy3800-awYwKfwLTMlf7iC7veDcjVCxUwr2x-tpJVWQBGRNwoYLxyFxqgUc8qfZTEGbW1PRDmJEJEln2BuSARAOGo-Co-kXXgSukDLC5iPKz17A2CHjrd-pj-risGrXCLpU2rtUsdkl4zze0-r5in4XC-LisMcrrsnoqPJDDu-x07rVnPMEOccr4EsZrVwJWpu8Q6K2wZlny3Y7VG2lS-1UsN5uhhQkby1VlgqzcN6OMj6tHyHIe6hTmozyVO6kxx12D0T3Gi5jmacEI3ZmSZJvJM-O1kQT8-_9OE3WcwW7SZwB7ms2psUER6H5H7T_fh_2oVyBEUJp8aHYscPsn_gBD0DScnYWjRaAb5nSqXSR6IBlEtsCizAm52w4CK_zEa0VusJPrF5rLHkR_-__Wr-_Zl7YO3iIvtlybUR_XLVhI519ddxURUWfsfapyzCpJ4e9W3_xnRmyOHcqKyzcMKlGCt5Yx0rNcDZkNVXmUY2nDSOmcJxTNYU6PYAGVjUyyO0_Pkqq32KddQpFE58wl5byRCo_nBslmwu1ymU1y_kt_q6iCN4ECWrazygAC_G5t1YQgaZwveQk7ciFde6kD5XpRsyBBLeufQZXDCBMLQy86h0JGzibL4IsOUx5bb0aWJkBezEAAHLfAANWB2EGqokY4koxgRG4BieD4jcehfnGAuMRjpu2MaqqmhmnJsyIQhdZSkFpnpy630mIksb1BrfX76zb0kG_hpGzpADFa1H0qNKUUU1zNLvZolWdavjRJYAHGCg&amp;c=faa21953&amp;v=3\" href=\"http://edition.cnn.com/2018/04/18/europe/queen-last-corgi-dead-intl/index.html?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\"><img alt=\"Last in Queen Elizabeth II\'s line of corgis dies, says British press\" class=\"strip-img\" height=\"113\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjBiMzdhMmM1ZTAzYTY3NWEwNzMxNGIzNzRhMTI1OTJlOWI5MTI2YjllZmQ1MDBmMzFmNjAwNzhmZTE4OGM5NzciLCJ3IjoyMDAsImgiOjExMywiZCI6MS41LCJjcyI6MCwiZiI6MH0.jpg\" style=\"\" title=\"Last in Queen Elizabeth II\'s line of corgis dies, says British press\" width=\"200\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Last in Queen Elizabeth II\'s line of corgis dies, says British press\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=IHohCFgiY2WvfDhfVDt9pY2HxWYsHMe1I7wnX9Z4NOuLEy3BFOo_97Rfcpgjpgb-xK2PxXOtqR5TkPVSSy3800-awYwKfwLTMlf7iC7veDcjVCxUwr2x-tpJVWQBGRNwoYLxyFxqgUc8qfZTEGbW1PRDmJEJEln2BuSARAOGo-Co-kXXgSukDLC5iPKz17A2CHjrd-pj-risGrXCLpU2rtUsdkl4zze0-r5in4XC-LisMcrrsnoqPJDDu-x07rVnPMEOccr4EsZrVwJWpu8Q6K2wZlny3Y7VG2lS-1UsN5uhhQkby1VlgqzcN6OMj6tHyHIe6hTmozyVO6kxx12D0T3Gi5jmacEI3ZmSZJvJM-O1kQT8-_9OE3WcwW7SZwB7ms2psUER6H5H7T_fh_2oVyBEUJp8aHYscPsn_gBD0DScnYWjRaAb5nSqXSR6IBlEtsCizAm52w4CK_zEa0VusJPrF5rLHkR_-__Wr-_Zl7YO3iIvtlybUR_XLVhI519ddxURUWfsfapyzCpJ4e9W3_xnRmyOHcqKyzcMKlGCt5Yx0rNcDZkNVXmUY2nDSOmcJxTNYU6PYAGVjUyyO0_Pkqq32KddQpFE58wl5byRCo_nBslmwu1ymU1y_kt_q6iCN4ECWrazygAC_G5t1YQgaZwveQk7ciFde6kD5XpRsyBBLeufQZXDCBMLQy86h0JGzibL4IsOUx5bb0aWJkBezEAAHLfAANWB2EGqokY4koxgRG4BieD4jcehfnGAuMRjpu2MaqqmhmnJsyIQhdZSkFpnpy630mIksb1BrfX76zb0kG_hpGzpADFa1H0qNKUUU1zNLvZolWdavjRJYAHGCg&amp;c=faa21953&amp;v=3\" href=\"http://edition.cnn.com/2018/04/18/europe/queen-last-corgi-dead-intl/index.html?iid=ob_article_organicsidebar_expansion&amp;obOrigUrl=true\" rel=\"\" target=\"_self\">Last in Queen Elizabeth II&#39;s line of corgis dies&hellip;</a></div>\r\n\r\n	<div class=\"strip-rec-link-source ob-lcolor\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"ob-pixels\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</article>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"zn zn-partner-zone zn-balanced zn--idx-3 zn--ordinary zn-has-one-container\" data-containers=\"1\" data-eq-pts=\"xsmall: 0, medium: 460, large: 780, full16x9: 1100\" data-eq-state=\"xsmall\" data-vr-zone=\"zone-2-3\" data-zn-id=\"partner-zone\" data-zone-label=\"partnerRail\" id=\"partner-zone\">\r\n<div class=\"zn-top\">\r\n<div class=\"zn-top__background\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"l-container zn__background--content-relative\">\r\n<div class=\"zn__containers\">\r\n<div class=\"column zn__column--idx-0\">\r\n<div class=\"ad ad--epic ad--tablet\" data-ad-text=\"show\">\r\n<div data-ad-id=\"ad_rect_btf_01\" data-ad-position=\"tablet\" data-ad-refresh=\"adbody\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"ad ad--epic ad--desktop\" data-ad-text=\"show\">\r\n<div data-ad-id=\"ad_rect_btf_01\" data-ad-position=\"desktop\" data-ad-refresh=\"adbody\">\r\n<div class=\"ad-ad_rect_btf_01 ad-refresh-adbody adfuel-rendered\" data-google-query-id=\"CMbD1ZiG5doCFZGNGwodcakPnw\" id=\"ad_rect_btf_01\" style=\"\">\r\n<div id=\"google_ads_iframe_/8663477/CNNi/middle-east/leaf/vls_3__container__\" style=\"border: 0pt none;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"cn cn-list-hierarchical-xs cn--idx-0 cn-zoneAdContainer\" data-layout=\"list-hierarchical-xs\">\r\n	<li>\r\n	<article class=\"cd cd--tool cd--tool__outbrain\">\r\n	<div class=\"OB_AR_42\">\r\n	<div class=\"OUTBRAIN js-m-outbrain m-outbrain\" data-browser=\"firefox\" data-dynload=\"\" data-idx=\"10\" data-ob-mark=\"true\" data-ob-template=\"cnn\" data-os=\"win64\" data-src=\"https://edition.cnn.com/2018/01/25/middleeast/lebanon-beach-garbage-crisis-intl/index.html\" data-widget-id=\"AR_42\" id=\"outbrain_widget_10\">\r\n	<div class=\"ob_strip_container AR_42\"><span class=\"ob_empty\"><wbr /></span> <span class=\"ob_org_header\"> Stories for you </span>\r\n\r\n	<div class=\"ob_container\">\r\n	<div class=\"ob_container_recs\">\r\n	<div class=\"item-container ob-recIdx-0     ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=Bp1pEXoZEsGatBYhuV-qx4Yjics7BYC63Iefu8vFMbxWwarg3_6NoVFcCS1BDfIG9e30JHn8dy7ehGYKLdW_wAxX8EPFxDhKWGfxHm5h9qMQzCEYIc7rvq4QYxoLFJzEOAHTlk5KnepdMkJx5OLW2Uoix1DqBCmJEx2-0knuFZ2eN-rTXaiHa4SFi9KWylJraFCHQ1G2ntuvkypO9P6cakaNUbCkDs7I2my9aDCWwQVxT-FsJhZSoQVfbzxlqXDNQX4D2Vobtkwmwxn9KW6yJWvftkPph8Q4LoQmxi4AtYTJQT9CJTVYvzpEd_pz2yRI6lQ7PqVJTEUlTtCjrQMRnMK2DzsQLMNyFqIG2AY4hwZLXxEQu4U8BPlv_4TIC4W4JaOlr6EKEszvWuebTVUurGZ08mpDrzl4veUQyX7RDD4WQqaoGVFlm0eYk8IKfMKyqF1ZbY9hQ1Y95WOJPSJqaiseduYLopTOgpaEltAa2TpiPPKryUm0LtcjaYZV9x5FllRd2CiYegoVZeyO44xAMtB-QIcJ0y7RWQLqKoGAEgAuSIHY0Fp4svESt6lJ3LG2qKOa3QGCvkxCez-OpWYHThIuL0t37z89iLXgLp4Edt57MZ_vzhHPewx5R_uvlnWr0bGWvp6XpAZRuRSAjAGV6gTEqT2WFex5AWBzoKc4kQ5snS_bJafuP-XPlWOc2nOt5xkdxnQle_02beOD26__Ep8ayuywg-ocmtaFNjvA6Z9fOY_9ZzF5dw5937AL6OC4-I-a6mUH6VX7wuWwVxOF_WxHwNvpCSk4Su9Lri0uUMk&amp;c=47eb7ed9&amp;v=3\" href=\"http://edition.cnn.com/style/article/festival-fashion-trends-style/index.html?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_blank\"><img alt=\"Why all music festival-goers look the same \" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjRmOGM3MmM5NjAwYWUwMTViNDhlNmI2YzI1M2JlZDg1NTFiODBlMGI1OTdlMjM3YjcwMzQ5MDA0MGU1NzYwOWEiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"Why all music festival-goers look the same \" width=\"75\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Why all music festival-goers look the same \"><a class=\"item-link-container ob-odd\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=Bp1pEXoZEsGatBYhuV-qx4Yjics7BYC63Iefu8vFMbxWwarg3_6NoVFcCS1BDfIG9e30JHn8dy7ehGYKLdW_wAxX8EPFxDhKWGfxHm5h9qMQzCEYIc7rvq4QYxoLFJzEOAHTlk5KnepdMkJx5OLW2Uoix1DqBCmJEx2-0knuFZ2eN-rTXaiHa4SFi9KWylJraFCHQ1G2ntuvkypO9P6cakaNUbCkDs7I2my9aDCWwQVxT-FsJhZSoQVfbzxlqXDNQX4D2Vobtkwmwxn9KW6yJWvftkPph8Q4LoQmxi4AtYTJQT9CJTVYvzpEd_pz2yRI6lQ7PqVJTEUlTtCjrQMRnMK2DzsQLMNyFqIG2AY4hwZLXxEQu4U8BPlv_4TIC4W4JaOlr6EKEszvWuebTVUurGZ08mpDrzl4veUQyX7RDD4WQqaoGVFlm0eYk8IKfMKyqF1ZbY9hQ1Y95WOJPSJqaiseduYLopTOgpaEltAa2TpiPPKryUm0LtcjaYZV9x5FllRd2CiYegoVZeyO44xAMtB-QIcJ0y7RWQLqKoGAEgAuSIHY0Fp4svESt6lJ3LG2qKOa3QGCvkxCez-OpWYHThIuL0t37z89iLXgLp4Edt57MZ_vzhHPewx5R_uvlnWr0bGWvp6XpAZRuRSAjAGV6gTEqT2WFex5AWBzoKc4kQ5snS_bJafuP-XPlWOc2nOt5xkdxnQle_02beOD26__Ep8ayuywg-ocmtaFNjvA6Z9fOY_9ZzF5dw5937AL6OC4-I-a6mUH6VX7wuWwVxOF_WxHwNvpCSk4Su9Lri0uUMk&amp;c=47eb7ed9&amp;v=3\" href=\"http://edition.cnn.com/style/article/festival-fashion-trends-style/index.html?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_blank\">Why all music festival-goers look the same </a></div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container ob-recIdx-1    ob-last   ob-o\">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=FTwyWbvKZlQhEu6zow4UrtXdO9Ogbwbxg1gwkEl5CrAuIt2Y0fkcNknwPztQQ4C2goXlKzfpnak0-wcqrP7zDC-gTny1sfrs2hvShLefDb8F6Ue3Ju-doi9a1oEq3vOP44FkLv6YSmr-ch12p77KY1raP3BPWhDLXYq1FJ9NFbFrFBht5sVcS2liKvZ1DdEdmTi1_MGKeF3Grj_Y8D7LaAL6p5ifuq1flPYNUUdOTiFPw13bTWWHT8w2XkaEOTmVc1bDui9GDDgWU2i-dgR7-_HecgUSUZ13Le43RYZz9DgDnP7P-SVPkZrBmilaeKzGfgGPO-ImXoyIBB0ZaOWSFlJOqFFteXcLsmtTF4Qry-ysBqQxw2hNlT9W5Sq2lMth2dhG_8qGblP-b4ulwNLq9O11Mj31KImb7lor3cNAjRYlepNogO0ynszvyNrQhQSbv0T8NlCHXowim5zFdWXoc9SFJFea4rwDdHK_Rj2qhepBwSANfOT9dFuRC6IXDFhs7aBilmWg2Ka78i-cwBlSh-Q4YruWBhkTX3Fm0eqeXd9Fr_UE8tsXY3quWk14WYBj1t2Ccgq2qHVIUyC0pUWTfGZLnOPhLG3_dchgdfqFdEJ8dU5sBG54jAJnnbVG1o53_z6b60CbU2-D9n-O5Ghl-2tuP_FCeo8ay9YmJABX32W7tiXP3uG1HRFViVtftNO9OmmwQRuzgbPOwrRgGu8QyVRdXI_qV6y5AbagPHbD6qjmVxcXBMVSs6SrwjS60bD456DJ_X4o4QiRuLW9e-14NRzkGM75C3xmDQXvBYH-WkPvs_mkB2GW9mDkQeTKcHgu&amp;c=8332377c&amp;v=3\" href=\"http://edition.cnn.com/2018/04/21/europe/royal-wedding-harry-meghan-guest-list-intl/index.html?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_self\"><img alt=\"Who\'s invited to Harry and Meghan\'s wedding?\" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjExMjM4YjMxYTI3YjJjNjBmNDAwNzA0NDIxZmQ3MDg5NTIzZDBmOTM1MTQ0ZDlkNjgxZDJkODc0ZTk4ODVjM2YiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"Who\'s invited to Harry and Meghan\'s wedding?\" width=\"75\" /> </a></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Who\'s invited to Harry and Meghan\'s wedding?\"><a class=\"item-link-container ob-even\" data-redirect=\"https://traffic.outbrain.com/network/redir?p=FTwyWbvKZlQhEu6zow4UrtXdO9Ogbwbxg1gwkEl5CrAuIt2Y0fkcNknwPztQQ4C2goXlKzfpnak0-wcqrP7zDC-gTny1sfrs2hvShLefDb8F6Ue3Ju-doi9a1oEq3vOP44FkLv6YSmr-ch12p77KY1raP3BPWhDLXYq1FJ9NFbFrFBht5sVcS2liKvZ1DdEdmTi1_MGKeF3Grj_Y8D7LaAL6p5ifuq1flPYNUUdOTiFPw13bTWWHT8w2XkaEOTmVc1bDui9GDDgWU2i-dgR7-_HecgUSUZ13Le43RYZz9DgDnP7P-SVPkZrBmilaeKzGfgGPO-ImXoyIBB0ZaOWSFlJOqFFteXcLsmtTF4Qry-ysBqQxw2hNlT9W5Sq2lMth2dhG_8qGblP-b4ulwNLq9O11Mj31KImb7lor3cNAjRYlepNogO0ynszvyNrQhQSbv0T8NlCHXowim5zFdWXoc9SFJFea4rwDdHK_Rj2qhepBwSANfOT9dFuRC6IXDFhs7aBilmWg2Ka78i-cwBlSh-Q4YruWBhkTX3Fm0eqeXd9Fr_UE8tsXY3quWk14WYBj1t2Ccgq2qHVIUyC0pUWTfGZLnOPhLG3_dchgdfqFdEJ8dU5sBG54jAJnnbVG1o53_z6b60CbU2-D9n-O5Ghl-2tuP_FCeo8ay9YmJABX32W7tiXP3uG1HRFViVtftNO9OmmwQRuzgbPOwrRgGu8QyVRdXI_qV6y5AbagPHbD6qjmVxcXBMVSs6SrwjS60bD456DJ_X4o4QiRuLW9e-14NRzkGM75C3xmDQXvBYH-WkPvs_mkB2GW9mDkQeTKcHgu&amp;c=8332377c&amp;v=3\" href=\"http://edition.cnn.com/2018/04/21/europe/royal-wedding-harry-meghan-guest-list-intl/index.html?iid=ob_lockedrail_topeditorial&amp;obOrigUrl=true\" rel=\"\" target=\"_self\">Who&#39;s invited to Harry and Meghan&#39;s wedding?</a></div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"ob_container_shadow_outer\">\r\n	<div class=\"ob_container_shadow\">\r\n	<div class=\"item-container-shadow ob-recIdx-0   ob-odd\">\r\n	<div class=\"item-container ob-recIdx-0   \">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><img alt=\"Why all music festival-goers look the same \" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjRmOGM3MmM5NjAwYWUwMTViNDhlNmI2YzI1M2JlZDg1NTFiODBlMGI1OTdlMjM3YjcwMzQ5MDA0MGU1NzYwOWEiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"Why all music festival-goers look the same \" width=\"75\" /></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Why all music festival-goers look the same \">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"item-container-shadow ob-recIdx-1  ob-even\">\r\n	<div class=\"item-container ob-recIdx-1    ob-last \">\r\n	<div class=\"ob-rec-link-img ob-tcolor\"><img alt=\"Who\'s invited to Harry and Meghan\'s wedding?\" class=\"strip-img\" height=\"75\" src=\"https://images.outbrain.com/transform/v3/eyJpdSI6IjExMjM4YjMxYTI3YjJjNjBmNDAwNzA0NDIxZmQ3MDg5NTIzZDBmOTM1MTQ0ZDlkNjgxZDJkODc0ZTk4ODVjM2YiLCJ3Ijo3NSwiaCI6NzUsImQiOjEuNSwiY3MiOjAsImYiOjB9.jpg\" style=\"\" title=\"Who\'s invited to Harry and Meghan\'s wedding?\" width=\"75\" /></div>\r\n\r\n	<div class=\"ob-text-content\">\r\n	<div class=\"strip-rec-link-title ob-tcolor\" title=\"Who\'s invited to Harry and Meghan\'s wedding?\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n\r\n	<div class=\"ob-pixels\">&nbsp;</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</article>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column zn__column--idx-1\">\r\n<div class=\"ad ad--epic ad--desktop\" data-ad-text=\"show\">\r\n<div data-ad-id=\"ad_rect_atf_03\" data-ad-position=\"desktop\" data-ad-refresh=\"adtop\">\r\n<div class=\"ad-ad_rect_atf_03 ad-refresh-adbody\" id=\"ad_rect_atf_03\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"zn zn- zn-body zn--idx-4 zn--ordinary zn-has-one-container\" data-containers=\"1\" data-eq-pts=\"xsmall: 0, medium: 460, large: 780, full16x9: 1100\" data-eq-state=\"xsmall\" data-vr-zone=\"zone-2-4\" id=\"\">\r\n<div class=\"l-container\">\r\n<ul class=\"cn cn-list-hierarchical-xs cn--idx-0 cn-\" data-layout=\"list-hierarchical-xs\">\r\n</ul>\r\n</div>\r\n</section>\r\n</div>\r\n\r\n<div class=\"pg-comments pg-rail-tall__comments\">&nbsp;</div>\r\n</div>\r\n</div>\r\n', '', 'CNN', 8, 1, '2018-05-01 17:36:52', '2018-05-01 17:36:29');
INSERT INTO `blogs` (`id`, `name`, `ar_name`, `slug`, `photo`, `excerpt`, `ar_excerpt`, `description`, `ar_description`, `author`, `weight`, `user_id`, `updated`, `created`) VALUES
(11, 'The Human Impact on the Environment in Lebanon', '', 'the-human-impact-on-the-environment-in-lebanon', 'outreach.jpg', 'Possibly the greatest danger threatening Lebanon currently is the disastrous state of the foundation of life, the disastrous state of our environment. ', '', '<p><i>Possibly the greatest danger threatening Lebanon currently is the disastrous state of the foundation of life, the disastrous state of our environment. This catastrophe is not limited to Lebanon, but, as you know, is a worldwide problem bred by ignorance and greed. An important point to be kept in mind is that demographic tendencies, the protection of the environment and a lasting economic development are closely connected and policies must aim at creating balanced objectives among these three fields. </i></p>\r\n\r\n<p><i>Woods cover about 6 percent of the surface of Lebanon. The fertile lands represent 12 percent of Lebanon&#39;s surface. They are quickly disappearing due to the savage urbanization. The protection of these fertile lands constitutes a first priority because their dis appearance will lead to a natural catastrophe for the development of agriculture. Furthermore, the pollution due to solid wastes and pesticides requires a serious control over the quality and the quantity of the products used. In addition, the loss of species in Lebanon is an almost irreversible process that inevitably will result in tremendous ecological havoc. </i></p>\r\n\r\n<p><b>Pollution: Air,Water, Soil</b></p>\r\n\r\n<p>Pollution is defined as the introduction by people into the environment of substances or energy liable to cause h azard to human health, harm to living resources and ecological systems, damage to structures, or interference with legitimate uses of the environment.</p>\r\n\r\n<p>Pollution includes: mining, burying toxins, gases from factories, the leaded gas from cars, chemicals in agriculture, use of toxins in undetermined, unstudied fashions, sewage waste and factory wastewater, destruction and change of the soil in construction and quarry activities, including water - soil - and air. It is not only the opposite of cleanliness, but encompasses every destruction and havoc placed upon the environment In essence, pollution has three parts: soil, air, and water.</p>\r\n\r\n<p>Unfortunately, the policy followed by the Lebanese government since the 1950s always has been based on the extension of the field of industry and the encouragement of exports, without regard to environmental concerns. The State favored high-productivity or high-value-added concerns by adopting certain fiscal, customs and commercial measures. &quot;No reference has ever been made on the impact of industry on the surroundings or on the protection of the environment, although development in given sector affects the environment and other sectors in the either a positive or negative manner&quot; (National Report on the Environment a nd Development i Lebanon, 1991).</p>\r\n\r\n<p><b>Sources of Pollution</b></p>\r\n\r\n<p>1. Industry</p>\r\n\r\n<p>Toxic matters released by industries, and the precipitation of matters in suspension in the air emanating from industry and from all combustion process in general are a primary source of air and water pollution. The production of electrical energy pollutes the atmosphere by the discharge of thermo-electric power plants. The sulfur content of fuel used in Lebanon is high and so are SO2 emissions. Cement works, refineries, thermo electric power houses and a multiplicity of generators and small combustion sources are the major pollutants of the atmosphere.</p>\r\n\r\n<p>In addition, liquid and solid wastes discharged from industries have resulted in significant water pollution. Industrial firms on the c oast discharge their waste waters into the sea without any treatment. Inland industries discharge waste waters generally into the nearest stream and without treatment. Some industries evacuate their waste waters into deep bore-holes with the risk of contamination of underground waters and springs that sprout in downward spots. Furthermore, industrial solid wastes are generally deposited with municipal refuse without any particular measures taken.</p>\r\n\r\n<p>2. Non-industrial solid wastes and waste waters</p>\r\n\r\n<p>Non-industrial solid wastes and waste waters are a primary factor in freshwater water, sea water and soil pollution. Wastes brought by waste-water conveyors are poured directly onto the coast without any treatment. Wastes from marinas and pleasure boats, and wastes left about by vacationers and shore users further contribute to sea pollution. In addition, waste waters are poured into the sea and freshwater without any treatment.</p>\r\n\r\n<p>3. Agriculture</p>\r\n\r\n<p>Uncontrolled qualities and quantities of pesticides, insecticid es, herbicides and fertilizers, and the bad utilization of animal fertilizers on agriculture lands result in both water and soil pollution.</p>\r\n\r\n<p><b>Air Pollution</b></p>\r\n\r\n<p>Atmospheric pollution which constitutes for ordinary citizens the most evident aspect of the problem of the environment has been the least researched in Lebanon. The air of the cities and areas of large human population is poor, and the quality of the air decreases with the increase of factories and with the formation of enveloping fog around the citie s. In 1973, the National Council for Scientific Research (NCSR) launched a scheme for the continuous observation of contents in the air of harmful matters (gas and dust). The war put an end to the project and since then atmospheric pollution problems continued to worsen.</p>\r\n\r\n<p>Air pollution has not been the subject of any regulation with the exception of the prohibition of the importation and use of diesel vehicles (law of the 10th June, 1961 and decree 579 of the 1st August, 1956) and the required conditions for vehicle engines, which currently are not being applied. There exists no authority in Lebanon which is directly responsible for the quality of the air and the protection of the atmosphere against pollution.</p>\r\n\r\n<p>The major pollutants of the atmosphere ar e the cement works, refineries, thermo-electric power houses, a multiplicity of small combustion sources, and generators installed at numerous industrial premises and residences to compensate for power cuts. Production of electrical energy pollutes the a tmosphere by the discharge of thermo-electric power plants. The sulfur content of fuel used in Lebanon is high and so are SO2 emissions. However, fuel of low sulfur content costs 20 to 30% more than the type at present used. The treatment of pollutants is also costly and would represent substantial charges to the cost of energy.</p>\r\n\r\n<p>Water Pollution</p>\r\n\r\n<p>With the exception of waters at high altitudes where there are no at present constructions above their levels, all Lebanese waters are exposed to pollution due to the lack of a system for the evacuation of solid and liquid residues and the lack of a control and water-protection system against pollution. The diseases transmitted by water and prevalent in Lebanon are typhoid, hepatitis, and dysentery. The resul ts of a large number of tests made at different periods for waters of different origins have proved the existence of bacteriological pollution.</p>\r\n\r\n<p>Due to the war, statistics are scarce in Lebanon. However, it is well known in the country that diseases tran smitted by water are widespread. In 1990, there were four known epidemics transmitted by polluted drinking water:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Nabeh el Tasseh in South Lebanon, 20th April, 1990.</li>\r\n	<li>Tayr Debba in South Lebanon, 12th/13th July, 1990.</li>\r\n	<li>Bebnin in North Lebanon, 20th August,1990.</li>\r\n	<li>Denbo in the Akkar region, North Lebanon, 15th November, 1990.</li>\r\n</ul>\r\n\r\n<p>A correlation was found between the number of cases relating to one of these diseases in a given month and the characteristics of the flow-rate of water streams, par ticularly during periods of vegetable-crop irrigation with polluted waters.</p>\r\n\r\n<p>Industrial and non-industrial liquid and solid wastes are the primary contributors to water pollution. Industrial firms on the coast discharge their waste waters into the sea wi thout any treatment. Inland industries discharge waste waters generally into the nearest stream and without treatment. In addition, some industries evacuate their waste waters into deep bore-holes with the risk of contamination of underground waters and springs that sprout in downward spots. Also, industrial solid wastes are generally evacuated with municipal refuse without any necessary particular measures taken.</p>\r\n\r\n<p>Non-industrial solid and liquid wastes pose a &quot;permanent danger for public health and environment&quot; (National Report on the Environment and Development in Lebanon, 1991). Frequently, waste waters are directly evacuated in rivers or in the sea, without any preliminary treatment. Sometimes, these waste waters are used for irrigation. Ninety percent of the solid wastes are directly dumped into natural areas along the roads... or are directly burnt without considering the consequent atmospheric pollution and the potential danger of the spread of fire.</p>\r\n\r\n<p><b>Waste-Water management</b></p>\r\n\r\n<p>In what relates to waste-water management, the current population is estimated at 4,700,000 persons, taking into account non-Lebanese residents, temporary displacements and secondary residences. Relating to household refuse, the quantity of solid waste is of some 0.7 to 6 .9 Kg/resident/day, that is a total of 3800 tons/day approximately of solid wastes for the whole of Lebanon.</p>\r\n\r\n<p>Waste-waters are not treated in Lebanon. Sewers of coastal agglomerations or agglomerations near the coast, Beirut included, pour waste-waters o nto the shore either directly or by way of a very short conveyor or a small rivulet flowing into the sea. Inland, agglomerations served by a public network generally pour their waste-water into the nearest stream. Inhabitants who utilize their own means of waste-water disposal usually have unlined cesspools or drill deep wells and merely inject waste-waters into the soil or simply dispose of them at the soil&#39;s surface. &quot;A situation of this type has a catastrophic impact on the environment in Lebanon particularly in what relates to beach and water pollution. The whole population bears the consequences&quot; (National Report on the Environment and Development, 1991).</p>\r\n\r\n<p>Forty-three percent of the population is not served by a collection system of household rubbish. Generally, trash collection is insured in large agglomerations. Small agglomerations (less than 5000 inhabitants) usually attach themselves to neighboring larger agglomerations since alone they cannot afford the personnel and equipment needed for the task.</p>\r\n\r\n<p>Only Beirut had, before the war in 1975, a working solid-waste treatment plan. It had a capacity of 700 tons per day which has now gone down to no more than 100 tons/day. It produced compost through a combined mechanical and biological treatment.</p>\r\n\r\n<p>Elsewhere, waste is transferred to uncontrolled discharge sites which pollute the air, the sea and waters, spoil the scenery and represent imminent risks to public health. Waste management and the collection and evacuation of solid wastes are at the charge of municipalities which are often small and have small budgets. There is approximately one thousand villages which have no municipalities, and therefore have no authority responsible for solid wastes.</p>\r\n\r\n<p>In an effort to resolve this problem, the Council for Development and Reconstruction (CDR) with the assistance of UNDP and WHO prepared in 1980-82 the &quot;Master Plan for Waste Water Management&quot; and the &quot;Master Plan for Solid-Wastes Management&quot;, UNDP LEB/77/033 and WHO/BSM/001. Unfortunately, both have yet to be implemented.</p>\r\n\r\n<p><b>Sea Pollution</b></p>\r\n\r\n<p>From the beginning, people have been accustomed to throw whatever they wish into the sea - thus, the sea has carried the waste products of humans and animals, food waste, chemical products and byproducts, agricu ltural chemicals, petrol, plastic bags, aluminum products, and numerous heavy metals, consequently killing the animals living in the sea and affecting the ecological balance, such as leading to the deaths of sea turtles and the dramatic increase in jellyfish. In Lebanon, the sewage has become underwater rivers in the sea - increasing rates of cholera and typhoid.</p>\r\n\r\n<p>In 1985, the results of a study on the pollution of coastal waters carried out since 1979 and based on 40 stations scattered along the coast revealed considerable present macroscopic visible pollution. The primary sources of such pollution are the wastes brought by waste-water conveyors which are deposited directly onto the coast without any pre-treatment, and the wastes from marinas and pleasure boats, and wastes left about by vacationers and shore users.</p>\r\n\r\n<p>By virtue of Article 6 of Regulation 1104 of the 14th November, 1961, it is forbidden to throw into the sea along the coast any matters that could infect the water, affect, intoxicate fish. The same prohibition applies to factories situated on the coast for the disposal of residues which cannot be thrown into the sea except at the conditions of the authorization for which to be applied.</p>\r\n\r\n<p>The current manner in which the coast is exploited is c learly detrimental and destructive, both for the coast and for the future of Lebanon. The use of explosives destroys sea fauna, and causes other unforeseen problems. The direct outpour of sewage, industrial waste and household refuse without prior treatment and with no sanitary measures has transformed the Lebanese beaches into trash dumps and the Lebanese coast into underwater sewers. The removal of maritime accretions at low depths threatens the destruction of what is left of the beaches and even the destruction of neighboring gardens during winter storms. Lastly, the small coastal plain, generally very narrow at the foot of the mountain, is already lost to increasing urbanization in Tripoli, Jounieh, Antelias, Beirut, Sidon, and Tyre. The coast is being transformed into concrete, a linear city of catastrophic architecture along the coast.</p>\r\n\r\n<p><b>Soil Degradation</b></p>\r\n\r\n<p>Soil is the foundation of terrestrial communities, the site of decomposition of organic matter and the return of mineral elements to the nutrient cycle. Soil is the very basis of development in the natural sense, and this foundation is dramatically deteriorating in Lebanon.</p>\r\n\r\n<p>There is a tremendous increase today in the use of chemicals and in the use of synthetic fertilizer, all without any study into this matter. Consequently, there has been an increase in foreign particles and chemicals in the soil, under trees, and a drenching of agricultural products in chemicals, leading to, what can be described as, the burning of the land, or, in oth er words - the killing of the bacteria that lives within the soil. The bacteria&#39;&#39;s demise affects the rates of decomposition, the return of nutrients into the soil and ... thus the viable regeneration of valued plants.</p>\r\n\r\n<p>One of these chemicals is used to kill the wild plants that naturally grow under and around trees and agricultural products. A competition arises between these wild plants and the plants upon which the farmer depends for his livelihood. To avoid what can be perceived as excessive costs - in other words, to limit short-term economic costs - the farmer has chosen to remove these wild vegetation species as a whole, and with the excessive aid of toxic chemicals, that then are absorbed into the soil and the water. Although the use of insect icides, herbicides, and fertilizers may improve agricultural production and the quality of the produce, especially in the short run, failing a suitable selection both qualitatively and quantitatively, the use of such chemicals is at the risk of polluting the soil, waters and the very produce supplied to consumers.</p>\r\n\r\n<p><b>Soil Deterioration</b></p>\r\n\r\n<p>The causes of the deterioration of soils in Lebanon are multiple: erosion, pollution, and urbanization.</p>\r\n\r\n<p>Soil erosion is the removal of surface material by wind or water. Erosion occurs due to the depletion of wooded areas, sharp slopes, and rainfall pattern. It has increased in Lebanon due to the deforestation and incorrect road construction.</p>\r\n\r\n<p>Soil pollution is caused by the release of toxic matters, untreated wastewaters, and the uncontrolled use of pesticides, herbicides, insecticides, and fertilizers in agriculture.</p>\r\n\r\n<p>The development of urban agglomeration and inter-urban structures, particularly during the past thirty years, has been at the expense of a considerable agricultural area. The lost land was among the most fertile in Lebanon. One sixth of good agricultural land is already lost, and deterioration continues at an increasing rate. This evolution, has significant negative effects on agricultural production, and will be discussed in further depth.</p>\r\n\r\n<p><b>Consequences of Soil Deterioration</b></p>\r\n\r\n<p>The soil is not only a natural container of all chemical elements but also a receiver for all kinds of waste products. Naturally, the soil&#39;s absorption capacity is significantly lost when the soil deteriorates. In addition, soil&#39;s ability to provide nutrients for plants is decreased. When soil is lost, the land becomes barren of natural productivity.</p>\r\n\r\n<p>Soil nourishes life through the medium of water. All life on earth requires e ssential elements that come from soil. These chemical elements move from soil to plants as ions and molecules in a water solution. Even fish and other aquatic life feed on plants nourished by soil nutrients dissolved in water. Soil and water are thus the bases of plant and animal life and therefore of civilization itself. Soil and water deterioration, both of which are occurring in Lebanon, are consequently a deterioration of the very foundation of civilization.</p>\r\n\r\n<p><b>Current Soil Utilization</b></p>\r\n\r\n<p>Current soil utilization is dominated overwhelmingly by urbanized land (60%), with potential agricultural land second (34%) and wooded areas at a mere 60,000 ha (Table 1).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nLand utilization        Area (hectares)         Percentage of total land\r\n                                                area\r\n\r\nIrrigated cultivated             67,000                6.4\r\nNon-irrigated cultivated        218,000               27\r\nUncultivated agricultural        75,000               34\r\nWooded areas                     60,000                6\r\nUrbanized land and other        630,000               60\r\nTotal                         1,050,000              100\r\n</pre>\r\n\r\n<p>Table 1: Current land utilization in Lebanon, 1991</p>\r\n\r\n<p>The recommended land use by the Lebanese government (National Report on the Environment and Development, 1991) is a 100% increase in agricultural land and a 130% in wooded areas (Table 2).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nLand utilization	Surface in hectares	Percentage of total land area\r\n\r\nAgriculture             360,000                 34\r\nWooded areas            200,000                 20\r\nImproved natural areas  360,000                 34\r\nUrbanized and other     130,000                 12\r\nTotal                   1,050,000               100\r\n\r\n</pre>\r\n\r\n<p>Table 2: Recommended land utilization, 1991</p>\r\n\r\n<p><b>Agriculture</b></p>\r\n\r\n<p>Of all the natural processes, agriculture is one of the main dependents on soil, and thus with the loss of fertile soil, the loss of agriculture will arise.</p>\r\n\r\n<p>It is estimated that 34%, that is 360,000 hectares, of the area of the country can be cultivated. The cultivated surface currently is of some 285,000 hectares, of which 67,000 hectares are irrigated.</p>\r\n\r\n<p>Nearly half of cultivated lands are on mountain slopes where terracing has allowed the prevention of erosion, but the economic value of the work is subject to question considering the substantial investments it involves and the scarcity of the retained soil.</p>\r\n\r\n<p>In 1988, the most important crops and productions were: cereals, potatoes, onions, citrus, apples, viticulture, bananas, sugar beet, olive trees, tobacco, poultry breeding, cattle breeding and milk production, market and floral ga rdening (Table 3).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nAgricultural crops and products         Production in hectares\r\n\r\nOlive Trees                             34,000 \r\nCereals                                 13,000\r\nViticulture                             12,000 \r\nCitrus                                  12,000 \r\nPotatoes                                 9,000 \r\nApples                                   4,000\r\nCattle breeding, milk production, \r\nand floral gardening                     1,500\r\nOnions                                   1,350\r\nTobacco                                  1,200\r\nBananas                                  1,100\r\nSugar Beet                                  50\r\nTotal                                   89,200\r\n\r\n</pre>\r\n\r\n<p>Table 3: Important agricultural crops and products, 1988</p>\r\n\r\n<p>Lebanese agricultural products have valiantly overcome the difficulties caused by the war and maintained, until 1988, a feeble but co nstant growth of their production. However, the Lebanese agricultural sector has enjoyed no major investment in infrastructure for almost 15 years.</p>\r\n\r\n<p>The extension of urbanization, in essence, is eating up the agricultural land which is already of a limit ed surface in Lebanon and represents only 12% of the country&#39;s area. A large part of these lands is situated in suburbs near towns which have been the bases of urban extension in Tripoli, Jounieh, Beirut and its suburbs, Sidon, Tyre, Zahl&eacute;. One sixth of these lands is already lost and the remainder follows at a galloping speed. If strict measures are not taken and applied by the authorities, the agricultural sector would be under the threat of disappearance in Lebanon.</p>\r\n\r\n<p><b>Species Loss </b></p>\r\n\r\n<p>It is no&#39;t only agrculture that is threatened in Lebanon; numerou mammals, fish, birds, and wild plants are also threatened with local extinction. There are probably many more species than the short list I will share with you, especially concerning fish. Research is desperately needed, as is constructive, national action.</p>\r\n\r\n<p><b>Primary causes of species loss</b></p>\r\n\r\n<p>Two factors of unequal importance affect the disappearance and endangerment of both the flora and the fauna in Lebanon: loss of habitat and hunting. The first one relates to rapid urbanization, loss of habitat, and habitat alteration. Very often, agricultural work, the use of pesticides, and the drying of swamps, such as the one at Ammiq in the Central Bekaa, made a great part of the fauna leave the region and lead to the ir disappearance. Generally, loss of habitat is the primary and overriding factor for species loss worldwide. In Lebanon, however, such is not the case for it is the savage overhunting that has become the dominant factor in the demise of species. Hunting relates to the individual behavior of the Lebanese person, hunting being here a factor of the first order in the extermination of existing races in Lebanon. The use of explosives and water pollution are additional key factors in the endangerment of the fish in Lebanon.</p>\r\n\r\n<p><b>Significance of species</b></p>\r\n\r\n<p>There are four prime arguments for the preservation of our fellow species One is simply that compassion demands their preservation. Other products of evolution also have a right to existence. The needs and d esires of human beings are not the only basis for ethical decisions. The second point is that other species should be preserved because of their beauty, symbolic value, or intrinsic interest: the argument from esthetics. The third argument is basically economic: preserve species X because Y dollars can be derived from it. Simply, save this specific species because of its direct economic benefit to Homo sapiens. The most important reason, however, depends upon species&#39; indirect benefits. Other spec ies are living components of vital ecological systems (ecosystems) which provide humanity with indispensable free service, services whose substantial disruption would lead inevitably to a collapse of civilization.</p>\r\n\r\n<p><b>Current situation of flora</b></p>\r\n\r\n<p>In Lebanon&#39;s small territory of 10,452 Km2, nearly 2600 plant species grow in a spontaneous state. This richness of the Lebanese flora is essentially due to the general climatic conditions of the country, as well as to the multiplicity of micro-climates which favored the formations of numerous endemic species. In addition to the numerous flowers particular to Lebanon, there are species most representative of the Mediterranean basin and Western Asia. A great number of flowers were known for the first time in Lebanon and many bear its name. Rapid urbanization and the degradation of nature are threatening the disappearance of a number of reputed and well-known flowers. Consequently, the protection of certain types is essential, among which are the Royal Osmond, the Montpellier Capillary, the Sofar Iris, and the Pallas Immortal. Due to road construction, housing, and other forms of &#39;development&#39;, numerous species are being lost. In addition, the use of chemicals to remove wild vegetation growing underneath the tre es has lead to the loss of numerous species. Other plants are increasing in their place - primarily weeds and thorn bushes.</p>\r\n\r\n<p><b>Endangered mammal species</b></p>\r\n\r\n<p>The known endangered mammal species in Lebanon are listed in Table 4.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nCanis lupus pallipes (Sykes)                    wolf\r\nHerpestes ichneumon (L.)                        Egyptian mongoose\r\nFelis silvestris tristami (Poc.)                wild cat\r\nSciurus annomalus syriacus (Eh.)                squirrel\r\nLutra lutra (recently went extinct in Lebanon)  common otter\r\n</pre>\r\n\r\n<p>Table 4: Known endangered mammal species</p>\r\n\r\n<p>In addition to the wolf, the Egyptian mongoose, the wild cat, and the squirrel, numerous other mammal species in Lebanon could be endangered, and could have been reduced to less-than-viable populations. For example, bats, of which many species are native to Lebanon, possibly are endangered. In the eloquent words of Merlin Tuttle, the founder of Bat Conservati on International, &quot;caves and mines are winter bedrooms and summer nurseries for bats.&quot; Caves in Lebanon are exposed to a wide variety of pollution problems - ranging from devastating water pollution to the controversial nuclear waste problems. Furthermo re, bats are a superstitious, feared animal. On the other hand, bats are essential to keeping in balance night-flying insects, a problem to numerous agricultural crops and products. Individual bats can catch hundreds hourly, and large colonies eat tons nightly, including beetles, moths, and mosquitoes. Among the twelve bat species that are present in Lebanon are the Rousettus aegyptiacus aegyptiacus (Egyptian fruit bat), Rhinopoma microphyllum microphyllum (Greater mouse-tailed bat), Rhinolophus ferrum equinum ferrumequinum (Greater horseshoe bat), Rhinolophus hipposideros minimus (Lesser horseshoe bat), Rhinnolophus euryale judaicus (Mediterranean horseshoe bat), and the Tadarida teniotis r&uuml;pelli (European free-tailed bat)</p>\r\n\r\n<p><b>Endangered river fish</b></p>\r\n\r\n<p>The known endangered river fish in Lebanon are listed in Table 5. Once again, it is important to remember that many more species could be in endangered.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nVaricorhinus trutta (Hkl.)\r\nVaricorhinus trutta (Hkl.)\r\nPhoxinellus libani (Lor.)\r\n</pre>\r\n\r\n<p>Table 5: Known endangered river fish</p>\r\n\r\n<p>Water pollution is a key factor in the endangerment of the fish in Lebanon, and the use of explosives is an additional factor in the demise of sea creatures.</p>\r\n\r\n<p><b>Current situation of birds</b></p>\r\n\r\n<p>Lebanon is a key area for migrating birds, being both rich in number and variety of migrating birds. Millions of soaring birds, especially birds of prey, storks and pelicans, pass through or over the skies of Lebanon, especially during the autumn migration to Africa. Millions of larks migrate through the northern Beka&#39;a valley each year, where they arethen prey to the savage hunting.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nNumber of Lebanese bird species specific to the Near East and the Caspian \r\nSea                                                                     9\r\n\r\nNumber of bird species existing simultaneously in Lebanon and in Europe 218\r\n\r\nNumber of bird species nesting in Lebanon                               57\r\n\r\nNumber of birds species which would be nesting in Lebanon               11\r\n\r\nMigrating bird species in Springtime only                               39\r\n\r\nMigrating bird species in Autumn only                                   17\r\n\r\nMigrating bird species in Springtime and Autumn                         20\r\n\r\nMigrating bird species which leave Lebanon in Autumn and return in Spring \r\n                                                                        13\r\n\r\nBird species that spend the Winter in Lebanon                           36\r\n\r\nBird species that pass at least once a year through Lebanon             121\r\n</pre>\r\n\r\n<p>Table 6: Number of bird species dependent on Lebanon</p>\r\n\r\n<p>Four sites in Lebanon have been declared as important bird areas by BirdLife International: Palm islands (Jazirat el-nakhl), Ehden Forest, Barouk cedars, and Ammiq Swamp. The first three of these sites have been nominated to become national nature reserves by the United Nations protected areas proposal, which has yet to be fully approved by the Lebanese government. The fourth site, Ammiq Swamp, is the largest remaining freshwater wetland in Lebanon. Ammiq Swamp, a privately owned, yet unrestricted 280 hectare wetland, is located on the western side of the Beka&#39;a valley. The wetland formerly coveredmost of the central and western Beka&#39;a valley north up to Zahle, but has now been reduced toone tenth of its former area. Since 1970, farmers have been draining its margin to convert it to farmland. The water supply also suffers from over-extraction and div ersion for irrigation.</p>\r\n\r\n<p>&quot;Most of Lebanon can be considered as a huge &#39;bottleneck&#39; for migratory raptors and storks, therefore despite the intense shooting that populations of these birds endure in Lebanon, it would be meaningless to define any particular sites for protection in isolation. To conserve these species, wide-scale enforcement of the current hunting regulations is necessary&quot; (Evans, 1994).</p>\r\n\r\n<p><b>Endangered Bird Species</b></p>\r\n\r\n<p>Of the fifteen known endangered bird species in Lebanon, five of them are globally threatened species: the Imperial eagle, the Corncrake, the Syrian serin, the Lesser kestrel, and the Audouin&#39;s gull (Table 7). In addition, the Yellow-Legged gull has been declining for a long time: 80 pairs in 1956; 50 birds in 1973; 15 pairs in 1975; and no birds in 1993. The Yellow-Legged gull may be extinct.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nAquila heliaca                  Imperial eagle\r\nCrex crex                       Corncrake\r\nSerinus syriacus                Syrian serin\r\nFalco naumanni                  Lesser kestrel\r\nLarus audouinii                 Audouin&#39;s gul\r\nAlectoris chukar                Chukar partridge \r\nGallinago media                 Great snipe\r\nAythya nyroca                   Ferruginous duck\r\nBotaurus stellaris              Great bittern\r\nFalco cherrug                   Saker\r\nAquila pomarina                 Lesser spotted eagle\r\nLarus cachinnacs                Yellow-Legged gull\r\nPernis apivorus                 European honey buzzard\r\nGyps fulvus                     Eurasian griffon vulture\r\nAccipter brevipes 		Levant sparrowhawk\r\n</pre>\r\n\r\n<p>Table 7: Known endangered bird species</p>\r\n\r\n<p><b>Conclusion: Future Vision</b></p>\r\n\r\n<p>As nature is progressively impoverished, its ability to provide a moderate climate, cleanse air and water, recycle wastes, protect crops from pests, replenish soils... will be increasingly degraded. It is crucial, fundamental to our survival, that an intellectual revolution arise with regards to our role in nature. As the great environmentalist, scientist, and writer Rachel Carson said, &quot;we still talk in terms of conquest. We still haven&#39;t become mature enough to think in terms of ourselves as a tiny part of a vast and incredible universe.&quot;</p>\r\n\r\n<p>More specifically, three key sectors need to strengthened and altered. First, environmental education needs to be integrated into the education sys tem in Lebanon, from kindergarten through college. The fight for the protection of the environment begins with education. The new generation should be raised on the principles of respect and wonder for nature.</p>\r\n\r\n<p>Education goes hand in hand with information, and thus research is critical. Research into pollution issues, agriculture, forestry, and marine biology are all necessary, as are the installation of permanent study plots and the enhancement of our data base.</p>\r\n\r\n<p>Based upon the research, and based upon the current information, the institutional policies need to be reworked. Policies, and thus politicians and leaders, need to take the environment seriously, and laws should then be based on the integrity of the ecosystem. A holistic approach to the ecosystem is necessary in the formation of laws and policies. Ecological integrity, economic stability, and social integrity should all be considered in decision making and in the formation of laws and policies. Once educated laws are produced, they need to be enforced consistently.</p>\r\n\r\n<p>To protect the deteriorating environment in Lebanon, one should help promote a general awakening in the importance of the environment in Lebanese society. It is not simply a matter of emitting some ideas but truly making people understand, on scientific grounds, that in the absence of a concrete policy in matters of the environment, the future of the natural and socio-economic heritage of Lebanon will be compromised; the future of the coming generations will be sacrificed.</p>\r\n', '', 'Rania Masri', 9, 1, '2018-05-01 17:39:41', '2018-05-01 17:39:28'),
(12, 'Water Pollution in Lebanon', '', 'water-pollution-in-lebanon', 'rsz-adobestock-101333792-1-862x457.jpg', 'Lebanon unlike most other Middle Eastern countries is blessed with an abundant supply of annual rainfall. ', '', '<h2><span style=\"color: #3366ff;\">Untreated Sewage</span></h2>\r\n\r\n<p>One of the major contaminants of water sources in Lebanon is <a href=\"https://en.wikipedia.org/wiki/Sewage\" target=\"_blank\">untreated sewage</a>. According to a study, 70% of all fresh water sources were exposed to untreated sewage from various homes and business premises. Among this sewage were also industrial effluents. This has led to a significant microbial contamination of the water aside the significant alteration in the color of the water. This development has made most of the fresh water found in Lebanon unfit for domestic use. The northern city of Tripoli is the region with the highest reported cases of fresh water contamination. On the other hand, the <a href=\"https://en.wikipedia.org/wiki/Abraham_River\" target=\"_blank\">Nahr Ibrahim River</a> and <a href=\"https://en.wikipedia.org/wiki/Litani_River\" target=\"_blank\">Litani River</a> are regarded as the two most polluted rivers in Lebanon. Another sad incidence is the restriction of the use of the <a href=\"https://en.wikipedia.org/wiki/Lake_Qaraoun\" target=\"_blank\">Qaraoun Lake</a> for fishing because of an overwhelming presence of heavy metal from industrial effluents. Practically all rivers in Lebanon suffer the consequences of dumped industrial waste.</p>\r\n\r\n<div class=\"dt-sc-hr-invisible  \">&nbsp;</div>\r\n\r\n<h2><span style=\"color: #3366ff;\">Industrial effluent into the sea</span></h2>\r\n\r\n<p>Another type of water contamination in Lebanon is <a href=\"http://www.biosystemssa.co.za/Industrial\" target=\"_blank\">Industrial effluents</a> into the sea. According to a recent survey, it was discovered that the seawater had a high incidence of chemical contamination. A research discovered that 30% of all fish caught off the coast of Lebanon had plastic in their stomach. This is due to the illegal dumping of plastic wastes into the sea by industries. More so, a recent study concluded that plastic contaminants were encountered under water of the Lebanese shore. In addition, disposed oil from ships and wastes are also part of the causes of water pollution in Lebanon.</p>\r\n\r\n<div class=\"dt-sc-hr-invisible  \">&nbsp;</div>\r\n\r\n<h2><span style=\"color: #3366ff;\">Water pollution in Lebanon from agrochemicals</span></h2>\r\n\r\n<p>Another source of water pollution in Lebanon is the use of <a href=\"http://livinggreen.ifas.ufl.edu/landscaping/fertilizers_and_pesticides.html\" target=\"_blank\">fertilizers and pesticides</a>. Farmers in Lebanon use pesticides and fertilizers without conformity with government regulation. At a point, the government was able to put in place an effective protocol to curb the abuse of fertilizers and pesticides. However, Government efforts to regulate agricultural activities to prevent pollution suffered serious setbacks.</p>\r\n\r\n<div class=\"dt-sc-hr-invisible  \">&nbsp;</div>\r\n\r\n<h2><span style=\"color: #3366ff;\">Water pollution from improperly disposed solid waste</span></h2>\r\n\r\n<p>Another cause of water pollution in Lebanon is that <a href=\"http://www.dec.ny.gov/chemical/8732.html\" target=\"_blank\">solid waste</a> are improperly disposed into water sources. This occurrence prompted Lebanon&rsquo;s Ministry of Environment to issue a waste management directive putting an end to the use of incineration. This is because when solid wastes are incinerated, the particles remaining are carried by flood to contaminate fresh water sources when heavy rain falls. Nevertheless the robust regulation that had been instituted to combat indiscriminate disposal of solid waste was inefficient, and the practice continued. Solid wastes are still being incinerated all over the municipalities, causing water pollution when rainfalls and carrying wastes into rivers lakes and other freshwater sources.<br />\r\nAt a point, the Government suggested recycling as one of the ways of putting an end to the menace of indiscriminate dumping of solid wastes. However, the recycling initiative of the government backfired, as it became a haven of scavengers who use little children to pick up scrap of metals and plastic.</p>\r\n\r\n<div class=\"dt-sc-hr-invisible  \">&nbsp;</div>\r\n\r\n<h2><span style=\"color: #3366ff;\">Landfilling</span></h2>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Landfill\" target=\"_blank\">Landfilling</a> is another cause of water pollution in Lebanon. Lebanon produces over 150 tons of waste daily. One of the usual ways of disposing this waste is by land filling them. The consequence of this is that when rain falls, the liquid part of the waste are carried by flood to cause pollution of fresh water sources.</p>\r\n', '', 'Dr. Nagi Safa', 10, 1, '2018-05-01 17:54:26', '2018-05-01 17:42:54');

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
(12, 1, 3),
(20, 2, 4),
(19, 1, 4),
(21, 3, 5),
(32, 3, 6),
(31, 2, 7),
(30, 1, 7),
(33, 5, 9),
(34, 4, 8),
(36, 6, 10),
(38, 7, 11),
(40, 8, 12);

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
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `spot_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `ar_name`, `slug`, `photo`, `excerpt`, `ar_excerpt`, `description`, `ar_description`, `date`, `weight`, `user_id`, `spot_id`, `updated`, `created`) VALUES
(3, 'Hiking From Jounieh to Harrissa', '', 'hiking-from-jounieh-to-harrissa', '', 'The hike will begin from Jounieh to Harrisa', '', '<p>Hiking Harissa from the woods then descending by telefrique</p>\r\n\r\n<p>hikingo tean and hikers joing us on saunday 30 for a special hike to harissa.starting from Sehal Alma till Batha Deir El Kraimyin to Daroun Harissa where we end our journey by descending by a gondola lift, known as the &quot;T&eacute;l&eacute;f&eacute;rique&rdquo; to meet the bus.</p>\r\n\r\n<p><br />\r\nHarissa is a beautifully area located on the majestic Bay of Jounieh on the sea coast of the Mediterranean.<br />\r\nHarissa is a beautifully area located on the majestic Bay of Jounieh on the sea coast of the Mediterranean.</p>\r\n\r\n<p>Harissa is an important pilgrimage site high above Jounieh located at 650 meters above sea level and 20 km distance from Beyrouth the capital city, the site is accessible either by a steep winding road or a nine-minute journey by a gondola lift known as &quot;T&eacute;l&eacute;f&eacute;rique&rdquo;.<br />\r\nIt attracts both pilgrims and tourists who want to enjoy views of Jounieh.</p>\r\n\r\n<p>The pilgrimage site is a huge 15-ton bronze (and painted white) statue of Virgin Mary, known as Our Lady of Lebanon or Notre Dame du Liban, with her arms outstretched. The statue was made at the end of the 19th century and inaugurated in 1908.<br />\r\nRead more on http://www.lebtivity.com/event/hiking-harissa-with-hikingo</p>\r\n', '', '2018-05-29 08:30:00', NULL, 1, 3, '2018-05-02 10:56:00', '2018-05-01 18:30:13');

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
(20, NULL, 3, 'Spots', 'spots', '', '/spots', '', '', 1, 7, 8, '', '', NULL, NULL, '2018-04-28 12:12:20', 1, '2018-04-20 13:30:56', 1),
(21, NULL, 3, 'Events', 'events', '', '/events', '', '', 1, 9, 10, '', '', NULL, NULL, '2018-04-28 10:58:56', 1, '2018-04-20 13:31:27', 1);

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
(2, 'Skyrim', 'skyrim', '1', '1', 12, 'ROADMAP', NULL, 1, NULL, 'test map key', 1, '2018-04-19 11:31:12', '2018-04-18 19:34:25'),
(3, 'Harissa', 'harissa', '33.980339', '35.652925', 14, 'ROADMAP', NULL, 1, NULL, 'test map key', 1, '2018-05-02 10:18:49', '2018-05-02 10:18:49');

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
(6, NULL, 1, 'Home', 'home', '', '', 1, NULL, 1, 0, 0, '/node/home', '', 0, 3, 4, '', 'node', NULL, NULL, '2018-05-01 16:17:43', 1, '2018-03-12 20:40:39', 1),
(7, NULL, 0, 'hareesa', 'hareesa.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/hareesa.jpg', NULL, 0, 1, 2, NULL, 'attachment', NULL, NULL, '2018-03-17 19:01:35', 1, '2018-03-17 19:01:35', 1),
(8, NULL, 0, 'cat', 'cat.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/cat.jpg', NULL, 0, 3, 4, NULL, 'attachment', NULL, NULL, '2018-03-17 19:21:50', 1, '2018-03-17 19:21:50', 1),
(9, NULL, 0, 'tulip', 'tulip.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/tulip.jpg', NULL, 0, 5, 6, NULL, 'attachment', NULL, NULL, '2018-03-17 19:23:47', 1, '2018-03-17 19:23:47', 1),
(11, NULL, 0, 'preview', 'preview.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/preview.jpg', NULL, 0, 7, 8, NULL, 'attachment', NULL, NULL, '2018-05-01 12:17:52', 1, '2018-05-01 12:17:52', 1),
(12, NULL, 0, 'gettyimages-883483604_slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85', 'gettyimages-883483604-slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/gettyimages-883483604-slide-b3f151dfad90e80de75938605f6b60650e842c68-s800-c85.jpg', NULL, 0, 9, 10, NULL, 'attachment', NULL, NULL, '2018-05-01 16:36:10', 1, '2018-05-01 16:36:10', 1),
(13, NULL, 0, 'AirPollutionHealthEffects.jpg.653x0_q80_crop-smart', 'AirPollutionHealthEffects-jpg-653x0-q80-crop-smart.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/AirPollutionHealthEffects-jpg-653x0-q80-crop-smart.jpg', NULL, 0, 11, 12, NULL, 'attachment', NULL, NULL, '2018-05-01 16:47:19', 1, '2018-05-01 16:47:19', 1),
(14, NULL, 0, 'Jeita-grotto-940x520', 'Jeita-grotto-940x520.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/Jeita-grotto-940x520.jpg', NULL, 0, 13, 14, NULL, 'attachment', NULL, NULL, '2018-05-01 16:51:43', 1, '2018-05-01 16:51:43', 1),
(15, NULL, 0, '2-14-750x469', '2-14-750x469.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/2-14-750x469.jpg', NULL, 0, 15, 16, NULL, 'attachment', NULL, NULL, '2018-05-01 17:15:22', 1, '2018-05-01 17:15:22', 1),
(16, NULL, 0, 'Greenhouse-Effect', 'Greenhouse-Effect.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/Greenhouse-Effect.jpg', NULL, 0, 17, 18, NULL, 'attachment', NULL, NULL, '2018-05-01 17:16:43', 1, '2018-05-01 17:16:43', 1),
(17, NULL, 0, 'Greenhouse-Effect', '1525195031-Greenhouse-Effect.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/1525195031-Greenhouse-Effect.jpg', NULL, 0, 19, 20, NULL, 'attachment', NULL, NULL, '2018-05-01 17:17:11', 1, '2018-05-01 17:17:11', 1),
(18, NULL, 0, 'cortez-animal-hospital-home-hero', 'cortez-animal-hospital-home-hero.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/cortez-animal-hospital-home-hero.jpg', NULL, 0, 21, 22, NULL, 'attachment', NULL, NULL, '2018-05-01 17:22:09', 1, '2018-05-01 17:22:09', 1),
(19, NULL, 0, 'arzzzzzzzzzzzzz', 'arzzzzzzzzzzzzz.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/arzzzzzzzzzzzzz.jpg', NULL, 0, 23, 24, NULL, 'attachment', NULL, NULL, '2018-05-01 17:23:06', 1, '2018-05-01 17:23:06', 1),
(20, NULL, 0, 'limoeiro-limões', 'limoeiro-limoes.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/limoeiro-limoes.jpg', NULL, 0, 25, 26, NULL, 'attachment', NULL, NULL, '2018-05-01 17:33:42', 1, '2018-05-01 17:33:42', 1),
(21, NULL, 0, '180125071250-lebanons-trash-beaches-1-exlarge-169', '180125071250-lebanons-trash-beaches-1-exlarge-169.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/180125071250-lebanons-trash-beaches-1-exlarge-169.jpg', NULL, 0, 27, 28, NULL, 'attachment', NULL, NULL, '2018-05-01 17:36:17', 1, '2018-05-01 17:36:17', 1),
(22, NULL, 0, 'outreach', 'outreach.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/outreach.jpg', NULL, 0, 29, 30, NULL, 'attachment', NULL, NULL, '2018-05-01 17:39:20', 1, '2018-05-01 17:39:20', 1),
(23, NULL, 0, 'rsz_adobestock_101333792-1-862x457', 'rsz-adobestock-101333792-1-862x457.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/rsz-adobestock-101333792-1-862x457.jpg', NULL, 0, 31, 32, NULL, 'attachment', NULL, NULL, '2018-05-01 17:42:45', 1, '2018-05-01 17:42:45', 1),
(24, NULL, 0, '1676282', '1676282.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/1676282.jpg', NULL, 0, 33, 34, NULL, 'attachment', NULL, NULL, '2018-05-01 18:11:46', 1, '2018-05-01 18:11:46', 1),
(25, NULL, 0, '1200px-Anjar_-_Cardo_vu_du_nord_2', '1200px-Anjar-Cardo-vu-du-nord-2.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/1200px-Anjar-Cardo-vu-du-nord-2.jpg', NULL, 0, 35, 36, NULL, 'attachment', NULL, NULL, '2018-05-01 18:20:45', 1, '2018-05-01 18:20:45', 1),
(26, NULL, 0, '1200px-View_from_the_Barouk_Forest', '1200px-View-from-the-Barouk-Forest.jpg', '', NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/1200px-View-from-the-Barouk-Forest.jpg', NULL, 0, 37, 38, NULL, 'attachment', NULL, NULL, '2018-05-01 18:25:15', 1, '2018-05-01 18:25:15', 1);

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
(19, 'inside', 'inside', NULL, 7, '2017-12-14 14:00:53', 1, '2017-12-14 14:17:03', 1);

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
(6, 'Site.title', 'EcoSpots', '', '', '', 1, 1, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(7, 'Site.tagline', 'Eco Spots tagline', '', 'Footer Tagline', 'textarea', 1, 2, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(8, 'Site.email', 'info@ecospots.com', '', 'Footer Email', '', 1, 3, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
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
(26, 'Site.locale', 'eng', '', '', 'text', 1, 20, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 21, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(28, 'Comment.date_time_format', 'M d, Y', '', '', '', 1, 22, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', '', 1, 4, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(32, 'Hook.bootstraps', 'Settings,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Wysiwyg,Ckeditor,Imagine,Assets,Maps,Translate,Ecospots', '', '', '', 0, 23, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', 1),
(33, 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', 1, 24, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 25, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 26, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '\"Remember Me\" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={\"Nodes.Node\": \"Node\", \"Blocks.Block\": \"Block\", \"Menus.Menu\": \"Menu\", \"Menus.Link\": \"Link\"}', '2017-10-29 06:55:19', NULL, '2017-10-29 06:55:19', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={\"0\": \"Disabled\", \"1\": \"Enabled in debug mode only\", \"force\": \"Always enabled\"}', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(40, 'Site.admin_theme', 'AdminExtras', 'Administration Theme', '', 'text', 1, 29, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', '2017-10-29 06:55:19', NULL, '2018-05-02 10:31:15', 1),
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
(111, 'Site.Google_Map_API_Key', ' AIzaSyCQrsWDamKgcrgVqFdGkQVnnxwSuMrd7lw', 'Google Map API Key', 'Key to put in all google maps on the site', 'text', 1, 90, '', '2018-03-17 21:07:06', 1, '2018-05-02 10:31:15', 1),
(112, 'Site.phone', '+123-456-7890', '', 'Footer Phone Number', '', 1, 91, '', '2018-05-02 10:10:14', 1, '2018-05-02 10:31:15', 1),
(113, 'Site.address', 'Lebanon', '', 'Footer Address', '', 1, 92, '', '2018-05-02 10:13:01', 1, '2018-05-02 10:31:15', 1),
(114, 'Fact.environmentalists', '347', '', 'Home Page Environmentalists fact', '', 1, 93, '', '2018-05-02 10:49:34', 1, '2018-05-02 10:54:27', 1),
(115, 'Fact.funds', '22300', '', 'Home Page Funds fact', '', 1, 94, '', '2018-05-02 10:50:10', 1, '2018-05-02 10:54:27', 1);

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
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ar_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `reserve` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `spot_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`id`, `name`, `ar_name`, `slug`, `photo`, `excerpt`, `ar_excerpt`, `description`, `ar_description`, `reserve`, `featured`, `weight`, `map_id`, `spot_id`, `updated`, `created`) VALUES
(4, 'Jeita Grotto', '', 'jeita-grotto', 'Jeita-grotto-940x520.jpg', 'The Jeita Grotto is a system of two separate limestone caves spanning alength of 9 kilometres.', '', '<p><span class=\"s1\">Lebanon is a country of karst areas rich with mountains that offer spectacular scenery and scenic view and the mountainous caves are spread in different regions. In one of these regions<b> </b>in the valley of Nahr El-Kalb at 18 km North of Beirut,<b> </b>is found <b>Je&iuml;ta Grotto,</b> one of the most marvelous natural wonders in the Middle-East, in spacious greenery<b>.</b> The road leading to the caverns is carved in the mountains and surrounded with trees. The all-around nature is perfectly in tune with the site. </span></p>\r\n', '', 1, 1, 2, NULL, NULL, '2018-05-01 18:14:26', '2018-05-01 18:03:54'),
(3, 'Harissa', '', 'harissa', 'hareesa.jpg', 'Harissa is a wonderful place to enjoy an amazing view.', '', '<p>In 1908, the dream of Patriarch Elias Howayek saw the light; a Sanctuary on the name of the Virgin Mary, Our Lady of Lebanon, was launched on one of the most beautiful hills of our homeland to embrace her children of all sects and creeds.<br />\r\nBesides the spiritual, pastoral and social services provided by the Shrine, the administration decided to add this year, tourism and heritage park to welcome:</p>\r\n\r\n<ul>\r\n	<li>Families, where they find a familial restaurant with a wide outdoor playground for their kids.</li>\r\n	<li>Individuals and groups, to enjoy the calm and relaxed atmosphere redolent within a wide variety of trees and flowers.</li>\r\n</ul>\r\n', '', 0, 1, 1, 3, NULL, '2018-05-02 10:18:49', '2018-05-01 13:53:19'),
(5, 'Cedars of God', '', 'cedars-of-god', 'arzzzzzzzzzzzzz.jpg', ' In Bsharri mountain is one of the last vestiges of the extensive forests.', '', '<p><font color=\"#000080\" face=\"Arial\" size=\"2\">&nbsp; Simply known as &quot;The Cedars&quot;, this resort settlement in Lebanon&#39;s highest range is one of the most dramatically beautiful spots in the country.<br />\r\nIts centerpiece is an ancient grove of cedars, a tree synonymous for millennia with Lebanon itself.<br />\r\nJust below The Cedars is the town of Bsharre, birthplace of Gibran Khalil Gibran.<br />\r\n&nbsp;&nbsp;&nbsp; The most exciting way to get to The Cedars is from Deir al Ahmar in the Beqaa valley. The road snakes up the bare eastern slopes of Mount Lebanon presenting marvelous views at every turn. As you get higher, at the crest you look down the other side into a gigantic bowl where the ski resort, the cedar grove and the Qadisha gorge lie before you in a wide-angle panorama. Plan this route for summer or fall because snow closes the pass in winter.</font></p>\r\n', '', 1, 1, 3, NULL, NULL, '2018-05-01 18:15:32', '2018-05-01 18:06:53'),
(6, 'Balou Balaa', '', 'balou-balaa', '1676282.jpg', 'The Baatara gorge sinkhole (Balaa gorge waterfall) is a waterfall in the Tannourine, Lebanon near Balaa', '', '<p>The <b>Baatara gorge sinkhole</b> (<b>Balaa gorge waterfall</b>) is a <a href=\"https://en.wikipedia.org/wiki/Waterfall\" title=\"Waterfall\">waterfall</a> in the <a href=\"https://en.wikipedia.org/wiki/Tannourine\" title=\"Tannourine\">Tannourine</a>, <a href=\"https://en.wikipedia.org/wiki/Lebanon\" title=\"Lebanon\">Lebanon</a> near <a class=\"new\" href=\"https://en.wikipedia.org/w/index.php?title=Balaa,_Lebanon&amp;action=edit&amp;redlink=1\" title=\"Balaa, Lebanon (page does not exist)\">Balaa</a>.</p>\r\n\r\n<p>The waterfall drops 255 metres (837&nbsp;ft) into the Baatara Pothole, a cave of <a href=\"https://en.wikipedia.org/wiki/Jurassic\" title=\"Jurassic\">Jurassic</a> <a href=\"https://en.wikipedia.org/wiki/Limestone\" title=\"Limestone\">limestone</a> located on the <a href=\"https://en.wikipedia.org/wiki/Lebanon_Mountain_Trail\" title=\"Lebanon Mountain Trail\">Lebanon Mountain Trail</a>. The cave is also known as the Cave of the Three Bridges. Traveling from <a href=\"https://en.wikipedia.org/wiki/Laqlouq\" title=\"Laqlouq\">Laklouk</a> to <a href=\"https://en.wikipedia.org/wiki/Tannourine\" title=\"Tannourine\">Tannourine</a> one passes the village of Balaa, and the Three Bridges Chasm (in French <i>Gouffre des Trois Ponts</i>) is a five-minute journey into the valley below where one sees three <a class=\"mw-redirect\" href=\"https://en.wikipedia.org/wiki/Natural_bridges\" title=\"Natural bridges\">natural bridges</a>, rising one above the other and overhanging a chasm descending into <a href=\"https://en.wikipedia.org/wiki/Mount_Lebanon\" title=\"Mount Lebanon\">Mount Lebanon</a>. During the spring melt, a 90&ndash;100-metre (300&ndash;330&nbsp;ft) cascade falls behind the three bridges and then down into the 240-metre (790&nbsp;ft) chasm.</p>\r\n\r\n<p>Discovered to the western world in 1952 by French bio-<a class=\"mw-redirect\" href=\"https://en.wikipedia.org/wiki/Speleologist\" title=\"Speleologist\">speleologist</a> Henri Coiffait the waterfall and accompanying <a href=\"https://en.wikipedia.org/wiki/Sinkhole\" title=\"Sinkhole\">sinkhole</a> were fully mapped in the 1980s by the <a class=\"new\" href=\"https://en.wikipedia.org/w/index.php?title=Sp%C3%A9l%C3%A9o_club_du_Liban&amp;action=edit&amp;redlink=1\" title=\"Spéléo club du Liban (page does not exist)\">Sp&eacute;l&eacute;o club du Liban</a>. A 1988 fluorescent dye test demonstrated that the water emerged at the spring of Dalleh in <a class=\"new\" href=\"https://en.wikipedia.org/w/index.php?title=Mgharet_al-Ghaouaghir&amp;action=edit&amp;redlink=1\" title=\"Mgharet al-Ghaouaghir (page does not exist)\">Mgharet al-Ghaouaghir</a><sup class=\"reference\" id=\"cite_ref-8\"><a href=\"https://en.wikipedia.org/wiki/Baatara_gorge_waterfall#cite_note-8\">[8]</a></sup><sup class=\"reference\" id=\"cite_ref-9\"><a href=\"https://en.wikipedia.org/wiki/Baatara_gorge_waterfall#cite_note-9\">[9]</a></sup> (located near Balaa).</p>\r\n', '', 0, 1, 4, NULL, NULL, '2018-05-01 18:15:54', '2018-05-01 18:11:53'),
(7, 'Anjar', '', 'anjar', '1200px-Anjar-Cardo-vu-du-nord-2.jpg', 'The city of Anjar was founded by Caliph Walid', '', '<p>Founded during the Umayyad period under Caliph Walid Ibn Abd Al-Malak (705-715), the city of Anjar bears outstanding witness to the Umayyad civilization. Anjar is an example of an inland commercial centre, at the crossroads of two important routes: one leading from Beirut to Damascus and the other crossing the Bekaa and leading from Homs to Tiberiade. The site of this ancient city was only discovered by archaeologists at the end of the 1940s.&nbsp; Excavations revealed a fortified city surrounded by walls and flanked by forty towers, a rectangular area (385 x 350 m). Dominated by gates flanked by porticos, an important North-South axis and a lesser East-West axis, superposed above the main collectors for sewers, divide the city into four equal quadrants.&nbsp; Public and private buildings are laid out according to a strict plan: the great palace of the Caliph and the Mosque in the South-East quarter occupies the highest part of the site, while the small palaces (harems) and the baths are located in the North-East quarter to facilitate the functioning and evacuation of waste waters. Secondary functions and living quarters are distributed in the North-West and South-West quarters. The ruins are dominated by spectacular vestiges of a monumental tetrapyle, as well as by the walls and colonnades of the Umayyad palace, three levels of which have been preserved. These structures incorporate decorative or architectonical elements of the Roman era, but are also noteworthy for the exceptional plasticity of the contemporary decor within the construction.</p>\r\n\r\n<p>Anjar was never completed, enjoying only a brief existence. In 744, Caliph Ibrahim, son of Walid, was defeated and afterwards the partially destroyed city was abandoned. Vestiges of the city of Anjar therefore constitute a unique example of 8th century town planning. Built at the beginning of the Islamic period, it reflects this transition from a protobyzantine culture to the development of Islamic art and this through the evolution of construction techniques and architectonical and decorative elements that may be viewed in the different monuments.&nbsp;</p>\r\n\r\n<p>Criterion (iii): Founded during the Umayyad period under the Caliphate of Walid Ibn Abd Al-Malak at the beginning of the 8th century, the excavated vestiges of the city of Anjar, which was abandoned after a short period, provide an eminent testimony, precisely dated, of the Umayyad civilization.</p>\r\n\r\n<p>Criterion (iv): Architectural complex possessing all the true characteristics of the Umayyad civilization, the city of Anjar constitutes an outstanding example of 8th century town planning of the Umayyad caliphate. The evolution of certain protobyzantine styles towards a more developed Islamic architecture is apparent in the building techniques as well as in the architectonical and ornamental elements employed.</p>\r\n\r\n<p>Integrity (2009)&nbsp;</p>\r\n\r\n<p>The surrounding walls of Anjar incorporate all the features of town planning and the monuments that characterise the Umayyad city. Some features exist on the outskirts of the complex, such as a caravanserai, and these must be protected by a buffer zone which would also protect the visual integrity of the Bekaa Valley and limit the development of modern constructions.</p>\r\n\r\n<p>Authenticity (2009)</p>\r\n\r\n<p>Despite major restoration and reconstruction works, the different monuments comprising the Umayyad city of Anjar clearly demonstrate their functions and relations, and the overall plan of the city can easily be identified. A wider diffusion of excavation results would facilitate a better comprehension of the features.</p>\r\n\r\n<p>Protection and management requirements (2009)</p>\r\n\r\n<p>The Directorate General of Antiquities is responsible for the property. Protection of the archaeological vestiges is ensured through regular maintenance (weeding and consolidation of the structures). A management plan is under preparation. The expropriation of parcels of land adjacent to the archaeological site is ongoing to counter urban development and provide a double band of protection for the site: the first being &laquo;&nbsp;non aedificandi&quot;, and the second an area where exploitation will be minimal in order to conserve the beauty of the surrounding landscape.</p>\r\n', '', 0, 0, 5, NULL, NULL, '2018-05-01 18:21:55', '2018-05-01 18:20:55'),
(8, 'Barouk', '', 'barouk', '1200px-View-from-the-Barouk-Forest.jpg', 'Barouk Village is a village in the Chouf District of Mount Lebanon Governorate in Lebanon', '', '<p><b>Barouk Village</b> is a village in the <a href=\"https://en.wikipedia.org/wiki/Chouf_District\" title=\"Chouf District\">Chouf District</a> of <a href=\"https://en.wikipedia.org/wiki/Mount_Lebanon_Governorate\" title=\"Mount Lebanon Governorate\">Mount Lebanon Governorate</a> in <a href=\"https://en.wikipedia.org/wiki/Lebanon\" title=\"Lebanon\">Lebanon</a>. Barouk is located 52 kilometers southeast of <a href=\"https://en.wikipedia.org/wiki/Beirut\" title=\"Beirut\">Beirut</a>. Its average elevation is 1000 to 1200 meters above sea level and its total land area consists of 2,762 <a href=\"https://en.wikipedia.org/wiki/Hectare\" title=\"Hectare\">hectares</a>.The village had 5,197 registered voters in 2010. Its inhabitants are predominantly <a href=\"https://en.wikipedia.org/wiki/Druze\" title=\"Druze\">Druze</a> and <a href=\"https://en.wikipedia.org/wiki/Maronites\" title=\"Maronites\">Maronite</a> and <a class=\"mw-redirect\" href=\"https://en.wikipedia.org/wiki/Melkites\" title=\"Melkites\">Melkite</a> Christians.</p>\r\n\r\n<p>Historically, Barouk is known for being the &quot;land of good&quot;, because of its fountain, Nabeh-el-Barouk. The poet <a class=\"new\" href=\"https://en.wikipedia.org/w/index.php?title=Rachid_Nakhleh&amp;action=edit&amp;redlink=1\" title=\"Rachid Nakhleh (page does not exist)\">Rachid Nakhleh</a>, the writer of the national hymn, <i>Kulluna lel watan</i>, was born in Barouk. The village is also well-known for its apples and other fruits, and for its many pine and oak forests. Barouk is named after the adjacent mountain of Jabal el-Barouk, which stands 1,943 meters above sea level. The mountain also has the largest nature reserve in Lebanon, the <a href=\"https://en.wikipedia.org/wiki/Al_Shouf_Cedar_Nature_Reserve\" title=\"Al Shouf Cedar Nature Reserve\">Al Shouf Cedar Nature Reserve</a>, and contains the oldest <a href=\"https://en.wikipedia.org/wiki/Cedrus_libani\" title=\"Cedrus libani\">cedar</a> forest in Lebanon</p>\r\n', '', 1, 0, 6, NULL, NULL, '2018-05-01 18:26:05', '2018-05-01 18:25:24');

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
(2, 'Global Warming', '', 'global-warming', '', '', NULL, '2018-04-22 08:02:25', '2018-04-22 08:02:25'),
(3, 'Natural Reserve', '', 'natural-reserve', '', '', NULL, '2018-05-01 16:27:35', '2018-05-01 16:27:35'),
(4, 'Animal Life', '', 'animal-life', '', '', NULL, '2018-05-01 16:28:31', '2018-05-01 16:28:12'),
(5, 'Plant Life', '', 'plant-life', '', '', NULL, '2018-05-01 16:28:21', '2018-05-01 16:28:21'),
(6, 'Garbage Crisis', '', 'garbage-crisis', '', '', NULL, '2018-05-01 16:29:13', '2018-05-01 16:29:13'),
(7, 'Environmental Health', '', 'environmental-health', '', '', NULL, '2018-05-01 16:31:28', '2018-05-01 16:31:28'),
(8, 'Water Pollution', '', 'water-pollution', '', '', NULL, '2018-05-01 16:32:07', '2018-05-01 16:32:07');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;
--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `activities_spots`
--
ALTER TABLE `activities_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `animals_spots`
--
ALTER TABLE `animals_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `asset_usages`
--
ALTER TABLE `asset_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `blogs_topics`
--
ALTER TABLE `blogs_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plants_spots`
--
ALTER TABLE `plants_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `types_vocabularies`
--
ALTER TABLE `types_vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vocabularies`
--
ALTER TABLE `vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
