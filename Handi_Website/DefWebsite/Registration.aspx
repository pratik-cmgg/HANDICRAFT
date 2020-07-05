<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <style type="text/css">
        .auto-style22 {
         width: 195px;
     }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   <div class="row" style="border: double; margin-top: 75px; width: 1347px;height:750px; margin-left: 3px; background-image: url(http://localhost:13745/images/formImages/registration_background.jpg); ">
   <%--    <div class="col-lg-6"style="float:left;">
           <img src="images/formImages/login_wallpaper.jpg" style="width:650px;height:670px;" /></div>--%>
       <div class="col-lg-6"style="float:left;margin-left:350px;background-color:rgba(0, 0, 0, 0.50);margin-top:70px;color:whitesmoke">
            <table style="margin-top:0px;font-family:'Sitka Small';font:bold;margin-left:10px;font-size:large;height:580px">
               <tr style="font:bold;font-size:x-large;">
                   <td></td><td><u style="font-size: 25px; font-family: 'Sitka Small'; margin-top: 60px">REGISTRATION FORM</td></tr>
                <%--<tr><td>&nbsp;&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                </tr> --%>
                
                 <tr>
                    <td class="auto-style22">
                           <asp:Label ID="lblname" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="txtname" runat="server" ForeColor="Black"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                              ControlToValidate="txtname" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"
                              ErrorMessage="Name contains ONLY Characters " 
                              ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">       <asp:Label ID="lblmail" runat="server" Text="Email_Id:" Font-Bold="True"></asp:Label>
          </td>
                    <td> <asp:TextBox ID="txtmail" runat="server" ForeColor="Black" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmail" ErrorMessage="*" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Invalid Mailing ID" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         </td>
                    <td> <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="#FF6600"></asp:Label></td>
                </tr>
               <tr>
                    <td class="auto-style22">
                              <asp:Label ID="lblpass" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>  <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ForeColor="Black" ></asp:TextBox>
                        
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Password should be between 5 to 8" ValidationExpression = "^[\s\S]{5,8}$" ControlToValidate="txtpass" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" ></asp:RegularExpressionValidator>
                   
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="*" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
      </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td class="auto-style22">         <asp:Label ID="lblcpass" runat="server" Text="Confirm Password:" Font-Bold="True"></asp:Label>
        </td>
                    <td>    <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password Mismatched" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:CompareValidator>
             </td>
                </tr>
                <tr>
                    <td>       <asp:Label ID="lblmob" runat="server" Text="Mobile Number:" Font-Bold="True"></asp:Label>
          </td>
                    <td> <asp:TextBox ID="txtmob" runat="server" ForeColor="Black"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtmob" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Invalid Mobile Number" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
                </tr>
                <tr>
                    <td>         <asp:Label ID="lbladd" runat="server" Text="Address" Font-Bold="True"></asp:Label>
              </td>
                    <td>    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtadd" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                   </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnsbt" runat="server" Text="Register" OnClick="btnsbt_Click1" class="btn btn-success" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncnl" runat="server" Text="Cancel" OnClick="btncnl_Click" class="btn btn-danger" /></td>
                </tr>
            </table>
       </div>
   </div>
    </form>
</asp:Content>

