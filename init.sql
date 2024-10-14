-- Crear tabla FlightClass
CREATE TABLE FlightClass (
                             idFlightClass SERIAL PRIMARY KEY,
                             flightClassName VARCHAR(50),
                             luggageAmount INT,
                             extraPrice INT
);

-- Crear tabla Flight
CREATE TABLE Flight (
                        idFlight SERIAL PRIMARY KEY,
                        origin VARCHAR(100),
                        destination VARCHAR(100),
                        flightClass INT REFERENCES FlightClass(idFlightClass),
                        flightCode VARCHAR(20),
                        departureDate DATE,
                        arrivalDate DATE,
                        departureTime TIME,
                        arrivalTime TIME,
                        price INT
);


-- Inserción de datos en la tabla FlightClass
INSERT INTO FlightClass (idFlightClass, flightClassName, luggageAmount, extraPrice) VALUES
                                                                                        (1, 'Económica', 1, 0),
                                                                                        (2, 'Ejecutiva', 2, 150),
                                                                                        (3, 'Primera Clase', 3, 300);

-- Inserción de datos en la tabla Flight
INSERT INTO Flight (idFlight, origin, destination, id_flight_class, flightCode, departureDate, arrivalDate, departureTime, arrivalTime, price) VALUES
                                                                                                                                                                           (1, 'Bogotá', 'Medellín', 1, 'BOG-MDE-001', '2024-10-20', '2024-10-20', '08:00', '09:00', 200000),
                                                                                                                                                                           (2, 'Medellín', 'Cartagena', 2, 'MDE-CTG-002', '2024-10-21', '2024-10-21', '10:30', '12:00', 300000),
                                                                                                                                                                           (3, 'Cali', 'Barranquilla', 1, 'CLO-BRQ-003', '2024-10-22', '2024-10-22', '15:00', '16:15', 250000),
                                                                                                                                                                           (4, 'Bogotá', 'Cali', 3, 'BOG-CLO-004', '2024-10-23', '2024-10-23', '12:00', '13:30', 400000),
                                                                                                                                                                           (5, 'Cartagena', 'Medellín', 2, 'CTG-MDE-005', '2024-10-24', '2024-10-24', '09:00', '10:30', 320000);
