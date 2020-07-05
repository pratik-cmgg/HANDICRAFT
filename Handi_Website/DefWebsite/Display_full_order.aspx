<%@ Page Title="" Language="C#" MasterPageFile="~/orderMasterPage.master" AutoEventWireup="true" CodeFile="Display_full_order.aspx.cs" Inherits="Display_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <table>
                <tr>
             <td>
               <div style="float:right;border:double;margin-left:40px;font-family:'Sitka Small';font-size:large;background-color:#ffffe6"><b>User Details:</b>
               <br /><b>Order ID:</b>
                <%#Eval("orderid") %><br />
                   <b>Product ID:</b>
                <%#Eval("productid") %><br />
              <b>  Product_Name:</b>
                        <img src="<%#Eval("productname") %>" /><br /><br />
              <b>  Product_Image:</b>
                        <%#Eval("productimgurl") %><br /><br />
              <b>Quantity:</b>
                        <%#Eval("quantity") %><br /><br />
             
               <b>Price:</b>
                        <%#Eval("price") %><br /><br />
                    

                </div></td>
                    <td>
                       
                  </tr></table>
        </ItemTemplate>
    </asp:Repeater>
     <td><asp:Label ID="l1" runat="server" Text="Label"></asp:Label></td>
</asp:Content>

