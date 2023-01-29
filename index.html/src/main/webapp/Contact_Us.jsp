<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact_Us</title>
</head>
<body>
<style>
    .form{
            border-style: ridge;
            padding-top: 0;
            margin-right: 10%;
            background: tan;
        }
        .contact{
            background: rgb(24, 138, 62);
            display: flex;
        }
        
        .contact-left{
            flex-basis: 60%;
            padding: 40px 60px;
            background: #fff;
        }
        .contact-right{
            flex-basis: 40%;
            padding: 40px;
            background: #1c00b5;
        }
        .form2 p{
            width: 400px;
        }
        .form2 h3{
            font-size: 20px;
        }
        #email{
            width: 300px;
            border-radius: 1px;
            height: 20px;
            color:black;
            
        }
        #name{
            width: 300px;
            border-radius: 1px;
            height: 20px;
            
        }
        #subject{
            width: initial;
            border-radius: 1px;
            height: 20px;
            
        }
</style>
<form action="" class="form2">
<div>
   
</div>
 <div class="contact">
    <div class="contact-left">
        <h3>CONTACT US</h3>
        <p>we are happy to answer any questions you have or provide you with an estimate.just send us a msg in the form
            given below with any question you have.</p>
        <h3>Your Name(requaired)</h3>
        <input type="text" id="name" >
        <h3>Your E-mail:</h3>
        <input type="email" name="" id="email">
        <h3>Your E-mail:</h3>
        <input type="email" name="" id="email">
        <h3>Your response:</h3>
            <textarea name="" id="response" cols="30" rows="10" placeholder="write something..."></textarea>>
    </div>
    <div class="contact-right">
        <h3>reach us</h3>
        <h3>E-mail Id: <a href="">punebakers@gmail.com</a></h3>
        <h3>Address:
            <address>PUNE BAKERS
             <h6>
            kothrud 
            pune-411001
            <h6>
        </address></h3>
      
    </div>
</form>
</body>
</html>