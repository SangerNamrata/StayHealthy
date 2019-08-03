<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomePage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="CartPage_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="List" Runat="Server">
<div runat="server" class="dropdown">
        <asp:Button runat="server" ID="ListUserSettings" Text="Button" BackColor="White"/>
        <div runat="server" class="dropdown-content">
          <a href ="../YourProfile/UserProfile.aspx">YourProfile</a>
          <asp:Button runat="server" ID="LogOut" Text="LogOut" BackColor="White" OnClick="Log_Out"/>
          <asp:Button runat="server" ID="Cart" Text="Cart" BackColor="White" OnClick="Cart_Details" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CartDetails" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Total Items in your cart"></asp:Label>
    <asp:Label ID="Label2" runat="server"  ></asp:Label>
    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.no">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ProductId" HeaderText="Product Id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="Total Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image" ControlStyle-Width="200" ControlStyle-Height="200">
            </asp:ImageField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" Height="75px" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
</asp:Content>

