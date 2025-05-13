
-- 1.Consulta la base de datos con la clausula select

SELECT * FROM dbo.Financiera_clean

-- 2.Consulta utlizando la clausula DISTINCT para obtener el listado de departamentos sin repetir ordenados de manera ascendente.
-- Aqui me indica hay 32 departamentos que al ordenarlos de manera ascendente comienzan por amazonas y termina en vichada.
SELECT DISTINCT DEPARTAMENTO
FROM dbo.Financiera_clean
ORDER BY DEPARTAMENTO ASC


-- 3.Consulta utlizando la clausula DISTINCT para obtener el listado de entidades financieras sin repetir ordenados de manera descendente.
-- Aqui me indica hay 50 entidades financieras que al ordenarlos de manera descendente comienzan por Tuya y termina en Arco grupo balncoldex.

SELECT DISTINCT NOMBRE_DE_LA_ENTIDAD
FROM dbo.Financiera_clean
ORDER BY NOMBRE_DE_LA_ENTIDAD DESC


-- 4.Consulta utlizando la clausula DISTINCT para obtener el listado de la fecha de corte sin repetir ordenados de manera ascendente.
-- Aqui me indica hay 14 fechas que al ordenarlas de manera ascendente indican que la fecha desde que se tiene registros en el base es desde el 31/12/2017 y finaliza el 31/03/2021.

SELECT DISTINCT FECHA_DE_CORTE
FROM dbo.Financiera_clean
ORDER BY FECHA_DE_CORTE ASC

-- 5.Consulta utlizando la clausula DISTINCT para consultar los registros unicos de retiro y deposito por entidad y departamento
-- aqui solo extrae solo los valores distintos de transacciones por entidad y departamento

SELECT DISTINCT NOMBRE_DE_LA_ENTIDAD, DEPARTAMENTO, MONTO_DEPOSITOS, MONTO_RETIROS
FROM dbo.Financiera_clean

--- 6.Consultar utilizando la clausula DISTINCT, para identificar las combinaciones unicas de cuenta de ahorro por genero

SELECT DISTINCT NRO_CTA_AHORRO_MUJERES, NRO_CTA_AHORRO_HOMBRES
FROM dbo.Financiera_clean

--  7.Consultar utilizando la clausula DISTINCT, para identificar instituciones financieras únicas que han otorgado créditos

SELECT DISTINCT NOMBRE_DE_LA_ENTIDAD
FROM dbo.Financiera_clean
WHERE NRO_CREDITO_CONSUMO_MUJERES > 0 OR NRO_CREDITO_CONSUMO_HOMBRES > 0


-- 8.Consultar utilizando la clausula DISTINCT, para verifica cuántos corresponsales están presentes en cada departamento

SELECT DISTINCT DEPARTAMENTO, NRO_CORRESPONSALES
FROM dbo.Financiera_clean
ORDER BY DEPARTAMENTO

-- 9.Consultar utilizando la clausula DISTINCT, para analiza los montos únicos de microcréditos otorgados a mujeres y hombres

SELECT DISTINCT MONTO_MICROCREDITO_MUJERES, MONTO_MICROCREDITO_HOMBRES
FROM dbo.Financiera_clean
ORDER BY MONTO_MICROCREDITO_MUJERES DESC, MONTO_MICROCREDITO_HOMBRES DESC

-- 10.Consultar utilizando la clausula DISTINCT, para mostrar solo las fechas donde hubo depósitos, eliminando duplicados.


SELECT DISTINCT FECHA_DE_CORTE
FROM dbo.Financiera_clean
WHERE MONTO_DEPOSITOS > 0
ORDER BY FECHA_DE_CORTE DESC

-- 11.Consultar utilizando la clausula DISTINCT, para identifica si hay variación de montos de retiro en diferentes departamentos

SELECT DISTINCT DEPARTAMENTO, MONTO_RETIROS
FROM dbo.Financiera_clean
ORDER BY MONTO_RETIROS DESC;

-- 12.Consultar utilizando la clausula DISTINCT, para analiza los montos únicos de credito de vivienda otorgados a mujeres y hombres

SELECT DISTINCT MONTO_CREDITO_VIVIENDA_MUJERES, MONTO_CREDITO_VIVIENDA_HOMBRES
FROM dbo.Financiera_clean
ORDER BY MONTO_CREDITO_VIVIENDA_MUJERES DESC, MONTO_CREDITO_VIVIENDA_HOMBRES DESC

