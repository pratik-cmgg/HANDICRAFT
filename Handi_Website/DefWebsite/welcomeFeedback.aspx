<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="welcomeFeedback.aspx.cs" Inherits="welcomeFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-top:100px;font-family:'Sitka Small';margin-left:300px;font-size:large"> "Dear Customer,Thank you for your valuable feedback.<br /></p>
    <p style="margin-left:250px;font-family:'Sitka Small';font-size:large"> Your Enquiry will be Answered as Soon as possible!!Thank you  " </p>
    <a href="category.aspx">   <div style="height:320px;margin-top:10px" >
          <div><h3 style="font-family:'Sitka Small';margin-left:600px">Our Products</h3></div>
      
    <marquee direction="left" behaviour="alternate" bgcolor="" loop="50" scrollamount="15" ">
                 
                <a> <img src="images/CategoryImages/cat1.jpg" style="height:300px"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                 
                 <img src="images/CategoryImages/cat3.jpg" style="height:300px;margin-left:50px"/>
                 <img src="images/CategoryImages/cat4.png" style="height:300px"/>
                 <img src="images/subCatImages/cutlery.png" style="height:300px"/>
                 <img src="images/subCatImages/vastu.jpg" style="height:300px"/>
                 <img src="images/subCatImages/VastuHangers.jpeg"style="height:300px" />
                <img src="images/KitchenNDining/VegiNFruitBasket/basket2.jpg" />
                <img src="images/subCatImages/feng%20shui.jpg" style="height:300px"/>
             </marquee>
            </div>
        </a>

</asp:Content>

