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
            $(".imageButtons").css("border", "solid white");
            
            if(imageNumber == 1) $("#giraffeButton").css("border", "solid orange");
            
            else if(imageNumber == 2) $("#lionButton").css("border", "solid orange");
        
            else $("#rhinoButton").css("border", "solid orange");

            document.getElementById("image").setAttribute("src", "images/" + imageNumber + ".jpg")
        }

        function giraffeImage(){
            document.getElementById("image").setAttribute("src", "images/1.jpg")
            imageNumber = 1;
            $("#giraffeButton").css("border", "solid orange");
        }

        function lionImage(){
            document.getElementById("image").setAttribute("src", "images/2.jpg")
            imageNumber = 2;
            $("#lionButton").css("border", "solid orange");
        }

        function rhinoImage(){
            document.getElementById("image").setAttribute("src", "images/3.jpg")
            imageNumber = 3;
            $("#rhinoButton").css("border", "solid orange");            
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
           <p id="centerTitle">Explore Africa</p>
           <p id="centerSubtitle">During Amazing Safari Tours!</p>
       </div>
       <div id="imageButtonsDiv">
           <button id="giraffeButton" class="imageButtons" onclick="giraffeImage()"></button>
           <button id="lionButton" class="imageButtons" onclick="lionImage()"></button>
           <button id="rhinoButton" class="imageButtons" onclick="rhinoImage()"></button>
       </div>
   </div>

   <div id="descriptionsDiv">
       <div class="description">
           <div class="descTitle">
               Unusual Holidays
           </div>

           <img src="images/safariDescription1.jpg"/>

           <div class="descContent">
               <h4>Spend a weekend with us</h4>
               When you book your tuesday with Safari Adventure, you can reset assured that we are a fully licensed travel agency.
               <button class="descButton" onclick="holidayButton()">More</button>
           </div>
       </div>

       <div class="description">
           <div class="descTitle">
               Best Time to visit
           </div>

           <img src="images/safariDescription2.jpg"/>

           <div class="descContent">
               <h4>Plan your African Safari with us</h4>
               Our company offers adventures in Africa, connecting you the diverse wildlife.
               <button class="descButton" onclick="visitButton()">More</button>
           </div>
       </div>

       <div class="description">
           <div class="descTitle">
               Big Cat Safaris
           </div>

           <img src="images/safariDescription3.jpg"/>

           <div class="descContent">
               <h4>Explore Africa's unique safari</h4>
               The variety and beauty of Africa will take your breath away. The choices are exceptional.
               <button class="descButton" onclick="bigCatButton()">More</button>
           </div>
       </div>
   </div>
</asp:Content>
