<%@ Page Title="" Language="C#" MasterPageFile="~/orderMasterPage.master" AutoEventWireup="true" CodeFile="display_order.aspx.cs" Inherits="display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                
            </HeaderTemplate>
            <ItemTemplate>
                
                <table>
                    <tr>
                        <td>
                <div style="width:400px;margin-left:300PX;margin-top:100px">
                    </div></td>
                     </tr>   <tr> <td>
               <div style="float:right;border:double;margin-left:40px;font-family:'Sitka Small';font-size:large;background-color:#ffffe6"><b>User Details:</b>
               <br /><b>Order ID:</b>
                <%#Eval("orderid") %><br />
              <b>  Order Date:</b>
                        <%#Eval("order_date") %><br /><br />
              <b>  Customer_MAil_id</b>
                        <%#Eval("cust_mail") %><br /><br />
              <b>Total_amount</b>
                        <%#Eval("tot_amount") %><br /><br />
             
                       <%-- <td> <a href="Display_full_order.aspx?orderid=<%#Eval("orderid") %>">View full order</a></td>--%>

                </div></td>
                  </tr></table>
            </ItemTemplate>
        </asp:Repeater>
</asp:Content>

