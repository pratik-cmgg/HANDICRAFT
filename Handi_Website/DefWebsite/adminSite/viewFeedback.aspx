<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="viewFeedback.aspx.cs" Inherits="adminSite_viewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
    
        <div style="margin-top:100px">
         
            <div class="col-lg-3" style="float:left;height:400px;margin-left:20px">
              <asp:GridView ID="GridView1" runat="server" Font-Bold="false" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="4" BorderStyle="None" DataKeyNames="f_id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" Width="298px" AllowCustomPaging="True">
                                  <FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Left" BackColor="#99CCCC" ForeColor="#003399"></PagerStyle>

                    <RowStyle BackColor="White" ForeColor="#003399" />

                    <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
                </asp:GridView>
                   <div style=" margin-top:10px">
                <asp:Button ID="btndel" runat="server" Text="Delete" BorderColor="Black" OnClick="btndel_Click"/></div>
            </div>
            <div class="col-lg-4" style="float:left;">
                <div style="position: absolute; width: 400px; height:408px;margin-left:15px;border:ridge" > 
           <asp:Label ID="lblmsg" runat="server" Text="Feedback Details" ForeColor="#0033CC" Enabled="False" Font-Bold="True" Font-Names="Georgia" Font-Size="Medium"></asp:Label> 
        </div>

            </div>

            <div class="col-lg-5" style="height:100px;float:right">
                <table style="font-family:'Sitka Small';font-size:large;font:bold">
                    <tr>
                        <td> &nbsp;&nbsp;  &nbsp;&nbsp;</td>
                    </tr>
                    <tr style="font-family:'Sitka Small';font-size:x-large;font:bold">
                        <td style="width:150px"> &nbsp;&nbsp;  &nbsp;&nbsp; </td>
                        <td><u>SEND MAIL</u></td>
                    </tr>
                    <tr>
                        <td >FROM:</td>
                        <td>
                            <asp:TextBox ID="txtfrom" runat="server" Text="mad.wearemad@gmail.com" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td> &nbsp;&nbsp;  &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>To:</td>
                        <td>
                            <asp:TextBox ID="txtto" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td> &nbsp;&nbsp;  &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Subject:</td>
                        <td>
                            <asp:TextBox ID="txtsub" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td> &nbsp;&nbsp;  &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Message:</td>
                        <td>
                            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td> &nbsp;&nbsp;  &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSend" runat="server" Text="Send" class="btn btn-success" OnClick="btnSend_Click" /></td>
                    </tr>
                </table>
            </div>
        </div>


       </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

