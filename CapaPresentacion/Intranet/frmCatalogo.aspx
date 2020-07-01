<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmCatalogo.aspx.cs" Inherits="frmCatalogo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
<h1>productos</h1>
<br />


<div class="container">
    <div class="row">
     
<div class="col-lg-4">
    <div class="panel panel-default">
        <div class="panel-heading">titulo</div>
        <div class="panel-body"> 
             <img class="img-responsive"  src= " @p.image "/>
            
            contenido </div>

        </div>
    </div>
        
</div>
    
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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

</asp:Content>
   
