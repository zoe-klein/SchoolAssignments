function res() {
    /*this js code will unhide the business html code if the
    business radio button is selected*/
    document.getElementById("Business").classList.remove("hide");
    document.getElementById("Resident").classList.add("hide");
}

function bus() {
    /*this js code will unhide the resident html code if the
    resident radio button is selected*/
    document.getElementById("Resident").classList.remove("hide");
    document.getElementById("Business").classList.add("hide");
}

function isEmail() {
    /*this function is suppose to validate the email inputted is in the right format.*/
    return document.form.email.value.match(/^[a-zA-z0-9_.]+@[a-zA-z0-9_.]+.[a-zA-z]+$/);
}

function isWebsite() {
    /*this function validates the website is in the correct format*/
    return document.form.website.value.match(/^www.[a-zA-z0-9_.]+.(com|net|org|edu)+$/);
}

function checkForm() {
    /*this function will check the form. if an input is left blank, the user will be
    alerted to input data. otherwise, it will submit the form*/
    if(document.form.address.value == "" ) {
        alert( "Please provide your address!" );
        document.form.address.focus() ;
        return false;
     }

     if (document.getElementById('checkedBus').checked) {
        if (document.form.name.value == "") {
            alert("Please provide your name!");
            document.form.name.focus();
            return false;
        }

        if ((document.form.website.value == "")) {
            alert("Please provide a website!");
            document.form.website.focus();
            return false;
        }

        if (!isWebsite) {
            alert("Please put website in the right format");
            document.form.website.focus();
            return false;
        }

        if (document.form.taxId.value == "") {
            alert("Please provide a tax ID!");
            document.form.taxId.focus();
            return false;
        }

     }
     
     if (document.getElementById('checkedRes').checked) {
         if (document.form.rname.value == "") {
            alert("Please provide your name!");
            document.form.rname.focus();
            return false;
         }

         if (document.form.email.value == "") {
            alert("Please provide your email!");
            document.form.email.focus();
            return false;
         }

         if (!isEmail) {
            alert("Please put email in right format!");
            document.form.email.focus();
            return false;
         }
     }

     window.open('http://www.selu.edu', width=400,height=400);
     return (true);
}