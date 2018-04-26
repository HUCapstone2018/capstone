CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `zoom` int(2) NOT NULL DEFAULT 14,
  `type` varchar(255) NOT NULL DEFAULT 'ROADMAP',
  `language` varchar(255),
  `draggable` int(1) NOT NULL DEFAULT 1,
  `element` varchar(255) NOT NULL DEFAULT 'map',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;