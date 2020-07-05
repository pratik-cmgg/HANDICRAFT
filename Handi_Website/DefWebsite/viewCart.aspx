<%@ Page Title="" Language="C#" MasterPageFile="~/orderMasterPage.master" AutoEventWireup="true" CodeFile="viewCart.aspx.cs" Inherits="viewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top:100px;margin-left:200px">
    <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" OnRowCancelingEdit="grdCart_RowCancelingEdit" OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" OnRowUpdating="grdCart_RowUpdating">
    <Columns>

        <asp:TemplateField>
            <ItemTemplate>
                  <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ImageUrl","thumb_{0}")%>'/>--%>
                  <img runat="server" src='<%#Eval("ImageUrl")%>' style="width:50px;height:50px"/>
            </ItemTemplate>
        </asp:TemplateField>
        <%--<asp:BoundField DataField="ImageUrl" HeaderText="ImageUrl" ReadOnly="True" />--%>
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="SubTotal" DataFormatString="{0:c}" HeaderText="Total"
            ReadOnly="True" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

    </Columns>
        
        <EmptyDataTemplate>
        Your Shopping Cart is empty, add items  <br/><br />
        <a href="subCategory.aspx">Continue Shopping </a>
    </EmptyDataTemplate>
    
    </asp:GridView>
   </div>

    <div style="margin-left:200px;font-family:'Sitka Small'">
    <asp:Label ID="TotalLabel" runat="server" > </asp:Label>
        <asp:Button ID="Btnorder" runat="server" Text="Place Order" onclick="Btnorder_Click" class="btn btn-success" />
    </div>
</asp:Content>

