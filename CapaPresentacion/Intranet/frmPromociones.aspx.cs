using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocios;
using CapaEntidades;

public partial class Intranet_frmPromociones : System.Web.UI.Page
{
    private void Listar()
    {
        PromocionBL promocionBL = new PromocionBL();
        gvpromocion.DataSource = promocionBL.Listar();
        gvpromocion.DataBind();
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
        Multipromocion.ActiveViewIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Multipromocion.ActiveViewIndex = 1;
     }
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
                PromocionBL promocionBL = new PromocionBL();
        Promocion promocion = new Promocion();
        promocion._descripcion = txtdescripcion.Text.Trim();
        promocion._stock = Convert.ToInt32(txtstock.Text.Trim());
        promocion._descuento = Convert.ToDouble(txtdescuento.Text.Trim());


        if (promocionBL.Agregar(promocion))
        {
            Listar();
        }
        Response.Write("<script>alert('" + promocionBL.Mensaje + "');</script>");
        Response.Write(promocionBL.Mensaje);
    }






}