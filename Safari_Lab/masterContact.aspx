<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Navigation.Master" AutoEventWireup="true" CodeBehind="masterContact.aspx.cs" Inherits="Safari_Lab.masterContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contactMain">
        <div id="left" class="auto-style1">
            <asp:Label ID="AddressLbl" runat="server" Text="ADDRESS:"></asp:Label>
            <p><i class="fa fa-home" aria-hidden="true"></i> 138 Atlantis Ln Kingsport Illinois 121164</p>

            <asp:Label ID="PhoneLbl" runat="server" Text="PHONES:"></asp:Label>
            <p><i class="fa fa-phone" aria-hidden="true"></i> 800-2345-6789</p>
            <p><i class="fa fa-briefcase" aria-hidden="true"></i> 800-2345-6789</p>

            <asp:Label ID="EmailLbl" runat="server" Text="E-MAIL:"></asp:Label><br />
            <a class="contactLinks" href="mailto: mail@demolink.org"><i class="fa fa-envelope" aria-hidden="true"></i>mail@demolink.org</a>
            <p>Download information as: <a class="contactLinks" href="#">vCard</a></p>
        

        </div>
        <div id="right" class="auto-style2">

            <asp:Label ID="MiscLbl" runat="server" Text="MISCELLANEOUS INFORMATION:"></asp:Label>
            <p>Email us with any questions or inquiries or use our contact data.</p>
            <asp:TextBox ID="nameTxt" placeholder="Name" runat="server" ></asp:TextBox>
            <asp:TextBox ID="emailTxt" placeholder="Email" runat="server"></asp:TextBox>
            <asp:TextBox ID="phoneTxt" placeholder="Phone" runat="server"></asp:TextBox>
            <asp:TextBox ID="messageTxt" placeholder="Message" runat="server" Height="118px" TextMode="MultiLine" Width="589px"></asp:TextBox><br />
            <asp:Button ID="BtnSend" runat="server" Text="Send" Height="34px" Width="98px" BackColor="Orange" ForeColor="White" />
            <asp:Button ID="BtnClear" runat="server" Text="Clear" Height="33px" Width="95px" BackColor="Orange" ForeColor="White" />

        </div>
    </div>
    

</asp:Content>
