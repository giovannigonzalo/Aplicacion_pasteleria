using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocios;
using CapaEntidades;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginUser_Authenticate(object sender, EventArgs e)
    {
        Usuario usuario = new Usuario();
        UsuarioBL usuarioBL = new UsuarioBL();
        string _Usuario = LoginUser.UserName;
        string _Contrasena = LoginUser.Password;
        usuario._Usuario = _Usuario;
        usuario._Contrasena = _Contrasena;
        if (usuarioBL.Login(usuario))
        {
            Response.Write("<script>alert('" + usuarioBL.Mensaje + "');</script>");
            Response.Redirect("~/Intranet/PaginaPrincipal.aspx");
        }else
            Response.Write("<script>alert('" + usuarioBL.Mensaje + "');</script>");
        Response.Write(usuarioBL.Mensaje);
        
    }
}