<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Navigation.Master" AutoEventWireup="true" CodeBehind="masterHome.aspx.cs" Inherits="Safari_Lab.masterHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Home.css" rel="stylesheet" />
    <script type="text/javascript">
        var interval;

        setInterval(changeImage, 4000);

        function changeImage() {
            var imageSrc = document.getElementById("image").getAttribute("src");
            var currentImageNumber = imageSrc.substring(imageSrc.lastIndexOf("/") + 1, imageSrc.lastIndexOf("/") + 2);

            if (currentImageNumber == 3) currentImageNumber = 0;

            document.getElementById("image").setAttribute("src", "images/" + (Number(currentImageNumber) + 1) + ".jpg")
        }
        changeImage();
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <img id="image" src="images/1.jpg"/>       
</asp:Content>
