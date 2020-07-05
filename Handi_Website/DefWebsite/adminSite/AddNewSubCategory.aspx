<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewSubCategory.aspx.cs" Inherits="adminSite_AddNewSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 366px;
        }
        .auto-style2 {
            width: 366px;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
            <div class="container" style="margin-top:100px;background-color:peachpuff;font-family:Sitka Small;height:600px;">
                  <div class="row" style="height:180px">
             <div class="col-lg-3" style="float:left;height:180px;width:150px">
               <%--  <img src="images/logo/login.png" style="height:170px;width:180px" />
             --%></div>
             <div class="col-lg-9" style="float:left;color:black;font-size:xx-large;margin-top:50px"><u><b style="margin-left:350px;margin-top:120px">ADD SUBCATEGORY</b></u></div> 
             </div>
                    <div class="row" style="margin-left:50px;font-size:x-large;margin-bottom:50px;align-content:center">

        <table style="margin-left:300px;">
            <tr>
                <td class="auto-style2" style="font-weight: bold;">Select Category:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cat_id" DataValueField="cat_id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:handiCon %>" SelectCommand="SELECT [cat_id] FROM [category]" OnSelecting="SqlDataSource1_Selecting1"></asp:SqlDataSource>
<%--                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cat_id" DataValueField="cat_n">
                        <asp:ListItem>Home &amp; Living</asp:ListItem>
                        <asp:ListItem>Lighting &amp; Lamps</asp:ListItem>
                        <asp:ListItem>Religion &amp; Spirituality</asp:ListItem>
                        <asp:ListItem>Kitchen &amp; Dining</asp:ListItem>
                    </asp:DropDownList>--%>
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                
                <td>
                   

                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    
                </td>
            </tr>
              <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style1" style="font-weight: bold">Enter SubCategory Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               <tr>
                <td class="auto-style1" style="font-weight: bold">Enter Description:</td>
                <td>
                    <asp:TextBox ID="txtdes" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                <td class="auto-style1" style="font-weight: bold">Upload Image:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        
            <td>&nbsp;</td>
        
        </tr>
               <tr>
            <td class="auto-style1">
                <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" /></td>
               &nbsp;&nbsp;  <td><asp:Button ID="btnClear" runat="server" Text="CLEAR" /></td>
         
        
            <td>&nbsp;</td>
        
        </tr>
     
        </table>

    </div>
                </div>
        </form>

</asp:Content>

