<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Section: contact -->
    <form id="form1" runat="server">    
         <section id="contact" class="home-section text-center" style="background-color: peachpuff; font-family: Constantia; font: bold; height: 780px; background-image: url(http://localhost:13745/images/formImages/contact_background.jpg)">
        <div class="heading-contact marginbot-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">

                        <div class="section-heading" style="color:whitesmoke">
                            <h2>Get in touch</h2>
                            <p>Feel Free To Drop Us A Message OR Send A Brief.</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        
        <section>    
           
             <div class="col-lg-6" style="height:100px;float:left;border:thin" >
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30160.422601188024!2d72.81886147668347!3d19.105338372535844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c9c815cd159b%3A0x28ae574780132e0d!2sVile+Parle+West%2C+Mumbai%2C+Maharashtra+400047!5e0!3m2!1sen!2sin!4v1522473474695" width="750" height="420"></iframe>
            </div>
                 </div>



            <div class="col-lg-5" style="height:420px;float:right;border:thin;background-color:rgba(0, 0, 0, 0.50);color:wheat">
                <div class="row" style="height:250px">
                    <div class="col-lg-6" >
                                             <table style="padding:5px;margin-top:20px">
                                                   <tr style="text-align:left"><td>
                                                       &nbsp;&nbsp;
                                                       <asp:Label ID="lblname" runat="server" Text="NAME" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
                                                   <tr><td>
                                                       <asp:TextBox ID="txtname" runat="server" ToolTip="Enter Name" Width="200px" ForeColor="black"></asp:TextBox>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" runat="server" ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                              ControlToValidate="txtname" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"
                              ErrorMessage="Name contains ONLY Characters " 
                              ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                                   </td></tr>
                                               <tr><td>&nbsp;&nbsp;</td></tr>   <tr style="text-align:left"><td>
                                                       &nbsp;&nbsp;
                                                       <asp:Label ID="lblmail" runat="server" Text="EMAIL ADDRESS" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
                                                   <tr><td>
                                                       &nbsp;&nbsp;<asp:TextBox ID="txtmail" runat="server" ToolTip="Enter Email Address" ForeColor="black" Width="200px"></asp:TextBox>
                                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Invalid" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmail" ErrorMessage="*" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                                                       </td></tr>
                                                 <tr><td></td></tr>  
                                                     <tr style="text-align:left"><td>
                                                      
                                                       <asp:Label ID="lblsub" runat="server" Text="SUBJECT" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
                                                   <tr><td>
                                                       <asp:DropDownList ID="txtsub" runat="server" Width="200px" ForeColor="black" >
                                                           <asp:ListItem>General Customer Service</asp:ListItem>
                                                           <asp:ListItem>Suggestions</asp:ListItem>
                                                           <asp:ListItem>Product Support</asp:ListItem>
                                                       </asp:DropDownList></td></tr>
                                                 <tr><td>&nbsp;&nbsp;</td></tr>
                                                  
                                               </table>
                     

                    </div>
                  
                    <div class="col-lg-6" style="float:right;">

                         <table style="margin-top:20px">
                                        <tr style="text-align:left">
                                            <td>
                                                <asp:Label ID="lblmsg" runat="server" Text="MESSAGE" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                                        </tr>
                                        <tr><td>
                                       
                                                <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" ForeColor="Black" Height="150px" Width="200px" OnTextChanged="txtmsg_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmsg" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td></tr>
                            <tr><td>&nbsp;&nbsp;</td></tr>
                           
                              </table>
                           
                    </div>
                       
                    <div></div>
                    <br />
                    <br />
                    
                </div>
                <asp:Button ID="btnsbt" runat="server" Text="Submit" Font-Bold="True" class="btn btn-success" OnClick="btnsbt_Click" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btncncl" runat="server" Text="Cancel" Font-Bold="True" class="btn btn-danger" OnClick="btncncl_Click"  />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
               <br />
                <br />
                <p>NEW INDIA STAFF QUATERS
                JUHU LANE ANDHERI WEST, Mumbai, Maharashtra 400058<br />
                    <b>MOBILW NUMBWR</b>(022) 8879429595<br />
                            <b>Email:</b><a>handiworld@gmail.com</a>
                               </p>

                </div>

            
                    
           
        </section>
             

             </section>
  </form>

    <!-- /Section: contact -->
        
</asp:Content>

