<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="LoginPage_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Login">
        <label class="LoginLabel"> LOGIN</label>
        <br />
        <br />
        <label>Email Id</label>
         <br />
        <asp:TextBox runat="server" ID="LoginTextEmailId" CssClass="InputType"></asp:TextBox>
        <br />
        <label>Pasword</label>
        <br />
        <asp:TextBox runat="server" ID="LoginTextPassword" CssClass="InputType" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="LogIn" Text="Login" runat="server" CssClass="LogIn" OnClick="Login"/>
        <label class="Message">Not have an account?<a href="../SignUpPage/SignUp.aspx">SignUp</a></label>
        <br />
        <asp:Label ID="Error" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
