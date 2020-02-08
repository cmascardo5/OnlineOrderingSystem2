<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>  
   <%@include file="template/header.jsp" %>


 <br><br><br><br><br>
<div class="container" id="cartItems">

   
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        
                        <th> </th> 
                    </tr>
                </thead>
               
                <tbody>
               
                <c:set var="total" value="${0}"/>
                <c:forEach var="item" items="${cart.getCartItems()}">	
                    <tr>
                   
                        <td class="col-sm-8 col-md-6">
                        
                        <div class="media">
                            <a class="thumbnail pull-left" > <img src="${item.getMenuItem().getImage().getImagePath()}" style="width: 72px; height: 72px;"> </a>
                            	
                                <h5 style="padding-top: -40px">${item.getMenuItem().getItemName()}</h5> 
                         
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="${item.getQuantity()}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${item.getMenuItem().getItemPrice()}</strong></td>
                        
                         <c:set var="total" value="${total + item.getTotalPrice()}" />
                        <td class="col-sm-1 col-md-1">
                         <form role="form" method="post" action="/OnlineOrderingSystem/removeFromCart"  >
                         <input name="cartItemId" type="hidden" value="${item.getCartPositonId()}">
                        <button type="submit" class="btn btn-danger">
                         Remove
                        </button>
                          </form>
                        </td>
                      
                 
                    </tr>
                    </c:forEach>
                     
                
                </tbody>
                
                </table> 
          </div>
          
          
          <br><br>
          <div class="well col-sm-4">
          
          <table>
          
                <tfoot>
              
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>Subtotal<br><br>Tax<h3>Total</h3></td>
                        <td  style="padding-left:140px"><h5><strong>$<c:out value="${total}" /><br><br>
                        <c:set var="tax"> <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${total*.082}" /></c:set>
                        $<c:out value="${tax}"/>
                        
                        </strong></h5>
                        <c:set var="finalTotal"> <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${total+tax}" /></c:set>
                        <h3><c:out value="$${finalTotal}"/>
                        </h3>
                        </td>
                    </tr>
                    <tr>
                        <td>  
                        
                         </td>
                       
                       
                    </tr>
                   
                </tfoot>
                
               </table>
               <form  method="post" action="/OnlineOrderingSystem/checkout" >
                        <input name="total" type="hidden" value="<c:out value="${finalTotal}"/>">
                       <button  type="submit" class="btn btn-primary btn-lg btn-block">
                            Checkout
                        </button>
                         </form>
           
        </div>
        </div>
    <br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br>

<%@include file="template/footer.jsp"%>