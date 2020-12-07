<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Add School Master Form</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Bootstrap CSS -->
    <script src="../js/schoolmaster/schoolmaster.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/schoolmaster/schoolmaster-addform.css" />
</head>

<body class="bg">
    <form:form method="post" action="/scm/saveschoolmaster" onsubmit="return validateSchoolMasterForm();" modelAttribute="school" enctype="multipart/form-data">     
 <div class="container ">
            
            <div class="card text-left">
                <div class="card-body">
                <div class="title_container">
                <h2 class="display-5">School Master Form</h2>
            </div>
                    <fieldset class="scheduler-border bg-fix">

                        <legend class="card-title scheduler-border">School Information</legend>


                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field ">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-graduation-cap"></i>
                                    </span>

                                    <label for="School Name">School Name:
                                        <span class="required">*</span>
                                    </label>

                                    <form:input path="schoolName" class="widthfix" type="text" id="schoolName" name="schoolName" placeholder="School Name" />

                                </div>
                            </div>
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-user"></i>
                                    </span>

                                    <label for="Owner Name">Owner Name:
                                        <span class="required">*</span>
                                    </label>

                                    <form:input path="ownerName" class="widthfix" type="text" id="ownerName" name="ownerName" placeholder="Owner Name" />
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-phone"></i>
                                    </span>
                                    <label for="Contact No.">Contact No.:
                                        <span class="required">*</span>
                                    </label>
                                    <form:input path="contactNo" class="widthfix" type="text" id="contactNo" name="contactNo" placeholder="Contact No." />
                                </div>
                            </div>
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-envelope"></i>
                                    </span>

                                    <label for="Email Id">Email Id:
                                    </label>
                                    <form:input path="emailId" class="widthfix" type="email" id="Email Id" name="emailId" placeholder="Email Id" />
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-user"></i>
                                    </span>
                                    <label for="Registration Id">School Registration No:

                                    </label>

                                    <form:input path="registrationNo" class="widthfix" type="text" id="Registration Id" name="registrationNo" placeholder="Registration Id"/>


                                </div>
                            </div>
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-map-marker"></i>
                                    </span>
                                    <label for="Address">Address:
                                        <span class="required">*</span>
                                    </label>

                                    <form:textarea path="address"  class="widthfix"  id="address" name="address" placeholder="Address"  />
                                </div>
                            </div>

                        </div>

                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-upload"></i>
                                    </span>
                                    <label for="UploadFile">Upload School Logo:

                                    </label>

                                    <div class="custom-file"><input type="file" name="imageFile" class="custom-file-input" id="schoolLogo" onchange="displayBrowsedFile();"/>
                                        <label class="custom-file-label widthfix" for="customFile">Choose School
                                            Logo</label>
                                            
                                    </div>
                               <span id="fileNameSize"></span> 




                                </div>
                            </div>

                            <!-- other half -->
                            <div class="col_half">
                            </div>
                        </div>
                    </fieldset>
                    <!-- </div>
            </div>-->

                    <!-- lower section -->
                    <!--<div class="card text-left">
                <div class="card-body">-->

                    <fieldset class="scheduler-border bg-fix">
                        <legend class="scheduler-border">Admin Details</legend>
                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field">

                                    <span>
                                        <i aria-hidden="true" class="fa fa-user"></i>
                                    </span>

                                    <label for="Admin Name">Admin Name:
                                        <span class="required">*</span>
                                    </label>

                                    <form:input path="user.userName" class="widthfix" type="text" id="adminName" name="user.userName" placeholder="Admin Name" />
                                </div>
                            </div>
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-envelope"></i>
                                    </span>

                                    <label for="Email Id">Email Id:
                                    </label>
                                    <form:input path="user.emailId" class="widthfix" type="email" id="Email Id" name="user.emailId" placeholder="Email Id" />
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field">
                                    <span><i aria-hidden="true" class="fa fa-lock"> </i> </span>

                                    <label for="Password">Password:
                                        <span class="required">*</span>
                                    </label>
                                    <form:input path="user.password" class="widthfix" type="password" id="password" name="user.password" placeholder="Password" />
                                </div>
                            </div>

                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-lock"></i>
                                    </span>

                                    <label for="Confirm Password">Confirm Password
                                        <span class="required">*</span>
                                    </label>
                                    <form:input path="user.confirmPassword" class="widthfix" onchange="checkPassword();" type="password" id="cnfrmPassword" name="user.confirmPassword" placeholder="Confirm Password" />
                                </div>
                                <span id="errorMsg"></span>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field">
                                    <span>
                                        <i aria-hidden="true" class="fa fa-phone"></i>
                                    </span>

                                    <label for="Contact No.">Contact No.:
                                        <span class="required">*</span>
                                    </label>
                                    <form:input path="user.contactNo" class="widthfix" type="text" id="adminContactNo" name="user.contactNo" placeholder="Contact No." />
                                </div>
                            </div>

                        </div>



                    </fieldset>
                    <div style=" text-align: center;;">
                        <input id="submit" class="btn btn-dark  button " type="submit" value="Submit" />
                        <input id="Reset" class=" btn  btn-danger button_re " type="reset" value="Reset" />
                    </div>

                </div>
            </div>


        </div>
    </form:form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <script>
        $(".custom-file-input").on("change", function() {
            var fileName = $(this).val().split("\\").pop();
            $(this)
                .siblings(".custom-file-label")
                .addClass("selected")
                .html(fileName);
        });
    </script>
</body>

</html>