<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Slideshow container -->
<div class="slideshow-container" style=" position:absolute; top:400px">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 4</div>
      <img src="Images/master-ehealth-salle.jpg" style="width:100%" />
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 4</div>
      <img src="Images/information-technology.jpg" style="width:100%"/>
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 4</div>
      <img src="Images/Blog-Header-HIS-1.png" style="width:100%"/>
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">4 / 4</div>
      <img src="Images/Blog-Header-HIS-1.png" style="width:100%"/>
    <div class="text"></div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div> 
</asp:Content>

