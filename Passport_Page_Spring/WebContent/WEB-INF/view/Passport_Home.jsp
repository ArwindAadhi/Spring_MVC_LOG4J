<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="Passport_Design.css" rel="stylesheet" type="text/css">
<script src="Js_new.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Passport Home</title>
</head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<link href="Test.css" rel="stylesheet" type="text/css">

<script> 
$(document).ready(function () { 	$("#dob").change(function () 
    {
        var start_date = new Date($("#dob").val());
        var date = new Date();
        var end_date = new Date(start_date);
        end_date.setFullYear (date.getFullYear()-start_date.getFullYear()); $("#age").val(end_date.getFullYear());
    });
});
</script>
        <script
            if ($(window).width() > 992
            {
                $(window).scroll(function(){  
                if ($(this).scrollTop() > 40) {
                $('#navbar_top').addClass("fixed-top");
                // add padding top to show content behind navbar
                $('body').css('padding-top', $('.navbar').outerHeight() + 'px');
                }else{
                $('#navbar_top').removeClass("fixed-top");
                // remove padding top from body
                $('body').css('padding-top', '0');
                }   
                });
            }
        </script>

        <script>
                function startTime() {
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('txt').innerHTML =
                h + ":" + m + ":" + s;
                var t = setTimeout(startTime, 500);
                }

                function checkTime(i) {
                    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
                    return i;
                }       
        </script>    


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">  
            </script> 

    <body onload="startTime()">
<div class="fixed-top">
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
            <span>Home
        </a></span>

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
</div>
 

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>


<marquee>Welcome to Passport Seva. Apply for Passport here and Get it within 1 month after Applied.Operations at select Passport Seva Kendra (PSKs) and Post Office Passport Seva Kendras (POPSKs) have been resumed. Please refer the list of operational PSKs and POPSKs in the Latest News Section. Applicants may reschedule their appointments to the nearest operational PSK/POPSK to avail the services.  </marquee>

<form name ="Form" action="insert" onsubmit= " return validateForm()" method="post"  >
    <div id="txt">Time:</div>
    <br><br><br><br><h1>Passport Registration</h1><br><br><br><br>

        
        <fieldset class="Required_details">
            
            <legend><span class="number">1</span>Required Details</legend>
            <label class = "required" for="name">Name:</label>
            <input type="text" id="name" placeholder="Name" name="name" onblur="validateForm()">
            <label id="lab_name" style="color: red";></label>
        
            <div class="Gender">
                    <label class = "required" for="name" name="Gender">Gender:</label>
                    <div class="wrapper">
                            <input type="radio" name="select" id="option-1" checked>
                            <input type="radio" name="select" id="option-2">
                            <label for="option-1" class="option option-1">
                                <div class="dot"></div>
                                    <span>Male</span>
                            </label>
                        <label for="option-2" class="option option-2">
                            <div class="dot"></div>
                            <span>Female</span>
                        </label>
                    </div>
            </div>

                <label class="required" for="DOB" > Date of Birth:</label>
                <input type="date" id="dob" placeholder="(dd/mm/yyyy)" name = "dob" onblur="validateForm()">
                <label id="lab_dob" style="color: red"></label>
                
                <label for ="Age"> Age:</label>
		        <input type="number" id="age" name="age" placeholder="Age"  readonly onblur="validateForm()">
            
                <label class="required" for="mail">Email:</label>
                <input type="email" id="user_mail" name="user_email" placeholder="Email" onblur="validateForm()">
                <label id="lab_email" style="color: red"></label>

                <label class = "required" for="password">Password:</label>
                <input type="password" id="password" name="user_password" Placeholder="Password" onblur="validateForm()">
                <label id="lab_password" style="color: red"></label>
          
                <label class = "required" for="Father Name">Father Name:</label>
                <input type="text" id="father_name" name="father_name" placeholder="Father Name" onblur="validateForm()">
                <label id="lab_father" style="color: red"></label>

                <label class = "required" for="Mother Name">Mother Name:</label>
                <input type="text" id="mother_name" name="mother_name" placeholder="Mother Name" onblur="validateForm()">
                <label id="lab_mother" style="color: red"></label>

                <label class = "required" for="pan_number">PAN Number:</label>
                <input type="text" id="pan_number" name="pan_number" placeholder="PAN Number" onblur="validateForm()">
                <label id="lab_pan" style="color: red"></label>
    
                <label class = "required" for="aadhar_number">Aadhar Number:</label>
                <input type="text" id="aadhar_number" name="aadhar_number" placeholder="Aadhar Number" onblur="validateForm()">
                <label id="lab_aadhar" style="color: red"></label>

                <label class = "required" for="state">Martial Status:</label>
                    <select id="martial_status" name="martial_status" >
                        <option value="Single">Single</option>
                        <option value="married">Married</option>
                    </select>
            
            
    	                 
        </fieldset>

    <div class="Address_details">
        <fieldset id="address" align="left">
            <legend><span class="number">2</span>Address Details</legend>
            <label class = "required" for="address" required >Address:</label>
            <textarea id="Address" placeholder="Address" name="address" onblur="validateForm()"></textarea>
            <label id="lab_address" style="color: red"></label>
          </fieldset>

        <fieldset id="Address" align="left">
    
            <label class = "required" for="door_no">Door No :</label>
            <input type="text" id="door_no" name="door_no" placeholder="Door No" onblur="validateForm()">
            <label id="lab_door" style="color: red"></label>

            <label class = "required" for="Street">Street :</label>
            <input type="text" id="street" name="street" placeholder="Street" onblur="validateForm()">
            <label id="lab_street" style="color: red"></label>

            <label class = "required" for="District">District :</label>
            <input type="text" id="district" name="district" placeholder="District" onblur="validateForm()">
            <label id="lab_district" style="color: red"></label>

            <label class = "required" for="Pincode">Pincode :</label>
            <input type="text" id="Pincode" name="Pincode" placeholder="Pincode" onblur="validateForm()">
            <label id="lab_pin" style="color: red"></label>


            <label class = "required" for="states" >Select State:</label>
                <select id="states" name="states" placeholder= "State" onblur="validateForm()">
          	        <option value="0">Select</option>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                    <option value="Assam">Assam</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Chandigarh">Chandigarh</option>
                    <option value="Chattisgarh">Chattisgarh</option>
                    <option value="Delhi">Delhi</option>
                    <option value="Goa">Goa</option>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                    <option value="Jammu & Kashmir">Jammu & Kashmir</option>
                    <option value="Jharkand">Jharkand</option>
                    <option value="Karnataka">Karnataka</option>
                    <option value="Kerla">Kerla</option>
                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                    <option value="Maharastra">Maharastra</option>
                    <option value="Meghalaya">Meghalaya</option>
                    <option value="Mizoram">Mizoram</option>
                    <option value="Nagaland">Nagaland</option>
                    <option value="Odisha">Odisha</option>
                    <option value="Pudhucherry">Pudhucherry</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Rajasthan">Rajasthan</option>
                    <option value="Sikkim">Sikkim</option>
                    <option value="Tamil Nadu">Tamil Nadu</option>
                    <option value="Telangana">Telangana</option>
                    <option value="Tripura">Tripura</option>
                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                    <option value="Uttarkhand">Uttarkhand</option>
                    <option value="West_Bengal">West Bengal</option>
                </select>
                <label id="lab_state" style="color: red"></label>


                <label class = "required" for="Phone_Number">Phone Number :</label>
                <input type="text" id="Phone_Number" name="Phone_Number" placeholder="Phone Number" onblur="validateForm()">
                <label id="lab_phn" style="color: red"></label>

                <label for="Resident" >Resident: (Optional) </label>
                <select id="states" name="states" placeholder= "Country" >
                    <optgroup label="Select your Resident" Placeholeder="Resident" ></optgroup>
                    <option value="1">Select</option>
                    <option value="India">India</option>
                    <option value="NRI">NRI</option>
                </select>
        
          <label for ="res" id ="res "name="Resident">Disability (Optional)</label>
          <input type="checkbox" id="Blind" value="Visibility" name="CheckBox"><label class="light" for="blind">Visibility</label><br>
            <input type="checkbox" id="Hearing" value="Hearing" name="CheckBox"><label class="light" for="NRI">Hearing</label><br>
            <br>    
        
            <label class ="required">Passport Size Photo</label>
            <input type="file" id ="photo" name="photo" value ="Upload Photo" onblur="validateForm()">
            <label id="lab_photo" style="color: red"></label>
            
            <label>Passport Application Form:</label>
            <div id="PDF">
                <a href="Passport_App_Form_V1.0.pdf" target=" ">Download
                </a>
            </div>
            <br>
            
            
            
        </fieldset>
 </div>
    
        <div class = _Buttons_>    
            <button class="Button2" id ="Button2" type="submit">Register</button>
            <button class="Button2" id ="Button2" type="Reset">Reset</button>
        </div> 
</form>
    

</body>

</html>