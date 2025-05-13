
-- 1.Consulta de la base de datos utilizando la consulta Select

SELECT count(*) FROM dbo.Financiera_clean

---    USO DE LA CLAUSULA MIN 

--  2.Consulta uso de la clausula MIN, para identifica los depósitos y retiros más bajos en la base de datos.

SELECT 
    MIN(MONTO_DEPOSITOS) AS Deposito_Minimo,
    MIN(MONTO_RETIROS) AS Retiro_Minimo
FROM dbo.Financiera_clean

--  3.Consulta uso de la clausula MIN, para identificar el saldo más bajo en las cuentas de ahorro activas mayores a 0.

SELECT 
    MIN(SALDO_CTA_AHORRO_ACTIVAS) AS Saldo_Minimo_Cuentas_Ahorro
FROM dbo.Financiera_clean
WHERE SALDO_CTA_AHORRO_ACTIVAS >0

--  4.Consulta uso de la clausula MIN, para identifica los montos más bajos otorgados en créditos por género.

SELECT 
    MIN(MONTO_CREDITO_CONSUMO_MUJERES) AS Min_Credito_Consumo_Mujeres,
    MIN(MONTO_CREDITO_CONSUMO_HOMBRES) AS Min_Credito_Consumo_Hombres,
    MIN(MONTO_CREDITO_VIVIENDA_MUJERES) AS Min_Credito_Vivienda_Mujeres,
    MIN(MONTO_CREDITO_VIVIENDA_HOMBRES) AS Min_Credito_Vivienda_Hombres
FROM dbo.Financiera_clean

--  5.Consulta uso de la clausula MIN, para mirar el microcrédito más pequeño registrado mayores a 0.

SELECT 
    MIN(MONTO_MICROCREDITO_MUJERES) AS Min_Microcredito_Mujeres,
    MIN(MONTO_MICROCREDITO_HOMBRES) AS Min_Microcredito_Hombres
FROM dbo.Financiera_clean
WHERE MONTO_MICROCREDITO_MUJERES >0 and MONTO_MICROCREDITO_HOMBRES >0

--  6.Consulta uso de la clausula MIN, para mirar en que departamento hay menos corresponsales bancarios

SELECT 
    DEPARTAMENTO, 
    MIN(NRO_CORRESPONSALES) AS Min_Corresponsales
FROM dbo.Financiera_clean
GROUP BY DEPARTAMENTO
ORDER BY Min_Corresponsales ASC


---    USO DE LA CLAUSULA MAX

--  1.Consulta uso de la clausula MAX, para identifica los depósitos y retiros más altos registrados.

SELECT 
    MAX(MONTO_DEPOSITOS) AS Deposito_Maximo,
    MAX(MONTO_RETIROS) AS Retiro_Maximo
FROM dbo.Financiera_clean


--  2.Consulta uso de la clausula MAX, para mirar la fecha más reciente de las transacciones en la base.

SELECT MAX(FECHA_DE_CORTE) AS Fecha_Mas_Reciente
FROM dbo.Financiera_clean

--  3.Consulta uso de la clausula MAX, identificar el saldo más alto registrado en las cuentas de ahorro activas.

SELECT 
    MAX(SALDO_CTA_AHORRO_ACTIVAS) AS Saldo_Maximo_Cuentas_Ahorro
FROM dbo.Financiera_clean

--  4.Consulta uso de la clausula MAX, identifica cual ha sido el crédito más alto otorgado a hombres y mujeres.

SELECT 
    MAX(MONTO_CREDITO_CONSUMO_MUJERES) AS Max_Credito_Consumo_Mujeres,
    MAX(MONTO_CREDITO_CONSUMO_HOMBRES) AS Max_Credito_Consumo_Hombres,
    MAX(MONTO_CREDITO_VIVIENDA_MUJERES) AS Max_Credito_Vivienda_Mujeres,
    MAX(MONTO_CREDITO_VIVIENDA_HOMBRES) AS Max_Credito_Vivienda_Hombres
FROM dbo.Financiera_clean

-- 5.Consulta uso de la clausula MAX, para identificar en qué departamento hay más corresponsales bancarios.

SELECT 
    DEPARTAMENTO, 
    MAX(NRO_CORRESPONSALES) AS Max_Corresponsales
FROM dbo.Financiera_clean
GROUP BY DEPARTAMENTO
ORDER BY Max_Corresponsales DESC

-- 6.Consulta uso de la clausula MAX, para identificar la última fecha en la que se registro un depósito.

SELECT MAX(FECHA_DE_CORTE) AS Fecha_Ultimo_Deposito
FROM dbo.Financiera_clean
WHERE MONTO_DEPOSITOS > 0























