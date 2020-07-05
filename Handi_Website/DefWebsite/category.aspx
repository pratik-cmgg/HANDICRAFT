<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <form runat="server" style="margin-top:70px;">
            <div  style="margin-top:40px;margin-left:10px;margin-bottom:50px"><h3 style="font-family: Sitka Small;
        margin-left:600px;margin-bottom:50px;margin-top:50px"><u style="margin-top:50px">CATEGORY</u></h3>
    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" RepeatColumns ="4"
         BorderColor="Tan" BorderWidth="1px" CellPadding="0" ForeColor="Black" DataKeyField="cat_id" 
        DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" 
        CellSpacing="2" HorizontalAlign="Center" SelectedItemStyle-Width="250px" ItemStyle-HorizontalAlign="Justify">
        <AlternatingItemStyle BackColor="PaleGoldenrod"></AlternatingItemStyle>

        <FooterStyle BackColor="Tan"></FooterStyle>

        <HeaderStyle BackColor="Tan" Font-Bold="True"></HeaderStyle>

        <ItemStyle Font-Bold="True" />

        <ItemTemplate>
                <asp:Label Text='<%# Eval("cat_name") %>' runat="server" ID="cat_nameLabel" /><br />

             <a href="<%# String.Format("subCategory.aspx?ID={0}", Eval("cat_id"))%>" style="font-family: 'Sitka Small'; text-decoration: none; font-variant: normal; font-style: normal; font-weight: bold;">
           
            <img src='<%# Eval("cat_img") %>' runat="server" style="padding:15px" /><br />
                  
           
           
            <asp:Label Text='<%# Eval("cat_des") %>' runat="server" ID="cat_desLabel"  /><br />
       
        </ItemTemplate>

        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite"></SelectedItemStyle>
    </asp:DataList>
        </div>
        </form>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:handiCon %>' SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
</asp:Content>

