

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 85% 0, 100% 0, 100% 100%, 75% 93%, 50% 100%, 25% 93%, 0 98%, 0 0, 23% 0);
            }
        </style>
    </head>
    <body>
        
        <%@include file="normal_navbar.jsp" %>
        <main class="primary-background p-5 banner-background" style="padding-bottom: 100px;">
            
            <div class="cointainer">
                
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        
                        <div class="card-header text-center">
                            <span class="fa fa-user-circle fa-2x"></span>
                            Register Here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="POST">
                                
                                <div class="form-group">
                                  <label for="user_name">Username</label>
                                  <input type="text" required name="user_name" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                                  
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input type="email" required name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" required name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                
                                <div class="form-group">
                                  <label for="gender">Select Gender</label>
                                  <br>
                                  <input type="radio" id="gender" id ="gender"name = "gender" value = "male"> Male
                                  <input type="radio" id="gender" id ="gender"name = "gender" value="female"> Female
                                </div>
                                
                                <div class="form-group">
                                  
                                    <textarea name="about" id="about"  rows="5" class="form-control" placeholder="Tell us something about yourself"></textarea>
                                </div>
                                
                                <div class="form-check">
                                    <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">I agree Term and conditions</label>
                                </div>
                                <br> 
                                <div class="cointainer text-center" id="loader" style="display: none;" >
                                    <span class="fa fa-refresh fa-spin fa-2x"></span>
                                    <h4>Please wait......</h4>
                                </div>
                                <div class="cointainer text-center">
                                    <button  type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
                                </div>    
                            </form>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </main>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js"type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            
            $(document).ready(function(){
                console.log("loading.....");
                
                $('#reg-form').on('submit',function(event){
                    event.preventDefault();
                    
                    let form = new FormData(this);
                    
                    $("#submit-btn").hide();
                    $("#loader").show();
                    
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#submit-btn").show();
                        $("#loader").hide();
                        
                        if(data.trim() === 'Done'){
                        
                            swal("Registered Succesfully...Redirecting to Login page")
                                .then((value) => {
                                  window.location = "login_page.jsp";   
                                });
                            }else{
                                swal(data);
                            }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $("#submit-btn").show();
                        $("#loader").hide();
                        
                        swal("Something went Wrong...Try agin");
                                
                    },
                    
                    processData: false,
                    contentType: false
                    });
                });
            }); 
            
        </script>
    </body>
</html>
