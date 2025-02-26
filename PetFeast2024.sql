create database petFeast2024
use petFeast2024

create table usuario (
c_user int primary key identity (1,1), 
nombre varchar(50) not null, 
ap varchar (50) not null,
telefono varchar (12)not null, 
email varchar (50) not null, 
contra varchar (10) not null,
c_mascota int not null,
foreign key (c_mascota) references mascota (c_mascota)
);


create table mascota (
c_mascota int primary key identity (1,1), 
nombre varchar(50) not null, 
especie varchar (20) not null,
raza varchar(40) not null, 
edad smallint not null, 
tamaño varchar(20) not null, 
peso_kg float not null,
condicion_esp varchar (50) not null,
c_alimento int not null,
foreign key (c_alimento) references alimentacion(c_alimento)
);


create table alimentacion(
c_alimento int primary key identity (1,1), 
tipo varchar(50) not null, 
marca varchar(50) not null,
porciones_gr float not null, 
v_comida int not null, 
c_porciones int not null,
foreign key (c_porciones) references porciones (c_porciones)
);


create table porciones (
c_porciones int primary key identity (1,1), 
horario time not null, 
cantidad_gr float not null,
cantidadTot_gr float not null, 
cantidadRs_gr float not null, 
cantDispensador_Cgr float not null,
cantDispensador_Aml float not null
);


create table cartilla (
c_cartilla int primary key identity (1,1),
c_mascota int not null, 
nombre varchar(30) not null, 
apodo varchar(30) not null,
raza varchar(40) not null,
fecha_n date not null, 
sexo varchar(20) not null, 
curp varchar(30) null,
color varchar(20) not null, 
rasgos varchar (100) not null, 
tamaño varchar(20) not null,  
peso_kg float not null,
n_propietario varchar (50) not null, 
direccion varchar (100) not null,
foreign key (c_mascota) references mascota (c_mascota)
);


create table Bitacora (
c_Bit int primary key identity (1,1),
Fecha date not null,
Hora time not null,
c_porciones int not null,
c_mascota int not null,
foreign key (c_porciones) references porciones (c_porciones),
foreign key (c_mascota) references mascota (c_mascota)
);
