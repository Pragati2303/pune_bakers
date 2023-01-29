<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FRONT PAGE</title>
</head>
<body>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body {
        background-image: url(https://media.istockphoto.com/id/1031307340/photo/low-key-chocolate-cake.jpg?s=612x612&w=0&k=20&c=db_2bMNNDCncPVCe-hIF12lxy8kBKaLbdk-dAEqrjKk=);
        background-repeat: no-repeat;
        background-size: cover;
        height: 100vh;
        width: 100vw;
    }
    ul {
        float: right;
        list-style-type: none;
        margin-top: 3vh;
    }
    ul li {
        display: inline-block;
    }
    ul li a {
        padding: 3vh;
        margin: 3vh;
        color: rgb(224, 224, 90);
        border-color: whitesmoke;
        background-color: transparent;
    }

    ul li a:hover {
        background-color: whitesmoke;
        color: #000;
    }
    ul li.active a {
        background-color: whitesmoke;
        color: #000;
    }
    .logo img {
        float: left;
        width: 15vh;
        height: auto;
        margin-left: 6vh;
        margin-top: 6vh;
    }
    .main {
        max-width: 300vh;
        margin: auto;
    }

    .title {
        position: absolute;
        top: 16vh;
        left: 50vh;
    }
    .title h1 {
        color: rgb(234 205 130);
        font-size: 14vh;
        margin-left: -8vh;
        font-family: "Sofia", sans-serif;
    }
    .title h2 {
        color: rgb(234 205 130);
        font-size: 5vh;
        font-family: "Sofia", sans-serif;
        margin-left: 40vh;
    }
    .title h3 {
        color: rgb(234 205 130);
        font-size: 10vh;
        font-family: "Sofia", sans-serif;
        margin-left: 50vh;
    }
    .title p {
        font-family: 'Dancing Script', cursive;
        color: ivory;
        font-size: 8vh;
        margin-top: 2vh;
        -webkit-animation: colorchange 20s infinite alternate;
    }
    @-webkit-keyframes colorchange {
        0% {
            color: blue;
        }
        10% {
            color: yellow;
        }
        20% {
            color: violet;
        }
        30% {
            color: turquoise;
        }
        40% {
            color: tomato;
        }
        50% {
            color: teal;
        }
        60% {
            color: rgb(54, 211, 132);
        }
        70% {
            color: rgb(128, 0, 53);
        }
        80% {
            color: rgb(221, 21, 14);
        }
    }
    #signin {
        background-size: auto;
        width: 33vh;
        height: 5vh;
        position: absolute;
        left: 74vh;
        top: 65vh;
        border: ridge white;
        background: transparent;
        color: rgb(17, 17, 11);
        background-color: rgb(189, 204, 236);
        border-radius: 5vh;
        border-width: thin rgb(157, 169, 185);
    }
    #n1 {
        font-size: 3vh; 
        margin-top: 1vh;
        margin-left: 2vh;
    }
</style>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">

        <div class="main">
            <ul class="list">
                <li class="active"><a href="#home">Home</a></li>
                <li><a href="https://www.fnp.com/cakes">Categories</a></li>
                <li><a href="contact.html"> Contact Us</a></li>
                <li><a href="https://www.fnp.com/info/help-center?promo=help_hmenu&cid=india">Help</a></li>
            </ul>
        </div>
        <div class="title">
            <h1>WELCOME</h1>
            <h2>TO </h2>
            <h3>PUNE BAKERS</h3>
            <p> <span>Unique</span>
                <span>creation </span>
                <span>for</span>
                <span>unique</span>
                <span>occasion</span>
            </p>
            <a id="signin" href="regi.jsp">
             <h6 id="n1">Click Here TO Sign-In</h6>
            </a>
        </div>
</body>
</html>