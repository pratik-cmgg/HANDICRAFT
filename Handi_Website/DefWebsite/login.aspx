<%@ Page Title="" Language="C#" MasterPageFile="~/orderMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 133px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>  
        <div  style="margin-top:80px;height:550px;background-image: url(http://localhost:13745/images/formImages/login_background.jpg)">
            <div class="row">
            <div class="row" style="font-family:'Sitka Small';background-color:rgba(0, 0, 0, 0.50); height: 200px; width: 480px; margin-left: 400px; margin-top: 10px;">
                <img src="images/logo/login%20logo.png" style="height:200px;width:200px;margin-left:150px;" />
                </div>
                 <div class="row"style="font-family:'Sitka Small';background-color:rgba(0, 0, 0, 0.50);height:340px;width:480px;margin-left:400px;color:whitesmoke" >
                <table style="width:100%;font-family:Sitka Small;margin-left:50px;margin-bottom:10px">
                     <tr style="font-size:xx-large;margin-left:100px">
                         <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3" style="">LOGIN</td>
                        
                        <td>&nbsp;</td>
                    </tr>
                     <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr style="margin-top:100px">
                       <td class="auto-style3"></td><td>
                        <asp:Label ID="lblmsg" runat="server" ForeColor="#FF6600"></asp:Label></td>
                    </tr>
                       <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr style="font-size:large">
                        <td class="auto-style3">
                            <asp:Label ID="lblmail" runat="server" Text="Email_id:" Font-Bold="True"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtmail" runat="server" OnTextChanged="txtmail_TextChanged" ForeColor="Black"></asp:TextBox>  </td>
                          <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                      
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr style="font-size:large">
                        <td class="auto-style3">
                            <asp:Label ID="lblpass" runat="server" Text="Password:" Font-Bold="True"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>       </td>
                      <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                 
                        </td>
                    </tr>
                   
                      <tr style="height:100px;width:100px">
                          <td></td>
                          <td style="font-family:'Sitka Small';" class="auto-style3">
                          
                               <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" Font-Bold="True" ForeColor="Black" />
                        &nbsp;&nbsp;       <asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="CANCEL" Font-Bold="True" ForeColor="Black" />

                              <%--<asp:ImageButton ID="ImageButton1" runat="server" Height="49px" ImageUrl="~/images/buttons/loginButton.png" Width="145px" OnClick="ImageButton1_Click"  PostBackUrl="~/clientSubGallery.aspx" />--%>
                          </td>
                          </tr>
                    <tr>
                        <td></td>
                          <td>
                             <a style="font-size:medium;margin-left:10px;font-family:'Sitka Small';color:whitesmoke" href="Registration.aspx">Not Registered?</a>
                          </td>
                    </tr>
                    <tr>
                         <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td> 
                        <td>
                            </td>
                        
                        <td class="auto-style3">&nbsp;</td>
                    </tr>

                </table>
                   
                   
                </div>
               
           </div>
        </div>
    <%--</form>--%>

   


</asp:Content>

