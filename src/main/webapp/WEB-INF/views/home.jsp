
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="template/header.jsp" %>

<c:set var = "itemDesc" scope = "session" value = "${item.getItemDescription()}"/>

<hr>    
   
   <style>
   .tales {
  width: 100%;
}
.myCarousel
{
width:100%;
}
   
   .carousel-inner{
  width:100%;
  max-height: 400px !important;
  
}
  .testDiv{
   border: 1px solid transparent;
  box-shadow: 1px 1px 1px 1px #0080c0;
   -webkit-transition: box-shadow 150ms ease;
   transition: box-shadow 150ms ease;
  border-radius: 10px;
  }
   </style> 
    <br><br><br><br><br>
   
 <!-- CAROUSEL (NOTE: CHANGED HREF ON CAROUSEL CONTROLS TO DATA-TARGET)-->
 
<div class ="row">
<div class="col-md-3"> 
 <div class="panel panel-default">
 <div class="panel-body">
					
					
 <div id="testDiv" class="container">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
<!--     Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     <!--  <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li> -->
    </ol>

<!--     Wrapper for slides -->
    	  <div class="carousel-inner" align="center">
      
      
	      <div class="item active">
	        <img src="resources/customImages/carousel/cImage1.jpg" width="250" height="220">
	      </div>
	
	      <div class="item">
	        <img src="resources/images/kabob.jpg" width="250" height="220">
	      </div>
	    
	      <div class="item">
	        <img src="resources/images/limes.jpg" width="250" height="220">
	      </div> 
      <!--     Left and right controls -->
		    <a class="left carousel-control" data-target="#myCarousel" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" data-target="#myCarousel" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right"></span>
		      <span class="sr-only">Next</span>
		    </a>
           </div>
  </div>
  
  </div>
 </div>
 </div>
</div>
</div>

	
  <!-- END CAROUSEL -->    
  
<hr>

	<div class="row">
        <section id="story" class="description_content">
            <div class="text-content container">
                <div class="col-md-6">
                    <h1>About us</h1>
                    <div class="fa fa-cutlery fa-2x"></div>
                    <p class="desc-text">Gianluigi's is a place for simplicity. Good food, good pricing, and good service. Simple is the name of the game, and we're good at finding it in all the right places, even in your dining experience. We're a small group from College Station, Texas who make simple food possible. Come join us and see what simplicity tastes like.</p>
                </div>
                <div class="col-md-6">
                    <div class="img-section">
                       <img src="resources/images/kabob.jpg" width="250" height="220">
                       <img src="resources/images/limes.jpg" width="250" height="220">
                       <div class="img-section-space"></div>
                       <img src="resources/images/radish.jpg"  width="250" height="220">
                       <img src="resources/images/corn.jpg"  width="250" height="220">
                   </div>
                </div>
            </div>
        </section>
</div>

<hr>   



        <!-- ============ Social Section  ============= -->
      
        <section class="social_connect">
            <div class="text-content container"> 
                <div class="col-md-6">
                    <span class="social_heading">FOLLOW</span>
                    <ul class="social_icons">
                        <li><a class="icon-twitter color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-github color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-linkedin color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-mail color_animation" href="#"></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <span class="social_heading">DIAL GIANLUIGI'S NUMBER</span>
                    <span class="social_info"><a class="color_animation" href="tel:883-335-6524">(832) 209-9670</a></span>
                </div>
            </div>
        </section>

        

    

		 <%@include file="loginForm.jsp" %>
		<%@include file="template/footer.jsp" %>
		 
		