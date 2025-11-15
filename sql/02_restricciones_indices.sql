-- Restricciones e índices estratégicos / Constraints and strategic indexes

-- Índices en clientes / Indexes on clients
CREATE INDEX idx_clientes_segmento ON clientes(segmento_id);
CREATE INDEX idx_clientes_region ON clientes(region_id);

-- Índices en ventas / Indexes on sales
CREATE INDEX idx_ventas_fecha ON ventas(fecha);
CREATE INDEX idx_ventas_cliente ON ventas(cliente_id);
CREATE INDEX idx_ventas_producto ON ventas(producto_id);

-- Índices en productos / Indexes on products
CREATE INDEX idx_productos_categoria ON productos(categoria);
