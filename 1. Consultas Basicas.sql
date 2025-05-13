-- 1. Consulta de la base de datos utilizando la consulta Select

SELECT * FROM dbo.Financiera_clean


-- 2. Consulta para identificar los 10 primeros registros de la tabla

SELECT TOP(10)*
FROM dbo.Financiera_clean

--3. Consulta para identificar los ultimos 10 registros de la tabla

SELECT TOP (10) *
FROM dbo.Financiera_clean
ORDER BY 
    NOMBRE_DE_LA_ENTIDAD DESC,
    FECHA_DE_CORTE DESC,
    DEPARTAMENTO DESC,
    NRO_CORRESPONSALES DESC,
    NRO_DEPOSITOS DESC,
    MONTO_DEPOSITOS DESC,
    NRO_RETIROS DESC,
    MONTO_RETIROS DESC,
    NRO_CTA_AHORRO_ACTIVAS DESC,
    SALDO_CTA_AHORRO_ACTIVAS DESC,
    NRO_CTA_AHORRO_MUJERES DESC,
    SALDO_CTA_AHORRO_MUJERES DESC,
    NRO_CTA_AHORRO_HOMBRES DESC,
    SALDO_CTA_AHORRO_HOMBRES DESC,
    NRO_CREDITO_CONSUMO_MUJERES DESC,
    MONTO_CREDITO_CONSUMO_MUJERES DESC,
    NRO_CREDITO_CONSUMO_HOMBRES DESC,
    MONTO_CREDITO_CONSUMO_HOMBRES DESC,
    NRO_CREDITO_VIVIENDA_MUJERES DESC,
    MONTO_CREDITO_VIVIENDA_MUJERES DESC,
    NRO_CREDITO_VIVIENDA_HOMBRES DESC,
    MONTO_CREDITO_VIVIENDA_HOMBRES DESC,
    NRO_MICROCREDITO_MUJERES DESC,
    MONTO_MICROCREDITO_MUJERES DESC,
    NRO_MICROCREDITO_HOMBRES DESC,
    MONTO_MICROCREDITO_HOMBRES DESC;


-- 4. Consulta para ver el nombre de la entidad, el departamento y fecha de corte

SELECT NOMBRE_DE_LA_ENTIDAD, DEPARTAMENTO, FECHA_DE_CORTE
FROM dbo.Financiera_clean


-- 5. Consulta para ver las columnas de numero de corresponsales, depositos y retiros

SELECT NRO_CORRESPONSALES, NRO_DEPOSITOS, NRO_RETIROS
FROM dbo.Financiera_clean

-- 6.Consulta para ver las columnas las cuentas de ahorro activas el total y por serapado de hombres y mujeres con sus saldos

SELECT NRO_CTA_AHORRO_ACTIVAS,SALDO_CTA_AHORRO_ACTIVAS, NRO_CTA_AHORRO_MUJERES,SALDO_CTA_AHORRO_MUJERES, NRO_CTA_AHORRO_HOMBRES, SALDO_CTA_AHORRO_HOMBRES
FROM dbo.Financiera_clean

-- 7. Consulta para ver las columnas de numero y monto de creditos de consumo de hombres y mujeres.

SELECT  NRO_CREDITO_CONSUMO_MUJERES,
	MONTO_CREDITO_CONSUMO_MUJERES,
	NRO_CREDITO_CONSUMO_HOMBRES,
	MONTO_CREDITO_CONSUMO_HOMBRES
FROM dbo.Financiera_clean

-- 8.Consulta para ver las columnas de numero y monto de creditos de vivienda de hombres y mujeres.

SELECT  NRO_CREDITO_VIVIENDA_MUJERES,
	MONTO_CREDITO_VIVIENDA_MUJERES,
	NRO_CREDITO_VIVIENDA_HOMBRES,
	MONTO_CREDITO_VIVIENDA_HOMBRES
FROM dbo.Financiera_clean

-- 9.Consulta para ver las columnas de numero y monto de microcreditos de hombres y mujeres.

SELECT  NRO_MICROCREDITO_MUJERES,
	MONTO_MICROCREDITO_MUJERES,
	NRO_MICROCREDITO_HOMBRES,
	MONTO_MICROCREDITO_HOMBRES
FROM dbo.Financiera_clean

-- 10.Consultar mas de un criterio de busqueda utilizando la clausula where, desde la columna nombre de la entidad se filtra las 9 entidades financieras mas representivas.
SELECT
	*
FROM dbo.Financiera_clean
WHERE NOMBRE_DE_LA_ENTIDAD IN ('Banco Davivienda', 'Citibank','Banco De Bogota','Coopcentral','Bancamía S.A.','Banagrario','Banco De Bogota','Banco Popular','Bbva Colombia')

-- 11.Consultar mas de un criterio de busqueda utilizando la clausula where, desde la columna departamento se filtra los 10 departamentos importantes de la base.
SELECT
	*
FROM dbo.Financiera_clean
WHERE DEPARTAMENTO IN ('ANTIOQUIA', 'SANTANDER','BOGOTA','META','CASANARE','BOLIVAR','ATLANTICO','CALDAS','NORTE DE SANTANDER','QUINDIO')



-- 12.Consulta utilizando la cluasula WHERE para ver los de registros de la base donde el año sea 2017

SELECT *
FROM dbo.Financiera_clean
Where YEAR(FECHA_DE_CORTE) ='2017'

-- 13.Consulta utilizando la cluasula WHERE para ver los registros de la base donde el año sea 2018

SELECT *
FROM dbo.Financiera_clean
Where YEAR(FECHA_DE_CORTE) ='2018'

-- 14.Consulta utilizando la cluasula WHERE para ver los registros de la base donde el año sea 2019

SELECT *
FROM dbo.Financiera_clean
Where YEAR(FECHA_DE_CORTE) ='2019'

-- 15.Consulta utilizando la cluasula WHERE para ver los registros de la base donde el año sea 2020

SELECT *
FROM dbo.Financiera_clean
Where YEAR(FECHA_DE_CORTE) ='2020'

-- 16.Consulta utilizando la cluasula WHERE para ver los de registros de la base donde el año sea 2021

SELECT *
FROM dbo.Financiera_clean
Where YEAR(FECHA_DE_CORTE) ='2021'


-- 17.Consulta para ver los registros del departamento de antioquia del banco agrario de colombia en el año 2017

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'ANTIOQUIA'
AND NOMBRE_DE_LA_ENTIDAD = 'Banagrario'
AND YEAR(FECHA_DE_CORTE) ='2017'

-- 18.Consulta para ver los registros del departamento de casanare del banco davivienda en el año 2018

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'CASANARE'
AND NOMBRE_DE_LA_ENTIDAD = 'Banco davivienda'
AND YEAR(FECHA_DE_CORTE) ='2018'

-- 19.Consulta para ver los registros del departamento de cundinamarca de credifamilia en el año 2019

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'CUNDINAMARCA'
AND NOMBRE_DE_LA_ENTIDAD = 'credifamilia'
AND YEAR(FECHA_DE_CORTE) ='2019'

-- 20.Consulta para ver los registros del departamento de boyaca del bancolombia en el año 2020

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'BOYACA'
AND NOMBRE_DE_LA_ENTIDAD = 'Bancolombia'
AND YEAR(FECHA_DE_CORTE) ='2020'

--21. Consulta para ver los registros del departamento de santander del banco de bogota en el año 2021

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'SANTANDER'
AND NOMBRE_DE_LA_ENTIDAD = 'Banco de bogota'
AND YEAR(FECHA_DE_CORTE) ='2021'

-- 22.Consulta para ver los registros del departamento de arauca del banco Bbva colombia en el mes de diciembre del 2017 al 2020

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'ARAUCA'
AND NOMBRE_DE_LA_ENTIDAD = 'Bbva colombia'
AND MONTH(FECHA_DE_CORTE) ='12'


-- 23.Consulta para ver los registros del departamento de la guajira del banco popular en el mes de diciembre del 2017 al 2019

SELECT *
FROM dbo.Financiera_clean
Where DEPARTAMENTO = 'LA GUAJIRA'
AND NOMBRE_DE_LA_ENTIDAD = 'Banco popular'
AND MONTH(FECHA_DE_CORTE) ='12'

-- 24.Consulta en el cual se usa la clausula de ordenamiento order by, para ordenar por nombre de entidad y departamento en orden alfabetico.
--- donde se evidencia que el grupo arco grupo bancoldex aparece en primer lugar  y el departamento de antioquia.

SELECT *
FROM dbo.Financiera_clean
ORDER BY NOMBRE_DE_LA_ENTIDAD, DEPARTAMENTO

-- 25.Consulta para ordenar de manera descendente la columna fecha de corte
-- al realizar el ordenamiento aparece que la fecha de corte mas reciente es 31/03/2021

SELECT *
FROM dbo.Financiera_clean
ORDER BY FECHA_DE_CORTE DESC

-- 26.Consulta para ordenar de manera ascendente la columna nombre de entidad y departamento.
-- aparece que la entidad arco grupo bancoldex aparce de primer lugar con el departamento de antioquia.

SELECT *
FROM dbo.Financiera_clean
ORDER BY NOMBRE_DE_LA_ENTIDAD,DEPARTAMENTO ASC

-- 27.Consulta para ordenar de manera descendente la columna nombre de entidad y departamento en el año 2021
-- Aparece que la entidad av villas es la ultima y el departamento donde esta de ultimas es valle del cauca.

SELECT *
FROM dbo.Financiera_clean
WHERE YEAR(FECHA_DE_CORTE) = '2021'
ORDER BY NOMBRE_DE_LA_ENTIDAD,DEPARTAMENTO DESC