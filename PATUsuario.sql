USE BDPastelería
if OBJECT_ID('spListarUsuario') is not null
	drop proc spListarUsuario
GO 
create  proc spListarUsuario
as
begin
	select CodUsuario,Nombres,ApePaterno,ApeMaterno,Cargo,Genero,Usuario,Contrasena	 from TUsuario
end

if OBJECT_ID('spAgregarUsuario') is not null
	drop proc spAgregarUsuario
GO 
create  proc spAgregarUsuario
    
	@Nombres varchar(70) ,
	@ApePaterno varchar (70) ,
	@ApeMaterno varchar (70),
	@Cargo varchar (150),
	@Genero varchar (1) ,
	@Usuario     varchar(50),
	@Contrasena	varchar(50)
as
begin
  -- declare @CodUsuario int
	if not exists(select Nombres,ApePaterno,ApeMaterno,Usuario from TUsuario where Nombres = @Nombres and ApePaterno=@ApePaterno and  ApeMaterno=@ApeMaterno and  Usuario=@Usuario)
	  
	  begin
         insert into TUsuario values(@Nombres,@ApePaterno,@ApeMaterno,@Cargo,@Genero ,@Usuario,@Contrasena)
		 select CodError = 0, Mensaje = 'usuario insertada correctamente'
     end
   else select CodError = 1, Mensaje = 'usuario ya existe'

end


 if OBJECT_ID('spEliminarUsuario') is not null
	drop proc spEliminarUsuario
GO 
create proc spEliminarUsuario
@Usuario     varchar(50)
as
begin
DECLARE @CodUsuario INT
SET @CodUsuario =(SELECT CodUsuario from TUsuario where   Usuario=@Usuario )
	-- Verificar que el Codigo exista
	if exists(select Usuario  from TUsuario where Usuario =@Usuario )
	  -- Verificar que no exista alumnos en la carrera
	  if not exists (select CodUsuario  from TEntrega where  CodUsuario =@CodUsuario)
		begin
			delete from TUsuario where Usuario =@Usuario 
			select CodError = 0, Mensaje = 'Usuario eliminada correctamente'
		end
	  else select CodError = 1, Mensaje = 'Error: Existe Usuario con ENTREGA'
	else select CodError = 1, Mensaje = 'Error:   Usuario no existe'
end

if OBJECT_ID('spActualizarUsuario') is not null
	drop proc spActualizarUsuario
GO 
create proc spActualizarUsuario
    @Nombres varchar(70) ,
	@ApePaterno varchar (70) ,
	@ApeMaterno varchar (70),
	@Cargo varchar (150),
	@Genero varchar (1) ,
	@Usuario     varchar(50),
	@Contrasena	varchar(50)

as
begin
  DECLARE @CodUsuario INT
  SET @CodUsuario =(SELECT CodUsuario from TUsuario where Usuario=@Usuario )

	-- CodCarrera debe existir
	if  exists (select CodUsuario,Usuario from TUsuario where  CodUsuario=@CodUsuario   and  Usuario=@Usuario )
		-- Carrera no exista
		begin
			update TUsuario set  Nombres=@Nombres, ApePaterno=@ApePaterno,ApeMaterno=@ApeMaterno,Cargo=@Cargo,Genero=@Genero ,Usuario=@Usuario,Contrasena=@Contrasena where CodUsuario=@CodUsuario
			select CodError = 0, Mensaje = 'Usuario actualizada'
		end
		
	else select CodError = 1, Mensaje = 'Error: Usuario  no existe'
end

if OBJECT_ID('spBuscarUsuario') is not null
	drop proc spBuscarUsuario
GO 
create proc spBuscarUsuario
@Texto varchar(50)
as
	begin
		select * from TUsuario where Usuario LIKE '%' + @Texto + '%' or Nombres LIKE '%' + @Texto + '%' 
	end