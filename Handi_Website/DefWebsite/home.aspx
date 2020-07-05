<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>

    <div class="row" style="height:600px;margin-top:70px">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <%--<li data-target="#myCarousel" data-slide-to="4"></li>--%>
    <li data-target="#myCarousel" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
       
        <img src="images/slideImages/img6.jpeg"  style="height:600px;width:1480px" />
    </div>
    <div class="item">

        <img src="images/slideImages/img4.jpg"  style="height:600px;width:1480px"/>
      
    </div>

    <div class="item">

        <img src="images/slideImages/img1.jpg" style="height:600px;width:1480px" />
    </div>

    <div class="item">
        

        <img src="images/slideImages/img11.jpg"  style="height:600px;width:1480px" />
    </div>
       <div class="item">
        
         <img src="images/slideImages/img3.jpg"  style="height:600px;width:1480px" />

           </div>
           <div class="item">
               <img src="images/slideImages/img5.JPG"         style="height:600px;width:1380px" />

           </div>
          

    
  </div>

  
     </div>

        
</asp:Content>

