CREATE DATABASE `epic_blog` CHARACTER SET 'utf8'

CREATE TABLE `epic_blog`.`entries` (
    `id` int(255) NOT NULL AUTO_INCREMENT,
    `date` datetime UNIQUE,
    `header` varchar(255) NOT NULL,
    `content` longtext NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `epic_blog`.`comments` (
    `id` int(255) NOT NULL AUTO_INCREMENT,
    `entry_id` int(255) NOT NULL,
    `author` varchar(255) NOT NULL,
    `comment` text NOT NULL,
    `rating`int(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `epic_blog`.`tags` (
    `id` int(255) NOT NULL AUTO_INCREMENT,
    `entry_id` int(255) NOT NULL,
    `tag` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `epic_blog`.`comments` ADD `date` datetime UNIQUE;

ALTER TABLE `epic_blog`.`comments` CHANGE `rating` `rating` int(255) DEFAULT NULL;

INSERT INTO `epic_blog`.`entries` (`date`, `header`, `content`) VALUES (NOW(), 'Ура! Первая запись', 'Наконец-то в базе данных появилась первая запись.');

INSERT INTO `epic_blog`.`comments` (`date`, `entry_id`, `author`, `comment`) VALUES (NOW(), '1', 'Петр Лысоватый', 'Как долго я этого ждал!!!');

UPDATE `epic_blog`.`comments` SET `rating` = '2' WHERE `id` = '1';


