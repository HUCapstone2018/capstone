CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` int(255) NOT NULL,
  `icon` varchar(255),
  `map_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;