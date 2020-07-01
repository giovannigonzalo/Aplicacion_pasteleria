using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocios;
using CapaEntidades;
public partial class Intranet_frmUsuario : System.Web.UI.Page
{
    private void Listar()
    {
        UsuarioBL usuarioBL = new UsuarioBL();
        gvUsuario.DataSource = usuarioBL.Listar();
        gvUsuario.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) // Solo carga el listado la primera vez
        {
            Listar();
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        // Activar el View 1
        Multiusuario.ActiveViewIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Multiusuario.ActiveViewIndex = 1 ; 


        }
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        Usuario usuario = new Usuario();
        UsuarioBL usuarioBL = new UsuarioBL();
        usuario._Nombres = txtNombre.Text.Trim();
        usuario._ApePaterno = txtApPaterno.Text.Trim();
        usuario._ApeMaterno = txtApMaterno.Text.Trim();
        usuario._Cargo = txtCargo.Text.Trim();

        usuario._Genero = Convert.ToString(ddlGenero.SelectedValue);

        usuario._Usuario = txtUsuario.Text.Trim();
        usuario._Contrasena = txtContraseña.Text.Trim();
        if (usuarioBL.Agregar(usuario))
        {
           Listar();
        }

        Response.Write("<script>alert('" + usuarioBL.Mensaje + "');</script>");
        Response.Write(usuarioBL.Mensaje);

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        UsuarioBL usuarioBL = new UsuarioBL();
        gvUsuario.DataSource = usuarioBL.Buscar(txtdato.Text.Trim());
        gvUsuario.DataBind();
    }







}