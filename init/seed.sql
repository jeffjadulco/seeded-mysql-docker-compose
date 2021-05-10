CREATE SCHEMA IF NOT EXISTS `seed_db`;

USE `seed_db`;

CREATE TABLE IF NOT EXISTS `seed_db`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

START TRANSACTION;
USE `seed_db`;
INSERT INTO `seed_db`.`users` (`id`, `name`) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Cat');

COMMIT;
