<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="subCategory.aspx.cs" Inherits="subCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" >
            <div  style="margin-top:70px;margin-left:10px;margin-bottom:50px"><h3 style="font-family: Sitka Small;
                margin-left:600px;margin-bottom:50px;margin-top:50px"><u style="margin-top:50px">SUB_CATEGORY</u></h3>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Go To Main Category" class="btn btn-warning" OnClick="Button1_Click" />
                <br />
                <div style="height:20px"></div>
              <asp:DataList ID="DataList1" runat="server" DataKeyField="sub_id" RepeatColumns="4" DataSourceID="SqlDataSource1" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="0" CellSpacing="2"
                    HorizontalAlign="Center" SelectedItemStyle-Width="250px" ItemStyle-HorizontalAlign="Justify" ForeColor="Black" Font-Bold="True">
                    <AlternatingItemStyle BackColor="PaleGoldenrod" Font-Bold="True" />
                    <EditItemStyle Font-Bold="True" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemStyle />
                    <ItemTemplate>
                     

                        <asp:Label Text='<%# Eval("sub_name") %>' runat="server" ID="sub_nameLabel" /><br />
                        <a href="<%# String.Format("clientSubGallery.aspx?ID={0}", Eval("sub_id")) %>" style="font-family: 'Sitka Small'; text-decoration: none; font-variant: normal; font-style: normal; font-weight: bold;">
            
                        <img src='<%# Eval("sub_img") %>' runat="server"  style="padding:16px" /><br />
                        <br />
                   
                        <asp:Label Text='<%# Eval("sub_des") %>' runat="server" ID="sub_desLabel" /><br />
                   
                        
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:DataList>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:handiCon %>' SelectCommand="SELECT * FROM [subCategory] WHERE ([cat_id] = @cat_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="ID" DefaultValue="1" Name="cat_id" Type="Int32"></asp:QueryStringParameter>
                    </SelectParameters>
                 </asp:SqlDataSource>
            </div>
   </form>
</asp:Content>

