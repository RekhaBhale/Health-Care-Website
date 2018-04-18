<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="Cancel_appoint.aspx.cs" Inherits="Cancel_appoint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="Label1" runat="server" Text="Pid" 
        style=" position:absolute; top:270px; left:560px"></asp:Label></b>
<asp:TextBox ID="txtpid" runat="server" style=" position:absolute; left:600px; top:270px; width:100px"></asp:TextBox>

<asp:Button ID="app_check" runat="server" Text="Check Appointment" 
    
        style=" position:absolute; left:750px; top:270px; height:30px; width:180px; font-size:large; background-color:Blue; color:White; border:1px solid black" onclick="app_check_Click" 
    />

 <asp:GridView ID="GridView1" runat="server" 
        style=" position:absolute; top:320px; left:390px; width:600px" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
            <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" />
            <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
            <asp:BoundField DataField="A_date" HeaderText="A_date" 
                SortExpression="A_date" />
            <asp:BoundField DataField="visited" HeaderText="visited" 
                SortExpression="visited" />
            <asp:BoundField DataField="A_time" HeaderText="A_time" 
                SortExpression="A_time" />
            <asp:BoundField DataField="payment" HeaderText="payment" 
                SortExpression="payment" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>



 <asp:Label ID="Label8" runat="server" Text="Select Date:"
        style="z-index: 1; left:500px; top:550px; position: absolute; margin-top: 0px; height:30px; width:100px;color:black; font-size:large " 
            Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtdate" runat="server" style="z-index: 1; left: 600px; top: 550px; position: absolute; margin-top: 0px;height:20px; width:150px; font-size:medium;"></asp:TextBox>

   <b><asp:Label ID="Label3" runat="server" Text="Select Time" style=" position:absolute; left:500px; top:590px;font-size:large"></asp:Label></b> 
    <asp:DropDownList ID="DropDownList3" runat="server" style=" position:absolute; top:590px; left:600px">
        <asp:ListItem Value="4:00">4:00pm</asp:ListItem>
        <asp:ListItem Value="5:00">5:00pm</asp:ListItem>
        <asp:ListItem Value="6:00">6:00pm</asp:ListItem>
        <asp:ListItem Value="7:00">7:00pm</asp:ListItem>
        <asp:ListItem Value="8:00">8:00pm</asp:ListItem>
        <asp:ListItem Value="9:00">9:00pm</asp:ListItem>
    </asp:DropDownList>
    
<asp:Button ID="Button1" runat="server" Text="Cancel Appointment" 
    style=" position:absolute; left:501px; top:640px; height:30px; width:330px; font-size:large; background-color:Blue; color:White; border:1px solid black" 
    onclick="Button1_Click"/>


   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Health_careConnectionString %>" 
        SelectCommand="select * from [Appo_entries] where [Pid]=@pid AND [A_date]&gt;=GETDATE()">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtpid" Name="Pid" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>

