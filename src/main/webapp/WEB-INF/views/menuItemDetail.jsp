<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var = "itemType" scope = "session" value = "${item.getItemType()}"/>
<c:set var = "itemName" scope = "session" value = "${item.getItemName()}"/>
<c:set var = "itemDesc" scope = "session" value = "${item.getItemDescription()}"/>

<!-- This page enables the user to see a modal, or popup window, after selected add to cart from the menu page. -->

  <!--  DRINKS & APPS Modal -->
  <c:if test="${itemType == 'drinks' || itemType == 'apps'}">
  <div class="modal fade" id="item_${item.getItemID()}" role="dialog">
    <div class="modal-dialog" >
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:20px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2>${item.getItemName()}</h2>
        </div>
        <div class="modal-body" style="padding:20px 50px;">
          <form role="form" method="post" action="/OnlineOrderingSystem/addToCart">
			<input name="itemId" type="hidden" value="${item.getItemID()}">
														
            <div class="form-group" align="center" style="padding:40px 20px;">
                	<div class="panel panel-default">
					<div class="panel-body">
            			<img src="${item.getImage().getImagePath()}" alt="item" align="middle" style="width:220px;height:220px">
            		</div>
            		</div>

            </div>
            <hr>
            <c:if test="${itemType == 'drinks'}"> 
            <div class="form-group">
  				<label for="sel1">Size:</label>
 					<select class="form-control" id="sel1">
    				<option>12 oz</option>
    				<option>2 Liter</option>
  					</select>
			</div> 
			</c:if>
            <div class="form-group">
   				<label for="sel2"  >Quantity:</label> 
 					<select class="form-control"  name="quantity" id="sel2">
    				<option>1</option>
    				<option>2</option>
    				<option>3</option>
  					</select>
			</div> 
              <button type="submit" class="btn btn-primary btn-block"> Add to Cart</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
      
    </div>
  </div> 
  </c:if>
  
  
  <!--  PIZZA Modal -->
  <c:if test="${itemType == 'pizza'}">
  <div class="modal fade" id="item_${item.getItemID()}" role="dialog">
  
    <div class="modal-dialog" >
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:20px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2>${item.getItemName()}</h2>
        </div>
        <div class="modal-body" style="padding:20px 50px;">
         <c:if test="${itemName != 'Custom Pizza'}">
          <div class="row">
      	     <div class="panel panel-default">
			     <div class="panel-body">	
	                   <div class="col-md-6">
	                   		<c:choose>
					    	<c:when test="${itemName == 'Vegetarian Pizza'}">
					    		<form>
							   <h3>Non-meats</h3>
			              	   <hr>
							    <label class="checkbox">
							      <input type="checkbox" value="">Banana Peppers
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Green Olives     
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Jalapenos      
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Pineapple   
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Red Peppers
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Green Peppers
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Black Olives
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Mushrooms
							    </label>
							   </form>
					  		</c:when>
					  		<c:when test="${itemName == 'Supreme Pizza'}">
					    		<a class="btn btn-primary btn-block" data-toggle="modal" data-target="#item_${item.getItemID()}">Add to Cart</a>
					  		</c:when>
					  		<c:when test="${itemName == 'Meat Pizza'}">
					    		<form>
								   <h3>Meats</h3>
				              	   <hr>
								    <label class="checkbox">
								      <input type="checkbox" value="" >Pepperoni
								    </label>
								    <label class="checkbox">
								      <input type="checkbox" value="">Beef     
								    </label>
								    <label class="checkbox">
								      <input type="checkbox" value="">Ham      
								    </label>
								    <label class="checkbox">
								      <input type="checkbox" value="">Salami   
								    </label>
								    <label class="checkbox">
								      <input type="checkbox" value="">Italian Sausage
								    </label>
								    <label class="checkbox">
								      <input type="checkbox" value="">Grilled Chicken
								    </label>
								   </form>
					  		</c:when>
					  		<c:when test="${itemName == 'Pepperoni Pizza'}">
					    		<div class="list-group">
								    <a href="#" class="list-group-item">Pepperoni</a>
								    <a href="#" class="list-group-item">Cheese</a>
								    <a href="#" class="list-group-item">Crust</a>
							   </div>
					  		</c:when>
					  		<c:otherwise>
					  			<button type="button" class="btn btn-primary btn-block">error: Choose statement </button>
					  		</c:otherwise>
					  	</c:choose>
				               
						</div>
		                <div class="col-md-6" align="center">	
		            		<img src="<c:url value="/${item.getImage().getImagePath()}"/>" alt="item" style="width:220px;height:220px">		
		            	</div> 
	              </div>
           	  </div>
          </div>
        </c:if>
        <c:if test="${itemName == 'Custom Pizza'}"> 
           	<div class ="row" align="left">
           	   <div class ="col-md-6" align="left">
				   <form>
				   <h3>Meats</h3>
              	   <hr>
				    <label class="checkbox">
				      <input type="checkbox" value="" >Pepperoni
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Beef     
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Ham      
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Salami   
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Italian Sausage
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Grilled Chicken
				    </label>
				   </form>
			   </div>   
			   <div class ="col-md-6">
				   <form>
				   <h3>Non-meats</h3>
              	   <hr>
				    <label class="checkbox">
				      <input type="checkbox" value="">Banana Peppers
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Green Olives     
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Jalapenos      
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Pineapple   
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Red Peppers
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Green Peppers
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Black Olives
				    </label>
				    <label class="checkbox">
				      <input type="checkbox" value="">Mushrooms
				    </label>
				   </form>
			   </div>
			</div>
			</c:if>
			
			<hr>
			   
	   <div class ="row">
		   
		   <div class ="col-md-6">
				   <form>
						   <h3>Cheese</h3>
		              	   <hr>
						    <label class="checkbox">
						      <input type="checkbox" value="">Cheese
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">Vegan (Non-Dairy) Cheese     
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">No Cheese     
						    </label>
				   </form>			   
			</div>
			<div class ="col-md-6">
					<form>
						   <h3>Crust</h3>
		              	   <hr>
						    <label class="checkbox">
						      <input type="checkbox" value="" >Regular
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">Gluten Free     
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">Crust Stuffed with Cheese     
						    </label>
					</form>
			</div> 
				    
		</div>
			    
         <hr>
         
         <c:if test="${itemName == 'Custom Pizza'}">
         <div class="panel panel-default">
			     <div class="panel-body">	
         <div class="row" align="center">
         	<img src="<c:url value="/${item.getImage().getImagePath()}"/>" alt="item" style="width:220px;height:220px">
         </div>
         </div>
         </div>
         </c:if>
           
           <div class="row">
            <div class="form-group">
  				<label for="sel1">Size</label>
 					<select class="form-control" id="sel1">
    				<option>Small</option>
    				<option>Medium</option>
    				<option>Large</option>
  					</select>
			</div> 
			</div>
			<div class="row">
            <div class="form-group">
  				<label for="sel2">Quantity:</label>
 					<select class="form-control" id="sel2">
    				<option>1</option>
    				<option>2</option>
    				<option>3</option>
    				<option>4</option>
  					</select>
			</div> 
			</div>
		<div class="row">
              <button type="submit" class="btn btn-primary btn-block"> Add to Cart</button>
        </div>
        
        
        <div class="row">
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
        </div>
      </div>
      </div>
      
    </div>
  </div> 
  
  </c:if>
  
  
  <!-- SANDWICHES modal -->
  <c:if test="${itemType == 'sandwiches'}">
  <div class="modal fade" id="item_${item.getItemID()}" role="dialog">
  
    <div class="modal-dialog" >
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:20px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2>${item.getItemName()}</h2>
        </div>
        <div class="modal-body" style="padding:20px 50px;">
          <div class="row">
      	     <div class="panel panel-default">
			     <div class="panel-body">
	                   <div class="col-md-6" >
	                   		<form>
							   <h3>Meats</h3>
			              	   <hr>
							    <label class="checkbox">
							      <input type="checkbox" value="" >Pepperoni
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Beef     
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Ham      
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Salami   
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Italian Sausage
							    </label>
							    <label class="checkbox">
							      <input type="checkbox" value="">Grilled Chicken
							    </label>
							   </form>
	               
	         </div>
	        	
	                   <div class="col-md-6">
	                   	 <img src="<c:url value="/${items.getImage().getImagePath()}"/>" alt="item" style="width:220px;height:220px">
	                   </div>
	             </div>
	         </div>
	      </div> 
	     
	     <hr>
	     
	     <div class ="row">
		   
		   <div class ="col-md-6">
				   <form>
						   <h3>Cheese</h3>
		              	   <hr>
						    <label class="checkbox">
						      <input type="checkbox" value="">Cheese
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">Vegan (Non-Dairy) Cheese     
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">No Cheese     
						    </label>
				   </form>			   
			</div>
			<div class ="col-md-6">
					<form>
						   <h3>Bread</h3>
		              	   <hr>
						    <label class="checkbox">
						      <input type="checkbox" value="" >Regular
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">Gluten Free     
						    </label>
						    <label class="checkbox">
						      <input type="checkbox" value="">Wheat    
						    </label>
					</form>
			</div> 
				    
		</div>
		
		<hr>
		
	     <div class="row">
            <div class="form-group">
  				<label for="sel1">Size</label>
 					<select class="form-control" id="sel1">
    				<option>Small</option>
    				<option>Medium</option>
    				<option>Large</option>
  					</select>
			</div> 
			</div>
			<div class="row">
            <div class="form-group">
  				<label for="sel2">Quantity:</label>
 					<select class="form-control" id="sel2">
    				<option>1</option>
    				<option>2</option>
    				<option>3</option>
    				<option>4</option>
  					</select>
			</div> 
			</div>
		<div class="row">
              <button type="submit" class="btn btn-primary btn-block"> Add to Cart</button>
        </div>
        
        
        <div class="row">
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>            
  </c:if>
  
  
  
  
  
  
  
 
  
  
  
