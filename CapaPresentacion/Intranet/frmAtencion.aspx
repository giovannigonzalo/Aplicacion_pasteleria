<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MasterPage.master" AutoEventWireup="true" CodeFile="frmAtencion.aspx.cs" Inherits="Intranet_frmAtencion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="content-header">
        <h3 style="text-align: center">Producto</h3>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Atencion</asp:LinkButton></a></li>
                <li><a>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Nuevo Atencion</asp:LinkButton>
                </a></li>
            </ul>
        </div>
        </section>

</asp:Content>

