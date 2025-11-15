-- Datos semilla de regiones / Seed data for regions
INSERT INTO regiones (nombre_region) VALUES
('Latinoamérica'), ('Norteamérica'), ('Europa'), ('Asia');

-- Datos semilla de segmentos / Seed data for segments
INSERT INTO segmentos (nombre_segmento) VALUES
('Corporativo'), ('PyME'), ('Individual');

-- Datos semilla de canales de contacto / Seed data for contact channels
INSERT INTO canales_contacto (nombre_canal) VALUES
('Email'), ('Teléfono'), ('Web'), ('Presencial');

-- Datos semilla de productos / Seed data for products
INSERT INTO productos (nombre_producto, categoria, precio) VALUES
('Suite Premium', 'Software', 1200.00),
('Análisis Predictivo', 'Consultoría', 800.00),
('Soporte 24/7', 'Servicio', 500.00),
('Auditoría', 'Consultoría', 600.00),
('Visualización Avanzada', 'Software', 900.00),
('Capacitación', 'Servicio', 400.00);
