<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Restaurant</title>
       
        <link rel="stylesheet" href="resources/css/bootstrap.css">
       
        <link rel="stylesheet" href="resources/css/jquery-ui.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
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
                            <li><a class="color_animation" href="<c:url value="/menu"/>">MENU</a></li>
                            <li><a class="color_animation" href="#contact">CONTACT</a></li>
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
  
  


 <section id ="menu" class="description_content">
             <div class="pricing background_content">
                <h1><span>Affordable</span> menu</h1>
             </div>
            <div class="text-content container"> 
                <div class="container">
                    <div class="row">
                        <div id="w">
                            <ul id="filter-list" class="clearfix">
                                <li class="filter" data-filter="all">All</li>
                                <li class="filter" data-filter="apps">Apps</li>
                                <li class="filter" data-filter="pizza">Pizza</li>
                                <li class="filter" data-filter="sandwiches">Sandwiches</li>
                                <li class="filter" data-filter="dinner">Dinner</li>
                                <li class="filter" data-filter="drinks">Drinks</li>
                            </ul><!-- @end #filter-list -->    
                            <ul id="portfolio">
                            	<c:forEach var="item" items="${mItems.getMenuItems()}">
                            		<li class="item ${item.getItemType() }">
                            		<h2 class="white" style="height:40px;">$${item.getItemName()} </h2>
                                    <h2 class="white" style="height:40px;">$${item.getItemPrice()} </h2>	
                                    <h2 class="white" style="height:40px;">$${item.getImage().getImagePath()} </h2>	
                                    
 									</li>
 											                                                     
 											 <%@include file="menuItemDetail.jsp" %>
 									
                            	</c:forEach>
                               
                            </ul><!-- @end #portfolio -->
                        </div><!-- @end #w -->
                                                    	
                        
                    </div>
                </div>
            </div>  
        </section>
    <%@include file="template/footer.jsp" %>
 
</body>
</html>