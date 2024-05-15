use Restaurente_pan_vino
INSERT INTO Restaurantes ( Nombre, Direccion, Tipo_Cocina, Capacidad_Maxima, Cantidad_Mesas, Disponibilidad_Mesas, Hora_Apertura, Hora_Cierre)
VALUES
( 'El Fogoncito', 'Calle 12 #34-56', 'Comida Colombiana', 50, 5, 'SI', '08:00 am', '10:00 pm'),
('La Parrilla', 'Avenida 5 #12-34', 'Comida Argentina', 56, 7, 'NO', '11:00 am', '11:00 pm'),
( 'El Saborito', 'Calle 7 #45-67', 'Comida Mexicana', 40, 8, 'SI', '09:00 am', '09:00 pm'),
( 'La Casa de Toño', 'Carrera 10 #23-45', 'Comida Italiana', 42, 6, 'NO', '12:00 pm', '10:00 pm'),
( 'El Jardín', 'Calle 15 #67-89', 'Comida Vegetariana', 50, 5, 'SI', '10:00 am', '09:00 pm'),
( 'La Estación', 'Avenida 3 #45-67', 'Comida Americana', 63, 7, 'NO', '11:00 am', '11:00 pm'),
( 'El Patio', 'Calle 20 #12-34', 'Comida Española', 50, 5, 'SI', '09:00 am', '10:00 pm');
go

INSERT INTO Mesa ( ID_Restaurante, Capacidad_Maxima, Estado_Mesa)
VALUES
(1, 10, 'SI'),
( 1, 10, 'NO'),
( 1, 10, 'NO'),
( 1, 10, 'SI'),
( 1, 10, 'NO'),

( 2, 8, 'SI'),
( 2, 8, 'SI'),
( 2, 8, 'NO'),
( 2, 8, 'SI'),
(2, 8, 'SI'),
( 2, 8, 'NO'),
( 2, 8, 'SI'),

( 3, 5, 'SI'),
( 3, 5, 'SI'),
( 3, 5, 'NO'),
( 3, 5, 'SI'),
( 3, 5, 'NO'),
( 3, 5, 'NO'),
( 3, 5, 'SI'),
( 3, 5, 'NO'),

( 4, 7, 'SI'),
( 4, 7, 'NO'),
( 4, 7, 'SI'),
( 4, 7, 'NO'),
( 4, 7, 'SI'),
( 4, 7, 'SI'),

( 5, 10, 'SI'),
( 5, 10, 'NO'),
( 5, 10, 'NO'),
( 5, 10, 'SI'),
( 5, 10, 'SI'),


( 6, 9, 'NO'),
( 6, 9, 'SI'),
( 6, 9, 'SI'),
( 6, 9, 'NO'),
( 6, 9, 'SI'),
( 6, 9, 'SI'),
( 6, 9, 'NO'),

( 7, 6, 'SI'),
( 7, 6, 'NO'),
( 7, 6, 'SI'),
(7, 6, 'NO'),
( 7, 6, 'SI');
go

INSERT INTO Reservas ( Horario_Reservas, Fecha_Reservas , ID_Cliente, Cantidad_Persomas, Estado_Reserva, ID_Restaurante, Notas_Adicionales, ID_Mesa)
VALUES
( '12:00 pm',  '2023-03-15', 1, 4, 'Confirmada',1, '',1),
('07:00 pm',  '2023-03-16', 2, 2, 'Pendiente',2, '',6),
( '08:00 pm',  '2023-03-17', 3, 6, 'Confirmada',3, '',13),
( '01:00 pm',  '2023-03-18', 4, 1, 'Pendiente',5, '',27),
( '06:00 pm', '2023-03-19', 5, 3, 'Confirmada',6, '',33),
( '02:00 pm','2023-03-20', 6, 2, 'Pendiente',7, '',39),
( '07:00 pm',  '2023-03-21', 7, 5, 'Confirmada',7, '',43);
go

INSERT INTO Cliente ( Nombre, Apellido, Telefono, Email, Documento)
VALUES
( 'Juan', 'Perez', 1234567890, 'juanperez@gmail.com', 1234567890),
( 'Maria', 'Gonzalez', 2345678901, 'mariagonzalez@gmail.com', 2345678901),
( 'Pedro', 'Rodriguez', 3456789012, 'pedrorodriguez@gmail.com', 3456789012),
('Ana', 'Lopez', 4567890123, 'analopez@gmail.com', 4567890123),
( 'Carlos', 'Sanchez', 5678901234, 'carlossanchez@gmail.com', 5678901234),
( 'Laura', 'Martinez', 6789012345, 'lauramartinez@gmail.com', 5678901234),
('Jose', 'Hernandez', 7890123456, 'josehernandez@gmail.com', 5678901234);
go

INSERT INTO Comentarios ( ID_Reserva, Comentario, Fecha_Comentario)
VALUES
( 1, 'Servicio excelente!', '2023-03-26'),
( 2, 'La comida estaba deliciosa.', '2023-03-27'),
( 3, 'El ambiente era genial.', '2023-03-28'),
( 4, 'Volveré de nuevo.', '2023-03-29'),
( 5, 'no los recomendare, muy mala experiencia.', '2023-03-30'),
( 6, 'muy mala experiencia.', '2023-04-01'),
( 7, 'una camida asquerosa', '2023-04-02');
go

INSERT INTO Calificacion ( ID_Reserva, Calificacion, Fecha_Calificacion)
VALUES
( 1, 'Excelente', '2023-03-26'),
( 2, 'Muy buena', '2023-03-27'),
( 3, 'Buena', '2023-03-28'),
( 4, 'Regular', '2023-03-29'),
( 5, 'Mala', '2023-03-30'),
( 6, 'Muy mala', '2023-04-01'),
( 7, 'Pésima', '2023-04-02');
gO

select * from Restaurantes;
select * from Mesa;
select * from Reservas;
select * from Cliente;
select * from Comentarios;
select * from Calificacion;


SELECT Mesa.ID_Mesa, Mesa.ID_Restaurante, Restaurantes.Nombre FROM Mesa  JOIN Restaurantes ON Restaurantes.ID_Restaurante = Mesa.ID_Restaurante  where Estado_Mesa = 'SI' 