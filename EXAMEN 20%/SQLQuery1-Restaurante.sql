--CREATE DATABASE RESTAURANTES;
USE RESTAURANTES;

/*CREATE TABLE RESTAURANTE(
id_Restaurante int not null PRIMARY KEY,
nombre varchar(50) not null,
direccion varchar(50) not null,
cuidad varchar(30) not null,
pais varchar(30) not null,
telefono varchar(10) not null,
horario_Apertura time not null,
horario_Cierre time not null,
imagen image,
);*/

/*INSERT INTO RESTAURANTE VALUES
(1, 'El Fog�n Paisa', 'Carrera 70 #10-50', 'Medell�n', 'Colombia', '0345678901', '11:00:00', '21:00:00', NULL),
(2, 'La Parrilla Argentina', 'Calle 45 #23-56', 'Bogot�', 'Colombia', '0312345678', '12:00:00', '22:00:00', NULL),
(3, 'Sushi House', 'Carrera 80 #15-70', 'Barranquilla', 'Colombia', '0356789012', '11:30:00', '22:30:00', NULL),
(4, 'El Rinc�n Mexicano', 'Avenida 1 #7-89', 'Cartagena', 'Colombia', '0356789012', '13:00:00', '23:00:00', NULL),
(5, 'La Trattoria', 'Calle 23 #18-35', 'Cali', 'Colombia', '0698765432', '10:00:00', '22:00:00', NULL);*/

/*CREATE TABLE CLIENTE(
id_Cliente int not null PRIMARY KEY,
nombre varchar(50) not null,
direccion varchar(50) not null,
cuidad varchar(30) not null,
pais varchar(30) not null,
telefono varchar(10) not null,
correoElectronico varchar(50),
);*/

/*INSERT INTO CLIENTE VALUES 
(1, 'Juan P�rez', 'Carrera 45 #23-56', 'Bogot�', 'Colombia', '0312345678', 'juan@gmail.com'),
(2, 'Mar�a G�mez', 'Calle 12 #30-40', 'Medell�n', 'Colombia', '0345678901', 'maria@gmail.com'),
(3, 'Luis Mart�nez', 'Avenida 80 #15-70', 'Cali', 'Colombia', '0323456789', 'luis@gmail.com'),
(4, 'Ana Rodr�guez', 'Carrera 70 #10-50', 'Barranquilla', 'Colombia', '0356789012', 'ana@ gmail.com'),
(5, 'Pedro Gonz�lez', 'Avenida 1 #7-89', 'Cartagena', 'Colombia', '0356789012', 'pedro gmail.com');*/

/*CREATE TABLE RESTAURANTECLIENTE(
Id_RestaurantesClientes int not null,
id_Restaurante int, FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
id_Cliente int, FOREIGN KEY (id_Cliente) REFERENCES CLIENTE (Id_Cliente),
);*/

/*CREATE TABLE COCINA (
id_Cocina int not null PRIMARY KEY,
nombre varchar(50) not null,
descripcion varchar(50) not null,
id_Restaurante int FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
);*/

/*INSERT INTO COCINA VALUES 
(1, 'Comida Colombiana', 'Platos t�picos colombianos', 1),
(2, 'Comida Argentina', 'Carnes a la parrilla y empanadas', 2),
(3, 'Comida Japonesa', 'Sushi y sashimi', 3),
(4, 'Comida Mexicana', 'Tacos, burritos y enchiladas', 4),
(5, 'Comida Italiana', 'Pastas y pizzas tradicionales', 5);*/

/*CREATE TABLE RESERVAS (
id_Reserva int not null PRIMARY KEY,
fecha date not null,
hora time not null,
numeroPersonas int not null,
id_Restaurante int FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
id_Cliente int FOREIGN KEY (id_Cliente) REFERENCES CLIENTE (id_Cliente),
);*/

/*INSERT INTO RESERVAS VALUES 
(1, '2024-04-02', '13:00:00', 4, 1, 1),
(2, '2024-04-03', '20:00:00', 2, 2, 2),
(3, '2024-04-01', '19:30:00', 6, 3, 3),
(4, '2024-04-05', '19:00:00', 3, 4, 4),
(5, '2024-04-06', '20:30:00', 5, 5, 5);*/

/*CREATE TABLE PEDIDOS (
id_Pedidos int not null PRIMARY KEY,
fecha date not null,
hora time not null,
tipoPedido varchar(50) not null,
estado varchar(50) not null,
precioTotal float not null,
id_Restaurante int FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
id_Cliente int FOREIGN KEY (id_Cliente) REFERENCES CLIENTE (id_Cliente),
cantidadPlatos int,
);*/

/*INSERT INTO PEDIDOS VALUES 
(1, '2024-04-02', '13:00:00', 'Para llevar', 'En preparaci�n', 31,98, 1, 1,1,2),
(2, '2024-04-03', '20:00:00', 'Entrega a domicilio', 'Enviado', 20,99, 2, 2,6,1),
(3, '2024-04-01', '19:30:00', 'Para llevar', 'Entregado', 16,99, 3, 3,13,1),
(4, '2024-04-05', '19:00:00', 'Para llevar', 'En preparaci�n', 38,97, 4, 4,16,3),
(5, '2024-04-05', '20:30:00', 'Para llevar', 'Enviado', 47,97, 5, 5,24,3),
(6, '2024-04-12', '13:00:00', 'Para llevar', 'En preparaci�n', 104,95, 1, 1,3,5),
(7, '2024-04-05', '20:00:00', 'Entrega a domicilio', 'Enviado', 67,69, 2, 2,8,4),
(8, '2024-04-11', '19:30:00', 'Para llevar', 'Entregado', 25,98, 3, 3,14,2),
(9, '2024-04-15', '19:00:00', 'Para llevar', 'En preparaci�n', 54,95, 4, 4,18,5),
(10, '2024-04-07', '20:30:00', 'Para llevar', 'Enviado', 29,98, 5, 5,21,2);*/

/*CREATE TABLE MENUS (
id_Menu int not null PRIMARY KEY,
id_Restaurante int not null FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
id_Cocina int not null FOREIGN KEY (id_Cocina) REFERENCES COCINA (id_Cocina)
);*/

/*INSERT INTO MENUS VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5*/

/*CREATE TABLE PLATO (
id_Plato int not null PRIMARY KEY,
nombre varchar(50) not null,
descripcion varchar(50) not null,
precio float not null,
id_Menu int not null FOREIGN KEY (id_Menu) REFERENCES MENUS (id_Menu),
id_Restaurante int not null FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
);*/

/*INSERT INTO PLATO VALUES 
-- Restaurante 1: El Fog�n Paisa
(1, 'Bandeja Paisa', 'Plato t�pico colombiano con carne, arroz, frijoles, huevo, chicharr�n y aguacate', 15.99, 1, 1),
(2, 'Sancocho de Gallina', 'Sopa colombiana con pollo, yuca, pl�tano y cilantro', 12.99, 1, 1),
(3, 'Churrasco', 'Corte de carne asada a la parrilla con chimichurri', 18.99, 1, 1),
(4, 'Arepa de Choclo', 'Arepa colombiana hecha con ma�z tierno y queso', 5.99, 1, 1),
(5, 'Lechona', 'Cerdo asado relleno de arroz, carne y especias', 20.99, 1, 1),
-- Restaurante 2: La Parrilla Argentina
(6, 'Asado Argentino', 'Delicioso corte de carne argentino a la parrilla', 20.99, 2, 2),
(7, 'Empanadas Criollas', 'Empanadas rellenas de carne, pollo o verduras', 8.99, 2, 2),
(8, 'Milanesa a la Napolitana', 'Filete de carne empanizado con salsa de tomate y queso', 16.99, 2, 2),
(9, 'Tarta de Espinacas', 'Tarta casera de espinacas y queso', 10.99, 2, 2),
(10, 'Provoleta', 'Queso provolone a la parrilla con tomate y or�gano', 12.99, 2, 2),
-- Restaurante 3: Sushi House
(11, 'Sushi Variado', 'Variedad de rollos de sushi fresco y sabroso', 18.99, 3, 3),
(12, 'Sashimi de Salm�n', 'Finas lonchas de salm�n fresco', 15.99, 3, 3),
(13, 'Uramaki California', 'Roll de sushi invertido relleno de cangrejo y aguacate', 16.99, 3, 3),
(14, 'Yakimeshi', 'Arroz frito japon�s con vegetales y pollo', 12.99, 3, 3),
(15, 'Gyoza', 'Empanadillas japonesas rellenas de cerdo y verduras', 10.99, 3, 3),
-- Restaurante 4: El Rinc�n Mexicano
(16, 'Taco de Carne Asada', 'Taco mexicano con carne asada, cebolla y cilantro', 12.99, 4, 4),
(17, 'Enchiladas Verdes', 'Tortillas de ma�z rellenas de pollo ba�adas en salsa verde', 14.99, 4, 4),
(18, 'Burrito de Frijoles', 'Tortilla de trigo rellena de frijoles refritos', 10.99, 4, 4),
(19, 'Guacamole', 'Aperitivo mexicano de aguacate, tomate, cebolla y cilantro', 8.99, 4, 4),
(20, 'Churros', 'Postre espa�ol de masa frita con az�car y canela', 7.99, 4, 4),
-- Restaurante 5: La Trattoria
(21, 'Pizza Margarita', 'Pizza italiana con tomate, mozzarella y albahaca', 14.99, 5, 5),
(22, 'Lasa�a Bolognesa', 'Lasa�a de carne con salsa bolo�esa y queso', 16.99, 5, 5),
(23, 'Risotto al Funghi', 'Risotto cremoso con champi�ones y queso parmesano', 18.99, 5, 5),
(24, 'Spaghetti Carbonara', 'Spaghetti con salsa carbonara, panceta y huevo', 15.99, 5, 5),
(25, 'Tiramis�', 'Postre italiano cl�sico de tiramis� con capas de bizcocho, caf� y mascarpone', 9.99, 5, 5);*/

/*CREATE TABLE MENUPLATO (
id_MenuPlatos int not null,
id_Menu int not null FOREIGN KEY (id_Menu) REFERENCES MENUS (id_Menu),
id_Plato int not null FOREIGN KEY (id_Plato) REFERENCES PLATO (id_Plato),
id_Restaurante int not null FOREIGN KEY (id_Restaurante) REFERENCES RESTAURANTE (id_Restaurante),
);*/

/*INSERT INTO MENUPLATO (id_MenuPlatos, id_Menu, id_Plato, id_Restaurante) 
VALUES 
-- Restaurante 1: El Fog�n Paisa
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
-- Restaurante 2: La Parrilla Argentina
(6, 2, 6, 2),
(7, 2, 7, 2),
(8, 2, 8, 2),
(9, 2, 9, 2),
(10, 2, 10, 2),
-- Restaurante 3: Sushi House
(11, 3, 11, 3),
(12, 3, 12, 3),
(13, 3, 13, 3),
(14, 3, 14, 3),
(15, 3, 15, 3),
-- Restaurante 4: El Rinc�n Mexicano
(16, 4, 16, 4),
(17, 4, 17, 4),
(18, 4, 18, 4),
(19, 4, 19, 4),
(20, 4, 20, 4),
-- Restaurante 5: La Trattoria
(21, 5, 21, 5),
(22, 5, 22, 5),
(23, 5, 23, 5),
(24, 5, 24, 5),
(25, 5, 25, 5);*/

