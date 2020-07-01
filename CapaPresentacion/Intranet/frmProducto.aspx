<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MasterPage.master" AutoEventWireup="true" CodeFile="frmProducto.aspx.cs" Inherits="Intranet_frmProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content-header">
        <h3 style="text-align: center">Producto</h3>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Productos </asp:LinkButton></a></li>
                <li><a>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Nuevo Producto  </asp:LinkButton>
                </a></li>
            </ul>
        </div>
    </section>
    <section class="content">

        <asp:MultiView ActiveViewIndex="0" ID="Multiusuario" runat="server">

            <asp:View runat="server" ID="vProductos">
                <p>
                    <asp:TextBox ID="txtdato" runat="server"></asp:TextBox>
                    <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click" />
                </p>
                <asp:GridView ID="gvproducto" runat="server">
                </asp:GridView>
            </asp:View>

            <asp:View runat="server" ID="viewNuevoProducto">
                
                <div class="row">
                    <div class="col-md-8">
                        <div class="box box-primary">
                            <div class="box-body">
                                <div class="form-group">
                                    <label>NOMBRE</label>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtNombre" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>descripcion</label>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdescripcion" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Precio</label>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Number" ID="txtPrecio" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Categoria</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="147px">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:Button ID="btnCategoria" runat="server" Text="Nueva Categoria" OnClick="btnCategoria_Click" />
                                </div>
                                <div class="form-group">
                                    <label>Promocion</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="147px">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList><br />

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box box-primary">
                            <div class="box-body">

                                <div class="form-group">
                                    <label>imagen</label>
                                </div>
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>

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
                <br />


            </asp:View>
            <asp:View runat="server" ID="viewNuevoCategoria">
                <p> Categoria </p>
                <p>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button Text="Buscar" runat="server" ID="Button1" OnClick="btnBuscarCategoria_Click" />
                </p>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box box-primary">
                            <div class="box-body">

                              <asp:GridView ID="gvCategoria" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="box box-primary">

                            <div class="form-group">
                                <label>Crear nueva Categoria</label>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtCategoria" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="BtnnuevaCategoria" runat="server" CssClass="btn btn-primary" OnClick="BtnnuevaCategoria_Click" Width="200px" Text="Registrar Nueva Categoria " />
                            </div>
                            <div class="form-group">
                                <label>Editar Categoria</label>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtEditarCategoria" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="BtnEditarCategoria" runat="server" CssClass="btn btn-primary" OnClick="BtnEditarCategoria_Click" Width="200px" Text="Guardar  Cambios " />
                            </div>
                             <div class="form-group">
                                <asp:Button ID="Btneliminar" runat="server" CssClass="btn btn-primary" OnClick="Btneliminar_Click" Width="200px" Text="Eliminar  Categoria " />
                            </div>

                        </div>
                    </div>


                </div>
                
                <br />

            </asp:View>

        </asp:MultiView>
    </section>

</asp:Content>

