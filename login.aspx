<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">  
   
  
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="homecss.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
    <div>
        
    </div>
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 480px; top: 150px; position: absolute; height: 400px; width: 400px; background:rgba(0,0,0,0.4)" >

        <asp:Label ID="Label1" runat="server" Text="LOGIN HERE" 
            style="z-index: 1; left: 125px; top: 30px; position: absolute; margin-top: 0px; height:30px; width:170px;color:white; font-size:x-large " 
            Font-Bold="True" Font-Underline="True"></asp:Label>

        <asp:TextBox ID="txtusername" runat="server" placeholder="  username"
            
            style="z-index: 1; left: 60px; top: 75px; position: absolute; margin-top: 0px; height:30px; width:270px; font-size:medium"></asp:TextBox>

        <asp:TextBox ID="txtpwd" runat="server" placeholder="  password"
            
            style="z-index: 1; left: 60px; top: 130px; position: absolute; margin-top: 0px;height:30px; width:270px; font-size:medium" 
            TextMode="Password"></asp:TextBox>

             <asp:Label ID="lblmsg" runat="server" Text="Incorrect Username or Password" 
            ForeColor="Red" Height="20px" Visible="False" Width="250px" style=" position:absolute; top:175px; left:60px"></asp:Label>

             <asp:Button ID="login" runat="server" 
        style="z-index: 1; left: 60px; top: 200px; position: absolute; width: 270px; height:40px;color:white; background-color:#0000A0; font-size:medium; border-radius:8px;padding:5px;border:1px solid black"
        Text="Login" onclick="login_Click" />

        <asp:LinkButton ID="LinkButton1" runat="server" style="z-index: 1; left: 20px; top: 245px; position: absolute; margin-top: 0px; height:30px; width:170px;color:white; font-size:medium">Forgot password</asp:LinkButton>
        
        <asp:Label ID="newuser" runat="server" Text="New User??Sign Up Here" style="z-index: 1; left: 70px; top: 290px; position: absolute; margin-top: 0px; height:30px; width:170px;color:white; font-size:medium"></asp:Label>
        <asp:Button ID="signup" runat="server" 
        style="z-index: 1; left: 60px; top: 315px; position: absolute; width: 270px; height:40px;color:white; background-color:#0000A0;font-size:medium; border-radius:8px; padding:5px;border:1px solid black"
        Text="Sign Up" PostBackUrl="~/Reg page.aspx" />
       
        
       
    </asp:Panel>
    
   
   
    
   
    </form>
</body>
</html>
