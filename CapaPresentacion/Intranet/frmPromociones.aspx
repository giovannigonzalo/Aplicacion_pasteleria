<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MasterPage.master" AutoEventWireup="true" CodeFile="frmPromociones.aspx.cs" Inherits="Intranet_frmPromociones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="content-header">
        <h3 style="text-align: center">Producto</h3>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Promociones </asp:LinkButton></a></li>
                <li><a>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Nuevo Promocion </asp:LinkButton>
                </a></li>
            </ul>
        </div>
        </section>

    <section class="content">

        <asp:MultiView ActiveViewIndex="0" ID="Multipromocion" runat="server">
            <asp:View  runat="server" ID="viewNuevo"   >

                 <asp:GridView ID="gvpromocion" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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

            <asp:View runat="server" ID="viewNuevoPromocion"  >
                <div class="row">
                    <div class="col-md-8">
                        <div class="box box-primary">
                            <div class="box-body">
                                <div class="form-group">
                                    <label>DESCRIPCIÓN</label>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdescripcion" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>STOCK</label>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox  TextMode="Number" ID="txtstock" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>DESCUENTO</label>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Number" ID="txtdescuento" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        </div>
                <div align="center">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" Width="200px" Text="Registrar" />
                            </td>
                            <td></td>
                            <td>
                                <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Width="200px" Text="Cancelar" />
                            </td>
                        </tr>
                    </table>
                </div>
                    </div>
                    
                
                <br />





            </asp:View>






</asp:MultiView>
    </section>









</asp:Content>

