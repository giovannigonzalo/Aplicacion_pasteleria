use BDPastelería
go


if OBJECT_ID('spListarProducto') is not null
	drop proc spListarProducto
GO 
create proc spListarProducto
as
begin
	select *  from TProducto
end
GO

if OBJECT_ID('spAgregarProducto') is not null
	drop proc spAgregarProducto
GO 

create proc spAgregarProducto
	@Nombres varchar(70), 
	@descripcion varchar(70) , 
	@Precio  numeric(10,3),
	@codCategoria int  ,
	@codPromocion int  
as
begin
	-- CodAlumno no se duplica
	if not exists(select Nombres from TProducto where Nombres=@Nombres)
		--Verificar que  exista Usuario  
	 if  exists (select codCategoria  from TCategoria  where codCategoria=@codCategoria)
		--Verificar que  exista   carrera
			begin
				insert into TProducto values(@Nombres,@descripcion,@Precio,@codCategoria,@codPromocion)
				select CodError = 0, Mensaje = ' Alumno insertada correctamente'
			end
         else select CodError = 1, Mensaje = 'Error: no existe la Categoria'

	else select CodError = 1, Mensaje = 'Error: producto duplicado'
end
GO 





if OBJECT_ID('spEliminarProducto') is not null
	drop proc spEliminarProducto
GO 

create  proc spEliminarProducto
@CodProducto int
as
begin
	-- Verificar que el Codigo exista
	if exists (select CodProducto from TProducto where CodProducto=@CodProducto)
	  -- Verificar que no exista alumnos en la carrera
	  if not exists (select CodProducto from TDetallePedido where CodProducto=@CodProducto )
		begin
			delete from TProducto where CodProducto=@CodProducto
			select CodError = 0, Mensaje = ' Alumno eliminado correctamente'
		end
	  else select CodError = 1, Mensaje = 'Error: Existe Notas del Alumno'
	else select CodError = 1, Mensaje = 'Error: CodAlumno no existe'
end


if OBJECT_ID('spActualizarProducto') is not null
	drop proc spActualizarProducto
GO 

create proc spActualizarProducto
    @CodProducto int,
    @Nombres varchar(70), 
	@descripcion varchar(70) , 
	@Precio  numeric(10,3),
	@codCategoria int  ,
	@codPromocion int  
as
begin
	-- CodAlumno debe existir
	if exists (select  @CodProducto from TProducto where CodProducto=@CodProducto )
		-- Carrera no exista
			--Verificar que  exista Usuario  
	 if  exists (select codCategoria  from TCategoria  where codCategoria=@codCategoria)
		--Verificar que  exista   carrera
	
		begin
			update TProducto  set Nombres=@Nombres,descripcion=@descripcion,Precio=@Precio,codCategoria=@codCategoria,codPromocion=@codPromocion 
			     where codCategoria=@codCategoria
			select CodError = 0, Mensaje = 'Producto actualizada'
		end
		else select CodError = 1, Mensaje = 'Error: no existe la  Categoria'

	else select CodError = 1, Mensaje = 'Error: Codigo Producto no existe '

end

GO

if OBJECT_ID('spBuscarProducto') is not null
	drop proc spBuscarProducto
GO 

 create proc spBuscarProducto
@Texto varchar(50)
as
	begin
		select * from TProducto where Nombres LIKE '%' + @Texto + '%' 
	end


