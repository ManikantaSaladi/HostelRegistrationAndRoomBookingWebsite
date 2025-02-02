<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserRegistrationPage.aspx.cs" Inherits="HotelRegistration.UserRegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>           
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .form{
             margin-top : 0px;
             margin-left : 417.5px;
             height: 825px;
             width : 500px;
             padding: 20px;
             transform: perspective(750px) translate3d(0px, 0px, -250px) rotateX(27deg) scale(0.9, 0.9);
             border-radius: 20px;
             border: 5px solid #e6e6e6;
             box-shadow: 0 70px 40px -20px rgba(0, 0, 0, 0.2);
             transition: 0.4s ease-in-out transform;
             &:hover 
                 {
                     transform:translate3d(0px,0px,-250px);
                 }
             }
        .dib{
            background-size:cover;
        }
    .auto-style4 {
        font-size: xx-large;
    }
    </style>
        <div class="div" style="background-image: url('Pictures/pexels-pixabay-531880.jpg')" >
            <br />
            <div class="form" style="background-color: #FFFFFF">

                <br />
                <asp:Label ID="registration" runat="server" ForeColor="Red" Text="Registration" CssClass="auto-style4"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Size="15pt" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="FirstName" runat="server" Height="25px" Width="250px" placeholder="Enter First Name" Required="This Field Required"></asp:TextBox>
                            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="LastName" runat="server" Height="25px" Width="250px" placeholder="Enter Last Name"  Required="This Field Required"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UserName" runat="server" Height="25px" Width="250px" placeholder="Enter User Name"  Required="This Field Required"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Size="15pt" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="Male" runat="server" Font-Size="15pt" GroupName="gen" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="Female" runat="server" Font-Size="15pt" GroupName="gen" Text="Female" />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="password" runat="server" Height="25px" TextMode="Password" Width="250px" placeholder="Enter Your Password"  Required="This Field Required"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'">Show Password
&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ConfirmPassword" runat="server" Height="25px" Width="250px" placeholder="Confirm Password"  Required="This Field Required" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" onchange="document.getElementById('ConfirmPassword').type = this.checked ? 'text' : 'ConfirmPassword'"/>Show Password
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="ConfirmPassword Should Match To Password" Font-Size="10pt" ForeColor="Red"></asp:CompareValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label8" runat="server" Font-Size="15pt" Text="Email Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Email" runat="server" Height="25px" Width="250px" placeholder="Enter Email Id"  Required="This Field Required"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label9" runat="server" Font-Size="15pt" Text="Phone No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="PhoneNo" runat="server" Height="25px" Width="250px" placeholder="Enter Phone No" Required="This Field Required" TextMode="Phone"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Font-Size="15pt" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Address" runat="server" Height="25px" Width="250px" placeholder="Enter Your Address"  Required="This Field Required" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Font-Size="15pt" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Age" runat="server" Height="25px" Width="250px" placeholder="Enter Your Age"  Required="This Field Required"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="only About 18 and below 60 years eligible" Font-Size="10pt" ForeColor="Red" MaximumValue="60" MinimumValue="18"></asp:RangeValidator>
            <br />
            <asp:Label ID="Label12" runat="server" Font-Size="15pt" Text="Language Known"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="Telugu" runat="server" Font-Size="15pt" Text="Telugu" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="English" runat="server" Font-Size="15pt" Text="English" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="Hindi" runat="server" Font-Size="15pt" Text="Hindi" />
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Font-Size="15pt" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Country" runat="server" Height="28px" Width="250px"  Required="This Field Required">
                <asp:ListItem placeholder="Enter Your Country">Select Your Country</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>America</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>London</asp:ListItem>
                <asp:ListItem>Singapore</asp:ListItem>
                <asp:ListItem>Srilanka</asp:ListItem>
                <asp:ListItem>Malesia</asp:ListItem>
                <asp:ListItem>Newzland</asp:ListItem>
                <asp:ListItem>Netharland</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
            </asp:DropDownList>
            <br />
                <br />
                <br />
                <asp:Button ID="RegisterBTN" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" Font-Size="15pt" ForeColor="White" Height="40px" Text="Register" Width="150px" OnClick="RegisterBTN_Click" onmouseover="this.style.backgroundColor = 'Red'"  onmouseout="this.style.backgroundColor = 'Blue'" />
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Font-Size="15pt" Text="You Already Have a Account ?"></asp:Label>
&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="15pt" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
            </div>
            <br />
        </div>   
</asp:Content>
