<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <title>Restaurant</title>
        
        <link rel="stylesheet" href="<c:url value="/resources/css/normalize.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" media="screen" type="text/css">
  		<link rel='stylesheet' href='<c:url value="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>'>
         <link rel="stylesheet" href="<c:url value="/resources/css/style-portfolio.css"/>">
         <%-- <link rel="stylesheet" href="<c:url value="/resources/css/picto-foundry-food.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>">        
        <link href="resources/css/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="resources/favicon-1.ico" type="image/x-icon"> --%>
        <link rel="stylesheet" href="resources/css/checkout-page.css"> 

        
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
                        <a class="navbar-brand" href="#">Gianluigi's</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav main-nav  clear navbar-right ">
                            <li><a class="navactive color_animation" href="<spring:url value="/"/>">WELCOME</a></li>
                            <li><a class="color_animation" href="#story">CAREERS</a></li>
                            <li><a class="color_animation" href="<spring:url value="/menu"/>">MENU</a></li>
                            <li><a class="color_animation" href="#contact">CONTACT US</a></li>
                            <li>
                            <a class="color_animation " data-toggle="modal" href="#login">
                            <span class="menu-icon fa fa-power-off color_animation"> LOGIN</span>						
                            </a>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>
            </div><!-- /.container-fluid -->
        </nav> 
  
  
  
 