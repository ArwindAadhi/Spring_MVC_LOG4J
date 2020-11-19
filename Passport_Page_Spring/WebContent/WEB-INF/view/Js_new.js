// $(function () {}
//    $.validator.setDefaults({
//        errorClass: 'help-block',
//        highlight: function (element) {
//            $(element)
//                .closest('.form-group')
//                .addClass('has-error');
//        },
//        unhighlight: function (element) {
//            $(element)
//                .closest('.form-group')
//                .removeClass('has-error');
//        },
//        errorPlacement: function (error, element) {
//            if (element.prop('type') === 'checkbox') {
//                error.insertAfter(element.parent());
//            } else {
//                error.insertAfter(element);
//            }
//        }
//    });
//    //age calculator

//    $(document).ready(function () {
//        $("#dob").change(function () {
//            var start_date = new Date($("#dob").val());
//            var date = new Date();
//            var end_date = new Date(start_date);
//           end_date.setFullYear(date.getFullYear()-start_date.getFullYear());
//            $("#age").val(end_date.getFullYear());
//        });
//    })

//    $.validator.addMethod('strongPassword', function (value, element) {
//        return this.optional(element)
//            || value.length >= 8
//            && /\d/.test(value)
//            && /[a-z]/i.test(value);
//    }, 'Your password must be at least 8 characters long and contain at least one number and one character\'.')

//    $.validator.addMethod('select', function(value, element){
//            if(value === 'select'){ 
//            return false;   
//            }
//            else
//            return true;
//    }, 'Select an option')

//    $(:input).

//    $.validatoraddMethod('aadhar', function(value, element){
//        return this.optional(element)
//        || value.length == 16;
//    },)
//    $("#appForm").validate({
//        errorClass: 'errors',
       
//        rules: {

//            applicationFor:{
//                select:true
//            },

//            applicationType:{
//                select:true
//            },

//            firstname: {
//                required: true,
//                nowhitespace: true,
//                lettersonly: true
//            },
//            lastname: {
//                required: true,
//                nowhitespace: true,
//                lettersonly: true
//            },

//            dob:{
//                required: true
//            },

//            email: {
//                required: true,
//                email: true,
//            },

//            mobile: {
//                required: true,
//                digits: true,
//                minlength:10,
//                maxlength:10
//            },

//            password: {
//                required: true,
//                strongPassword: true
//            },

//            cnf_password: {
//                required: true,
//                equalTo: '#password'
//              },

//            address: {
//                required: true
//            },

//            address2: {
//                required: true
//            },

//            city: {
//                required: true,
//                lettersonly: true
//            },

//            state: {
//                required: true,
//                select:true
//            },

//            zip: {
//                required: true,
//                digits: true
//            },

//            townBirth: {
//                required: true,
//                lettersonly: true
//            },

//            maritialStatus: {
//                required: true,
//                select: true
//            },


//            aadhar: {
//                required: true
//            },

//            terms: {
//                required: true
//            }
//        },
//        messages: {
//            firstname: {
//                required: 'Enter your First Name',
//                nowhitespace: 'no space allowed',
//                lettersonly: 'Alphabets only',
               
//            },
//            lastname: {
//                required: 'Enter your Last Name',
//                nowhitespace: 'no space allowed',
//                lettersonly: 'Alphabets only'
//            },


//            password: {
//                required: 'Enter a password'

//            },
//            cnf_password:{
//                equalTo: 'Passwords do not match'
//            },

//            address: {
//                required: 'Enter your Addresss'
//            },

//            address2: {
//                required: 'Enter alternate Address'
//            },

//            city: {
//                required: 'Enter your city',
//                lettersonly: 'Alphabets only'
//            },

//            state: {
//                required: 'select your state'
//            },

//            zip: {
//                required: 'Enter your zip/pin code',
//            },
           
//            mobile:{
//                required:'Enter your mobile number'

//            },
//            townBirth: {
//                required: 'Enter your Birth town/village',
//                lettersonly: 'Alphabets only'
//            },

//            maritialStatus: {
//                required: 'Select Maritial status'
//            },


//            aadhar: {
//                required: 'Enter your Aadhar number'
//            },

//            terms: {
//                required: 'check this box'

//            },

//            email: {
//                required: 'Please enter an email address.',
//                email: 'Please enter a <em>valid</em> email address.',
//            }

//        }
//    });

// });

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
    
    if(d.length < 8){
        //alert("Password must be 8 characters long");
        document.getElementById('lab_password').innerHTML = "Password must be 8 Characters long"
		document.getElementById("password").focus();
		return false;
	}

    else{
        document.getElementById('lab_password').innerHTML = ""
    }
    
    if( !d.match(/[0-9]/)){
        //alert("Password must have an number");
        document.getElementById('lab_password').innerHTML = "Password must have an Number"
		document.getElementById("password").focus();
		return false;
	}else{
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


//<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>