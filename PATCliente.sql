USE BDPastelería
if OBJECT_ID('spListarCliente') is not null
	drop proc spListarCliente
GO 
create  proc spListarCliente
as
begin

	select CodCliente as 'CODIGO'  ,ApePaterno as 'APELLIDO PATERNO',ApeMaterno as 'APELLIDO MATERNO',Nombres as 'NOMBRES',NumDocIdentidad as 'DOCUMENTO DE IDENTIDAD',Telefono as 'TELÉFONO'from TCliente
end

if OBJECT_ID('spAgregarCliente') is not null
	drop proc spAgregarCliente
GO 

create  proc spAgregarCliente
   
	@ApePaterno varchar(70) ,
	@ApeMaterno varchar(70) ,
	@Nombres varchar(70) ,
	@NumDocIdentidad varchar(15) ,
	@Telefono varchar(15) 
	
as
begin
  -- declare @CodUsuario int
	if not exists(select Nombres,ApePaterno,ApeMaterno,NumDocIdentidad,Telefono from TCliente where Nombres = @Nombres and ApePaterno=@ApePaterno and  ApeMaterno=@ApeMaterno and NumDocIdentidad=@NumDocIdentidad and  Telefono=@Telefono)
	  
	  begin
         insert into TCliente values(@ApePaterno,@ApeMaterno,@Nombres,@NumDocIdentidad,@Telefono)
		 select CodError = 0, Mensaje = 'Cliente insertada correctamente'
     end
   else select CodError = 1, Mensaje = 'Cliente ya existe'

end



if OBJECT_ID('spEliminarCliente') is not null
	drop proc spEliminarCliente
GO 
create proc spEliminarCliente
 @CodCliente int 
as
begin

	-- Verificar que el Codigo exista
	if exists(select CodCliente   from TCliente where CodCliente=@CodCliente )
	  -- Verificar que no exista alumnos en la carrera
	  if not exists (select CodCliente  from TPedido where CodCliente=@CodCliente)
		begin
			delete from TCliente where CodCliente=@CodCliente
			select CodError = 0, Mensaje = 'Cliente  eliminada correctamente'
		end
	  else select CodError = 1, Mensaje = 'Error: Existe Cliente  con Pedido'
	else select CodError = 1, Mensaje = 'Error: Cliente  no existe'
end



if OBJECT_ID('spActualizarCliente ') is not null
	drop proc spActualizarCliente
GO 
create proc spActualizarCliente
   @CodCliente int,
   @ApePaterno varchar(70) ,
	@ApeMaterno varchar(70) ,
	@Nombres varchar(70) ,
	@NumDocIdentidad varchar(15) ,
	@Telefono varchar(15) 
	
as
begin

	-- CodCarrera debe existir
	if  exists (select Nombres,ApePaterno,ApeMaterno,NumDocIdentidad,Telefono from TCliente where CodCliente=@CodCliente )
		-- Carrera no exista
		begin
			update TCliente  set  ApePaterno=@ApePaterno,ApeMaterno=@ApeMaterno, Nombres=@Nombres,NumDocIdentidad=@NumDocIdentidad,Telefono=@Telefono where CodCliente=@CodCliente
			select CodError = 0, Mensaje = 'Cliente actualizada'
		end
		
	else select CodError = 1, Mensaje = 'Error: Cliente  no existe'
end


if OBJECT_ID('spBuscarCliente ') is not null
	drop proc spBuscarCliente 
GO 
create proc spBuscarCliente 
@Texto varchar(50)
as
	begin
		select * from TCliente  where Nombres LIKE '%' + @Texto + '%' or ApePaterno LIKE '%' + @Texto + '%' 
	end