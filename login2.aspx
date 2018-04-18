<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login2.aspx.cs" Inherits="login2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="homecss.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 480px; top: 180px;
            position: absolute; height: 330px; width: 400px; background: rgba(0,0,0,0.4)">
            <asp:Label ID="Label1" runat="server" Text="LOGIN HERE" Style="z-index: 1; left: 125px;
                top: 30px; position: absolute; margin-top: 0px; height: 30px; width: 170px; color: white;
                font-size: x-large" Font-Bold="True" Font-Underline="True"></asp:Label>
            <asp:TextBox ID="txtusername" runat="server" placeholder="  username" Style="z-index: 1;
                left: 60px; top: 75px; position: absolute; margin-top: 0px; height: 30px; width: 270px;
                font-size: medium"></asp:TextBox>
            <asp:TextBox ID="txtpwd" runat="server" placeholder="  password" Style="z-index: 1;
                left: 60px; top: 130px; position: absolute; margin-top: 0px; height: 30px; width: 270px;
                font-size: medium" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lblmsg" runat="server" Text="Incorrect Username or Password" ForeColor="Red"
                Height="20px" Visible="False" Width="250px" Style="position: absolute; top: 175px;
                left: 60px"></asp:Label>
            <asp:Button ID="login" runat="server" Style="z-index: 1; left: 60px; top: 200px;
                position: absolute; width: 270px; height: 40px; color: white; background-color: #0000A0;
                font-size: medium; border-radius: 8px; padding: 5px; border: 1px solid black"
                Text="Login" OnClick="login_Click" />
        </asp:Panel>
    </form>
</body>
</html>
