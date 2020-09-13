<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Navigation.Master" AutoEventWireup="true" CodeBehind="masterHome.aspx.cs" Inherits="Safari_Lab.masterHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Home.css" rel="stylesheet" />
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <script type="text/javascript">
        var imageNumber = 0;
        var interval = 4000;

        function imageLinkNumber(){
            if(imageNumber == 3) imageNumber = 0;
            imageNumber++;
        }
        
        setInterval(imageLinkNumber, interval);        

        setInterval(changeImage, interval);

        function changeImage() {
            $(".imageIndicators").css("border", "solid white");
            
            if(imageNumber == 1) $("#giraffeIndicator").css("border", "solid orange");
            
            else if(imageNumber == 2) $("#lionIndicator").css("border", "solid orange");
        
            else $("#rhinoIndicator").css("border", "solid orange");

            document.getElementById("image").setAttribute("src", "images/" + imageNumber + ".jpg")
        }

        function holidayButton() {
            window.open("https://www.naturalworldsafaris.com/blog/top-10-unusual-safari-destinations");
        }

        function visitButton() {
            window.open("https://www.go2africa.com/africa-safari-guide/when-to-go");
        }

        function bigCatButton() {
            window.open("https://www.naturalworldsafaris.com/wildlife/big-cats");
        }

        imageLinkNumber();
        changeImage();

        function imageLink() {                        
            if(imageNumber == 1)
            {
                window.open("https://www.aardvarksafaris.co.uk/10-best-places-to-see-giraffe-on-safari/");
            }
            else if(imageNumber == 2)
            {
                window.open("https://lionsafari.com/");
            }
            else
            {
                window.open("https://www.africaskysafari.com/rhinos");
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
       <img id="image" src="images/1.jpg" onclick="imageLink()"/>
       <div id="centerText">
           <p id="centerTitle"><%=txt1 %></p>
           <p id="centerSubtitle"><%=txt2 %></p>
       </div>
       <div id="imageProgress">
           <button class="imageIndicators" id="giraffeIndicator"></button>
           <button class="imageIndicators" id="lionIndicator"></button>
           <button class="imageIndicators" id="rhinoIndicator"></button>
       </div>
   </div>

   <div id="descriptionsDiv">
       <div class="description">
           <div class="descTitle">
               <%=txt3 %>
           </div>

           <img src="images/safariDescription1.jpg"/>

           <div class="descContent">
               <h4><%=txt6 %></h4>
               <%=txt9 %>
               <button class="descButton" onclick="holidayButton()"><%=txt12 %></button>
           </div>
       </div>

       <div class="description">
           <div class="descTitle">
               <%=txt4 %>
           </div>

           <img src="images/safariDescription2.jpg"/>

           <div class="descContent">
               <h4><%=txt7 %></h4>
               <%=txt10 %>
               <button class="descButton" onclick="visitButton()"><%=txt12 %></button>
           </div>
       </div>

       <div class="description">
           <div class="descTitle">
               <%=txt5 %>
           </div>

           <img src="images/safariDescription3.jpg"/>

           <div class="descContent">
               <h4><%=txt8 %></h4>
               <%=txt11 %>
               <button class="descButton" onclick="bigCatButton()"><%=txt12 %></button>
           </div>
       </div>
   </div>
</asp:Content>
