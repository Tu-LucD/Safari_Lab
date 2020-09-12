<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Navigation.Master" AutoEventWireup="true" CodeBehind="masterContact.aspx.cs" Inherits="Safari_Lab.masterContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contactMain">
        <div id="left" class="auto-style1">
            <asp:Label ID="AddressLbl" runat="server" Text=""><%=txt1 %></asp:Label>
            <p class="divLeftTop divLeftBottom"><i class="fa fa-home" aria-hidden="true"></i> <%=txt2 %></p>

            <asp:Label ID="PhoneLbl" runat="server" Text=""><%=txt3 %></asp:Label>
            <p class="divLeftTop"><i class="fa fa-phone" aria-hidden="true"></i> <%=txt4 %></p>
            <p class="divLeftBottom"><i class="fa fa-briefcase" aria-hidden="true"></i> <%=txt4 %></p>

            <asp:Label ID="EmailLbl" runat="server" Text=""><%=txt5 %></asp:Label><br />
            <p class="divLeftTop"><a class="contactLinks" href="mailto: mail@demolink.org"><i class="fa fa-envelope" aria-hidden="true"></i> <%=txt6 %></a></p>
            <p class="divLeftBottom"><%=txt7 %> <a class="contactLinks" href="#"><%=txt8 %></a></p>
        

        </div>
        <div id="right" class="auto-style2">

            <asp:Label ID="MiscLbl" runat="server" Text=""><%=txt9 %></asp:Label>
            <p class="divLeftTop"><%=txt10 %></p>
            <asp:TextBox ID="nameTxt" style="margin-right: 5px; margin-bottom: 15px;" placeholder="Name" runat="server" Width="185px" ></asp:TextBox>
            <asp:TextBox ID="emailTxt" style="margin-right: 5px; margin-bottom: 15px;" placeholder="Email" runat="server" Width="185px"></asp:TextBox>
            <asp:TextBox ID="phoneTxt" style="margin-bottom: 15px;" placeholder="Phone" runat="server" Width="185px"></asp:TextBox>
            <asp:TextBox ID="messageTxt" style=" margin-top: 15px;" placeholder="Message" runat="server" Height="118px" TextMode="MultiLine" Width="589px"></asp:TextBox><br />
            <asp:Button ID="BtnSend" style="margin-right: 30px; margin-top: 30px;" runat="server" Text="Send" Height="34px" Width="98px" BackColor="Orange" ForeColor="White" OnClick="BtnSend_Click" />
            <asp:Button ID="BtnClear" runat="server" Text="Clear" Height="33px" Width="95px" BackColor="Orange" ForeColor="White" OnClick="BtnClear_Click" /><br />
            <asp:Label ID="lblResult" runat="server" style="margin-top: 15px;" ForeColor="#A0A2A0"></asp:Label>

        </div>
    </div>
    

</asp:Content>
