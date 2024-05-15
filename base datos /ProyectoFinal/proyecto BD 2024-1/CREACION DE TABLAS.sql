CREATE DATABASE Restaurente_pan_vino
go



use Restaurente_pan_vino
CREATE TABLE Restaurantes(
ID_Restaurante  INT IDENTITY (1,1)  NOT NULL,
Nombre varchar(20)NOT NULL,
Direccion varchar (100)NOT NULL,
Tipo_Cocina varchar (20)NOT NULL,
Capacidad_Maxima int NOT NULL,
Cantidad_Mesas int NOT NULL,
Disponibilidad_Mesas char(2) NOT NULL,
Hora_Apertura varchar (10) NOT NULL,
Hora_Cierre varchar (10) NOT NULL
);
go

CREATE TABLE Mesa(
ID_Mesa int IDENTITY (1,1) NOT NULL ,
ID_Restaurante int NOT NULL,
Capacidad_Maxima int NOT NULL,
Estado_Mesa char (2) NOT NULL,
);
go

CREATE TABLE Reservas (
ID_Reservas int IDENTITY (1,1)  NOT NULL,
ID_Cliente int NOT NULL,
Horario_Reservas varchar (10) NOT NULL,
Fecha_Reservas date NOT NULL,
Cantidad_Persomas int NOT NULL,
Estado_Reserva varchar(10) NOT NULL,
Notas_Adicionales varcHar(60),
ID_Mesa int,
ID_Restaurante int,
);
go

CREATE TABLE Cliente (

ID_Cliente int IDENTITY (1,1) NOT NULL,
Nombre varchar(20) NOT NULL,
Apellido varchar(30) NOT NULL,
Telefono Numeric(10) NOT NULL,
Email varchar (50) ,
Documento Numeric(10) NOT NULL,
);
go

CREATE TABLE Comentarios (
ID_Comentario int IDENTITY (1,1) NOT NULL,
ID_Reserva int NOT NULL,
Comentario varchar(100) NOT NULL,
Fecha_Comentario date NOT NULL,
);
go

CREATE TABLE Calificacion (
ID_Calificacion int IDENTITY (1,1) NOT NULL,
ID_Reserva int NOT NULL,
Calificacion Varchar(10) NOT NULL,
Fecha_Calificacion date NOT NULL,
);
go





ALTER TABLE Restaurantes
ADD CONSTRAINT PK_Restaurantes PRIMARY KEY (ID_Restaurante);
go

ALTER TABLE Mesa
ADD CONSTRAINT PK_Mesa PRIMARY KEY (ID_Mesa);
go

ALTER TABLE Reservas
ADD CONSTRAINT PK_Reservas PRIMARY KEY (ID_Reservas);
go

ALTER TABLE Cliente
ADD CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente);
go

ALTER TABLE Comentarios
ADD CONSTRAINT PK_Comentarios PRIMARY KEY (ID_Comentario);
go

ALTER TABLE Calificacion
ADD CONSTRAINT PK_Calificacion PRIMARY KEY (ID_Calificacion);
go



ALTER TABLE Mesa
ADD CONSTRAINT FK_Mesa_Restaurantes
FOREIGN KEY (ID_Restaurante) REFERENCES Restaurantes(ID_Restaurante);
go


ALTER TABLE Reservas
ADD CONSTRAINT FK_Reservas_Restaurantes
FOREIGN KEY (ID_Restaurante) REFERENCES Restaurantes(ID_Restaurante);
go

ALTER TABLE Comentarios
ADD CONSTRAINT FK_Comentarios_Reservas
FOREIGN KEY (ID_Reserva) REFERENCES Reservas(ID_Reservas);
go

ALTER TABLE Reservas
ADD CONSTRAINT FK_Reservas_Cliente
FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente);
go

ALTER TABLE Calificacion
ADD CONSTRAINT FK_Calificacion_Reservas
FOREIGN KEY (ID_Reserva) REFERENCES Reservas(ID_Reservas);
go


