use BDPastelería
go

if OBJECT_ID('spListarPromocion') is not null
	drop proc spListarPromocion
GO 
create proc spListarPromocion
as
begin
	select codPromocion as 'CODIGO', descripcion as 'DESCRIPCIÓN',stock as 'STOCK',descuento as 'DESCUENTO '  from TPromocion
end
GO

if OBJECT_ID('spAgregarPromocion') is not null
	drop proc spAgregarPromocion
GO 

create proc spAgregarPromocion
	@descripcion varchar(70) , 
	@stock  int,
	@descuento numeric(10,3)
as
begin

	if not exists(select descripcion  from TPromocion where descripcion =@descripcion  )
	
			begin
				insert into TPromocion values(@descripcion,@stock,@descuento)
				select CodError = 0, Mensaje = ' Promocion insertada correctamente'
			end

	else select CodError = 1, Mensaje = 'Error: Promocion duplicado'
end
GO 





if OBJECT_ID('spEliminarPromocion') is not null
	drop proc spEliminarPromocion
GO 

create  proc spEliminarPromocion
@codPromocion int
as
begin
	-- Verificar que el Codigo exista
	if exists (select codPromocion from TPromocion where codPromocion=@codPromocion)
	  -- Verificar que no exista alumnos en la carrera
	  if not exists (select codPromocion from TPedido where codPromocion=@codPromocion)
		begin
			delete from TPedido  where codPromocion=@codPromocion
			select CodError = 0, Mensaje = ' Alumno eliminado correctamente'
		end
	  else select CodError = 1, Mensaje = 'Error: Existe Notas del Alumno'
	else select CodError = 1, Mensaje = 'Error: CodAlumno no existe'
end


if OBJECT_ID('spActualizarPromocion') is not null
	drop proc spActualizarPromocion
GO 

create proc spActualizarPromocion
@codPromocion int,
@descripcion varchar(70) , 
	@stock  int,
	@Precio  numeric(10,3),
	@descuento numeric(10,3)
as
begin

	if exists(select codPromocion  from TPromocion where codPromocion=@codPromocion  )
	
			begin
			update TPromocion  set descripcion=@descripcion,stock=@stock,descuento=@descuento
			     where codPromocion=@codPromocion 
				
				select CodError = 0, Mensaje = ' Promocion Actualizado correctamente'
			end

	else select CodError = 1, Mensaje = 'Error: Promocion duplicado'
end

GO

if OBJECT_ID('spBuscarPromocion') is not null
	drop proc spBuscarPromocion
GO 

 create proc spBuscarPromocion
@Texto varchar(50)
as
	begin
		select * from TPromocion where descripcion LIKE '%' + @Texto + '%' 
	end


