use BDPastelería
go
if DB_ID('spLogin') is not null
   drop database spLogin
go

 create proc spLogin
   	@Usuario     varchar(50),
	@Contrasena	varchar(50)
   as
begin
if exists(select Usuario from TUsuario where  Usuario=@Usuario and Contrasena=@Contrasena )
   select  CodError=0, Mensaje = ' Acceso correcto '
   else select CodError = 1, Mensaje = 'Error:Usuario y/o Contrasena incorrecta '
end
   
   
  