<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passport Home</title>
</head>
<link href="<c:url value="/resources/CSS/Test.css"/>" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
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

        <a  href="Home.jsp" div id="Home">
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


<marquee>Welcome to Passport Seva. Apply for Passport here and Get it within 1 month after Applied.Operations at select Passport Seva Kendra (PSKs) and Post Office Passport Seva Kendras (POPSKs) have been resumed. Please refer the list of operational PSKs and POPSKs in the Latest News Section. Applicants may reschedule their appointments to the nearest operational PSK/POPSK to avail the services.</marquee>

<form:form action="/PassportPage/insert" name="Form" method="post" commandName="pp">
    <div id="txt">Time:</div>
    <br><br><br><br><h1>Passport Registration</h1><br><br><br><br>

        
        <fieldset class="Required_details">
            
            <legend><span class="number">1</span>Required Details</legend>
            <label class = "required" for="name">Name:</label>
            <form:input path="name" id="name" placeholder="Name" name="name" onblur="validateForm()" />
            <label id="lab_name" style="color: red"></label>
        		
        		
                <label class = "required" for="name" name="Gender">Gender:</label>
                <label class="gen"><form:radiobutton path="Gender" value="Male"/>  Male</label>
                <label class="gen"><form:radiobutton path="Gender" value="Female"/>  Female</label>
        		

                <label class="required" for="DOB" > Date of Birth:</label>
                <form:input path="dob" id="dob" placeholder="(dd/mm/yyyy)" name ="dob" onblur="validateForm()" />
                <label id="lab_dob" style="color: red"></label>
                
                <label for ="Age"> Age:</label>
		        <form:input path="age" id="age" name="age" placeholder="Age" onblur="validateForm()"/>
            
                <label class="required" for="mail">Email:</label>
                <form:input path="user_email" id="user_mail" name="user_email" placeholder="Email" onblur="validateForm()"/>
                <label id="lab_email" style="color: red"></label>
          		
          		<label class="required">Password:</label>
          		<form:password path ="user_password" name="user_password" onblur="validateForm()" />
          		<label id="lab_password" style="color: red"></label>
          		
                <label class = "required" for="Father Name">Father Name:</label>
                <form:input path="father_name" id="father_name" name="father_name" placeholder="Father Name" onblur="validateForm()"/>
                <label id="lab_father" style="color: red"></label>

                <label class = "required" for="Mother Name">Mother Name:</label>
                <form:input path="mother_name" id="mother_name" name="mother_name" placeholder="Mother Name" onblur="validateForm()"/>
                <label id="lab_mother" style="color: red"></label>

                <label class = "required" for="pan_number">PAN Number:</label>
                <form:input path="pan_number" id="pan_number" name="pan_number" placeholder="PAN Number" onblur="validateForm()" />
                <label id="lab_pan" style="color: red"></label>
    
                <label class = "required" for="aadhar_number">Aadhar Number:</label>
                <form:input path="aadhar_number" id="aadhar_number" name="aadhar_number" placeholder="Aadhar Number" onblur="validateForm()"/>
                <label id="lab_aadhar" style="color: red"></label>

                <label class = "required" for="state">Martial Status:</label>
                    <form:select path="martial_status" id="martial_status" name="martial_status">
                        <form:option value="Single" label="Single" />
                        <form:option value="married" label="Married"/>
                    </form:select>
            
            
    	                 
        </fieldset>

    <div class="Address_details">
        <fieldset id="address" align="left">
            <legend><span class="number">2</span>Address Details</legend>
            <label class = "required" for="address" required >Address:</label>
            <form:textarea path="address" id="Address" placeholder="Address" name="address" onblur="validateForm()"/></textarea>
            <label id="lab_address" style="color: red"></label>
          </fieldset>

        <fieldset id="Address" align="left">
    
            <label class = "required" for="door_no">Door No :</label>
            <form:input path="door_no" id="door_no" name="door_no" placeholder="Door No" onblur="validateForm()" />
            <label id="lab_door" style="color: red"></label>

            <label class = "required" for="Street">Street :</label>
            <form:input path="street" id="street" name="street" placeholder="Street" onblur="validateForm()"/>
            <label id="lab_street" style="color: red"></label>

            <label class = "required" for="District">District :</label>
            <form:input path="district" id="district" name="district" placeholder="District" onblur="validateForm()" />
            <label id="lab_district" style="color: red"></label>

            <label class = "required" for="Pincode">Pincode :</label>
            <form:input path="Pincode" id="Pincode" name="Pincode" placeholder="Pincode" onblur="validateForm()"/>
            <label id="lab_pin" style="color: red"></label>


            <label class = "required" for="states" >Select State:</label>
                <form:select path="states" id="states" name="states" placeholder= "State" onblur="validateForm()">
          	        <form:option value="0" lable ="Select"/>
                    <form:option value="Andhra Pradesh" label="Andhra Pradesh"/>
                    <form:option value="Arunachal Pradesh" label ="Arunachal Pradesh"/>
                    <form:option value="Assam" label="Assam"/>
                    <form:option value="Bihar" label="Bihar"/>
                    <form:option value="Chandigarh" label="Chandigarh"/>
                    <form:option value="Chattisgarh" label ="Chattisgarh"/>
                    <form:option value="Delhi" label ="Delhi"/>
                    <form:option value="Goa" label="Goa" />
                    <form:option value="Gujarat" label="Gujarat"/>
                    <form:option value="Haryana" label="Haryana"/>
                    <form:option value="Himachal Pradesh" label="Himachal Pradesh"/>
                    <form:option value="Jammu & Kashmir" label="Jammu & Kashmir"/>
                    <form:option value="Jharkand" label="Jharkand"/>
                    <form:option value="Karnataka" label="Karnataka"/>
                    <form:option value="Kerla" label="Kerla"/>
                    <form:option value="Madhya Pradesh" label="Madhya Pradesh"/>
                    <form:option value="Maharastra" label="Maharastra" />
                    <form:option value="Meghalaya" label="Meghalaya"/>
                    <form:option value="Mizoram" label="Mizoram"/>
                    <form:option value="Nagaland" label="Nagaland"/>
                    <form:option value="Odisha" label="Odisha"/>
                    <form:option value="Pudhucherry" label="Pudhucherry"/>
                    <form:option value="Punjab" label="Punjab"/>
                    <form:option value="Rajasthan" label="Rajasthan"/>
                    <form:option value="Sikkim" label="Sikkim"/>
                    <form:option value="Tamil Nadu" label="Tamil Nadu"/>
                    <form:option value="Telangana" label="Telangana"/>
                    <form:option value="Tripura" label="Tripura"/>
                    <form:option value="Uttar Pradesh" label="Uttar Pradesh"/>
                    <form:option value="Uttarkhand" label="Uttarkhand" />
                    <form:option value="West_Bengal" label="West Bengal"/>
                </form:select>
                <label id="lab_state" style="color: red"></label>


                <label class = "required" for="Phone_Number">Phone Number :</label>
                <form:input path="Phone_Number" id="Phone_Number" name="Phone_Number" placeholder="Phone Number" onblur="validateForm()"/>
                <label id="lab_phn" style="color: red"></label>

                <label for="Resident" >Resident: (Optional) </label>
                <form:select path ="resident" id="resident" name="resident" placeholder= "Country" >
                    <optgroup label="Select your Resident" Placeholeder="Resident" ></optgroup>
                    <form:option value="1" label="Select"/>
                    <form:option value="India" label="India"/>
                    <form:option value="NRI" label="NRI"/>
                </form:select>form:select>
        
          <label for ="res" id ="res "name="Resident">Disability (Optional)</label>
          <form:checkbox path="disability" id="Blind" value="Visibility" name="resident"/><label class="light" for="blind">Visibility</label><br>
           <form:checkbox path="disability" id="Hearing" value="Hearing" name="resident"/><label class="light" for="NRI">Hearing</label><br>
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
            <button class="Button2" id ="Button2" type="submit" onSubmit="validateForm()">Register</button>
            <button class="Button2" id ="Button2" type="Reset">Reset</button>
        </div> 
</form:form>

<script>

function validateForm()
{
	var iChars = "[!@#$%^&*()+=\\-\\[\\]\\\';,./{}|\":<>?]{1}";
	var a = document.forms["Form"]["name"].value;
	if(a == ""){
			// alert("Please Enter or Check the Name");
            document.getElementById("name").focus();
    
			document.getElementById('lab_name').innerHTML = " Please Enter Your Name"
	 	 	return false;
    }else
    {
        document.getElementById('lab_name').innerHTML = ""
    }

	if(a.length < 3){
			//alert("Please Enter a Valid Name");
            document.getElementById("name").focus();
            document.getElementById('lab_name').innerHTML = " Please Enter a valid Name"
	 		return false;
	}else
    {
        document.getElementById('lab_name').innerHTML = ""
    }
    
    if(!isNaN(a)){
			//alert("Name cannot have Numbers");
            document.getElementById("name").focus();
            document.getElementById('lab_name').innerHTML = "Name cannot have Numbers"
			return false;
    }
    else
    {
        document.getElementById('lab_name').innerHTML = ""
    }

	if (a.search(iChars) != -1){
			//alert("Name cannot  have special characters");
            document.getElementById("name").focus();
            document.getElementById("lab_name").innerHTML = "Name cannot have Characters"
			return false;
    }else
    {
        document.getElementById("lab_name").innerHTML = ""
    }

	var y =document.forms["Form"]["dob"].value;
	if(y == ""){
		//alert("Please Enter Date of Birth");
        document.getElementById("dob").focus();
        document.getElementById("lab_dob").innerHTML = "Please Select the Date of Birth "
		return false;
    }else{
        document.getElementById('lab_dob').innerHTML = ""
    }
	
	var j = document.forms["Form"]["age"].value;
	 if(j < 0 ){
		 //alert("Please Enter a valid Date of Birth");
         document.getElementById("dob").focus();
         document.getElementById('lab_dob').innerHTML = 'Please Enter a valid Date of Birth'
	 	return false;
    }else{
        document.getElementById('lab_dob').innerHTML = ""
    }
    if(j == 0){
        //alert("Applicant must be 1 year old to apply");
        document.getElementById('lab_dob').innerHTML = 'Applicant must be atleast 1 year old'
		return false;
    }else
    {
        document.getElementById('lab_dob').innerHTML = ""
        
    }

    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var c =document.forms["Form"]["user_email"].value;
	if(c == "" || !c.match(mailformat)){
        //alert("Please Enter or check the Email");
        document.getElementById('lab_email').innerHTML = "Please Enter or Check the Email"
        document.getElementById("user_email").focus();
        
		return false;
    }
    else
    {
        document.getElementById('lab_email').innerHTML = ""
	}
    
	var d =document.forms["Form"]["user_password"].value;
	if(d == ""){
        //alert("Please enter the password");
        document.getElementById('lab_password').innerHTML = "Please enter the password"
		document.getElementById("password").focus();
		return false;
	}
    else{
            document.getElementById('lab_password').innerHTML = ""
    } 
    



	var iChars = "[!@#$%^&*()+=\\-\\[\\]\\\';,./{}|\":<>?]{1}";
	var e = document.forms["Form"]["father_name"].value;
	if(e == ""){
            //alert("Please Enter or Check the Father Name");
            document.getElementById('lab_father').innerHTML = "Please Enter or Check the Father Name"
			document.getElementById("father_name").focus();
	 	 	return false;
	}
    else{
        document.getElementById('lab_father').innerHTML = ""
    } 
    
    if(e.length < 3){
			//alert("Please Enter a Valid Father Name");
            document.getElementById('lab_father').innerHTML = "Please Enter a Valid Father Name"
            document.getElementById("father_name").focus();
	 		return false;
	}
    else{
        document.getElementById('lab_father').innerHTML = ""
    } 
    
    if(!isNaN(e)){
	    	//alert("Father Name cannot have Numbers");
            document.getElementById('lab_father').innerHTML = "Father Name Cannot have Numbers"
            document.getElementById("father_name").focus();
			return false;
	}
    else{
        document.getElementById('lab_father').innerHTML = ""
    } 
    
    if (e.search(iChars) != -1){
			//alert("Father Name cannot  have special characters");
            document.getElementById('lab_father').innerHTML = "Father Name cannot have Numbers"
            document.getElementById("father_name").focus();
			return false;
	}else{
        document.getElementById('lab_father').innerHTML = ""
    }


	var iChars = "[!@#$%^&*()+=\\-\\[\\]\\\';,./{}|\":<>?]{1}";
	var f = document.forms["Form"]["mother_name"].value;
	if(f == ""){
            //alert("Please Enter or Check the Mother Name");
            document.getElementById('lab_mother').innerHTML = "Please Enter or Check the Mother Name"
			document.getElementById("mother_name").focus();
	 	 	return false;
	}
    else{
        document.getElementById('lab_mother').innerHTML = ""
    }
    
    if(f.length < 3){
            //alert("Please Enter a Valid Mother Name");
            document.getElementById('lab_mother').innerHTML = " Please Enter a valid Mother name"
			document.getElementById("mother_name").focus();
	 		return false;
	}
    else {
        document.getElementById('lab_mother').innerHTML = ""
    }
    
    if(!isNaN(f)){
			//alert("Mother Name cannot have Numbers");
            document.getElementById('lab_mother').innerHTML = "Mother name cannot have Numbers"
            document.getElementById("mother_name").focus();
			return false;
	}
    else {
        document.getElementById('lab_mother').innerHTML = ""
    }
    
    if (f.search(iChars) != -1){
			//alert("Mother Name cannot  have special characters");
            document.getElementById('lab_mother').innerHTML = "Mother name cannot have numbers  "
            document.getElementById("mother_name").focus();
			return false;
	}else{
        document.getElementById('lab_mother').innerHTML = ""
    }

	var g = document.forms["Form"]["pan_number"].value;
	if(g == "" || g.length >10 || g.length<10){
        //alert("Please Enter the PAN Number Or Check the PAN Number");
        document.getElementById('lab_pan').innerHTML = "Please Enter or Check the PAN Number"
		return false;
    }else {
        document.getElementById('lab_pan').innerHTML = ""
    }
    
    if((g.search(iChars) != -1)){
		//alert("PAN number cannot  have special characters");
        document.getElementById('lab_pan').innerHTML = "PAN Number cannot have special characters"
        document.getElementById("pan_number").focus();
		return false;
	}else{
        document.getElementById('lab_pan').innerHTML = ""
    }

	var h = document.forms["Form"]["aadhar_number"].value;
	if(h == "" ||h.length >12 || h.length<12 ){
		//alert("Please Enter the Aadhar Number or Check the Aadhar number");
        document.getElementById('lab_aadhar').innerHTML = "Please Enter the Aadhar Number or Check the Aadhar Number"
        document.getElementById('aadhar_number').focus();
        return false;
    }else{
        document.getElementById('lab_aadhar').innerHTML = ""
    } 
    
    if(isNaN(h)) {
        //alert("Please check the Aadhar Number");
        document.getElementById('lab_aadhar').innerHTML = "Please check the Aadhar Number"
        document.getElementById('aadhar_number').focus();
        return false;
	}else{
        document.getElementById('lab_aadhar').innerHTML = ""
    }

	var i = document.forms["Form"]["martial_status"].options.value;
	if(i == 1 ){
		alert("Please Enter the Martial Status");
		return false;
	}

	var t = document.getElementById("Address").value;
	if (t == ""){
		//alert("Enter the Address");
        document.getElementById('lab_address').innerHTML = "Enter the Address" 
        document.getElementById('Address').focus();
        return false;
	}else{
        document.getElementById('lab_address').innerHTML = ""
    }

	var l = document.forms["Form"]["door_no"].value;
	if(l == "" ){
		//alert("Please Enter the Door No");
        document.getElementById('lab_door').innerHTML ="Please Enter the Door Number"
        document.getElementById('door_no').focus();
        return false;
    }else{
        document.getElementById('lab_door').innerHTML = ""
    } 
    
    if(isNaN(l)) {
        //alert("Please check the Door Number");
        document.getElementById('lab_door').innerHTML = "Please Check the Door Number"
        document.getElementById('door_no').focus();
        return false;
	}else{
        document.getElementById('lab_door').innerHTML = ""
    }

	var m = document.forms["Form"]["street"].value;
	if(m == "" ){
            //alert("Please Enter the Street");
            document.getElementById('lab_street').innerHTML = "Please Enter the Street"
			return false;
	}else{
        document.getElementById('lab_street').innerHTML = ""
    }

	var iChars = "[!@#$%^&*()+=\\-\\[\\]\\\';,./{}|\":<>?]{1}";
	var n = document.forms["Form"]["district"].value;
	if(n == ""){
		//alert("Please Enter the District");
        document.getElementById('lab_district').innerHTML = "Please Enter the District"
        return false;
	}
    else{
        document.getElementById('lab_district').innerHTML = ""
    }
    
    if(!isNaN(n) || n.search(iChars) != -1){
        //alert("Please enter a valid District Name")
        document.getElementById('lab_district').innerHTML = "Please Enter a valid District Name"
	}else{
        document.getElementById('lab_district').innerHTML = ""
    }

	var pc = document.getElementById("Pincode").value
	if(isNaN(pc) || pc == "" || pc.length < 6 || pc.length > 6) {
        //alert("Please check the Pincode");
        document.getElementById('lab_pin').innerHTML = "Please enter or Check the Pin code"
		return false;
	}else{
        document.getElementById('lab_pin').innerHTML = ""
    }


	var result = document.getElementById('states').value;
	if (result == "0") {
        //alert("Please Select the State");
        document.getElementById('lab_state').innerHTML = "Please Select the State"
	}else{
        document.getElementById('lab_state').innerHTML = ""
    }

	var pn = document.getElementById("Phone_Number").value
	if(isNaN(pn) || pn == "" || pn.length < 10 || pn.length > 10) {
		//alert("Please check the Phone Number");
        document.getElementById('lab_phn').innerHTML = "Please Check the Phone Number"
        return false;
	}else{
        document.getElementById('lab_phn').innerHTML = ""
    }

	var fileInput = document.getElementById('photo');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;
	if(document.forms["Form"]["photo"].value == 0){
		//alert("Please Upload a Image");
        document.getElementById('lab_photo').innerHTML = "Please Upload an image"
        return false;
    }else {
        document.getElementById('lab_photo').innerHTML =""
    }    

    if(!allowedExtensions.exec(filePath)){
        //alert('Please upload file having extensions .jpeg/.jpg/.png only.');
        document.getElementById('lab_photo').innerHTML = "Please upload file having extensions .jpeg/.jpg/.png only"
        fileInput.value = '';
        return false;
    }else{
        document.getElementById('lab_photo').innerHTML = ""
    }


}
</script>



    
<style>
@charset "ISO-8859-1";
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Varela+Round&display=swap');
#Passport_Home {
    position: absolute;
    width: 1280px;
    height: 2695px;
    background-color: rgba(255,255,255,1);
    overflow: hidden;
    font-family: 'Do Hyeon', sans-serif;

  }
  .html{
    max-width: 100%;
    overflow-x: hidden;
    min-height: 100%;
  }
  .myslid{
    height: 300px;;
    width: 631px;
   
    
  }
  
  .required:after {
  content:" *";
  color: red;
}
  .Welcome{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    font-size: large;
  }
  img{
    height: 650px;
    width: 400px;
    
  }
  #gen{
  color:black;
  }

h3{
  font-size: 20px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-align: center;
  text-decoration: none;
  text-emphasis-color: rgba(38,155,151,1);
  color: red;
}
h2{

  font-size: 30px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-align: center;
  color: rgba(38,155,151,1);
}

    
body
{
background-color:none;
max-width: 100%;
max-height: 100%;
background-image: url("White_bg.jpg");
/* background-image: url("Indian_pp.jpg");
background-size: 1650px;
background-repeat: no-repeat;
background-position: center; */


}


.Header-Rectangle
{
    filter: drop-shadow(0px 3px 6px rgba(0, 0, 0, 0.4));
    position: absolute;
    overflow: visible;
    width: 1298px;
    height: 108px;
    left: 0px;
    top: 0px;
  
}

#Header-Rectangle {
    fill: rgba(38,155,151,1);
}
#Passport_Seva {
    left: 73px;
    top: 16px;
    position: absolute;
    overflow: visible;
    width: 189px;
    white-space: nowrap;
    text-align: left;
    font-family: 'Do Hyeon', sans-serif;

    font-style: normal;
    font-weight: bold;
    font-size: 30px;
    color: rgba(255,255,255,1);
}
#Logo {
    position: absolute;
    width: 37px;
    height: 39px;
    left: 20px;
    top: 26px;
    overflow: visible;
}
#Circle {
    fill: rgba(255,255,255,1);
}
.Circle {
    position: absolute;
    overflow: visible;
    width: 23px;
    height: 23px;
    left: 7px;
    top: 0px;
}
#Triangle {
    fill: rgba(255,255,255,1);
}
.Triangle {
    overflow: hidden;
    position: absolute;
    width: 37px;
    height: 31px;
    left: 0px;
    top: 8px;
    transform: matrix(1,0,0,1,0,0);
}
#Home {
    left: 571px;
    top: 29px;
    position: absolute;
    overflow: visible;
    width: 70px;
    white-space: nowrap;
    text-align: left;
    font-family: 'Varela Round', sans-serif;
    font-style: normal;
    font-weight: bold;
    text-decoration: none;
    font-size: 25px;
    color: rgba(255,255,255,1);
}
#About_Us {
    left: 690px;
    top: 29px;
    position: absolute;
    overflow: visible;
    width: 107px;
    white-space: nowrap;
    text-align: left;
    font-family: 'Varela Round', sans-serif;
    font-style: normal;
    text-decoration: none;
    font-weight: bold;
    font-size: 25px;
    color: rgba(255,255,255,1);
}
#Passport_Offices {
    left: 846px;
    top: 29px;
    position: absolute;
    overflow: visible;
    width: 184px;
    white-space: nowrap;
    text-align: left;
    font-family: 'Varela Round', sans-serif;
    font-style: normal;
    font-weight: bold;
    font-size: 25px;
    color: rgba(255,255,255,1);
}
#Contact_Us {
    left: 1079px;
    top: 29px;
    position: absolute;
    overflow: visible;
    width: 124px;
    white-space: nowrap;
    text-align: left;
    font-family: 'Varela Round', sans-serif;
    font-style: normal;
    font-weight: bold;
    font-size: 25px;
    color: rgba(255,255,255,1);
}
#Ministry_of_External_Affairs_G {
    left: 73px;
    top: 56px;
    position: absolute;
    overflow: visible;
    width: 177px;
    white-space: nowrap;
    text-align: left;
    font-family: 'Varela Round', sans-serif;
    font-style: normal;
    font-weight: bold;
    font-size: 8px;
    color: rgba(255,255,255,1);
}

#Introduction{
    left: 571px ;
    right: 29px;
    bottom: 280px;
    font-size:25px;
    font-style: Bold;
    font-family: 'Varela Round', sans-serif;
    color: black;
    text-align: center;
    position: fixed;
    overflow: visible;
    width: 70px;
}
*, *:before, *:after {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  
  body {
    font-family: 'Varela Round', sans-serif;
    color:white;
    overflow-x: hidden;
    
  }
  
 
  h1 {
    margin: 0 0 30px 0;
    text-align: center;
    font-size: 35px;
    color: black
  }

  h4{
    margin: 0 0 30px 0;
    text-align: center;
    font-size: 25px;
    color: rgba(75,172,169,1);
  }
  h6{
  
  	margin:0 0 30px 0;
  	text-align:center;
  	font-size:"25px";
  	color:rgba(75,172,169,1);
  	border-radius:10px;
  	font-size:15px;
  	 font-family: 'Varela Round', sans-serif;
  	
  	}
  #about{
  background-color: white;
  text-align: left;
  width: 900px;
  border: 100px;
  border-color:  rgba(75,172,169,1);
  padding: 50px;
  margin: 20px;
  border-radius: 50px;
  }
  p{
  text-align: left;
  }
  
  input[type="text"],
  input[type="password"],
  input[type="date"],
  input[type="datetime"],
  input[type="email"],
  input[type="number"],
  input[type="search"],
  input[type="tel"],
  input[type="time"],
  input[type="url"],
  input[type="file"],
  textarea,
  select {
    background: rgba(255,255,255,0.1);
    border: 1px;
    font-size: 15px;
    height: auto;
    margin: 0;
    outline: 0;
    padding: 15px;
    width: 40%;
    background-color: #e8eeef;
    color: black;
    box-shadow:0 0 5px rgb(37, 41, 41);
    margin-bottom: 40px;
    border-radius: 8px;
  }
  
  input[type="checkbox"] {
    margin: 0 20px 8px 0;
    color: black;
    font-color:black;
  }
  
  select {
    padding: 6px;
    height: 32px;
    border-radius: 2px;
  }

  #Button1{
    align-items: center;
    padding: 19px 80px 18px 39px;
    color: rgba(75,172,169,1);
    background-color:  white;
    text-align: center;
    font-style: normal;
    border-radius: 5px;
    width: 100%;
    border: none;
    border-width: 1px 1px 3px;
    box-shadow: 0 -1px 0 rgba(255,255,255,0.5) inset;
    margin-bottom: 10px;
    transition-duration: 0.4s;
    font-family: 'Varela Round', sans-serif;
    text-decoration: none;

  }

  #Button1:hover{
    background-color: rgb(43, 107, 105);
      color: white;
  }
  
  button {
  	
    padding: 8px 12px 8px 14px;
    color: rgba(75,172,169,1);
    background-color:  white;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    font-weight: bold;
    border-radius: 5px;
    width: 45%;
    border: none;
    border-width: 1px 1px 3px;
    box-shadow: 0 -1px 0 rgba(255,255,255,0.5) inset;
    margin-bottom: 10px;
    transition-duration: 0.4s;
    font-family: 'Varela Round', sans-serif;
    margin: 0;
  	position: relative;
  }
  button:hover{
  background-color: rgb(43, 107, 105);
    color: white;
  }
   #Button2 {
  	
    padding: 8px 12px 8px 14px;
    color: rgba(75,172,169,1);
    background-color:  white;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    border-radius: 10px;
    width: 15%;
    border: .5px solid black;
    /* border-color: black;
    border-width: 1px 1px 3px; */
    box-shadow: 0 -1px 0 rgba(83, 79, 79, 0.1) inset;
    margin-bottom: 10px;
    transition-duration: 0.4s;
    font-family: 'Varela Round', sans-serif;
    margin: 0;
  	position: relative;
 	  top: 50%;
    left: 33%;
    box-shadow:0 0 5px rgb(37, 41, 41);
  	-ms-transform: translate(-20%, -50%);
  	transform: translate(-20%, -50%);
  }
  #Button2:hover{
  background-color: rgb(43, 107, 105);
    color: white;
  }
  
  fieldset {
    margin-bottom: 30px;
    border: none;
  }
  
  legend {
    font-size: 1.4em;
    margin-bottom: 10px;
    color: black;
  }
  
  label {
    display: block;
    margin-bottom: 8px;
    color:black;
  }
  
  label.light {
    font-weight: 300;
    display: inline;
  }
  
  .number {
    background-color: rgb(43, 107, 105) ;
    color: #fff;
    height: 30px;
    width: 30px;
    display: inline-block;
    font-size: 0.8em;
    margin-right: 4px;
    line-height: 30px;
    text-align: center;
    text-shadow: 0 1px 0 rgba(255,255,255,0.2);
    border-radius: 100%;
    font-family: 'Varela Round', sans-serif;
  }
  
 

  marquee{
  font-size: 15px;
  font-weight: bold;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color:rgb(43, 107, 105) ;
  color:white;
  position: relative;
  overflow: hidden;
  --offset: 20vw;
  --move-initial: calc(-25% + var(--offset));
  --move-final: calc(-50% + var(--offset));
  }

#slide{
align-items: center;
position: relative;
left: 90px;
right: 80px;
}

.Address_details{
  position: relative;
  right: -700px;
  top: -1480px;
  align-items: left;
}
.head{
  color: white;
  font-size: 25px;
  font-weight: bold;
}

#txt{
  color: rgb(255, 0, 0);
  
  position: relative;
  align-items: right;
}

.Required_details{
  position: relative;
  left: 50px;

}

.gen{
color:black;
font-size:18px;
}

.Gender{
  color: black;
}

.wrapper{
  display: inline-flex;
  background: #fff;
  height: 80px;
  width: 400px;
  align-items: center;
  justify-content: space-evenly;
  border-radius: 5px;
  padding: 20px 15px;
}
.wrapper .option{
  background: #fff;
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  margin: 0 10px;
  border-radius: 5px;
  cursor: pointer;
  padding: 0 10px;
  border: 2px solid lightgrey;
  transition: all 0.3s ease;
}
.wrapper .option .dot{
  height: 20px;
  width: 20px;
  background: #d9d9d9;
  border-radius: 50%;
  position: relative;
}
.wrapper .option .dot::before{
  position: absolute;
  content: "";
  top: 4px;
  left: 4px;
  width: 12px;
  height: 12px;
  background:  rgba(75,172,169,1);
  border-radius: 50%;
  opacity: 0;
  transform: scale(1.5);
  transition: all 0.3s ease;
}
input[type="radio"]{
  color:black;
}
#option-1:checked:checked ~ .option-1,
#option-2:checked:checked ~ .option-2{
  border-color:  rgba(75,172,169,1);
  background:  rgba(75,172,169,1);
}
#option-1:checked:checked ~ .option-1 .dot,
#option-2:checked:checked ~ .option-2 .dot{
  background: #fff;
}
#option-1:checked:checked ~ .option-1 .dot::before,
#option-2:checked:checked ~ .option-2 .dot::before{
  opacity: 1;
  transform: scale(1);
}
.wrapper .option span{
  font-size: 15px;
  color: #808080;
}
#option-1:checked:checked ~ .option-1 span,
#option-2:checked:checked ~ .option-2 span{
  color: #fff;
}
._Buttons_{
  position: relative;
  bottom: 1450px;
  right: -70px;
  

}

@media screen and (min-width:900px){
  form{
    max-width: 1200px;
    max-height: 1200px;
    
  }
}

hr.new4 {
  border: 1px solid rgba(75,172,169,1);
  
}

.PDF{
  text-decoration: none;
}

a:link {
  text-decoration: none;
}


/* .navbar {
  overflow: hidden;
  position: fixed;
  top: 0;
  width: 100%;
} */

</style>
</body>

</html>