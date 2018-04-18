<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" Debug="true" AutoEventWireup="true" CodeFile="Book_appoint.aspx.cs" Inherits="Book_appoint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <b>
        <asp:Label ID="Label1" runat="server" Text="Select Category:" Style="position: absolute;
            top: 290px; left: 500px; font-size: large"></asp:Label>
    </b>
    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: absolute; top: 290px;
        left: 640px; width: 150px">
    </asp:DropDownList>
    <asp:Button ID="next_button" runat="server" Text="Next" Style="position: absolute;
        left: 807px; top: 286px; height: 30px; width: 130px; font-size: large; background-color: Blue;
        color: White; border: 1px solid black" OnClick="next_button_Click" />
    <b>
        <asp:Label ID="Label2" runat="server" Text="Select Doctor:" Style="position: absolute;
            top: 327px; left: 501px; font-size: large"></asp:Label>
    </b>
    <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 1; left: 640px;
        top: 327px; position: absolute; width: 150px">
    </asp:DropDownList>
    <b>
        <asp:Label ID="Label7" runat="server" Text="Pid" Style="position: absolute; top: 253px;
            left: 584px; font-size: large"></asp:Label>
    </b>
    <asp:TextBox ID="txtpid" runat="server" Style="position: absolute; left: 641px; top: 254px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Select Date:" Style="z-index: 1; left: 504px;
        top: 365px; position: absolute; margin-top: 0px; height: 30px; width: 100px;
        color: black; font-size: large" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtdate" runat="server" placeholder="YYYY-MM-DD" Style="z-index: 1;
        left: 642px; top: 367px; position: absolute; margin-top: 0px; height: 20px; width: 150px;
        font-size: medium;"></asp:TextBox>
    <b>
        <asp:Label ID="Label3" runat="server" Text="Select Time" Style="position: absolute;
            left: 505px; top: 408px; font-size: large"></asp:Label>
    </b>
    <asp:TextBox ID="txttime" runat="server" placeholder=" time" Style="position: absolute;
        left: 600px; top: 408px; font-size: large"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Submit" Style="position: absolute;
        left: 550px; top: 470px; height: 30px; width: 130px; font-size: large; background-color: Blue;
        color: White; border: 1px solid black" OnClick="Button1_Click" />
    <asp:Panel ID="Panel1" runat="server" Visible="false" Style="position: absolute;
        top: 550px; left: 400px; width: 600px; height: 400px; background-color: #F0F8FF">
        <h1 style="position: absolute; left: 30px; top: 5px">
            Payment
        </h1>
        <b>
            <asp:Label ID="Label4" runat="server" Text="Amount:" Style="position: absolute; top: 80px;
                left: 50px; font-size: large"></asp:Label>
        </b>
        <asp:TextBox ID="txtamt" runat="server" Style="position: absolute; top: 80px; left: 140px;
            width: 100px; height: 20px"></asp:TextBox>
        <b>
            <asp:Label ID="Label5" runat="server" Text="Card No." Style="position: absolute;
                top: 120px; left: 50px; font-size: large"></asp:Label>
        </b>
        <asp:TextBox ID="txtcard" runat="server" Style="position: absolute; top: 120px; left: 140px;
            width: 250px; height: 20px"></asp:TextBox>
        <asp:Button ID="next" runat="server" Text="Next" Style="position: absolute; left: 80px;
            top: 170px; height: 30px; width: 130px; font-size: large; background-color: Blue;
            color: White; border: 1px solid black" OnClick="next_Click" />
        <asp:Panel ID="Panel2" runat="server" Style="position: absolute; top: 210px; left: 10px;
            height: 150px; width: 400px" Visible="False">
            <h2 style="position: absolute; left: 20px; text-decoration: underline;">
                Verification
            </h2>
            <b>
                <asp:Label ID="Label6" runat="server" Text="Enter PIN:" Style="position: absolute;
                    top: 70px; left: 20px; font-size: large"></asp:Label>
            </b>
            <asp:TextBox ID="txtpin" runat="server" Style="position: absolute; top: 70px; left: 120px;
                width: 150px; height: 20px"></asp:TextBox>
            <asp:Label ID="lblmsg" runat="server" Text="incorrect PIN or Card No!!" Style="color: Red;
                position: absolute; top: 70px; left: 300px; width: 189px;" Visible="False"></asp:Label>
            <asp:Button ID="paysub" runat="server" Text="Submit" Style="position: absolute; left: 80px;
                top: 110px; height: 30px; width: 130px; font-size: large; background-color: Blue;
                color: White; border: 1px solid black" OnClick="paysub_Click" />
            <asp:Label ID="Label9" runat="server" Text="Payment Successful, Your appointment has been Booked" Style="color: Green;
                position: absolute; top: 140px; left: 30px; width: 700px; font-size: large"
                Visible="False"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>



