-- CREATE DATABASE taxi
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     CONNECTION LIMIT = -1;
-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS drivers;
CREATE TABLE IF NOT EXISTS drivers
(
    id              BIGSERIAL    NOT NULL,
    name            VARCHAR(255) NOT NULL,
    license_number  VARCHAR(255) NOT NULL,
    login           VARCHAR(255) NOT NULL,
    password        VARCHAR(255) NOT NULL,
    is_deleted      boolean DEFAULT false,
    PRIMARY KEY (id) USING BTREE
);
-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS manufacturers;
CREATE TABLE IF NOT EXISTS manufacturers
(
    id         BIGSERIAL    NOT NULL,
    name       VARCHAR(255) NOT NULL,
    country    VARCHAR(255) NOT NULL,
    is_deleted boolean DEFAULT false,
    PRIMARY KEY (id) USING BTREE
);
-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars
(
    id              BIGSERIAL   NOT NULL,
    model           VARCHAR(255) NOT NULL,
    manufacturer_id BIGINT      NOT NULL,
    is_deleted      boolean DEFAULT false,
    PRIMARY KEY (id) USING BTREE,
    CONSTRAINT cars_manufacturer_fk
        FOREIGN KEY (manufacturer_id) REFERENCES manufacturers (id)
            ON DELETE RESTRICT
            ON UPDATE RESTRICT
);
-- ----------------------------
-- Table structure for cars_drivers
-- ----------------------------
DROP TABLE IF EXISTS cars_drivers;
CREATE TABLE IF NOT EXISTS cars_drivers
(
    car_id    BIGSERIAL NOT NULL,
    driver_id BIGSERIAL NOT NULL,
    PRIMARY KEY (car_id) USING BTREE,
    CONSTRAINT cars_drivers_cars_fk FOREIGN KEY (car_id) REFERENCES cars (id) USING BTREE,
    CONSTRAINT cars_drivers_driver_fk FOREIGN KEY (driver_id) REFERENCES drivers (id) USING BTREE
);
