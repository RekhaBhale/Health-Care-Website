<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="Doctor2.aspx.cs" Inherits="Doctor2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div style=" background:#151B8D; position:absolute; top:185px; width:100%; height:50px;">
     <ul class="b">
			    <li><a href="Doctor1.aspx" style="left:400px; top:6px; position:absolute; color:White; width:250px;font-size:20px"><b>Today's Appointments</b></a></li>
			    <li><a href="Doctor2.aspx" style="left:700px; top:6px; position:absolute; color:White; width:300px;font-size:20px"><b>Visit & Check Patient</b></a></li>
			    
	  </ul>
</div>
  <div>
  <asp:Label ID="Labeldid" runat="server" Text="Doctor Username:"  style=" position:absolute; top:300px; left:500px; height:30px; width:200px; color:Blue; font-size:large"></asp:Label>
      <asp:TextBox ID="txtdid1" runat="server" style=" position:absolute; top:300px; left:650px; height:20px; width:180px"></asp:TextBox>
      <asp:Label ID="Labelpat" runat="server" Text="Patient Username:"  style=" position:absolute; top:350px; left:400px; height:30px; width:200px; color:Blue; font-size:large"></asp:Label>
      <asp:TextBox ID="txtusername1" runat="server" style=" position:absolute; top:350px; left:550px; height:20px; width:200px"></asp:TextBox>
    <asp:Button ID="get_rec" runat="server" Text="GET RECORD" 
          style="z-index: 1; left: 780px; top: 350px; position: absolute; width: 150px; height:27px;color:white; background-color:#0000A0; font-size:15px;padding:5px;border:1px solid black" 
          onclick="get_rec_Click"/>
    </div>


    
  
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        
        style="z-index: 1; left: 330px; top: 440px; position: absolute; height: 133px; width: 700px" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="Date_of_opp" HeaderText="Date_of_opp" 
                SortExpression="Date_of_opp" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="medicines" HeaderText="medicines" 
                SortExpression="medicines" />
            <asp:BoundField DataField="tests" HeaderText="tests" SortExpression="tests" />
            <asp:BoundField DataField="weight" HeaderText="weight" 
                SortExpression="weight" />
            <asp:BoundField DataField="blood_pressure" HeaderText="blood_pressure" 
                SortExpression="blood_pressure" />
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
        
        
        SelectCommand="SELECT [Date_of_opp], [description], [medicines], [tests], [weight], [blood_pressure] FROM [Oppointment_detail] WHERE (([Did] = @Did) AND ([Pid] = @Pid))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtdid1" Name="Did" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtusername1" Name="Pid" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

     <asp:Button ID="pres" runat="server" Text="GIVE PRESCRIPTION" 
          style="z-index: 1; left: 500px; top: 850px; position: absolute; width: 250px; height:27px;color:white; background-color:#0000A0; font-size:15px;padding:5px;border:1px solid black" 
          onclick="get_rec_Click" PostBackUrl="~/Opp_fill.aspx"/>
   
</asp:Content>

