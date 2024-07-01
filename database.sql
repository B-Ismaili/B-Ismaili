CREATE DATABASE registered_vehicles1;

USE registered_vehicles1;

CREATE TABLE vehicle_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model_name VARCHAR(255) NOT NULL
);

CREATE TABLE vehicle_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(255) NOT NULL
);

CREATE TABLE fuel_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fuel_name VARCHAR(255) NOT NULL
);

CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_model_id INT NOT NULL,
    vehicle_type_id INT NOT NULL,
    chassis_number VARCHAR(50) UNIQUE,
    production_year INT NOT NULL,
    registration_number VARCHAR(50) NOT NULL,
    fuel_type_id INT NOT NULL,
    registration_to DATE NOT NULL,
    FOREIGN KEY (vehicle_model_id) REFERENCES vehicle_models(id),
    FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_types(id),
    FOREIGN KEY (fuel_type_id) REFERENCES fuel_types(id)
);

CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);


ALTER TABLE vehicles
ADD COLUMN vehicle_model_id INT NOT NULL,
ADD COLUMN vehicle_type_id INT NOT NULL,
ADD COLUMN chassis_number VARCHAR(50) UNIQUE,
ADD COLUMN production_year INT NOT NULL,
ADD COLUMN registration_number VARCHAR(50),
ADD COLUMN fuel_type_id INT NOT NULL,
ADD COLUMN registration_to DATE;

ALTER TABLE vehicles
ADD FOREIGN KEY (vehicle_model_id) REFERENCES vehicle_models(id),
ADD FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_types(id),
ADD FOREIGN KEY (fuel_type_id) REFERENCES fuel_types(id);

CREATE TABLE registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    registration_to DATE NOT NULL

);



INSERT INTO vehicle_models (model_name) VALUES ('Audi'), ('BMW'), ('M');
INSERT INTO vehicle_types (type_name) VALUES ('Sedan'), ('Coupe'), ('SUV');
INSERT INTO fuel_types (fuel_name) VALUES ('Gasoline'), ('Diesel'), ('Electric');


SELECT * FROM vehicles;

DELETE FROM vehicles
WHERE vehicle_model_id NOT IN (SELECT id FROM vehicle_models)
   OR vehicle_type_id NOT IN (SELECT id FROM vehicle_types)
   OR fuel_type_id NOT IN (SELECT id FROM fuel_types);

   ALTER TABLE vehicles
ADD CONSTRAINT fk_vehicle_model FOREIGN KEY (vehicle_model_id) REFERENCES vehicle_models(id),
ADD CONSTRAINT fk_vehicle_type FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_types(id),
ADD CONSTRAINT fk_fuel_type FOREIGN KEY (fuel_type_id) REFERENCES fuel_types(id);

INSERT INTO vehicle_models (model_name) VALUES
('Model A'),
('Model B'),
('Model C');


-- Drop the existing registrations table if it exists (optional, use with caution)
DROP TABLE IF EXISTS registrations;

-- Create the registrations table
CREATE TABLE registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_model_id INT,
    vehicle_type_id INT,
    vehicle_chassis_number VARCHAR(100),
    vehicle_production_year INT,
    registration_number VARCHAR(50),
    fuel_type_id INT,
    registration_to DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (vehicle_model_id) REFERENCES vehicle_models(id),
    FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_types(id),
    FOREIGN KEY (fuel_type_id) REFERENCES fuel_types(id)
);

-- Insert sample data into registrations table
INSERT INTO registrations (vehicle_model_id, vehicle_type_id, vehicle_chassis_number, vehicle_production_year, registration_number, fuel_type_id, registration_to)
VALUES
    (1, 1, 'ABC123456789', 2022, 'SK123', 1, '2024-06-30'),
    (2, 2, 'XYZ987654321', 2021, 'OH456', 2, '2023-12-31'),
    (3, 3, 'DEF567891234', 2023, 'BT789', 3, '2025-03-15');

