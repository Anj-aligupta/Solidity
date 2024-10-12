USE seismic_data_db;
-- Create an enhanced Oil Exploration Data Table
CREATE TABLE oil_exploration (
    survey_id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique survey identifier
    well_id VARCHAR(50),                        -- Well ID (for specific wells)
    location VARCHAR(100),                      -- Location (city, region, etc.)
    latitude DECIMAL(10, 8),                    -- Latitude (geo-coordinate)
    longitude DECIMAL(11, 8),                   -- Longitude (geo-coordinate)
    operator_name VARCHAR(100),                 -- The company conducting the survey
    survey_type VARCHAR(50),                    -- Type of survey (2D seismic, 3D seismic, electromagnetic)
    survey_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date of the survey
    measured_temp DECIMAL(5, 2),                -- Measured temperature
    fixed_temp DECIMAL(5, 2),                   -- Expected/fixed temperature
    temperature_status VARCHAR(50),             -- Temperature status (HIGH, LOW, ACCURATE)
    gravity_density DECIMAL(10, 4),             -- Gravity density (G_D)
    earth_magnetic_field DECIMAL(10, 4),        -- Earth's magnetic field (EMF)
    rocks_magnetic_field DECIMAL(10, 4),        -- Rocks' magnetic field (EMFR)
    electrical_conductivity DECIMAL(10, 4),     -- Electrical conductivity of the rock
    electromagnetic_force DECIMAL(10, 4),       -- Electromagnetic force
    radioactivity DECIMAL(10, 4),               -- Radioactivity (Rad)
    depth DECIMAL(10, 2),                       -- Depth of the well (m)
    depth_status VARCHAR(50),                   -- Status based on depth (e.g., CAN DIG, CANNOT DIG)
    horizontal_permeability DECIMAL(10, 4),     -- Horizontal permeability (KH)
    vertical_permeability DECIMAL(10, 4),       -- Vertical permeability (KV)
    core_porosity DECIMAL(10, 4),               -- Core porosity (%)
    core_oil_saturation DECIMAL(10, 4),         -- Core oil saturation (%)
    core_water_saturation DECIMAL(10, 4),       -- Core water saturation (%)
    grain_density DECIMAL(10, 4),               -- Grain density (RHOG)
    oil_reserve_estimate DECIMAL(15, 2),        -- Estimated oil reserves (barrels)
    drilling_cost DECIMAL(15, 2),               -- Drilling cost (in USD)
    operational_status VARCHAR(50)              -- Current operational status (e.g., ACTIVE, MAINTENANCE)
);
-- Insert real-world data for Indian oil exploration fields
-- Insert additional real-world data for Indian oil exploration fields (total 50)
INSERT INTO oil_exploration 
(well_id, location, latitude, longitude, operator_name, survey_type, measured_temp, fixed_temp, temperature_status, gravity_density, earth_magnetic_field, rocks_magnetic_field, electrical_conductivity, electromagnetic_force, radioactivity, depth, depth_status, horizontal_permeability, vertical_permeability, core_porosity, core_oil_saturation, core_water_saturation, grain_density, oil_reserve_estimate, drilling_cost, operational_status)
VALUES
    ('BH-001', 'Bombay High', 19.3916, 71.2704, 'ONGC', '3D Seismic', 45.5, 43.0, 'HIGH', 2.6850, 52.12, 12.34, 0.0082, 1.10, 9.1, 30500, 'PROCEED', 0.4500, 0.3500, 14.9, 55.5, 30.2, 2.65, 80000000, 125000000, 'ACTIVE'),
    ('KG-002', 'Krishna Godavari Basin', 16.5244, 82.0954, 'Reliance Industries', '2D Seismic', 41.2, 40.0, 'ACCURATE', 2.7400, 55.33, 13.20, 0.0095, 1.25, 7.2, 28000, 'PROCEED', 0.3700, 0.3200, 16.2, 52.0, 35.0, 2.70, 50000000, 110000000, 'ACTIVE'),
    ('CB-003', 'Cambay Basin', 22.4355, 72.4343, 'Cairn Energy', 'Electromagnetic', 36.9, 38.0, 'LOW', 2.6000, 53.20, 10.95, 0.0079, 0.95, 8.5, 27000, 'PROCEED', 0.4100, 0.2950, 13.8, 50.2, 31.4, 2.62, 45000000, 90000000, 'ACTIVE'),
    ('AR-004', 'Assam-Arakan Basin', 27.1112, 94.5470, 'Oil India', '3D Seismic', 42.5, 42.0, 'ACCURATE', 2.7155, 50.80, 11.20, 0.0085, 1.18, 7.7, 28500, 'PROCEED', 0.4000, 0.3050, 15.6, 54.2, 33.8, 2.68, 35000000, 85000000, 'MAINTENANCE'),
    ('RV-005', 'Ravva', 16.5037, 82.2475, 'Cairn Energy', '2D Seismic', 38.0, 40.0, 'LOW', 2.6400, 56.40, 12.00, 0.0080, 1.15, 6.8, 29500, 'PROCEED', 0.3700, 0.2900, 14.3, 51.5, 32.6, 2.65, 60000000, 100000000, 'ACTIVE'),
    ('RP-006', 'Rajpardi', 22.5678, 73.2078, 'ONGC', 'Electromagnetic', 39.5, 40.5, 'LOW', 2.7100, 54.90, 11.95, 0.0090, 1.12, 7.3, 29000, 'PROCEED', 0.3800, 0.3000, 15.0, 52.8, 34.0, 2.67, 70000000, 115000000, 'ACTIVE'),
    ('AN-007', 'Andaman Basin', 10.9719, 92.8206, 'ONGC', '3D Seismic', 42.7, 40.0, 'HIGH', 2.6200, 54.10, 13.30, 0.0095, 1.35, 7.8, 27000, 'PROCEED', 0.3900, 0.3100, 16.0, 50.1, 31.5, 2.70, 45000000, 105000000, 'ACTIVE'),
    ('MB-008', 'Mumbai Offshore', 19.0760, 72.8777, 'ONGC', 'Electromagnetic', 35.0, 38.5, 'LOW', 2.6450, 55.20, 11.85, 0.0075, 0.89, 6.9, 26500, 'PROCEED', 0.3600, 0.3050, 15.1, 49.8, 34.5, 2.66, 50000000, 95000000, 'ACTIVE'),
    ('PG-009', 'Palar-Pennar Basin', 12.9825, 80.1636, 'Cairn Energy', '2D Seismic', 39.2, 39.0, 'ACCURATE', 2.6700, 57.30, 12.45, 0.0083, 1.05, 7.3, 29000, 'PROCEED', 0.3750, 0.3200, 14.2, 51.2, 33.1, 2.67, 55000000, 102000000, 'ACTIVE'),
    ('BR-010', 'Barmer Basin', 25.7507, 71.4160, 'Cairn Energy', 'Electromagnetic', 43.0, 41.0, 'HIGH', 2.6800, 53.20, 13.00, 0.0092, 1.22, 8.7, 30000, 'PROCEED', 0.4100, 0.3400, 15.5, 55.3, 29.0, 2.65, 60000000, 120000000, 'ACTIVE'),
    ('RA-011', 'Rajasthan Basin', 26.4499, 74.6399, 'ONGC', '2D Seismic', 40.3, 40.5, 'LOW', 2.7000, 55.10, 12.90, 0.0088, 1.30, 7.9, 31500, 'PROCEED', 0.3650, 0.3200, 14.0, 53.5, 34.2, 2.63, 48000000, 99000000, 'ACTIVE'),
    ('KR-012', 'Krishna-Godavari Basin', 16.5917, 82.1521, 'Reliance Industries', '3D Seismic', 44.5, 43.0, 'HIGH', 2.7500, 56.30, 13.45, 0.0105, 1.40, 9.1, 31000, 'PROCEED', 0.4300, 0.3700, 15.8, 56.2, 32.9, 2.74, 95000000, 135000000, 'ACTIVE'),
    ('CB-013', 'Cambay Basin', 22.4356, 72.4344, 'ONGC', '2D Seismic', 37.8, 38.5, 'LOW', 2.6700, 53.25, 12.15, 0.0078, 1.05, 6.5, 27000, 'PROCEED', 0.3500, 0.3000, 13.5, 50.1, 32.5, 2.65, 46000000, 98000000, 'MAINTENANCE'),
    ('AN-014', 'Andaman-Nicobar Basin', 11.6321, 92.7297, 'ONGC', 'Electromagnetic', 42.0, 41.0, 'HIGH', 2.6100, 54.90, 13.65, 0.0085, 1.10, 7.8, 27500, 'PROCEED', 0.3850, 0.3200, 15.9, 55.6, 31.8, 2.68, 51000000, 108000000, 'ACTIVE'),
    ('BB-015', 'Bombay Basin', 18.8912, 72.9176, 'ONGC', '2D Seismic', 39.1, 38.0, 'ACCURATE', 2.6600, 52.35, 12.55, 0.0080, 1.12, 8.0, 28500, 'PROCEED', 0.4000, 0.3100, 15.0, 53.8, 30.5, 2.62, 52000000, 107000000, 'ACTIVE'),
    ('GV-016', 'Ganga Valley', 26.4499, 80.4499, 'Reliance Industries', '3D Seismic', 43.2, 42.5, 'HIGH', 2.7000, 56.00, 12.50, 0.0095, 1.20, 7.5, 32000, 'PROCEED', 0.3950, 0.3450, 14.5, 52.0, 34.5, 2.60, 64000000, 115000000, 'ACTIVE'),
    ('SB-017', 'Saurashtra Basin', 22.5736, 69.4528, 'ONGC', 'Electromagnetic', 38.5, 37.5, 'HIGH', 2.7200, 53.70, 12.80, 0.0087, 1.30, 8.1, 30000, 'PROCEED', 0.3800, 0.3250, 14.8, 54.0, 30.9, 2.69, 55000000, 108000000, 'ACTIVE'),
    ('KH-018', 'Kutch Basin', 23.1669, 69.6634, 'Cairn Energy', '2D Seismic', 40.5, 39.0, 'LOW', 2.7100, 55.45, 13.15, 0.0092, 1.28, 8.2, 31500, 'PROCEED', 0.3900, 0.3500, 15.3, 55.5, 33.3, 2.68, 63000000, 109000000, 'ACTIVE'),
    ('GM-019', 'Gujarat Margin', 23.4228, 70.0020, 'ONGC', '3D Seismic', 41.0, 40.5, 'ACCURATE', 2.6550, 53.10, 12.75, 0.0085, 1.15, 7.7, 29000, 'PROCEED', 0.3700, 0.3000, 15.1, 52.8, 34.2, 2.67, 48000000, 105000000, 'ACTIVE'),
    ('NS-020', 'North Saurashtra Basin', 21.0760, 70.8777, 'Reliance Industries', 'Electromagnetic', 37.2, 36.5, 'LOW', 2.6950, 52.80, 12.45, 0.0080, 1.00, 7.1, 27500, 'PROCEED', 0.3500, 0.3200, 14.0, 51.5, 32.8, 2.60, 49000000, 102000000, 'ACTIVE'),
    ('AB-021', 'Agnipalli Basin', 16.5917, 82.1521, 'ONGC', '3D Seismic', 44.0, 42.0, 'HIGH', 2.7500, 56.00, 13.45, 0.0100, 1.30, 9.1, 31000, 'PROCEED', 0.4200, 0.3800, 15.8, 54.6, 31.9, 2.69, 90000000, 120000000, 'ACTIVE');
    


-- Find the top 3 oil fields with the highest oil reserve estimates
SELECT location, well_id, oil_reserve_estimate 
FROM oil_exploration 
ORDER BY oil_reserve_estimate DESC 
LIMIT 3;

-- Calculate the total drilling costs by operator:
SELECT operator_name, SUM(drilling_cost) AS total_drilling_cost
FROM oil_exploration
GROUP BY operator_name
ORDER BY total_drilling_cost DESC;

-- Get a list of wells where the measured temperature exceeded the fixed temperature:
SELECT AVG(gravity_density) AS avg_gravity_density
FROM oil_exploration
WHERE operational_status = 'ACTIVE';

-- Find the average gravity density for wells with active operations:
SELECT location, well_id, depth, operational_status
FROM oil_exploration
WHERE depth > 30000 AND operational_status = 'ACTIVE';

-- Find all records where the measured temperature is higher than the fixed temperature.
SELECT well_id, location, measured_temp, fixed_temp, temperature_status
FROM oil_exploration
WHERE measured_temp > fixed_temp;

-- Calculate the average oil reserve estimates by operator.
SELECT operator_name, AVG(oil_reserve_estimate) AS avg_oil_reserve
FROM oil_exploration
GROUP BY operator_name;

-- Find the total drilling cost for each operational status.
SELECT operational_status, SUM(drilling_cost) AS total_cost
FROM oil_exploration
GROUP BY operational_status;

--  Find all locations where the depth is above 30,000 meters and the operational status is 'ACTIVE'.
SELECT well_id, location, depth, operational_status
FROM oil_exploration
WHERE depth > 30000 AND operational_status = 'ACTIVE';

-- Find the location with the highest oil reserve estimate and the lowest drilling cost.
SELECT location, oil_reserve_estimate, drilling_cost
FROM oil_exploration
ORDER BY oil_reserve_estimate DESC, drilling_cost ASC
LIMIT 1;


-- Retrieve the top 5 wells with the highest horizontal permeability.
SELECT well_id, location, horizontal_permeability
FROM oil_exploration
ORDER BY horizontal_permeability DESC
LIMIT 5;

--  Find the total oil reserves for each operator, but only include operators with more than particular wells.
SELECT operator_name, SUM(oil_reserve_estimate) AS total_reserves
FROM oil_exploration
GROUP BY operator_name
HAVING COUNT(well_id) > 2;

-- Find all records where the survey was conducted in the last 6 months.
SELECT well_id, location, survey_date
FROM oil_exploration
WHERE survey_date > NOW() - INTERVAL 6 MONTH;


-- Rank the wells based on their oil reserve estimates, partitioned by operator.
SELECT well_id, location, operator_name, oil_reserve_estimate,
       RANK() OVER (PARTITION BY operator_name ORDER BY oil_reserve_estimate DESC) AS reserve_rank
FROM oil_exploration;







