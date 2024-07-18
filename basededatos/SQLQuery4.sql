CREATE TABLE futbolista (
    futbolista_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    fecha_nacimiento DATE,
    nacionalidad VARCHAR(50),
    equipo VARCHAR(100),
    posicion VARCHAR(50)
);


CREATE TABLE equipo (
    equipo_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    pais VARCHAR(50),
    estadio VARCHAR(100),    
    fundacion DATE,           
    entrenador VARCHAR(100)   
);

CREATE TABLE historicoequipo (
    historicoequipo_id INT PRIMARY KEY,
    futbolista_id INT,
    equipo_id INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (futbolista_id) REFERENCES futbolista(futbolista_id),
    FOREIGN KEY (equipo_id) REFERENCES equipo(equipo_id)
	);






	USE [futbolista]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_UPD_futbolista]
   @PV_ futbolista_id VARCHAR (50),
   @PV_nombre VARCHAR (50),
   @PV_apellidos VARCHAR (50),
   @PV_fecha_nacimiento DATETIME,
   @PV_nacionalidad VARCHAR (50),
   @PV_equipo VARCHAR(50),
   @PV_ posicion VARCHAR(50)


AS
	
BEGIN
   UPDATE futbolista
   SET nombre=@PV_NOMBRES,
   apellidos@PV_APELLIDOS,
   FECHA_NACIMIENTO=@PV_fecha_nacimiento,
   nacionalidad=@PV_nacionalidad,
   equipo=@PV_equipo,
   DESCRIPCION=@PV_DESCRIPCION
WHERE
  posicion=@PV_posicion


END





USE [futbolista]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_INS_futbolista]
   @PV_futbolista_id INT PRIMARY KEY,
   @PV_nombre VARCHAR(100),
   @PV_apellidos VARCHAR(100),
   @PV_fecha_nacimiento DATE,
   @PV_nacionalidad VARCHAR(50),
   @PV_equipo VARCHAR(100),
   @PV_ posicion VARCHAR(50)

AS
	DECLARE @CONTADOR_ID INTEGER;
BEGIN
   



	SELECT @CONTADOR_ID=(futbolista_id)
	FROM FUTBOLISTA;

	INSERT INTO FUTBOLISTA(futbolista_id,nombre,apellidos,fecha_nacimient,nacionalidad,equipo,posicion)
	VALUES(@PV_futbolista_id,@PV_nombre,@PV_apellidos,@PV_fecha_nacimiento,@PV_equipo ,@PV_posicion);


END





USE [futbol]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GET_futbolista]


AS
	
BEGIN
   SELECT * FROM futbolista;


END







USE [futbolista]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_DEL_futbolista]
   @PI_futbolista_id  VARCHAR(50),
   @PI_ nombre VARCHAR(50)


AS
	
BEGIN
   UPDATE futbolista
   SET  futbolista_id='RETIRADO'

WHERE
  futbolista_id=@futbolista_id


END