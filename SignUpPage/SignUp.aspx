<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUpPage_SignUp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="SignUp.css" rel="stylesheet" type="text/css"/>
</head>
<body>
        <form id="form1" runat="server">
       <div class="box" >
            <asp:Label ID="Labell" runat="server" Text="Sign Up" CssClass="Labelll"></asp:Label>
            <br />
            <br />
            <asp:Label ID="FirstName" runat="server" Text="First Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextUserName" runat="server" CssClass="InputType"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RUserName" runat="server" Text="*" ForeColor="Red" ControlToValidate="TextUserName" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
            <br />
            
           <asp:Label ID="LastName" runat="server" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextLastName" runat="server" CssClass="InputType"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ForeColor="Red" ControlToValidate="TextLastName" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="EMailId" runat="server" Text="Email Id"></asp:Label>
            <br />
            <asp:TextBox ID="TextEMailId" runat="server" CssClass="InputType"></asp:TextBox>
            <asp:RequiredFieldValidator ID="REmailId" runat="server" Text="*" ForeColor="Red" ControlToValidate="TextEmailId" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextPassword" runat="server" TextMode="Password" CssClass="InputType"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RTextPassword" runat="server" Text="*" ForeColor="Red" ControlToValidate="TextPassword" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="ConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextConfirmPassword" runat="server" TextMode="Password" CssClass="InputType"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CConfirmPassword" runat="server" Text="Password not matched" ControlToValidate="TextConfirmPassword" ControlToCompare="TextPassword" CssClass="ErrorMessage"></asp:CompareValidator> 
            <br />
            <asp:Label ID="MobileNumber" runat="server" Text="MobileNumber"></asp:Label>
            <br />
            <asp:DropDownList ID="Code" runat="server" DataSourceID="SqlDataSource1" DataTextField="CountryCode" DataValueField="CountryCode"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthDatabase %>" SelectCommand="SELECT [CountryCode] FROM [NumberCode]"></asp:SqlDataSource>
            <br />
            <asp:TextBox ID="TextMobileNumber" runat="server" TextMode="Number" CssClass="InputType"></asp:TextBox>
            <br /> 

            <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:TextBox ID="TextAddress" runat="server" CssClass="InputType"></asp:TextBox>
            <asp:Button ID="SignUp" runat="server" Text="Register" CssClass="Submit" OnClick="SignUp_Click"/>
            <br />
            <asp:Label runat="server" Text="Already registered?" CssClass="Message">
            Already registered
            <a href="../LoginPage/Login.aspx">Login</a>
            </asp:Label>
    </div>
    </form>
</body>
</html>
