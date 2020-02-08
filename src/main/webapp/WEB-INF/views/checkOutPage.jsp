<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@include file="template/header.jsp"%>


<br><br><br><br><br><br><br>



<div class="container">

<div class="row">
<div class="well"> 
<div class="stepwizard col-md-offset-3">
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
        <p>Contact & Payment</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
        <p>Review Your Order</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
        <p>Place Your Order</p>
      </div>
    </div>
    </div>
  </div>
  
  <form role="form" action="/OnlineOrderingSystem/stripe" method="post" id="payment-form">
  
 
    <div class="row setup-content" id="step-1">
     <h3><strong>Tell Us About Your Self</strong></h3>
   <hr style="border-color:#428bca">
      <div class="col-xs-5 col-md-offset-1">
       
          
          <div class="form-group">
            <label class="control-label">First Name</label>
            <input name="firstName" maxlength="100" type="text" required="required" class="form-control" placeholder="Enter First Name"  />
          </div>
          </div>
           <div class="col-xs-5 col-md-offset-1">
          <div class="form-group">
            <label name="lastName" class="control-label">Last Name</label>
            <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
          </div>
          </div>
          
          <div class="col-xs-5 col-md-offset-1">
          <div class="form-group">
            <label class="control-label">Email</label>
            <input name="email" required="required" class="form-control" placeholder="Enter your address"  type="text"></input>
            <small>Enter a Valid Email address (ex: name@example.com)</small>
            <div>
            <br>
            <input type="checkbox" name="emailOffers" /> <label> Email Offers</label>
            </div>
          </div>
          
          </div>
          
          
          <div class="col-xs-5 col-md-offset-1">
          <div class="form-group">
            <label class="control-label"><strong>Phone Number</strong></label>
            <input name="phoneNumber" required="required" class="form-control" placeholder="Enter your Phone Number"  type="text"></input>
            <small>Enter a Valid Phone Number (ex: 555-555-5555)</small>
            <div>
            <br>
            <input type="checkbox" name="emailOffers" /> <label> Text Offers</label>
            </div>
          </div>
          
          </div>
          <br><br>
          
         
          
          
          <h3><strong> Payment Information</strong></h3>
           <hr style="border-color:#428bca">
           
            <script src="https://js.stripe.com/v3/"></script>
<script>
var stripe = Stripe('pk_test_6iLQMN9P0HGtuipbSbZrMr9W');
var elements = stripe.elements();
</script>
           
           <div id="card-element">
      a Stripe Element will be inserted here.
    
    </div> 
    
    Used to display form errors
    <div id="card-errors" role="alert"></div>
 
 <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>
           
        
      
   
    <div class="row setup-content" id="step-2">
     <!--  <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 2</h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
          </div>
          <div class="form-group">
            <label class="control-label">Company Address</label>
            <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address"  />
          </div>-->
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
      </div> 
    </div>
    <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 3</h3>
          <button class="btn btn-success btn-lg pull-right" type="submit">Submit</button>
        </div>
      </div>
    </div>
  </form>
  
</div>

</div>







<!-- <script src="https://js.stripe.com/v3/"></script> -->
<!-- <script> 
 var stripe = Stripe('pk_test_6iLQMN9P0HGtuipbSbZrMr9W');
var elements = stripe.elements();
 </script> -->







    <!-- <br><br><br><br><br>
        <div>    
            <label for="card-element">
      Credit or debit card
    </label>
<div>
<form action="/OnlineOrderingSystem/stripe" method="post" id="payment-form">
  <div class="form-row">
    
    <div id="card-element">
      a Stripe Element will be inserted here.
     
    </div>

    Used to display form errors
    <div id="card-errors" role="alert"></div>
  </div>

  <button id="stripe-button">Submit Payment</button>
</form>

</div>
</div>
 -->
   <br><br><br><br><br>
<%@include file="template/footer.jsp"%>