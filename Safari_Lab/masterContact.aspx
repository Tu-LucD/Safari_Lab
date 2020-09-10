<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Navigation.Master" AutoEventWireup="true" CodeBehind="masterContact.aspx.cs" Inherits="Safari_Lab.masterContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contactMain">
        <div id="left">
            <asp:Label ID="AddressLbl" runat="server" Text="ADDRESS:"></asp:Label>
            <p><i class="fa fa-home" aria-hidden="true"></i> 138 Atlantis Ln Kingsport Illinois 121164</p>

            <asp:Label ID="PhoneLbl" runat="server" Text="PHONES:"></asp:Label>
            <p><i class="fa fa-phone" aria-hidden="true"></i> 800-2345-6789</p>
            <p><i class="fa fa-briefcase" aria-hidden="true"></i> 800-2345-6789</p>

            <asp:Label ID="EmailLbl" runat="server" Text="E-MAIL:"></asp:Label><br />
            <a href="mailto: mail@demolink.org"><i class="fa fa-envelope" aria-hidden="true"></i>mail@demolink.org</a>
            <p>Download information as: <a href="#">vCard</a></p>
        

        </div>
        <div id="right" style="float: right">

        </div>
    </div>
    

</asp:Content>
