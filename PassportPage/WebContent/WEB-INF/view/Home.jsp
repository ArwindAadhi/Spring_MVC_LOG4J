<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="Test.css" rel="stylesheet" type="text/css">
<script src="Js_new.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Passport Home</title>
</head>
<body>
<div class="Header", style="font-family: Verdana, Geneva, Tahoma, sans-serif;">  
    
    <svg class="Header-Rectangle">
        <rect id="Header-Rectangle" rx="0" ry="0" x="0" y="0" width="1280" height="90">
        </rect>
    </svg>
    <div id="Passport_Seva">
        <span>Passport Seva</span>
    </div>
    <div id="Logo">
        <svg class="Circle">
            <ellipse id="Circle" rx="11.5" ry="11.5" cx="11.5" cy="11.5">
            </ellipse>
        </svg>
        <svg class="Triangle" viewBox="0 0 37 31">
            <path id="Triangle" d="M 18.49999809265137 0 L 37 31 L 0 31 Z">
            </path>
        </svg>
    </div>
    <a  href="Home.html" div id="Home">
        <span>Home</a></span>
    </div>
    <a href ="About_us.html" div id="About_Us">
        <span>About Us</a></span>
    
    <div id="Passport_Offices">
        <span>Passport Offices</span>
    </div>
    <div id="Contact_Us">
        <span>Contact Us</span>
    </div>
    <div id="Ministry_of_External_Affairs_G">
        <span>Ministry of External Affairs, Government of India</span>
    </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="Container" id="Container">
        <img src="Images/Airplane.jpg" alt="Airplane" style="width:100%">
        <div class="Welcome">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="head">
            
                Welcome to Passport Seva.
                Apply Passport Here!
            </div>
            <br>
            <br>    
            
            <marquee id="img_marq">
            Apply for Passport here by registering and Applying the Application Below the page!!!
            </marquee>

            
            <div class="slide" >
                <img class="myslid" src="Images/PP.jpeg" >
                <img class="myslid" src="Images/flight_2.jpg" >
                <img class="myslid" src="Images/indian-passport.jpg" >
                <img class="myslid" src="Images/Passport seva.jpg" >
            </div>

            
        </div>

    </div>
    <h2> Passport Application</h2>
    <a href='Passport_Home.jsp'> 
        <button class="Button" id="Button1"> 
            New User Registration 
        </button>
    </a> 
    <a href='Not_Eligible.html'> 
        <button class="Button" id="Button1"> 
            Existing User Login 
        </button>
    </a> 
    <a href='Not_Eligible.html'> 
        <button class="Button" id="Button1"> 
            Appointment  Availability 
        </button>
    </a> 
    <a href='Not_Eligible.html'> 
        <button class="Button" id="Button1"> 
            Track Application Status. 
        </button>
    </a> 

    

      <script>
        var myind = 0;
        slideshow();
        
        function slideshow() {
          var i;
          var x = document.getElementsByClassName("myslid");
          for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";  
          }
          myind++;
          if (myind > x.length) {myind = 1}    
          x[myind-1].style.display = "block";  
          setTimeout(slideshow, 2000); // Change image every 2 seconds
        }
        </script>

    
</body>
</html>