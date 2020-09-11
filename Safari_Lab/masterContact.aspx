<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Navigation.Master" AutoEventWireup="true" CodeBehind="masterContact.aspx.cs" Inherits="Safari_Lab.masterContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contactMain">
        <div id="left" class="auto-style1">
            <asp:Label ID="AddressLbl" runat="server" Text="ADDRESS:"></asp:Label>
            <p class="divLeftTop divLeftBottom"><i class="fa fa-home" aria-hidden="true"></i> 138 Atlantis Ln Kingsport Illinois 121164</p>

            <asp:Label ID="PhoneLbl" runat="server" Text="PHONES:"></asp:Label>
            <p class="divLeftTop"><i class="fa fa-phone" aria-hidden="true"></i> 800-2345-6789</p>
            <p class="divLeftBottom"><i class="fa fa-briefcase" aria-hidden="true"></i> 800-2345-6789</p>

            <asp:Label ID="EmailLbl" runat="server" Text="E-MAIL:"></asp:Label><br />
            <p class="divLeftTop"><a class="contactLinks" href="mailto: mail@demolink.org"><i class="fa fa-envelope" aria-hidden="true"></i> mail@demolink.org</a></p>
            <p class="divLeftBottom">Download information as: <a class="contactLinks" href="#">vCard</a></p>
        

        </div>
        <div id="right" class="auto-style2">

            <asp:Label ID="MiscLbl" runat="server" Text="MISCELLANEOUS INFORMATION:"></asp:Label>
            <p class="divLeftTop">Email us with any questions or inquiries or use our contact data.</p>
            <asp:TextBox ID="nameTxt" style="margin-right: 15px; margin-bottom: 15px;" placeholder="Name" runat="server" ></asp:TextBox>
            <asp:TextBox ID="emailTxt" style="margin-right: 15px; margin-bottom: 15px;" placeholder="Email" runat="server"></asp:TextBox>
            <asp:TextBox ID="phoneTxt" style="margin-bottom: 15px;" placeholder="Phone" runat="server"></asp:TextBox>
            <asp:TextBox ID="messageTxt" style=" margin-top: 15px;" placeholder="Message" runat="server" Height="118px" TextMode="MultiLine" Width="589px"></asp:TextBox><br />
            <asp:Button ID="BtnSend" style="margin-right: 30px; margin-top: 30px;" runat="server" Text="Send" Height="34px" Width="98px" BackColor="Orange" ForeColor="White" />
            <asp:Button ID="BtnClear" runat="server" Text="Clear" Height="33px" Width="95px" BackColor="Orange" ForeColor="White" />

        </div>
    </div>
    

</asp:Content>
