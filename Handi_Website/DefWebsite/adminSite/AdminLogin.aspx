<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="adminSite_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
        .auto-style2 {
            width: 26px;
        }
    </style>
</head>
<body>
    
      <form id="form2" runat="server">
        <div class="container" style="background-color:peachpuff;height:600px;margin:50px;">
            <div class="row">
                <div class="col-lg-4" style="float:left;margin-top:80px;margin-left:100px" >
                    <img src="../images/logo/LogoAdmi.png" style="height:400px;"/>
                </div>
                <div class="col-lg-8" style="float:left;margin-top:70px;background-color:#ebebe0">
                           <table style="width:300px;font-family:Sitka Small;margin-left:50px;margin-bottom:10px;margin-right:135px;height:310px">
                    <h3 style="font-size:xx-large;margin-left:170px"><u><b>ADMIN LOGIN</b></u></h3>
                     <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr style="font-size:larger">
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True"></asp:Label></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtname" runat="server" Height="26px" Width="193px"></asp:TextBox>  </td>
                          <td class="auto-style2">  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                      
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr style="font-size:larger">
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True"></asp:Label></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="26px" Width="193px"></asp:TextBox>       </td>
                      <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="*" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                 
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td><td class="auto-style1">&nbsp;</td><td class="auto-style2">&nbsp;</td>
                    </tr>
                      <tr style="height:100px;width:100px">
                          <td style="">
                              <asp:ImageButton ID="ImageButton3" runat="server" Height="45px" ImageUrl="~/images/buttons/Admin_login_button.png" Width="145px" OnClick="ImageButton1_Click"/></td>
                         <td class="auto-style1">&nbsp;&nbsp; <asp:ImageButton ID="ImageButton4" runat="server" Height="45px" ImageUrl="~/images/buttons/Admin_Cancel_button.png" Width="145px" OnClick="ImageButton2_Click"/></td>
                   
                    </tr>
                  
                    <tr>
                         <td></td>
                        <td class="auto-style1">
                        <asp:Label ID="lblError" runat="server" ForeColor="#FF6600" Font-Bold="true" Font-Italic="true" ></asp:Label></td>
                         <td class="auto-style2"></td>
                       
                    </tr>

                </table>
                   
         
                </div>
            </div>

        </div>
    </form>

</body>
</html>
