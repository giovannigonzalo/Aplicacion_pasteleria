<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MasterPage.master" AutoEventWireup="true" CodeFile="frmUsuario.aspx.cs" Inherits="Intranet_frmUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-header">
       <h3 style="text-align: center"> EMPLEADOS</h3>
       <div class="navbar-collapse collapse">
           <ul class="nav navbar-nav">
       <li> <a> <asp:LinkButton ID="LinkButton1" runat="server"   OnClick="LinkButton1_Click">usuarios  </asp:LinkButton></a></li>  
      <li>  <a> <asp:LinkButton  ID="LinkButton2" runat="server"   OnClick="LinkButton2_Click"  >nuevo usuario </asp:LinkButton>  </a></li>  
       </ul>
</div>
    </section>
         <section class="content">
   
       <asp:MultiView  ActiveViewIndex="0" ID="Multiusuario" runat="server" >

           <asp:View  runat="server" ID="vejemplo3" >




                <p><asp:TextBox ID="txtdato" runat="server"></asp:TextBox>  <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click"  />  </p>
              
               <asp:GridView ID="gvUsuario" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
           
           <asp:View runat="server" ID="viewusuario2" >
         <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                         <div class="form-group">
                          <label>NOMBRES</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNombre" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
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
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <div class="form-group">
                            <label>CARGO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtCargo" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                            <label>Genero</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlGenero" runat="server" CssClass="form-control" >
                                <asp:ListItem  Value="m">Masculino</asp:ListItem>
                                <asp:ListItem Value="f">Femenino</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>USUARIO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtUsuario" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>CONTRASEÑA </label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtContraseña" TextMode="Password"  runat="server" Text="" CssClass="form-control"></asp:TextBox>
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

