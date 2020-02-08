<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  

  <!--  LOGIN Modal -->
  <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" method="post" action="/OnlineOrderingSystem/submitLogin.html">
            <div class="form-group">
              <label for="usrname"> Username</label>
              <input type="text" class="form-control" id="email" name="userName" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"> Password</label>
              <input type="text" class="form-control" id="psd" name="password" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a  data-dismiss="modal" data-toggle="modal" href="#signUp">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 

  
  
  
  
  <!-- SIGNUP Modal -->
  <div class="modal fade" id="signUp" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4> Register</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" method="post" action="/OnlineOrderingSystem/register.html">
            <div class="form-group">
              <label for="usrname"> Email</label>
              <input type="email" class="form-control" id="email" name="userName" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"> Password</label>
              <input type="password" class="form-control" id="psd" name="password" placeholder="Enter password">
            </div>
            <div class="form-group">
              <label for="usrname"> First Name</label>
              <input type="text" class="form-control" id="fName" name="firstName" placeholder="Enter First Name">
            </div>
            <div class="form-group">
              <label for="psw"> Last Name</label>
              <input type="text" class="form-control" id="lName" name="lastName" placeholder="Enter Last Name">
            </div>
            
            
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Register</button>
          </form>
        </div>
        
      </div>
      
    </div>
  </div> 