use BDPastelería
go

if OBJECT_ID('spListarAtencion') is not null
	drop proc spListarAtencion
GO 
create proc spListarAtencion
as
begin
	select codAtencion  as 'CODIGO', codPedido as 'PEDIDO ' ,CodUsuario  as  ' USUARIO ', estado as  'ESTADO'   from TAtencion
end
GO

if OBJECT_ID('spAgregarAtencion') is not null
	drop proc spAgregarAtencion
GO 

create proc spAgregarAtencion
    @codPedido  int,
	@CodUsuario int,
    @estado varchar (1)
as
begin
	-- CodAlumno no se duplica
	if  exists(select codPedido from TPedido where codPedido=@codPedido)
		--Verificar que  exista Usuario  
		if  exists(select CodUsuario  from TUsuario  where CodUsuario =@CodUsuario )

			begin
				insert into TAtencion values(@codPedido,@CodUsuario,@estado)
				select CodError = 0, Mensaje = 'Atencion  insertada correctamente'
			end
         else select CodError = 1, Mensaje = 'Error: no existe Usuario'

	else select CodError = 1, Mensaje = 'Error: no existe  Pedido '
end
GO 
if OBJECT_ID('spBuscarAtencion') is not null
	drop proc spBuscarAtencion
GO 

create proc spBuscarAtencion
@Texto varchar(50)
as
	begin
		select * from TAtencion where  codPedido LIKE '%' + @Texto + '%' or  @CodUsuario LIKE '%' + @Texto + '%' 
	end







