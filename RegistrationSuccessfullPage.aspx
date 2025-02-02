<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RegistrationSuccessfullPage.aspx.cs" Inherits="HotelRegistration.RegistrationSuccessfullPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .div{
             height: 600px;
             text-align: center;
             background-size:cover;
        }
    .auto-style4 {
        text-align: right;
        font-size: x-large;
    }
    </style>
    <div class="div" style="background-image: url('Pictures/pexels-pixabay-33545.jpg')">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Registration Successfull Please Click The Login Button" ForeColor="White"></asp:Label>
            <br />
            <br />
            </strong>
            <asp:Button ID="LoginBTN" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" Text="Login" Width="150px" onmouseover="this.style.backgroundColor = 'Red'"  onmouseout="this.style.backgroundColor = 'Blue'" OnClick="LoginBTN_Click" />
</div>
   
</asp:Content>
