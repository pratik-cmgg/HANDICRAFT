<%@ Page Title="" Language="C#" MasterPageFile="~/orderMasterPage.master" AutoEventWireup="true" CodeFile="clientSubGallery.aspx.cs" Inherits="Ogallery" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%-- <form runat="server" style="background-color:;margin-top:70px;">--%>
          <div class="container"  style="margin-top:100px;margin-left:200px;margin-bottom:50px"><h3 style="font-family: Sitka Small;
        margin-left:420px;margin-bottom:50px;margin-top:20px"><b><u style="margin-top:50px">PRODUCTS</u></b></h3>
            <%-- <a href="subCategory.aspx">GO BACK</a>--%>
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                  <HeaderTemplate></HeaderTemplate>
                  <ItemTemplate>
                      <div style="height:450px;width:400px;float:left;border-bottom:solid;background-color:#fff2cc">
                       
                        <img src='<%# Eval("pro_img") %>' runat="server" id="pro_imgLabel" style="padding:50px;height:450px;width:420px" /><br />
                        </div>
                        <div style="height:450px;width:600px;float:left;padding-top:10px; font-weight: lighter;background-color:white" >
                            <div style="height:440px;width:500px;float:left;padding:50px;background-color:#fff2cc;margin-left:50px;border-bottom:solid;font-family:'Sitka Small'">
                       <asp:Label Text='<%# Eval("pro_name") %>' runat="server" ID="pro_nameLabel" style="margin-left:10px;font-size:x-large" /><br />
              <br />
                       <b>Price:</b>Rs
                        <asp:Label Text='<%# Eval("pro_price") %>' runat="server" ID="pro_priceLabel" /><br />
                        <b>Description:</b> 
                        <asp:Label Text='<%# Eval("pro_des") %>' runat="server" ID="pro_desLabel" /><br />
                        <asp:Label Text='<%# Eval("pro_weight") %>' runat="server" ID="pro_weightLabel"  /><br />
    
                           <b> Size:</b>
                        <asp:Label Text='<%# Eval("pro_size") %>' runat="server" ID="pro_sizeLabel"   /><br />
                          <b> Material:</b>
                        <asp:Label Text='<%# Eval("pro_material") %>' runat="server" ID="pro_materialLabel" /><br />
                  <b>Color:</b>
                        <asp:Label Text='<%# Eval("pro_color") %>' runat="server" ID="pro_colorLabel"  /><br />
                  
                                    <div style="margin-left:200px">
                                        <a href="<%# String.Format("addToCart.aspx?pro_id={0}",Eval("pro_id")) %>"> <b style="font-family:'Sitka Small';font-size:large">  ADD TO CART </b>                            
                                         
                                            </div>
           
                                  </a>

                                  <br /></div>
                            </div>
                    </ItemTemplate>

              </asp:Repeater>

              <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:handiCon %>' SelectCommand="SELECT * FROM [product] WHERE ([sub_id] = @sub_id)">
                  <SelectParameters>
                      <asp:QueryStringParameter QueryStringField="ID" DefaultValue="1" Name="sub_id" Type="Int32"></asp:QueryStringParameter>
                  </SelectParameters>
              </asp:SqlDataSource>
              
          </div>
         </form>
</asp:Content>

