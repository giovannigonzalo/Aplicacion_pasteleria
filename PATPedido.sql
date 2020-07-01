use BDPastelería
go

if OBJECT_ID('spListarPedido') is not null
	drop proc spListarPedido
GO 
create proc spListarPedido
as
begin
	select codPedido as 'CODIGO', CodCliente  as 'CLIENTE  ' ,codProducto  as  ' PRODUCTO ', cantidad as  'CANTIDAD  ',Direccion  as 'DIRECCIÓN ',FechaPedido  as 'FECHA  PEDIDO ' ,Fechaentrega as 'FECHA ENTREGA'   from TPedido
end
GO

if OBJECT_ID('spAgregarPedido') is not null
	drop proc spAgregarPedido
GO 

create proc spAgregarPedido
    @CodCliente int,
	@codProducto int,
	@cantidad numeric(10,3),
    @Direccion varchar (70) , 
  	@FechaPedido  datetime , 
	@Fechaentrega  datetime 
	

as
begin
	-- CodAlumno no se duplica
	if  exists(select CodCliente from TCliente where CodCliente=@CodCliente)
		--Verificar que  exista Usuario  
		if  exists(select codProducto from TProducto where codProducto=@codProducto)
	 
		
			begin
				insert into TPedido values(@CodCliente,@codProducto,@cantidad,@Direccion,@FechaPedido,@Fechaentrega)
				select CodError = 0, Mensaje = ' Pedido insertada correctamente'
			end
         else select CodError = 1, Mensaje = 'Error: no existe Producto'

	else select CodError = 1, Mensaje = 'Error: no existe  Cliente '
end
GO 


create proc spBuscarCliente 
@Texto varchar(50)
as
	begin
		select * from TPedido where  CodCliente LIKE '%' + @Texto + '%' or codPedido LIKE '%' + @Texto + '%' 
	end

