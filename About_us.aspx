<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="About_us.aspx.cs" Inherits="About_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" position:absolute; top:250px; left">

    <asp:Button ID="vision" runat="server" 
        style="z-index: 1; left: 500px; top: 20px; position: absolute; width: 100px; height:40px;color:white; background-color:#0000A0; font-size:medium; border-radius:8px;padding:5px;border:1px solid black"
        Text="Vision" OnClick="vision_Click" />      
     <asp:Button ID="mision" runat="server" style="z-index: 1; left: 600px; top: 20px; position: absolute; width: 100px; height:40px;color:white;
         background-color:#0000A0; font-size:medium; padding:5px; border:1px solid black"
        Text="Mission" OnClick="mision_Click"/>
      <asp:Button ID="Button1" runat="server"  style="z-index: 1; left: 700px; top: 20px; position: absolute; width: 150px; height:40px;color:white;
         background-color:#0000A0; font-size:medium; padding:5px; border:1px solid black"
        Text="Management Team" OnClick="Button1_Click"/> 
         
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; position: absolute; left: 300px;
        top: 100px; height: 200px; width: 750px; border-radius: 15px; border: 1px solid black; background-color:#E0FFFF">
         <div style=" position:absolute; left:10px">
        <h1>
            Vision and Values</h1>
        <p>
            It is our vision to be the nation's leading public academic health care system.</p>
        <h2>
            We Care About Our Patients and their Families</h2>
        <p>
            Delivering quality health care and outstanding service is fundamental to everything
            we do.</p></div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; position: absolute; left: 300px;
        top: 100px; height: 500px; width: 750px; border-radius: 15px; border: 1px solid black;background-color:#E0FFFF">
         <div style=" position:absolute; left:10px">
        <h2>
            How We Work</h2>
        <h1>
            Accountability to Our Patients</h1>
       <p> We will have a culture dedicated to service and to measurable accountability. Patients
        will experience a seamless and sophisticated system of care that is efficient, safe
        and easy to navigate. Outstanding research programs will enable high quality patient
        care with the most recent medical advances. Service to the State We will be innovators
        in research, development and implementation of new means for improving the health
        of Indians and sharing that knowledge with a national audience. We will nurture
        collaborative partnerships with the health sciences schools, the states of India,
        employers, insurers, key constituencies and among our affiliated hospitals and health
        care systems. We will have clarity in our roles as the state's safety net institution
        and as a leader among such institutions across the region and the United States.
        Maintaining Financial Viability Financial viability will be a system-wide objective
        with specific expectations and accountabilities established for each component of
        the health care system. This financial viability and margin will come from continual
        improvements in our operations and from an explicit, unapologetic focus on productivity
        enhancement.</p></div>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" Style="z-index: 1; position: absolute; left: 300px;
        top: 100px; height: 250px; width: 750px; border-radius: 15px; border: 1px solid black;background-color:#E0FFFF">
        <div style=" position:absolute; left:10px">
        <h3 style=" position:absolute; top:10px; left:200px; width:400px">
            Our Mannagement team contains</h3><br /><br /><br />
            <p style=" position:absolute; top:50px; left:40px; width:600px; font-size:large">
                Rekha Bhale:+91-7208286700  <br /> <br />                      
                Sanketa Dalvi:+91-9819692997 <br />      <br />                    
                Rubita Chal:+91-7875840074 <br /><br />
            </p>
            
            </div>
    </asp:Panel>

</div>
</asp:Content>

