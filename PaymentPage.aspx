<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="HotelRegistration.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .div1{
             margin-left : 417.5px;
             height : 300px;
             width : 500px;
             text-align: center;
             padding: 20px;
            transform: perspective(750px) translate3d(0px, 0px, -250px) rotateX(27deg) scale(0.9, 0.9);
            border-radius: 20px;
            border: 5px solid #e6e6e6;
            box-shadow: 0 70px 40px -20px rgba(0, 0, 0, 0.2);
              &:hover {
                transform: scale(1);
              }

              &::before {
                transform: translateZ(4rem);
                &:hover {
                  transform: translateZ(0);
                }
              }

              &::after {
                transform: translateZ(-4rem);
                &:hover {
                  transform: translateZ(-1px);
                }
              }
                    }
        .div{
             height:600px;
             background-size:cover;
        }
    </style>
    <div class="div" style="background-image: url('Pictures/pexels-manikuttan-tk-222463-30131266.jpg')">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="div1">

            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="username" runat="server" CssClass="auto-style1"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="You Have To Pay Rs."></asp:Label>
            <asp:Label ID="totalcost" runat="server" CssClass="auto-style1"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="PayBTN" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" OnClick="PayBTN_Click" Text="PAY" Width="100px" />

        </div>
        <br />
        <br />
    </div>
</asp:Content>
