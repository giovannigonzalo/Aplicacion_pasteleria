using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocios;
using CapaEntidades;

public partial class Intranet_frmProducto : System.Web.UI.Page
{

    private void Listar()
    {
        ProductoBL productoBL = new ProductoBL();
        gvproducto.DataSource = productoBL.Listar();
        gvproducto.DataBind();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) // Solo carga el listado la primera vez
        {
            Listar();
            Lista();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        // Activar el View 1
        Multiusuario.ActiveViewIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Multiusuario.ActiveViewIndex = 1;


    }


    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        //obtener datos de la imagen
        Producto producto = new Producto();
        ProductoBL productoBL = new ProductoBL();

        producto._Nombres = txtNombre.Text.Trim();
        producto._descripcion = txtdescripcion.Text.Trim();
        producto._Precio =  Convert.ToDouble(txtPrecio.Text.Trim());
        //producto._codCategoria = Convert.ToString(DropDowncodCategoria.SelectedValue);
        //producto._codPromocion = txtcodPromocion.Text.Trim();

        if (productoBL.Agregar(producto))
        {
            Listar();
        }
        Response.Write("<script>alert('" + productoBL.Mensaje + "');</script>");
        Response.Write(productoBL.Mensaje);
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        ProductoBL productoBL = new ProductoBL();
        gvproducto.DataSource = productoBL.Buscar(txtdato.Text.Trim());
        gvproducto.DataBind();
     
    }
    protected void btnCategoria_Click(object sender, EventArgs e)
    {
        Multiusuario.ActiveViewIndex = 2;
    }

    private void Lista()

    {
        CategoriaBL categoriaBL = new CategoriaBL();
        gvCategoria.DataSource = categoriaBL.Listar();
        gvCategoria.DataBind();
        
    }

    protected void BtnnuevaCategoria_Click(object sender, EventArgs e)
    {
        //obtener datos de la imagen
        Categoria categoria = new Categoria();
        CategoriaBL categoriaBL = new CategoriaBL();

        categoria._Nombre = txtCategoria.Text.Trim();

        if (categoriaBL.Agregar(categoria))
        {
            Lista();
        }
        Response.Write("<script>alert('" + categoriaBL.Mensaje + "');</script>");
        Response.Write(categoriaBL.Mensaje);
    }
    protected void BtnEditarCategoria_Click(object sender, EventArgs e)
    {
        Categoria categoria = new Categoria();
        CategoriaBL categoriaBL = new CategoriaBL();

        categoria._Nombre = txtEditarCategoria.Text.Trim();

        if (categoriaBL.Actualizar(categoria))
        {
            Lista();
        }
        Response.Write("<script>alert('" + categoriaBL.Mensaje + "');</script>");
        Response.Write(categoriaBL.Mensaje);

    }
    protected void Btneliminar_Click(object sender, EventArgs e)
    {
        Categoria categoria = new Categoria();
        CategoriaBL categoriaBL = new CategoriaBL();

        if (categoriaBL.Eliminar(txtEditarCategoria.Text.Trim()))
        {
            Lista();
        }
        Response.Write("<script>alert('" + categoriaBL.Mensaje + "');</script>");
        Response.Write(categoriaBL.Mensaje);

    }

   

    
    protected void btnBuscarCategoria_Click(object sender, EventArgs e)
    {
        CategoriaBL categoriaBL = new CategoriaBL();
        gvCategoria.DataSource = categoriaBL.Buscar(TextBox1.Text.Trim());
        gvCategoria.DataBind();

    }






}