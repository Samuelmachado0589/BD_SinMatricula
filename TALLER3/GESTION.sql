use GesEmpleados
use GesEmpleados;

create table Empleado(
    id_empleado int primary key,
    nombre varchar(50),
    apellido varchar (50),
    edad int,
    direccion varchar (100),
    celular varchar (20),
    cargo varchar(20),
    email varchar(20),
    Departamento varchar(30)
);

create table Departamento(
    id_departamento int primary key,
    nombre_departamento varchar(20),
    descripcion_departamento varchar(50),
    id_empleadoD int,
    id_proyecto int,
    foreign key (id_empleadoD) references Empleado(id_empleado),
    foreign key (id_proyecto) references Proyecto(id_proyecto)
);

create table Proyecto(
    id_proyecto int primary key,
    nombre_proyecto varchar(30),
    descripcion_proyecto varchar (30),
    estado_proyecto varchar(20),
    fecha_inicio_proyecto date,
    id_empleadoP int,
    foreign key (id_empleadoP) references Empleado(id_empleado)
);

create table Habilidad(
    id_habilidad int primary key,
    nombre_habilidad varchar(30),
    descripcion_habilidad varchar(30)
);

create table HabilidadEmpleado(
    id_habilidadEmpleado int primary key,
    id_habilidad int,
    id_empleado int,
    foreign key (id_habilidad) references Habilidad(id_habilidad),
    foreign key (id_empleado) references Empleado(id_empleado)

);

create table EmpleadoDepartamento(
    id_empleadoDepartamento int primary key,
    id_empleado int,
    id_departamento int,
    foreign key (id_empleado) references Empleado(id_empleado),
    foreign key (id_departamento) references Departamento(id_departamento)
);

create table DepartamentoProyecto (
    id_departamentoProyecto int primary key,
    id_proyecto int,
    id_departamento int,
    foreign key (id_proyecto) references Proyecto(id_proyecto),
    foreign key (id_departamento) references Departamento(id_departamento)
);
