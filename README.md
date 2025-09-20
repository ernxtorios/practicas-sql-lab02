# Prácticas SQL - Laboratorio 02

## Escenario
Encuentre el monto del último pedido de cada cliente junto con el monto del segundo último pedido. 

Tabla dada:
Se nos da una tabla de __orders__ con 4 columnas (order_id, customer_id, order_date, order_amount).

|  order_id  | customer_id  | order_date |  order_amount |
|------------|--------------|------------|---------------|
|  1         | 101          | 2024-01-10 |  150.00       |
|  2         | 101          | 2024-02-15 |  200.00       |
|  3         | 101          | 2024-03-20 |  180.00       |
|  4         | 102          | 2024-01-12 |  200.00       |
|  5         | 102          | 2024-02-25 |  250.00       |
|  6         | 102          | 2024-03-10 |  320.00       |
|  7         | 103          | 2024-01-25 |  400.00       |
|  8         | 103          | 2024-02-15 |  420.00       |   

Tarea:
Escribe una consulta para encontrar el importe del último pedido de cada cliente junto con el importe del segundo último pedido. 

| customer_id | last_order  | second_last_order |
|-------------|-------------|-------------------|
| 101         | 180.00      | 200.00            |
| 102         | 320.00      | 250.00            |
| 103         | 420.00      | 400.00            |


## Solución
Archivos de la solución usando una base de datos en __SQL Server__:
* 01_ddl_create_tables.sql

  Crear la tabla orders

* 02_dml_inserts.sql

  Insertar los registros del ejemplo

* 03_dql_queries.sql

  Solución
