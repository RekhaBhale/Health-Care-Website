<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Opp_fill.aspx.cs" Inherits="Opp_fill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background:url(Images/doctor1.jpg); opacity:0.6; background-size:cover">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" 
    style=" z-index: 1; background:rgba(0,0,0,0.6); position:absolute; left:320px; top:50px; height:750px; width:700px; border-radius:15px; border:1px solid black " >
        <asp:Label ID="Label1" runat="server" Text="Prescription" 
        style="z-index: 1; left: 250px; top: 40px; position: absolute; margin-top: 0px; height:30px; width:300px;color:White; font-size:xx-large " 
            Font-Bold="True" Font-Underline="True"></asp:Label>

        <asp:Label ID="Label2" runat="server" Text="Patient ID:"
        style="z-index: 1; left: 40px; top: 130px; position: absolute; margin-top: 0px; height:30px; width:170px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtpid" runat="server" 
            
                style="z-index: 1; border-radius:5px; left: 240px; top: 130px; position: absolute; margin-top: 0px;height:30px; width:370px; font-size:medium; border:hidden; border-color:white"></asp:TextBox> 

         <asp:Label ID="Label3" runat="server" Text="Doctor ID:"
        style="z-index: 1; left: 40px; top: 180px; position: absolute; margin-top: 0px; height:30px; width:170px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtdname" runat="server"
            
                style="z-index: 1; left: 240px; top: 180px; position: absolute; margin-top: 0px;height:30px; width:370px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

        <asp:Label ID="Label4" runat="server" Text="Date:"
        style="z-index: 1; left: 40px; top: 230px; position: absolute; margin-top: 0px; height:30px; width:170px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtdate" runat="server" placeholder=" Enter Date" 
            style="z-index: 1; left: 240px; top: 230px; position: absolute; margin-top: 0px;height:30px; width:370px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

         <asp:Label ID="Label5" runat="server" Text="Description:"
        style="z-index: 1; left: 40px; top: 280px; position: absolute; margin-top: 0px; height:30px; width:250px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtdesc" runat="server" placeholder=" Enter Description" 
            style="z-index: 1; left: 240px; top: 280px; position: absolute; margin-top: 0px;height:60px; width:370px; font-size:medium; border-radius:5px; border:hidden; border-color:white" 
            TextMode="MultiLine"></asp:TextBox> 

            <asp:Label ID="Label6" runat="server" Text="Medicines:"
        style="z-index: 1; left: 40px; top: 360px; position: absolute; margin-top: 0px; height:30px; width:250px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtmed" runat="server" placeholder=" Enter Medicines:" 
                style="z-index: 1; left: 240px; top: 360px; position: absolute; margin-top: 0px;height:60px; width:370px; font-size:medium; border-radius:5px; border:hidden; border-color:white" 
                TextMode="MultiLine"></asp:TextBox> 

            <asp:Label ID="Label7" runat="server" Text="Tests:"
        style="z-index: 1; left: 40px; top: 440px; position: absolute; margin-top: 0px; height:30px; width:250px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txttest" runat="server" placeholder="Tests (if required):" 
            
                style="z-index: 1; left: 240px; top: 440px; position: absolute; margin-top: 0px;height:60px; width:370px; font-size:medium; border-radius:5px; border:hidden; border-color:white" 
                TextMode="MultiLine"></asp:TextBox> 

            <asp:Label ID="Label8" runat="server" Text="BloodPressure:"
        style="z-index: 1; left: 40px; top: 520px; position: absolute; margin-top: 0px; height:30px; width:260px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtweight" runat="server" placeholder=" BloodPressure:"         
            
                style="z-index: 1; left: 240px; top: 520px; position: absolute; margin-top: 0px;height:30px; width:170px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

             <asp:Label ID="Label9" runat="server" Text="Weight:"
        style="z-index: 1; left: 40px; top: 570px; position: absolute; margin-top: 0px; height:30px; width:260px;color:White; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtbp" runat="server" placeholder=" Weight:"         
            
                style="z-index: 1; left: 240px; top: 570px; position: absolute; margin-top: 0px;height:30px; width:170px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

            <asp:Button ID="descrip" runat="server" 
        style="z-index: 1; left: 130px; top: 650px; position: absolute; width: 430px; height:40px;color:white; background-color:#0000A0;font-size:large; border-radius:8px; padding:5px;border:1px solid black"
        Text="SUBMIT" PostBackUrl="~/Doctor2.aspx" onclick="register_Click" />


    </asp:Panel>    
    </div>
    </form>
</body>
</html>
