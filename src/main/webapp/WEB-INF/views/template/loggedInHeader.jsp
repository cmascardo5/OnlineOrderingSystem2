<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Restaurant</title>
        <link rel="stylesheet" href="resources/css/normalize.css">
        <link rel="stylesheet" href="resources/css/main.css" media="screen" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <link rel="stylesheet" href="resources/css/style-portfolio.css">
        <link rel="stylesheet" href="resources/css/picto-foundry-food.css" />
        <link rel="stylesheet" href="resources/css/jquery-ui.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="resources/favicon-1.ico" type="image/x-icon">
        
        
         <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
    </head>
 	<body>
 	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Krazy Pizza</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav main-nav  clear navbar-right ">
                            <li><a class="navactive color_animation" href="#top">WELCOME</a></li>
                            <li><a class="color_animation" href="#story">ABOUT</a></li>
                            <li><a class="color_animation" href="#menu">MENU</a></li>
                            <li><a class="color_animation" href="#contact">CONTACT</a></li>
                            <li><a class="color_animation">Welcome ${user.getFirstName()}</a></li>
                            <li>
                            <a class="color_animation " data-toggle="modal" href="<c:url value="/"/>">
                            <span class="menu-icon fa fa-power-on color_animation"> LOGOUT</span>						
                            </a>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>
            </div><!-- /.container-fluid -->
        </nav>
  