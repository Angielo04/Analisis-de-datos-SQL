
-- 1.Consulta base de datos
USE Financiera_clean

SELECT count(*) 
FROM dbo.Financiera_clean

---     USO DE LA CLAUSULA AVG

--- 2.Consulto utilizando la clausula AVG, para determina el monto promedio de depósitos y retiros en la base de datos.

SELECT 
    AVG(MONTO_DEPOSITOS) AS Promedio_Depositos,
    AVG(MONTO_RETIROS) AS Promedio_Retiros
FROM dbo.Financiera_clean


--- 3.Consulto utilizando la clausula AVG, para calcular el saldo promedio de las cuentas de ahorro activas.

SELECT 
    AVG(SALDO_CTA_AHORRO_ACTIVAS) AS Promedio_Saldo_Ahorro_Activas
FROM dbo.Financiera_clean

--- 4.Consulto utilizando la clausula AVG, para comparar los montos promedio de crédito otorgados a mujeres y hombres.

SELECT 
    AVG(MONTO_CREDITO_CONSUMO_MUJERES) AS Promedio_Credito_Consumo_Mujeres,
    AVG(MONTO_CREDITO_CONSUMO_HOMBRES) AS Promedio_Credito_Consumo_Hombres,
    AVG(MONTO_CREDITO_VIVIENDA_MUJERES) AS Promedio_Credito_Vivienda_Mujeres,
    AVG(MONTO_CREDITO_VIVIENDA_HOMBRES) AS Promedio_Credito_Vivienda_Hombres
FROM dbo.Financiera_clean

--- 5.Consulto utilizando la clausula AVG, para mostrar el monto promedio de los microcréditos otorgados.

SELECT 
    AVG(MONTO_MICROCREDITO_MUJERES) AS Promedio_Microcredito_Mujeres,
    AVG(MONTO_MICROCREDITO_HOMBRES) AS Promedio_Microcredito_Hombres
FROM dbo.Financiera_clean

--- 6.Consulto utilizando la clausula AVG, para calcular el promedio de corresponsales en cada departamento.

SELECT 
    DEPARTAMENTO, 
    AVG(NRO_CORRESPONSALES) AS Promedio_Corresponsales
FROM dbo.Financiera_clean
GROUP BY DEPARTAMENTO
ORDER BY Promedio_Corresponsales DESC

--- 7.Consulto utilizando la clausula AVG, para evaluar si hay diferencias significativas en los saldos de ahorro por género.

SELECT 
    AVG(SALDO_CTA_AHORRO_MUJERES) AS Promedio_Saldo_Mujeres,
    AVG(SALDO_CTA_AHORRO_HOMBRES) AS Promedio_Saldo_Hombres
FROM dbo.Financiera_clean

--- 8.Consulto utilizando la clausula AVG, para moestrar el promedio de depósitos y retiros gestionados por cada entidad financiera.

SELECT 
    NOMBRE_DE_LA_ENTIDAD, 
    AVG(MONTO_DEPOSITOS) AS Promedio_Depositos, 
    AVG(MONTO_RETIROS) AS Promedio_Retiros
FROM dbo.Financiera_clean
GROUP BY NOMBRE_DE_LA_ENTIDAD
ORDER BY Promedio_Depositos DESC


---     USO DE LA CLAUSULA STDEVP


--- 1.Consulto utilizando la clausula STDEVP, para mirar cuanta variabilidad existe en los depósitos y retiros registrados.

SELECT 
    STDEVP(MONTO_DEPOSITOS) AS Desviacion_Estandar_Depositos,
    STDEVP(MONTO_RETIROS) AS Desviacion_Estandar_Retiros
FROM dbo.Financiera_clean

--- 2.Consulto utilizando la clausula STDEVP, para conocer cuánta variabilidad hay en los saldos de ahorro.

SELECT 
    STDEVP(SALDO_CTA_AHORRO_ACTIVAS) AS Desviacion_Saldo_Ahorro_Activas
FROM dbo.Financiera_clean;

--- 3.Consulto utilizando la clausula STDEVP, para evaluar la variabilidad en los montos de créditos otorgados.

SELECT 
    STDEVP(MONTO_CREDITO_CONSUMO_MUJERES) AS Desv_Credito_Consumo_Mujeres,
    STDEVP(MONTO_CREDITO_CONSUMO_HOMBRES) AS Desv_Credito_Consumo_Hombres,
    STDEVP(MONTO_CREDITO_VIVIENDA_MUJERES) AS Desv_Credito_Vivienda_Mujeres,
    STDEVP(MONTO_CREDITO_VIVIENDA_HOMBRES) AS Desv_Credito_Vivienda_Hombres
FROM dbo.Financiera_clean


--- 4.Consulto utilizando la clausula STDEVP, para examinar si los microcréditos varían mucho entre diferentes clientes.

SELECT 
    STDEVP(MONTO_MICROCREDITO_MUJERES) AS Desv_Microcredito_Mujeres,
    STDEVP(MONTO_MICROCREDITO_HOMBRES) AS Desv_Microcredito_Hombres
FROM dbo.Financiera_clean

--- 5.Consulto utilizando la clausula STDEVP, para medir cuánta variabilidad hay en el número de corresponsales por departamento.

SELECT 
    STDEVP(NRO_CORRESPONSALES) AS Desviacion_Corresponsales
FROM dbo.Financiera_clean



--- 6.Consulto utilizando la clausula STDEVP, para ver si hay diferencias significativas en los saldos de ahorro por género.

SELECT 
    STDEVP(SALDO_CTA_AHORRO_MUJERES) AS Desv_Saldo_Ahorro_Mujeres,
    STDEVP(SALDO_CTA_AHORRO_HOMBRES) AS Desv_Saldo_Ahorro_Hombres
FROM dbo.Financiera_clean


---- USO DE LAS DOS CLAUSULAS AVG Y STDEVP


--- 7.Consulto utilizando la clausula AVG Y STDEVP, para  analizar dónde hay más inclusión financiera.

SELECT 
    DEPARTAMENTO,
    AVG(MONTO_DEPOSITOS) AS Promedio_Depositos,
    STDEVP(MONTO_DEPOSITOS) AS Desviacion_Depositos,
    AVG(MONTO_RETIROS) AS Promedio_Retiros,
    STDEVP(MONTO_RETIROS) AS Desviacion_Retiros
FROM dbo.Financiera_clean
GROUP BY DEPARTAMENTO
ORDER BY Promedio_Depositos DESC


--- 8.Consulto utilizando la clausula AVG Y STDEVP, para mirar si hay muchas diferencias entre credito de consumo por genero.

SELECT 
    AVG(MONTO_CREDITO_CONSUMO_MUJERES) AS Promedio_Credito_Consumo_Mujeres,
    STDEVP(MONTO_CREDITO_CONSUMO_MUJERES) AS Desviacion_Credito_Consumo_Mujeres,
    AVG(MONTO_CREDITO_CONSUMO_HOMBRES) AS Promedio_Credito_Consumo_Hombres,
    STDEVP(MONTO_CREDITO_CONSUMO_HOMBRES) AS Desviacion_Credito_Consumo_Hombres
FROM dbo.Financiera_clean























