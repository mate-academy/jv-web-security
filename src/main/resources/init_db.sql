DROP TABLE IF EXISTS public.cars_drivers;
DROP TABLE IF EXISTS public.manufacturers;
DROP TABLE IF EXISTS public.cars;
DROP TABLE IF EXISTS public.drivers;

CREATE TABLE IF NOT EXISTS public.drivers
(
    id bigserial,
    password character varying(255) NOT NULL,
    login character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    license_number character varying(255) NOT NULL,
    is_deleted boolean NOT NULL DEFAULT 'false',
    CONSTRAINT drivers_pkey PRIMARY KEY (id),
    CONSTRAINT login_unique UNIQUE (login)
    );

CREATE TABLE IF NOT EXISTS public.manufacturers
(
    id bigserial,
    name character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    is_deleted boolean NOT NULL DEFAULT 'false',
    CONSTRAINT manufacturers_pkey PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS public.cars
(
    id bigserial,
    model character varying(255) NOT NULL,
    manufacturer_id bigint NOT NULL,
    is_deleted boolean NOT NULL DEFAULT 'false',
    CONSTRAINT cars_pkey PRIMARY KEY (id),
    CONSTRAINT manufacturer_id_fk FOREIGN KEY (manufacturer_id)
    REFERENCES public.manufacturers (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    );

CREATE TABLE IF NOT EXISTS public.cars_drivers
(
    car_id bigint NOT NULL,
    driver_id bigint NOT NULL,
    CONSTRAINT cars_drivers_car_id_driver_id_key UNIQUE (car_id, driver_id),
    CONSTRAINT car_id_fk FOREIGN KEY (car_id)
    REFERENCES public.cars (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
    CONSTRAINT driver_id_fk FOREIGN KEY (driver_id)
    REFERENCES public.drivers (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    );
