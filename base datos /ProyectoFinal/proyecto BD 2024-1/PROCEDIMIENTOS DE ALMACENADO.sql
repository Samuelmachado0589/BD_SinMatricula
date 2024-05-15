
CREATE TRIGGER sp_actualizarEstado_Mesa
ON Reservas
AFTER INSERT
AS
BEGIN
    UPDATE Mesa
    SET Estado_Mesa = 'NO'
    WHERE ID_Mesa IN (SELECT ID_Mesa FROM inserted)
END;



CREATE TRIGGER sp_actualizarEstado_Mesa2
ON Reservas
AFTER UPDATE
AS
BEGIN
    UPDATE Mesa
    SET Estado_Mesa = 'NO'
    WHERE ID_Mesa IN (SELECT ID_Mesa FROM inserted)
END;


CREATE PROCEDURE SP_Comentario
@ID_Reserva INT, 
@Comentario NVARCHAR(100), 
@Fecha_Comentario DATETIME, 
@AUX VARCHAR (1) ,
@ID_Comentario int 
AS 
IF @AUX = 'I' 
BEGIN 
INSERT INTO Comentarios(ID_Reserva, Comentario, Fecha_Comentario) 
VALUES (@ID_Reserva, @Comentario, @Fecha_Comentario); 
END 
IF @AUX = 'U' 
BEGIN 
UPDATE Comentarios 
SET Comentario= @Comentario, Fecha_Comentario= @Fecha_Comentario 
WHERE ID_Reserva=@ID_Reserva 
END 
IF @AUX = 'D' 
BEGIN 
delete Comentarios where  ID_Comentario=@ID_Comentario
END


CREATE PROCEDURE SP_Calificacion
@ID_Reserva INT, 
@Calificacion NVARCHAR(100), 
@AUX VARCHAR (1) ,
@ID_Calificacion int,
@Fecha_Calificacion DATETIME
AS 
IF @AUX = 'I' 
BEGIN 
INSERT INTO Calificacion(ID_Reserva, Calificacion, Fecha_Calificacion)
VALUES ( @ID_Reserva, @Calificacion, @Fecha_Calificacion); 
END 
IF @AUX = 'U' 
BEGIN 
UPDATE Calificacion 
SET Calificacion = @Calificacion, Fecha_Calificacion= @Fecha_Calificacion,ID_Reserva= @ID_Reserva
WHERE ID_Calificacion = @ID_Calificacion
END 
IF @AUX = 'D' 
BEGIN 
delete Calificacion where  ID_Calificacion = @ID_Calificacion
END



drop PROCEDURE SP_Calificacion

CREATE PROCEDURE SP_Cliente
@Documento INT, 
@Email NVARCHAR(100), 
@Nombre NVARCHAR(50), 
@Apellido NVARCHAR(50), 
@Telefono NVARCHAR(50), 
@AUX VARCHAR (1) ,
@ID_Cliente int

AS 
IF @AUX = 'I' 
BEGIN 
INSERT INTO Cliente (Nombre, Apellido, Telefono, Email, Documento)
VALUES (@Nombre,@Apellido , @Telefono, @Email, @Telefono);
END 
IF @AUX = 'U' 
BEGIN 
UPDATE Cliente 
SET Nombre = @Nombre, Apellido= @Apellido, Telefono = @Telefono ,Email = @Email,Documento = @Documento,ID_Cliente = @ID_Cliente 
WHERE ID_Cliente = @ID_Cliente 
END 
IF @AUX = 'D' 
BEGIN 
delete Cliente where  ID_Cliente = @ID_Cliente
END




CREATE PROCEDURE SP_Reservas
@Horario_Reservas varchar(10), 
@Fecha_Reservas DATETIME, 
@ID_Cliente int,
@Cantidad_Persomas INT, 
@Estado_Reserva NVARCHAR(50), 
@ID_Restaurante INT, 
@Notas_Adicionales NVARCHAR(100), 
@ID_Mesa INT, 
@ID_Reserva int,
@AUX VARCHAR (1) 


AS 
IF @AUX = 'I' 
BEGIN 
INSERT INTO Reservas ( Horario_Reservas, Fecha_Reservas , ID_Cliente, Cantidad_Persomas, Estado_Reserva, ID_Restaurante, Notas_Adicionales, ID_Mesa)
VALUES (@Horario_Reservas,@Fecha_Reservas , @ID_Cliente, @Cantidad_Persomas,@Estado_Reserva,@ID_Restaurante,@Notas_Adicionales,@ID_Mesa);
END 
IF @AUX = 'U' 
BEGIN 
UPDATE  Reservas
SET Horario_Reservas = @Horario_Reservas , Fecha_Reservas= @Fecha_Reservas,ID_Cliente =  @ID_Cliente,Cantidad_Persomas = @Cantidad_Persomas, 
Estado_Reserva = @Estado_Reserva, ID_Restaurante=@ID_Restaurante, Notas_Adicionales = @Notas_Adicionales, ID_Mesa= @ID_Mesa
WHERE ID_Cliente =  @ID_Cliente
END 
IF @AUX = 'D' 
BEGIN 
delete Reservas where   ID_Reservas = @ID_Reserva  
END

DROP PROCEDURE SP_Cliente