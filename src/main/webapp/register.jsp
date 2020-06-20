<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Register User!</title>
    <%@include file="Includes/links.jsp" %>
  </head>
  <body>
  
	<div class="container">
		<%@include file="Includes/header.jsp" %>
    
	</div>
  	
  	<div class="container text-center mt-4">
  		<h1>User Register</h1>
  	</div>
  	
  	<form method="post" action="RegisterUser">
  		<div class="form-group">
  			<div class="container p-5 border border-primary">
  			<div class="row justify-content-center">
		    <div class="col-4 mt-1">
		     	 <label class="font-weight-bold">Name :</label>
		    </div>
		    <div class="col-4 mt-1">
		     	 <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
		    </div>
	  		</div>
	  		<div class="row justify-content-center">
		    <div class="col-4 mt-1">
		     	 <label class="font-weight-bold">Email address :</label>
		    </div>
		    <div class="col-4 mt-1">
		     	 <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
		    </div>
	  		</div>
	  		<div class="row justify-content-center">
		    <div class="col-4 mt-1">
		     	 <label class="font-weight-bold">Password :</label>
		    </div>
		    <div class="col-4 mt-1">
		     	 <input type="password" class="form-control" id="password" name="password" aria-describedby="emailHelp">
		    </div>
	  		</div>
	  		<div class="text-center mt-5">
	  			<input type="submit" name="Register" value="Register" class="btn btn-primary">
	  		</div>
	  		
  	</div>
  		</div>
  	</form>
     		
		    
  </body>
</html>