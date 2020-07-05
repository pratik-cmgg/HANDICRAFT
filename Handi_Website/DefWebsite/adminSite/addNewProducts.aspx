<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addNewProducts.aspx.cs" Inherits="adminSite_addNewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" id="form1">
       <div class="container" style="margin-top:100px;background-color:peachpuff;font-family:'Sitka Small';height:1250px;">
           <div class="row" style="height:180px">
             <div class="col-lg-3" style="float:left;height:180px;width:150px"></div>
                <div class="col-lg-9" style="float:left;color:black;font-size:xx-large;margin-top:50px"><u><b style="margin-left:350px;margin-top:150px">ADD PRODUCTS</b></u></div></div>
                   <div class="row" style="margin-left:50px;font-size:x-large;margin-bottom:50px;align-content:center">
                      <table style="width: 100%; margin-left:200px">
                           <tr>
                             <td class="auto-style1">Select SubCategory:</td>
                             <td>
                                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="sub_id" DataValueField="sub_id"></asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:handiCon %>" SelectCommand="SELECT [sub_id] FROM [subCategory]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                            </td>
                <td>&nbsp;</td>
            </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                <td class="auto-style1">Product Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
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
                <td class="auto-style1">Upload Image:</td>
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
                            <td class="auto-style1">Price:</td>
                            <td>
                                <asp:TextBox ID="txtprc" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtprc" ErrorMessage="Invalid" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtprc"></asp:RequiredFieldValidator>
                              </td>
                            <td></td>
                        </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                <td class="auto-style1">Size(H*W*D):</td>
                <td>
                    <asp:TextBox ID="txtsize" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                <td class="auto-style1">Description:</td>
                <td>
                    <asp:TextBox ID="txtdes" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtdes"></asp:RequiredFieldValidator>
                             </td>
                <td>&nbsp;</td>
            </tr>
                          
                          
                               <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                             <tr>
                            <td class="auto-style1">Product Material:</td>
                            <td>
                                <asp:TextBox ID="txtmat" runat="server"></asp:TextBox></td>
                            <td></td>
                            </tr>
                     <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                             <tr>
                            <td class="auto-style1">Color:</td>
                            <td>
                                <asp:TextBox ID="txtclr" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                             <tr>
                            <td class="auto-style1">Capacity:</td>
                            <td><asp:TextBox ID="txtcap" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                          <tr>
                            <td class="auto-style1">Weight:</td>
                            <td>
                                <asp:TextBox ID="txtweight" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Suitable for:</td>
                            <td>
                                <asp:TextBox ID="txtSuitable" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                           <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                      
                        <tr>
                            <td class="auto-style1">Shape:</td>
                            <td>
                                <asp:TextBox ID="txtshape" runat="server"></asp:TextBox></td>
                            <td></td>
                        </tr>
                       <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                           <tr>
                            <td class="auto-style1">
                                &nbsp;&nbsp;</td>
                               <td>
                                <asp:Button ID="btnAdd" runat="server" Text="ADD" OnClick="btnAdd_Click1" class="btn-success" /> &nbsp &nbsp &nbsp
                            &nbsp &nbsp &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn-danger" /></td>
                            <td>&nbsp;</td>
                        </tr>
                    
                     </table>
                  </div>
         </div>
       </form>

</asp:Content>

