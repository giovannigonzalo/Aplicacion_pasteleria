use master
go

---------
if DB_ID('BDPastelería') is not null
   drop database BDPastelería
go
create database BDPastelería
go

use BDPastelería
go
if OBJECT_ID('TUsuario','U') is not null
	drop table  TUsuario
go 
create  table TUsuario
(
    CodUsuario int NOT NULL IDENTITY(1,1) , --CODIGO DE USUARIO
	Nombres varchar(70) NOT NULL,--NMBRES DE PILA DE USUARIO
	ApePaterno varchar (70) not null, --apllidos paterno
	ApeMaterno varchar (70) not null, --apellido materno
	Cargo varchar (150),
	Genero varchar (50),
	Usuario     varchar(50),
	Contrasena	varchar(50),
	primary key (CodUsuario)
)  
go


if OBJECT_ID('TCliente','U') is not null
	drop table  TCliente
go 
create table TCliente
(
	CodCliente int NOT NULL IDENTITY(1,1), ---codigo de cliente
	ApePaterno varchar(70) NULL, ---apellidos paterno cliente natural
	ApeMaterno varchar(70) NULL, ---apellidos materno cliente natural
	Nombres varchar(70) NULL, ---nombres
	NumDocIdentidad varchar(15) NULL,
	Telefono varchar(15) null,----telefono del cliente
	primary key (CodCliente)

)
go


if OBJECT_ID('TCategoria','U') is not null
	drop table  TCategoria
go 
 create table TCategoria
(  
	codCategoria int  IDENTITY(1,1) NOT NULL   ,
	NomCategoria varchar(70) not NULL, ---nombres
	primary key 	(codCategoria)   
)
go

if OBJECT_ID('TProducto','U') is not null
	drop table  TProducto
go 
create table TProducto
(  
	codProducto int NOT NULL IDENTITY(1,1),
	Nombres varchar(70) not NULL, 
	descripcion varchar(70) NULL, 
	Precio  numeric(10,3) not null,
	codCategoria int   NULL,
	codPromocion int  NULL ,
	imagen  varchar(70)  NULL,
	primary key 	(codProducto)  , 
	foreign key	(codCategoria) references TCategoria,
	foreign key	(codPromocion) references TPromocion

)
go


if OBJECT_ID('TPromocion','U') is not null
	drop table TPromocion
go 
create table TPromocion
(  
	codPromocion int NOT NULL IDENTITY(1,1),
	descripcion varchar(70) not NULL, ---nombres
	stock  int not null,
	descuento numeric(10,3) not null, 
	primary key 	(codPromocion),

)
go


--if OBJECT_ID('TDetallePedido','U') is not null
--	drop table TDetallePedido
--go 
--create table TDetallePedido
--(  
--	codDetallePedido int  NOT NULL IDENTITY,
--	cantidad numeric(10,3) not null,
--	codProducto int,
--	totalPagar numeric(10,3) not null,
--	codPedido  int ,
--	primary key 	(codDetallePedido),
--	foreign key	(codProducto) references TProducto,
--	foreign key	(codPedido ) references TPedido 
--)
--go

if OBJECT_ID('TPedido','U') is not null
	drop table TPedido
go 
create table TPedido
(  
	codPedido  int NOT NULL IDENTITY,
	CodCliente int,
	codProducto int,
	cantidad numeric(10,3) not null,
	Direccion varchar (70) not NULL,
	FechaPedido  datetime not NULL, 
	Fechaentrega  datetime not NULL,
	primary key 	(codPedido ),
	foreign key	(CodCliente) references TCliente,
	foreign key	(codProducto) references TProducto

)
go

if OBJECT_ID('TAtencion','U') is not null
	drop table TAtencion
go 
create table TAtencion
(  
	codAtencion int NOT NULL IDENTITY,
	codPedido  int , 
	CodUsuario int,
	estado varchar (1) check(estado in ('1','0')) null, --1:espera ,0:entregado
	primary key 	(codAtencion),
	foreign key	(codPedido) references TPedido,
	foreign key	(CodUsuario ) references TUsuario ,

)
go




----tusuario
insert into TUsuario values ('juan','martines','peres','administrador','f','admin','987654');
insert into TUsuario values ('milagros ','Vasquez','Saldivar','vendedora','m','vmilagros','8765');
insert into TUsuario values ('Leonardo','Quispe', 'Triveno','repartidor','f','RLeo','abcd987');





