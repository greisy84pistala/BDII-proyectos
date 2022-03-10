/*1. Llenar la base de datos.
  2. consulta sql sucursales.
	MOSTRAR, ID_SUCURSALES, ENCARGADO_SUCURSAL, NOMBRE_CLIENTE Y EN PARENTESIS SU IDENTIFICACION, PAIS.*/

SELECT `sucursales`.`id_sucursales` AS ID_SUCURSALES,`sucursales`.`nombre_encargado` AS ENCARGADO_SUCURSAL,
CONCAT_WS( '',"(",`numero_identificacion`,')',' ',`primer_nombre`) AS  NOMBRE_CLIENTE,`pais`.`pais` AS PAIS
	FROM `sucursales`
	INNER JOIN `cliente` ON `sucursales`.`id_sucursales` = `cliente`.`id_cliente`
	INNER JOIN `pais` ON `sucursales`.`id_sucursales` = `pais`.`id_pais`

/*CONCAT_WS() de SQL Server concatena dos o más cadenas en una cadena con un separador.
  ON filtra un conjunto de resultados 
  FROM especifica las tablas o consultas que contienen los datos que se usarán en la cláusula SELECT.
  AS para asignar un alias.*/
	_______________________________
	
/*3. consulta sql clienes.
	MOSTRAR, ID_CLIENTE, NOMBRE_CLIENTE, CANTIDAD_SUCURSALES*/

SELECT `cliente`.`id_cliente` AS ID_CLIENTE,
	`cliente`.`primer_nombre` AS NOMBRE_CLIENTE,
	COUNT(`sucursales`.`id_sucursales`) AS CANTIDAD_SUCURSAL
	FROM `cliente`
	INNER JOIN `sucursales` ON `cliente`.`id_cliente` = `sucursales`.`id_ciudad_sucursal`
	GROUP BY `sucursales`.`id_sucursales`
	_______________________________