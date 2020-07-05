<%@ Page Title="" Language="C#" MasterPageFile="~/orderMasterPage.master" AutoEventWireup="true" CodeFile="confirmOrder.aspx.cs" Inherits="confirmOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <p style="margin-top:200px;margin-left:350px;font:bold;font-family:'Sitka Small';font-size:x-large">
        Your Order has been placed successfully !</p>
    <p style="margin-left:350px;font:bold;font-family:'Sitka Small';font-size:x-large">
        Please check your mail for details&nbsp; .</p>
    <p style="margin-left:350px;font:bold;font-family:'Sitka Small';font-size:x-large">
      <a href="category.aspx">  Continue Shopping</a>
    </p>
     <%--<a href="category.aspx">--%>  

</asp:Content>

