<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MasterPage.master" AutoEventWireup="true" CodeFile="frmCliente.aspx.cs" Inherits="Intranet_frmCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-header">
        <h3 style="text-align: center">Producto</h3>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Cliente</asp:LinkButton></a></li>
                <li><a>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Nuevo Cliente</asp:LinkButton>
                </a></li>
            </ul>
        </div>
        </section>

    <section class="content">
   
       <asp:MultiView  ActiveViewIndex="0" ID="MultiCliente" runat="server" >

           <asp:View  runat="server" ID="vCliente" >
                <p><asp:TextBox ID="txtdato" runat="server"></asp:TextBox>  <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click"  />  </p>
              
               <asp:GridView ID="gvCliente" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
                
             
                    </asp:View>
           
           <asp:View runat="server" ID="viewCliente2" >
         <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                         <div class="form-group">
                            <label>APELLIDO PATERNO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtApPaterno" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>APELLIDO MATERNO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtApMaterno" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                          <label>NOMBRES</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNombre" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>DOCUMENTO DE IDENTIDAD</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNroDocumento" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div>
                </div>
            </div>
        </div>
               <div align="center">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary"   OnClick="btnRegistrar_Click"  Width="200px" Text="Registrar" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Width="200px" Text="Cancelar" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
              

               </asp:View>


       </asp:MultiView>
             </section>







</asp:Content>

