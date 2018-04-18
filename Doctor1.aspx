<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="Doctor1.aspx.cs" Inherits="Doctor1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" background:#151B8D; position:absolute; top:185px; width:100%; height:50px;">
     <ul class="b">
			    <li><a href="Doctor1.aspx" style="left:400px; top:6px; position:absolute; color:White; width:250px;font-size:20px"><b>Today's Appointments</b></a></li>
			    <li><a href="Doctor2.aspx" style="left:700px; top:6px; position:absolute; color:White; width:300px;font-size:20px"><b>Visit & Check Patient</b></a></li>
			    
	  </ul>
</div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="z-index: 1; left: 450px; top: 310px; position: absolute; height: 133px; width: 500px" >
        <Columns>
            <asp:BoundField DataField="A_date" HeaderText="DATE" 
                SortExpression="A_date" HeaderStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="A_time" HeaderText="TIME" 
                SortExpression="A_time" />
            <asp:BoundField DataField="Full_name" HeaderText="Patient Name" 
                SortExpression="Full_name" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#0000A0" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle"/>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Health_careConnectionString %>" 
    
        SelectCommand="SELECT [Appo_entries].[A_date], [Appo_entries].[A_time], [Patient_detail].[Full_name] FROM [Appo_entries],[Patient_detail] 
WHERE 
([Appo_entries].[Pid]=[Patient_detail].[username]) AND
(
[Appo_entries].[A_date]&gt;=DATEADD(day, DATEDIFF(day,0,GETDATE()),0 )
AND [Appo_entries].[A_date]&lt;DATEADD(day, DATEDIFF(day,0,GETDATE())+1,0 )
)

ORDER BY [Appo_entries].[A_time]">
</asp:SqlDataSource>
</asp:Content>

