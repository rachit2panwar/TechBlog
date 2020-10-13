

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 85% 0, 100% 0, 100% 100%, 75% 93%, 50% 100%, 25% 93%, 0 98%, 0 0, 23% 0);
            }
            body{
                background:url(img/techBackground.jpg);
                background-size: cover;
                background-attachment: fixed;
            }
        </style>
    </head>
    
    <body>
        
        <%@include file="normal_navbar.jsp" %>
        
        <div class="container-fluid m-0 p-0" >
            
            <div class = "jumbotron primary-background text-white banner-background">
                <div class = "container">
                    <h3 class="display-3">Welcome to TechBlog</h3>
                    <p>Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task. Programming involves tasks such as: analysis, generating algorithms, profiling algorithms'
                        accuracy and resource consumption, and the implementation of algorithms in a chosen programming language (commonly referred to as coding)</p>
                    <p>The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) 
                        on a computer, often for solving a given problem. </p>
                    
                    <button class="btn btn-outline-light btn-lg"><span class="fa fa-mortar-board"></span>Start!! its Free</button>
                    <a href="login_page.jsp"class="btn btn-outline-light btn-lg"><span class="fa fa-key"></span>Login</a>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Go somewhere</a>
                        </div>
                      </div>
                    
                </div>
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Go somewhere</a>
                        </div>
                      </div>
                    
                </div>
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Go somewhere</a>
                        </div>
                      </div>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Go somewhere</a>
                        </div>
                      </div>
                    
                </div>
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Go somewhere</a>
                        </div>
                      </div>
                    
                </div>
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Go somewhere</a>
                        </div>
                      </div>
                    
                </div>
            </div>
        </div>
        
        <!--javascript-->
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js"type="text/javascript"></script>
        
    </body>
</html>
