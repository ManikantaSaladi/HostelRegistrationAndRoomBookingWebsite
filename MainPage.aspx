<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HotelRegistration.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 1150px;
    }
    .auto-style5 {
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <br />
        <video width="1300" height="700"  autoplay="autoplay" loop="loop" controls="controls">
            <source  src="Pictures/video for hotel.mp4" type="video/mp4"/>
        </video>
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Contact Us"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="Any Room Booking issue? Feel free to contact us."></asp:Label>
        <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Full Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="fullname" runat="server" Height="25px" Width="250px" Required="Please Fill This Field" placeholder="Enter Your Full Name"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="Phone No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="phoneno" runat="server" Height="25px" Width="250px" Required="Please Fill This Field" placeholder="Enter Your Phone No"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Size="15pt" Text="Email Id"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="emailid" runat="server" Height="25px" Width="250px" Required="Please Fill This Field" placeholder="Enter Your Email ID"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailid" ErrorMessage="Invalid Email" Font-Size="12pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Message"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="msg" runat="server" Height="25px" Width="250px" Required="Please Fill This Field" TextMode="MultiLine" placeholder="Enter Your Query"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="SubmitBTN" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Large" ForeColor="White" Height="40px" Text="SUBMIT" Width="364px" OnClick="SubmitBTN_Click" />
    <br />

    </div>
</asp:Content>
