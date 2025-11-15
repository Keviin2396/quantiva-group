-- Esquema base de Quantiva Group / Quantiva Group base schema
-- Tablas: clientes, productos, ventas, segmentos, canales_contacto, regiones
-- Tables: clients, products, sales, segments, contact_channels, regions

CREATE TABLE regiones (
    region_id INT PRIMARY KEY IDENTITY(1,1),
    nombre_region NVARCHAR(100) NOT NULL
);

CREATE TABLE segmentos (
    segmento_id INT PRIMARY KEY IDENTITY(1,1),
    nombre_segmento NVARCHAR(100) NOT NULL
);

CREATE TABLE canales_contacto (
    canal_id INT PRIMARY KEY IDENTITY(1,1),
    nombre_canal NVARCHAR(100) NOT NULL
);

CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(150) NOT NULL, -- Nombre del cliente / Client name
    correo NVARCHAR(150),          -- Correo electrónico / Email
    segmento_id INT,
    region_id INT,
    canal_id INT,
    CONSTRAINT fk_cliente_segmento FOREIGN KEY (segmento_id) REFERENCES segmentos(segmento_id),
    CONSTRAINT fk_cliente_region FOREIGN KEY (region_id) REFERENCES regiones(region_id),
    CONSTRAINT fk_cliente_canal FOREIGN KEY (canal_id) REFERENCES canales_contacto(canal_id)
);

CREATE TABLE productos (
    producto_id INT PRIMARY KEY IDENTITY(1,1),
    nombre_producto NVARCHAR(150) NOT NULL, -- Nombre del producto / Product name
    categoria NVARCHAR(100),                -- Categoría / Category
    precio DECIMAL(10,2) NOT NULL           -- Precio / Price
);

CREATE TABLE ventas (
    venta_id INT PRIMARY KEY IDENTITY(1,1),
    cliente_id INT NOT NULL,
    producto_id INT NOT NULL,
    fecha DATE NOT NULL,       -- Fecha de la venta / Sale date
    unidades INT NOT NULL,     -- Cantidad vendida / Units sold
    valor DECIMAL(12,2) NOT NULL, -- Valor total / Total value
    CONSTRAINT fk_venta_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    CONSTRAINT fk_venta_producto FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);
