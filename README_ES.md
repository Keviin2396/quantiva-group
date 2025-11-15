**Idiomas:** Español | [English](README_EN.md)

# Quantiva Group — Plataforma de servicios BI híbrida

**Idiomas:** Español | [English](README_EN.md)

Un proyecto profesional de BI que combina un modelo relacional en SQL Server y un dashboard optimizado en Power BI, diseñado para claridad y rendimiento. La arquitectura está pensada para escalar con una capa NoSQL en MongoDB Atlas, incorporando feedback y logs en un esquema flexible con snapshots a SQL, manteniendo la estabilidad del reporte.

---

## Contexto de negocio

Quantiva Group ofrece servicios de inteligencia de negocios que convierten datos en decisiones. Entregamos información real, precisa y fácil de entender para contar historias con datos: reducimos tiempos de análisis, mejoramos la toma de decisiones y fortalecemos la sostenibilidad a largo plazo de las compañías que utilizan nuestra plataforma.

---

## Arquitectura y tecnologías

- **Core relacional:** SQL Server + SSMS (clientes, productos, ventas, segmentos, canales de contacto, regiones).
- **Visualización:** Power BI con medidas DAX y visuales seleccionados para narrativa clara.
- **Escalabilidad NoSQL (planeado):** MongoDB Atlas para feedback, logs y telemetría; snapshots periódicos hacia SQL para reporting estable.
- **Automatización (planeado):** Python para ETL, carga/snapshot y tareas programadas.

> Diagrama sugerido: docs/arquitectura.svg (SQL Server → Power BI; MongoDB Atlas → snapshots en SQL → Power BI)

---

## Componentes del dashboard

- **Tablas principales:** clientes, productos, ventas, segmentos, canales_contacto, regiones.
- **Medidas DAX clave:** País Actual, Producto Actual, Año Actual.
- **Visuales y controles:**
  - **Slicers:** por tiempo (between) y por dimensiones (país, producto, segmento).
  - **Tarjetas:** KPIs principales (ventas, unidades, satisfacción).
  - **Gráficos:** dona, barras agrupadas, columnas, líneas.
  - **Mapa coroplético:** distribución geográfica por región/país.

> Capturas:
> - docs/screenshots/dashboard-main-page.png
> - docs/screenshots/modelo-datos-sql.png
> - docs/screenshots/atlas-feedback.png (cuando se integre NoSQL)

---

### Demo interactivo
![Demo del dashboard](docs/screenshots/dashboard-demo.gif)

---

## Cómo ejecutar (paso a paso reproducible)

1. **Preparar SQL Server**
   - **Crear base:** iniciar SQL Server y abrir SSMS.
   - **Ejecutar scripts:** correr en orden los archivos:
     - sql/01_esquema.sql
     - sql/02_restricciones_indices.sql
     - sql/03_datos_regiones_productos.sql

2. **Cargar datos de ejemplo**
   - **Ventas y clientes:** incluir CSVs en data-samples/ y usar scripts de inserción o importación de SSMS (opcional).
   - **Verificar relaciones:** confirmar claves foráneas y conteos básicos de registros.

3. **Configurar Power BI**
   - **Conexión:** abrir el archivo .pbix (si aplica) o crear uno nuevo y conectar a SQL Server (DirectQuery o Import).
   - **Medidas DAX:** importar/crear las medidas de la carpeta dax/ (País Actual, Producto Actual, Año Actual).
   - **Visuales:** replicar la estructura del dashboard o cargar el modelo con las visualizaciones preconfiguradas.

4. **(Opcional) Integrar NoSQL con Atlas**
   - **Colecciones:** crear feedback_clientes y logs_soporte en Atlas (docs/screenshots/atlas-feedback.png).
   - **Snapshots a SQL:** programar una tarea futura con Python para sumarizar feedback a tablas de soporte (producto_snapshots) y consumirlas en Power BI.

5. **Validación final**
   - **KPIs:** verificar consistencia de KPIs en tarjetas.
   - **Slicers:** probar filtro de tiempo y segmentación por país/producto.
   - **Performance:** comprobar tiempos de carga y fluidez al navegar.

---

## Roadmap y versiones

- **v1.0 (actual):** Modelo relacional en SQL Server + dashboard completo en Power BI con medidas DAX.
- **v1.1 (planeado):** Integración MongoDB Atlas (feedback/logs) + snapshots hacia SQL para reporting estable.
- **v1.2 (planeado):** Automatización con Python (ETL, carga/snapshot, scheduling).
- **v1.3 (planeado):** Visuales narrativos avanzados y vistas por rol (comercial/soporte/gerencia).

---

## Licencia
Este proyecto está bajo la licencia MIT. Consulta [LICENSE.md](LICENSE.md) para más detalles.

---

## Autor y contacto

- **Autor:** Kevin Ochoa — Itagüí, Colombia  
- **LinkedIn:** www.linkedin.com/in/kevin-andres-ochoa-gallego-406519255  
- **Correo:** keviin2396@gmail.com  
- **Tecnologías:** SQL Server, SSMS, Power BI, DAX, MongoDB Atlas (planeado), Python (planeado)
