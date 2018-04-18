<%@ Page Language="C#" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="log" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background:url(Images/img1.jpg); background-repeat:no-repeat; background-size:cover">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 480px; top: 150px; position: absolute; height: 400px; width: 400px; background:rgba(0,0,0,0.4)" >
            
            <asp:Button ID="pat_login" runat="server" Style="z-index: 1; left: 75px; top: 120px;
                position: absolute; width: 250px; height: 50px; color: white; background-color: #0000A0;
                font-size: large; border-radius: 8px; padding: 5px; border: 1px solid black"
                Text="Login as a Patient" onclick="pat_login_Click" />


            <asp:Button ID="doc_login" runat="server" Style="z-index: 1; left: 75px; top: 200px;
                position: absolute; width: 250px; height: 50px; color: white; background-color: #0000A0;
                font-size: large; border-radius: 8px; padding: 5px; border: 1px solid black"
                Text="Login as a Doctor" onclick="doc_login_Click" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
