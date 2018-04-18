<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="Specialist.aspx.cs" Inherits="Specialist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<h1 style=" position:absolute; left:550px; top:260px">OUR DOCTORS</h1>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        
        style="z-index: 1; left: 100px; top: 350px; position: absolute; height: 133px; width:1100px;" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal">
    <Columns>
        <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
        <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
        <asp:BoundField DataField="Clinic_add" HeaderText="Clinic_add" 
            SortExpression="Clinic_add" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
            SortExpression="MobileNo" />
        <asp:BoundField DataField="Charge" HeaderText="Charge" 
            SortExpression="Charge" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Health_careConnectionString %>" 
        SelectCommand="SELECT [Dname], [Post], [Clinic_add], [MobileNo], [Charge] FROM [Doctor_details]">
    </asp:SqlDataSource>
</asp:Content>