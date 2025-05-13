
--- 1.Consulta a la base de datos

SELECT *
FROM dbo.Financiera_clean

--   USO DE LA CLAUSULA SUM 

--- 2.Consulto utilizando la clausula SUM, para mostrar el monto total de depósitos y retiros en la base de datos

SELECT 
    SUM(MONTO_DEPOSITOS) AS Total_Depositos,
    SUM(MONTO_RETIROS) AS Total_Retiros
FROM dbo.Financiera_clean

-- 3.Consulto utilizando la clausula SUM, para identificar qué departamentos tienen mayor actividad financiera.


SELECT 
    DEPARTAMENTO, 
    SUM(MONTO_DEPOSITOS) AS Total_Depositos, 
    SUM(MONTO_RETIROS) AS Total_Retiros
FROM dbo.Financiera_clean
GROUP BY DEPARTAMENTO
ORDER BY Total_Depositos DESC

-- 4.Consulto utilizando la clausula SUM, para  comparar la distribución de créditos entre hombres y mujeres.

SELECT 
    SUM(NRO_CREDITO_CONSUMO_MUJERES) AS Total_Creditos_Consumo_Mujeres,
    SUM(NRO_CREDITO_CONSUMO_HOMBRES) AS Total_Creditos_Consumo_Hombres,
    SUM(NRO_CREDITO_VIVIENDA_MUJERES) AS Total_Creditos_Vivienda_Mujeres,
    SUM(NRO_CREDITO_VIVIENDA_HOMBRES) AS Total_Creditos_Vivienda_Hombres
FROM dbo.Financiera_clean

-- 5.Consulto utilizando la clausula SUM, para conocer la cantidad de dinero acumulado en cuentas de ahorro activas.

SELECT 
    SUM(SALDO_CTA_AHORRO_ACTIVAS) AS Saldo_Total_Cuentas_Ahorro
FROM dbo.Financiera_clean

-- 6.Consulto utilizando la clausula SUM, para identificar que entidades financieras manejan mayor volumen de transacciones.

SELECT 
    NOMBRE_DE_LA_ENTIDAD, 
    SUM(MONTO_DEPOSITOS) AS Total_Depositos, 
    SUM(MONTO_RETIROS) AS Total_Retiros
FROM dbo.Financiera_clean
GROUP BY NOMBRE_DE_LA_ENTIDAD
ORDER BY Total_Depositos DESC

---     USO DE LA CLAUSULA COUNT

-- 1.Consulto utilizando la clausula COUNT, para mostrar el número total de filas en la tabla.

SELECT COUNT(*) AS Total_Registros
FROM dbo.Financiera_clean

-- 2.Consulto utilizando la clausula COUNT, para mostrar la cantidad de transacciones en cada departamento.

SELECT DEPARTAMENTO, COUNT(*) AS Total_Transacciones
FROM dbo.Financiera_clean
GROUP BY DEPARTAMENTO
ORDER BY Total_Transacciones DESC

-- 3.Consulto utilizando la clausula COUNT, para mostrar la cantidad de registros de depósitos y retiros por fecha

SELECT FECHA_DE_CORTE, COUNT(*) AS Total_Transacciones
FROM dbo.Financiera_clean
GROUP BY FECHA_DE_CORTE
ORDER BY FECHA_DE_CORTE DESC

-- 4.Consulto utilizando la clausula COUNT, para ver cuántos créditos han sido otorgados por género


SELECT 
    COUNT(NRO_CREDITO_CONSUMO_MUJERES) AS Total_Creditos_Consumo_Mujeres,
    COUNT(NRO_CREDITO_CONSUMO_HOMBRES) AS Total_Creditos_Consumo_Hombres,
    COUNT(NRO_CREDITO_VIVIENDA_MUJERES) AS Total_Creditos_Vivienda_Mujeres,
    COUNT(NRO_CREDITO_VIVIENDA_HOMBRES) AS Total_Creditos_Vivienda_Hombres
FROM dbo.Financiera_clean


-- 5.Consulto utilizando la clausula COUNT, para ver la cantidad de registros en los que se realizaron depósitos

SELECT COUNT(*) AS Total_Depositos
FROM dbo.Financiera_clean
WHERE MONTO_DEPOSITOS > 0












