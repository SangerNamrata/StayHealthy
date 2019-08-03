<%@ Page Language="C#" MasterPageFile="~/YourProfile/UserProfile.master" AutoEventWireup="false" CodeFile="UserProfile.aspx.cs" Inherits="YourProfile_UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LoginPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Form" ContentPlaceHolderID="UserProfileForm" runat="server">
    <link rel="stylesheet" type="text/css" href="YourProfile.css" />
    <div class="mainbox">
        <label class="YourProfile">Your Profile</label>
    <div class="box1">
          <asp:Label CssClass="label" runat="server" ID="FirstName" Text="First Name"></asp:Label>
          <br />
          <asp:TextBox runat="server" ID="FirstNameValue" CssClass="text"></asp:TextBox>
          <asp:Button runat="server"  Text="Edit" ID="EditFirstName" CssClass="EditClass"/>
    </div>
    <div class="box2">
          <asp:Label CssClass="label" runat="server" ID="LastName" Text="Last Name"></asp:Label>
          <br />
          <asp:TextBox runat="server" ID="LastNameVlaue" CssClass="text"></asp:TextBox>
          <asp:Button runat="server"  Text="Edit" ID="EditLastName" CssClass="EditClass"/>
    </div>
    <div class="box3">
          <asp:Label CssClass="label" runat="server" ID="EmailID" Text="Email ID"></asp:Label>
          <br />
          <asp:TextBox runat="server" ID="EmailIDValue" CssClass="text"></asp:TextBox>
          <asp:Button runat="server"  Text="Edit" ID="EditEmailId" CssClass="EditClass"/>
    </div>
    <div class="box4">
          <asp:Label CssClass="label" runat="server" ID="MobileNumber" Text="Mobile Number"></asp:Label>
          <br />
         <asp:DropDownList runat="server" ID="Code" DataTextField="CountryCode" DataValueField="CountryCode">
             <asp:ListItem>Select Code</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox runat="server" ID="MobileNumberValue" TextMode="Number" CssClass="text"></asp:TextBox>
          <asp:Button runat="server"  Text="Edit" ID="EditMobileNumber" CssClass="EditClass"/>
    </div>
    <div class="box5">
          <asp:Label CssClass="label" runat="server" ID="Gender" Text="Gender"></asp:Label>
          <br />
          <asp:RadioButton  runat="server" ID="MaleValue" Text="Male" GroupName="Gender" ValidationGroup="Gender"/>
          <asp:RadioButton runat="server" ID="FemaleValue" Text="Female" GroupName="Gender" ValidationGroup="Gender" />
          <asp:RadioButton runat="server" ID="Others" Text="Others" GroupName="Gender" ValidationGroup="Others" />  
          <asp:Button runat="server"  Text="Edit" ID="EditGender" CssClass="EditClass"/>
    </div>
    <div class="box6">
          <asp:Label CssClass="label" runat="server" ID="Address" Text="Address"></asp:Label>
          <br />
          <asp:TextBox runat="server" ID="AddressValue" CssClass="text"></asp:TextBox>
          <asp:Button  runat="server" Text="Edit" ID="EditAddress" CssClass="EditClass"/>
    </div>
        <asp:Button CssClass="SaveButton" Text="Save" runat="server"/>

  </div>
</asp:Content>