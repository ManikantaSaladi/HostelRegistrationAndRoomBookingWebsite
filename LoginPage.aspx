<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HotelRegistration.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .form{
                margin-left : 417.5px;
                height : 300px;
                width : 500px;
                text-align: center;
                margin-top: 0px;
                border-width:2px;
                border-style:solid;
                padding: 20px;
                border-radius: 20px;
                border: 5px solid #e6e6e6;
                box-shadow: 0 70px 40px -20px rgba(0, 0, 0, 0.2);
                transform:
                    perspective(900px)
                    rotateX(60deg)
                    scale(0.7);
                box-shadow: 0px 20px 100px #555;
                transition:0.5s ease all;

                &:hover {
                transform:
                      rotate(0deg)
                      scale(1)
                      translateY(10px);
                  }
        }
        .div{
             height : 600px;
             background-size:cover;
        }
             
        .auto-style4 {
            font-size: xx-large;
        }
             
    </style>
    <div class="div" style="background-image: url('Pictures/pexels-luis-gomes-166706-546819.jpg')">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="form" style="background-color: #FFFFFF">
            <strong>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" ForeColor="Red" Text="Login"></asp:Label>
            <br />
            <br />
            </strong>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="UserName" runat="server" Height="25px" Width="250px" Required="Please Fill This Filed" placeholder="Enter User Name"></asp:TextBox>
           <br />
           <br />
           <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="password" runat="server" Height="25px" TextMode="Password" Width="250px" Required="Please Fill This Filed" placeholder="Enter Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"/>Show Password
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <br />
            <br />
            <asp:Button ID="LoginBTN" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" Text="Login" Width="150px" onmouseover="this.style.backgroundColor = 'Red'"  onmouseout="this.style.backgroundColor = 'Blue'" OnClick="LoginBTN_Click"/>
           <br />
           <br />
        </div>
    </div>
</asp:Content>
