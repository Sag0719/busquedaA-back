-- Crear tabla FlightClass
CREATE TABLE IF NOT EXISTS flight_class (
    id_flight_class integer NOT NULL DEFAULT nextval('flight_class_id_flight_class_seq'),
    extra_price integer,
    flight_class_name character varying(255),
    luggage_amount integer,
    CONSTRAINT flight_class_pkey PRIMARY KEY (id_flight_class)
);

-- Crear tabla Flight
CREATE TABLE IF NOT EXISTS flight (
    id_flight integer NOT NULL DEFAULT nextval('flight_id_flight_seq'),
    arrival_date date,
    arrival_time time without time zone,
    departure_date date,
    departure_time time without time zone,
    destination character varying(255),
    flight_code character varying(255),
    origin character varying(255),
    price integer,
    id_flight_class integer NOT NULL,
    CONSTRAINT flight_pkey PRIMARY KEY (id_flight),
    CONSTRAINT fkda2mbwcij1lbb5xb9w1v94l56 FOREIGN KEY (id_flight_class)
    REFERENCES flight_class (id_flight_class) MATCH SIMPLE
);

-- Inserción de datos en la tabla FlightClass
INSERT INTO flight_class (id_flight_class, flight_class_name, luggage_amount, extra_price) VALUES
    (1, 'Económica', 1, 0),
    (2, 'Ejecutiva', 2, 150),
    (3, 'Primera Clase', 3, 300);

-- Inserción de datos en la tabla Flight
INSERT INTO flight (id_flight, origin, destination, id_flight_class, flight_code, departure_date, arrival_date, departure_time, arrival_time, price) VALUES
    (1, 'Bogotá', 'Medellín', 1, 'BOG-MDE-001', '2024-10-20', '2024-10-20', '08:00', '09:00', 200000),
    (2, 'Medellín', 'Cartagena', 2, 'MDE-CTG-002', '2024-10-21', '2024-10-21', '10:30', '12:00', 300000),
    (3, 'Cali', 'Barranquilla', 1, 'CLO-BRQ-003', '2024-10-22', '2024-10-22', '15:00', '16:15', 250000),
    (4, 'Bogotá', 'Cali', 3, 'BOG-CLO-004', '2024-10-23', '2024-10-23', '12:00', '13:30', 400000),
    (5, 'Cartagena', 'Medellín', 2, 'CTG-MDE-005', '2024-10-24', '2024-10-24', '09:00', '10:30', 320000);
