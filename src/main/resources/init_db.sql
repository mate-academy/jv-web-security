SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers`  (
                            `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `license_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `deleted` bit(1) NOT NULL DEFAULT b'0',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
                                  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
                                  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  `deleted` bit(1) NOT NULL DEFAULT b'0',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
                         `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
                         `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `manufacturer_id` bigint(0) UNSIGNED NOT NULL,
                         `deleted` bit(1) NOT NULL DEFAULT b'0',
                         PRIMARY KEY (`id`) USING BTREE,
                         INDEX `FK_manufacturer_id`(`manufacturer_id`) USING BTREE,
                         CONSTRAINT `FK_manufacturer_id` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cars_drivers
-- ----------------------------
DROP TABLE IF EXISTS `cars_drivers`;
CREATE TABLE `cars_drivers`  (
                                 `car_id` bigint(0) UNSIGNED NOT NULL,
                                 `driver_id` bigint(0) UNSIGNED NOT NULL,
                                 PRIMARY KEY (`car_id`, `driver_id`) USING BTREE,
                                 INDEX `driver_id`(`driver_id`) USING BTREE,
                                 INDEX `car_id`(`car_id`) USING BTREE,
                                 CONSTRAINT `car_id` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                 CONSTRAINT `driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `taxi`.`manufacturers` (`name`, `country`) VALUES ('Ford', 'USA');
INSERT INTO `taxi`.`manufacturers` (`name`, `country`) VALUES ('Maserati', 'Italy');
INSERT INTO `taxi`.`manufacturers` (`name`, `country`) VALUES ('Mazda', 'Japan');
INSERT INTO `taxi`.`manufacturers` (`name`, `country`) VALUES ('McLaren', 'England');
INSERT INTO `taxi`.`manufacturers` (`name`, `country`) VALUES ('Mercedes-Benz', 'Jermany');

INSERT INTO `taxi`.`drivers` (`name`, `license_number`) VALUES ('Dopinder', 'MH1420110062821');
INSERT INTO `taxi`.`drivers` (`name`, `license_number`) VALUES ('Johny English', 'RT1939473219432');
INSERT INTO `taxi`.`drivers` (`name`, `license_number`) VALUES ('Daniel', 'TY3829104372431');
INSERT INTO `taxi`.`drivers` (`name`, `license_number`) VALUES ('Baby', 'OI9304127473244');
INSERT INTO `taxi`.`drivers` (`name`, `license_number`) VALUES ('Dominic', 'DG9432103471241');

INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('Focus', '1');
INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('Capri', '1');
INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('Levante', '2');
INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('RX-8', '3');
INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('MX-5', '3');
INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('600LT Spider', '4');
INSERT INTO `taxi`.`cars` (`model`, `manufacturer_id`) VALUES ('Maybach', '5');

INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (1, 1);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (1, 3);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (2, 3);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (2, 2);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (3, 4);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (4, 4);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (4, 5);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (5, 2);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (5, 5);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (6, 5);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (7, 4);
INSERT INTO taxi.cars_drivers (`car_id`, `driver_id`) VALUES (7, 5);

ALTER TABLE `taxi`.`drivers`
    ADD COLUMN `login` VARCHAR(45) NOT NULL DEFAULT 'default' AFTER `deleted`,
ADD COLUMN `password` VARCHAR(45) NOT NULL DEFAULT 'password' AFTER `login`;

UPDATE `taxi`.`drivers` SET `login` = 'dop', `password` = '322' WHERE (`id` = '1');
UPDATE `taxi`.`drivers` SET `login` = 'johny', `password` = 'english' WHERE (`id` = '2');
UPDATE `taxi`.`drivers` SET `login` = 'dan', `password` = 'france' WHERE (`id` = '3');
UPDATE `taxi`.`drivers` SET `login` = 'baby', `password` = 'baby' WHERE (`id` = '4');
UPDATE `taxi`.`drivers` SET `login` = 'dom', `password` = 'family' WHERE (`id` = '5');

ALTER TABLE `taxi`.`drivers`
DROP PRIMARY KEY,
ADD PRIMARY KEY USING BTREE (`id`, `login`);
