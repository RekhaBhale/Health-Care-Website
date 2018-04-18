<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg page.aspx.cs" Inherits="Reg_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-image:url(Images/img1.jpg); background-repeat:no-repeat; background-size:cover; background-attachment: fixed;">
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" 
    style=" z-index: 1; background:rgba(0,0,0,0.2); position:absolute; left:120px; top:50px; height:730px; width:550px; border-radius:15px; border:1px solid black " >
        <asp:Label ID="Label1" runat="server" Text="Registration Form" 
        style="z-index: 1; left: 145px; top: 40px; position: absolute; margin-top: 0px; height:30px; width:300px;color:black; font-size:xx-large " 
            Font-Bold="True" Font-Underline="True"></asp:Label>

        <asp:Label ID="Label2" runat="server" Text="Full Name:"
        style="z-index: 1; left: 40px; top: 130px; position: absolute; margin-top: 0px; height:30px; width:170px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" placeholder=" Enter Name" 
            style="z-index: 1; border-radius:5px; left: 240px; top: 130px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border:hidden; border-color:white"></asp:TextBox> 

         <asp:Label ID="Label3" runat="server" Text="UserName:"
        style="z-index: 1; left: 40px; top: 180px; position: absolute; margin-top: 0px; height:30px; width:170px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtusername" runat="server" placeholder=" Enter username" 
            style="z-index: 1; left: 240px; top: 180px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

        <asp:Label ID="Label4" runat="server" Text="Password:"
        style="z-index: 1; left: 40px; top: 230px; position: absolute; margin-top: 0px; height:30px; width:170px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtpwd" runat="server" placeholder=" Enter password" 
            style="z-index: 1; left: 240px; top: 230px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border-radius:5px; border:hidden; border-color:white" 
            TextMode="Password"></asp:TextBox> 

         <asp:Label ID="Label5" runat="server" Text="ConfirmPassword:"
        style="z-index: 1; left: 40px; top: 280px; position: absolute; margin-top: 0px; height:30px; width:250px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtcpwd" runat="server" placeholder=" Enter password" 
            style="z-index: 1; left: 240px; top: 280px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border-radius:5px; border:hidden; border-color:white" 
            TextMode="Password"></asp:TextBox> 

            <asp:Label ID="Label6" runat="server" Text="Mobile No:"
        style="z-index: 1; left: 40px; top: 330px; position: absolute; margin-top: 0px; height:30px; width:250px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtmob" runat="server" placeholder=" Enter MobileNo." 
            
            style="z-index: 1; left: 240px; top: 330px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

            <asp:Label ID="Label7" runat="server" Text="Email ID:"
        style="z-index: 1; left: 40px; top: 380px; position: absolute; margin-top: 0px; height:30px; width:250px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" placeholder=" Enter EmailID." 
            style="z-index: 1; left: 240px; top: 380px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 

            <asp:Label ID="Label8" runat="server" Text="Date of Birth:"
        style="z-index: 1; left: 40px; top: 430px; position: absolute; margin-top: 0px; height:30px; width:260px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtdob" runat="server" placeholder=" select Date Of Birth."         
            style="z-index: 1; left: 240px; top: 430px; position: absolute; margin-top: 0px;height:30px; width:230px; font-size:medium; border-radius:5px; border:hidden; border-color:white"></asp:TextBox> 
        <asp:imagebutton ID="Imagebutton1" runat="server" 
            ImageUrl="~/Images/cal1.jpg" 
            style="height:31px; width:30px; top:430px; left:475px; z-index: 1; margin-top: 0px; position:absolute; border-radius:5px" 
            onclick="Imagebutton1_Click"></asp:imagebutton>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
        ForeColor="#003399" Height="200px" 
        onselectionchanged="Calendar1_SelectionChanged" 
        style="z-index: 1; left: 530px; top: 430px; position: absolute; height: 200px; width: 220px" 
        Visible="False" Width="220px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
             
             
             <asp:Label ID="Label9" runat="server" Text="Address:"
        style="z-index: 1; left: 40px; top: 480px; position: absolute; margin-top: 0px; height:30px; width:170px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtaddr" runat="server" placeholder=" Enter your Address"         
            
            style="z-index: 1; left: 240px; top: 480px; position: absolute; margin-top: 0px;height:60px; width:270px; font-size:medium; border-radius:5px; border:hidden; border-color:white" 
            TextMode="MultiLine"></asp:TextBox> 

        <asp:Label ID="Label10" runat="server" Text="Card Number:"
        style="z-index: 1; left: 40px; top: 560px; position: absolute; margin-top: 0px; height:30px; width:170px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtcard" runat="server" placeholder=" Card Number" 
            style="z-index: 1; border-radius:5px; left: 240px; top: 560px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium; border:hidden; border-color:white"></asp:TextBox> 

        <asp:Label ID="Label11" runat="server" Text="PIN :"
        style="z-index: 1; left: 40px; top:610px; position: absolute; margin-top: 0px; height:30px; width:170px;color:black; font-size:x-large " 
            Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtpin" runat="server" placeholder=" Enter PIN" 
            style="z-index: 1; border-radius:5px; left: 240px; top: 610px; position: absolute; margin-top: 0px;height:30px; width:220px; font-size:medium; border:hidden; border-color:white" TextMode="Password"></asp:TextBox> 
        
        <asp:Button ID="register" runat="server" 
        style="z-index: 1; left: 60px; top: 670px; position: absolute; width: 430px; height:40px;color:white; background-color:#0000A0;font-size:large; border-radius:8px; padding:5px;border:1px solid black"
        Text="SUBMIT" onclick="register_Click" />


    </asp:Panel>
    </div>
    
    
    
    </form>
</body>

</html>
