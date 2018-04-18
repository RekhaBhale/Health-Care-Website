<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div>
    <asp:Panel ID="Panel1" runat="server" 
    style=" z-index: 1; position:absolute; left:160px; top:250px; height:500px; width:1000px;
         border-radius:15px; border:1px solid black; background-color:#E0FFFF " >

          <asp:Label ID="Label1" runat="server" Text="Contact Us" 
        style="z-index: 1; left: 400px; top: 40px; position: absolute; margin-top: 0px; height:30px; width:300px;color:Black; font-size:xx-large " 
            Font-Bold="True" Font-Underline="True"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="Health Care System                                              													
Gurudatta Sahawas,   E Wing, Shop No. 34, 470/498,												
Shaniwar Peth Near Dakhshinmukhi Maruti Mandir, 												
Mumbai-400030, Maharashtra, India" 
        style="z-index: 1; left: 40px; top: 150px; position: absolute; margin-top: 0px; height:200px; width:350px;color:Black; font-size:x-large"></asp:Label>													

<img src="Images/Slide1.JPG" alt="LOGO" style=" position:absolute; height:140px; width:300px; top:180px; left:360px"/>
<asp:Label ID="Label3" runat="server" Text="Email: srr@gmail.com
Call Us: 9876543210
Fax: 123456789"
        style="z-index: 1; left: 680px; top: 150px; position: absolute; margin-top: 0px; height:200px; width:250px;color:Black; font-size:x-large"></asp:Label>																	
         </asp:Panel>    
    </div>
</asp:Content>

