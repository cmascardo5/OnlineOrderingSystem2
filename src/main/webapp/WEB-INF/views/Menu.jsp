<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var = "itemDesc" scope = "session" value = "${item.getItemDescription()}"/>
 
  <%@include file="template/header.jsp" %>

        <section id ="menu" class="description_content">
                  
		<div class="jumbotron">
							<ul id="filter-list" class="clearfix">
                                <li><a  href="<spring:url value="/menu/${'all'}"/>">All</a></li>
                                <li><a  href="<spring:url value="/menu/${'apps'}"/>"> Apps</a></li>
                                <li><a  href="<spring:url value="/menu/${'pizza'}"/>">Pizza</a></li>
                                <li><a  href="<spring:url value="/menu/${'sandwiches'}"/>">Sandwiches</a></li>
                                <li><a  href="<spring:url value="/menu/${'drinks'}"/>">Drinks</a></li>
                                <li><a href="<spring:url value="/shoppingCart"/>" class="btn btn-info btn-lg">
          							<span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</a></li>
                            </ul><!-- @end #filter-list --> 
		<hr style="border-color:#428bca">
		
		<!-- MENU ITEMS POPULATE -->		
						
		<div class="row">

		
		<c:forEach var="item" items="${mItems}">	   	
			<c:if test="${itemDesc != 'Meats' && itemDesc != 'Non-meats'}">	


			<div class="col-md-3"> 
				<div class="panel panel-default">
					<div class="panel-body">
				     <h3>${item.getItemName()}</h3>
				     <hr>
				     
					  <a class="img-rounded" data-toggle="modal" data-target="#item_${item.getItemID()}">
						<img class="img-rounded" src="<c:url value="/${item.getImage().getImagePath()}"/>" alt="item" width="100%" height="200px">

					  </a>
					  <hr>
					    
					    <c:set var = "itemType" scope = "session" value = "${item.getItemType()}"/>
					    <c:choose>
					    	<c:when test="${itemType == 'apps'}">
					    		<a class="btn btn-primary btn-block" data-toggle="modal" data-target="#item_${item.getItemID()}">Add to Cart</a>
					  		</c:when>
					  		<c:when test="${itemType == 'drinks'}">
					    		<a class="btn btn-primary btn-block" data-toggle="modal" data-target="#item_${item.getItemID()}">Add to Cart</a>
					  		</c:when>
					  		<c:when test="${itemType == 'pizza'}">
					    		<a class="btn btn-primary btn-block" data-toggle="modal" data-target="#item_${item.getItemID()}">Customize and Confirm</a>
					  		</c:when>
					  		<c:when test="${itemType == 'sandwiches'}">
					    		<a class="btn btn-primary btn-block" data-toggle="modal" data-target="#item_${item.getItemID()}">Customize and Confirm</a>
					  		</c:when>
					  		<c:otherwise>
					  			<button type="button" class="btn btn-primary btn-block">error</button>
					  		</c:otherwise>
					  	</c:choose>
		 
					  <div class="alert alert-info alert-dismissable" id="${item.getItemID()}" style="display:none">
  							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  							<strong>${item.getItemName()} has been added to your cart.</strong>
					  		<!-- add item.getItemID as a pushed item to the cart page -->     		
				     	</div>
				     	
				     	</div>	
					  </div> 
					 </div>
					 <%@include file="menuItemDetail.jsp" %>
					</c:if>
		          </c:forEach>
		          
		       </div>   
		         
         </div>   
        </section>

<%@include file="loginForm.jsp" %>

<%@include file="template/footer.jsp"%>
       