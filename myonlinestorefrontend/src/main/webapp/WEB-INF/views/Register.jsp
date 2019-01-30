<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
    
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.css">
<div class="container">
<div class="row">
        <div class="com-md-6">
<div class="notification login-alert">
  Please Enter Your Username And Password!
</div>
<div class="notification notification-success logged-out">
  You logged out successfully!
</div>
          <div class="well welcome-text">
                 <button class="btn btn-default btn-login">Login </button> or <button class="btn btn-default btn-register" disabled="disabled">Register</button>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="well login-box">
                <form action="">
                    <legend>Login</legend>
                    <div class="form-group">
                        <label for="username-email">E-mail or Username</label>
                        <input value='' id="username-email" placeholder="E-mail or Username" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" value='' placeholder="Password" type="text" class="form-control" />
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-danger btn-cancel-action">Cancel</button>
                        <input type="submit" class="btn btn-success btn-login-submit" value="Login" />
                    </div>
                </form>
            </div>
          <div class="logged-in well">
            <h1>You are loged in! <div class="pull-right"><button class="btn-logout btn btn-danger"><span class="glyphicon glyphicon-off"></span> Logout</button></div></h1>
          </div>
        </div>
    </div>
</div>