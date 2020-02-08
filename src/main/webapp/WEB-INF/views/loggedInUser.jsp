<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


        <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        
        <%@include file="template/loggedInHeader.jsp" %>
         
        <div id="top" class="starter_container bg">
            <div class="follow_container">
                <div class="col-md-6 col-md-offset-3">
                    <h2 class="top-title"> Krazy pizza</h2>
                    <h2 class="white second-title">" Kraziest in the city "</h2>
                    <hr>
                </div>
            </div>
        </div>

        <!-- ============ About Us, Kevin is Small ============= -->

        <section id="story" class="description_content">
            <div class="text-content container">
                <div class="col-md-6">
                    <h1>About us</h1>
                    <div class="fa fa-cutlery fa-2x"></div>
                    <p class="desc-text">Krazy pizza is a place for simplicity. Good food, good beer, and good service. Simple is the name of the game, and we're good at finding it in all the right places, even in your dining experience. We're a small group from College Station, Texas who make simple food possible. Come join us and see what simplicity tastes like.</p>
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


       <!-- ============ Pricing  ============= -->


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
                            		<li class="item ${item.getItemType() }"><a href="#" onClick="openModal();"><img src="${mItems.getImagePath(item.getImageID())}" alt="Food"></a>
                                    <h2 class="white">$${item.getItemPrice()} </h2>		 
 									
                            	</c:forEach>
                            	
                               <%@include file="menuItemDetail.jsp" %>
                            </ul><!-- @end #portfolio -->
                        </div><!-- @end #w -->
                    </div>
                </div>
            </div>  
        </section>



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
                    <span class="social_heading">OR DIAL</span>
                    <span class="social_info"><a class="color_animation" href="tel:883-335-6524">(832) 209-9670</a></span>
                </div>
            </div>
        </section>

        <!-- ============ Contact Section  ============= -->

        <section id="contact">
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13736.609160440115!2d-96.28582930344241!3d30.601467449987553!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xec284eb81b7c8b4b!2sCognizant+Technologies!5e0!3m2!1sen!2sus!4v1494356070598" width="75%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="inner contact">
                            <!-- Form Area -->
                            <div class="contact-form">
                                <!-- Form -->
                                <form id="contact-us" method="post" action="contact.php">
                                    <!-- Left Inputs -->
                                    <div class="col-md-6 ">
                                        <!-- Name -->
                                        <input type="text" name="name" id="name" required="required" class="form" placeholder="Name" />
                                        <!-- Email -->
                                        <input type="email" name="email" id="email" required="required" class="form" placeholder="Email" />
                                        <!-- Subject -->
                                        <input type="text" name="subject" id="subject" required="required" class="form" placeholder="Subject" />
                                    </div><!-- End Left Inputs -->
                                    <!-- Right Inputs -->
                                    <div class="col-md-6">
                                        <!-- Message -->
                                        <textarea name="message" id="message" class="form textarea"  placeholder="Message"></textarea>
                                    </div><!-- End Right Inputs -->
                                    <!-- Bottom Submit -->
                                    <div class="relative fullwidth col-xs-12">
                                        <!-- Send Button -->
                                        <button type="submit" id="submit" name="submit" class="form-btn">Send Message</button> 
                                    </div><!-- End Bottom Submit -->
                                    <!-- Clear -->
                                    <div class="clear"></div>
                                </form>
                            </div><!-- End Contact Form Area -->
                        </div><!-- End Inner -->
                    </div>
                </div>
            </div>
        </section>

		 

		<%@include file="template/footer.jsp" %>