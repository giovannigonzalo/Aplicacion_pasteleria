<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-language" content="es" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>login   </title>
    <link href="estilos/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="estilos/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="estilos/css/AdminLTE.css" rel="stylesheet" type="text/css" />

</head>
<body class="bg-black">
    <form id="form1" runat="server">
    <div class="form-box  " id="login-box">
        <asp:Login ID="LoginUser" runat="server" EnableViewState="false" OnAuthenticate="LoginUser_Authenticate" >
        <LayoutTemplate>
             <div class="hearde  bg-olive  ">LOGIN </div>
            <div class="body bg-gray"  >   
            <div class="from-group"  >
            <asp:TextBox ID="UserName" runat="server" CssClass="from-comtrol"  placeholder="Ingrese Usuario"  ></asp:TextBox>
            </div> <br />

          <div class="from-group"  >
             <asp:TextBox  ID="Password" runat ="server" CssClass="from-comtrol"  placeholder="Ingrese Contraseña" TextMode="Password" ></asp:TextBox>
          </div>
         </div>
            
        <div class="footer"  >
            &nbsp;
            <asp:Button ID="btnIngresar" CommandName="Login" runat="server" Text="Inicar Sesión" CssClass="btn bg-olive btn-block" Height="37px" Width="228px" />

            </div>
            </LayoutTemplate>
            </asp:Login>

    </div>
 </form>

</body>

    <script src="estilos/js/jquery-3.1.0.min.js"></script>
<script  src="estilos/js/bootstrap.min.js" type="text/javascript"></script>
</html>
