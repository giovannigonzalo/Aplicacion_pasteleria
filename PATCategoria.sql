USE BDPastelería


if OBJECT_ID('spListarCategoria') is not null
	drop proc spListarCategoria
GO 
create  proc spListarCategoria
as
begin
	select NomCategoria from TCategoria
end


if OBJECT_ID('spAgregarCategoria') is not null
	drop proc spAgregarCategoria
GO 
create  proc spAgregarCategoria
    
	@NomCategoria varchar(70) 
	
as
begin
  -- declare @CodUsuario int
	if not exists(select NomCategoria  from TCategoria where NomCategoria = @NomCategoria )
	  
	  begin
         insert into TCategoria values(@NomCategoria )
		 select CodError = 0, Mensaje = ' Categoria insertada correctamente'
     end
   else select CodError = 1, Mensaje = 'Categoria  ya existe'

end


if OBJECT_ID('spEliminarCategoria') is not null
	drop proc spEliminarCategoria
GO 
create proc spEliminarCategoria
@NomCategoria varchar(70) 
as
begin
DECLARE @CodCategoria INT
SET @CodCategoria  =(SELECT CodCategoria from TCategoria where  NomCategoria=@NomCategoria )
	-- Verificar que el Codigo exista
	if exists(select NomCategoria  from  TCategoria  where @CodCategoria=@CodCategoria )
	  -- Verificar que no exista alumnos en la carrera
	  if not exists (select  CodCategoria  from TProducto  where @CodCategoria=@CodCategoria )
		begin
			delete from  TCategoria where NomCategoria=@NomCategoria
			select CodError = 0, Mensaje = 'Usuario eliminada correctamente'
		end
	  else select CodError = 1, Mensaje = 'Error: Existe Usuario con ENTREGA'
	else select CodError = 1, Mensaje = 'Error:   Usuario no existe'
end

if OBJECT_ID('spActualizarCategoria') is not null
	drop proc spActualizarCategoria
GO 
create proc spActualizarCategoria
    @NomCategoria varchar(70) 
as
begin
  DECLARE @CodCategoria INT
SET @CodCategoria  =(SELECT CodCategoria from TCategoria where  NomCategoria=@NomCategoria )
	-- CodCarrera debe existir
	if exists(select NomCategoria  from  TCategoria  where @CodCategoria=@CodCategoria )
		-- Carrera no exista
		begin
			update TCategoria  set  NomCategoria=@NomCategoria  where @CodCategoria=@CodCategoria
			select CodError = 0, Mensaje = 'Usuario actualizada'
		end
		
	else select CodError = 1, Mensaje = 'Error: Usuario  no existe'
end

if OBJECT_ID('spBuscarCategoria') is not null
	drop proc spBuscarCategoria
GO 
create proc spBuscarCategoria
@Texto varchar(50)
as
	begin
		select * from TCategoria where NomCategoria LIKE '%' + @Texto + '%'  
	end