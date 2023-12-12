

CREATE SEQUENCE IF NOT EXISTS public.id_seq;

CREATE TABLE IF NOT EXISTS public.rental_companies (
    id BIGINT DEFAULT nextval('public.id_seq') PRIMARY KEY,
    company_name VARCHAR(45) NOT NULL,
    phone_number INT NOT NULL,
    address VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL,
    postal_code VARCHAR(45) NOT NULL);




CREATE TABLE IF NOT EXISTS public.cars (
    id BIGINT DEFAULT nextval('public.id_seq') PRIMARY KEY,
    rental_company_id BIGINT NOT NULL,
    brand VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    engine VARCHAR(45) NOT NULL,
    air_conditioning VARCHAR(45) NOT NULL,
    gearbox VARCHAR(45) NOT NULL,
    seats VARCHAR(45) NOT NULL,
    doors int NOT NULL,
    CONSTRAINT id_rental_company
    FOREIGN KEY (rental_company_id)
    REFERENCES public.rental_companies (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



CREATE TABLE IF NOT EXISTS public.clients (
    id BIGINT DEFAULT nextval('public.id_seq') PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    phone_number INT NOT NULL,
    address VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL,
    postal_code VARCHAR(45) NOT NULL);




CREATE TABLE IF NOT EXISTS public.rentings (
    id BIGINT DEFAULT nextval('public.id_seq') PRIMARY KEY,
    rental_company_id BIGINT NOT NULL,
    car_id BIGINT NOT NULL,
    client_id BIGINT NOT NULL,
    hire_date DATE NOT NULL,
    hire_place VARCHAR(45) NOT NULL,
    return_date DATE NOT NULL,
    return_place VARCHAR(45) NOT NULL,
    CONSTRAINT company_id
    FOREIGN KEY (rental_company_id)
    REFERENCES public.rental_companies (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT car_id
    FOREIGN KEY (car_id)
    REFERENCES public.cars (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT client_id
    FOREIGN KEY (client_id)
    REFERENCES public.clients (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
