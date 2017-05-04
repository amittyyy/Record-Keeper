
function validation() {
   
    var Name            =  document.getElementById('txtName').value;
    var Email           =  document.getElementById('txtEmail').value;
    var Address         =  document.getElementById('txtAddress').value;
    var Phone           =  document.getElementById('txtPhone').value;
    var Password        =  document.getElementById('txtPassword').value;
    var ConfirmPassword =  document.getElementById('txtConfirmPassword').value;
    var CustType = document.getElementById('lstCustomerType').value;

    var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;

    var mobileNumber = /^[1-9]{1}[0-9]{9}$/;  
   

    //alert(CustType + " Email :" + Email + "Name : " + Name + "address :" + Address + "phone : " + Phone + "passweod : " + Password);
   // return false;

    if (Name == "") {
        document.getElementById('lblError').innerHTML = "Name is Empty !!!";
        document.getElementById('txtName').focus();
        return false;
    }
    if (Phone == "") {
        document.getElementById('lblError').innerHTML = "Phone is Empty !!!";
        document.getElementById('txtPhone').focus();
        return false;
    }

    if (mobileNumber.test(Phone) == false)
    {
        document.getElementById('lblError').innerHTML = "Phone is not valid !!!";
        document.getElementById('txtPhone').focus();
        return false;
    }
    if (Email == "") {
        document.getElementById('lblError').innerHTML = "Email is Required!!!";
        document.getElementById('txtEmail').focus();
        return false;
    }

    if (!emailPat.test(Email)) {
        document.getElementById('lblError').innerHTML = "Email format is not matched!!!";
        document.getElementById('txtEmail').focus();
        return false;
    }

    if (Address == "") {
        document.getElementById('lblError').innerHTML = "Address is Required!!!";
        document.getElementById('txtAddress').focus();
        return false;
    }
    if (Password == "") {
        document.getElementById('lblError').innerHTML = "Password is Required!!!";
        document.getElementById('txtPassword').focus();
        return false;
    }
    if (Password != ConfirmPassword) {
        document.getElementById('lblError').innerHTML = "Password is not matched!!!";
        document.getElementById('txtConfirmPassword').focus();
        return false;
    }
    if ( CustType == "") {
        document.getElementById('lblError').innerHTML = "Customer type is Required!!!";
        document.getElementById('lstCustomerType').focus();
        return false;
    }
}


