<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<link href="Test.css" rel="stylesheet" type="text/css">
<title>Registration Successful</title>
<div class="fixed-top">
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

        <div id = marquee>
            <marquee>Registration Sucessful</marquee>
        </div>
        
        <div id="Reg_suc">
            <h4>
        Your Registration for passport is successfull. You will get an Appoinment soon!
            Stay tuned
            </h4>
        </div>

        <div class= ss>
            <div class="slide" align = "center">
                <img class="myslid" src="Images/PP.jpeg" >
                <img class="myslid" src="Images/flight_2.jpg" >
                <img class="myslid" src="Images/indian-passport.jpg" >
                <img class="myslid" src="Images/Passport seva.jpg" >
            </div>
        </div>
         
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

</html>

l>