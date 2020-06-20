<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Add Task!</title>
    <%@include file="Includes/links.jsp" %>
  </head>
  <body>
  
	<div class="container">
		<%@include file="Includes/header.jsp" %>
    
	</div>
  	
  	<div class="container text-center mt-4">
  		<h1>ADD TASK</h1>
  	</div>
  	
  	<form method="post" action="AddTask">
  		<div class="form-group">
  			<div class="container p-5 border border-primary">
  			<div class="row justify-content-center">
		    <div class="col-4 mt-1">
		     	 <label class="font-weight-bold">Task Title :</label>
		    </div>
		    <div class="col-4 mt-1">
		     	 <input type="text" class="form-control" id="name" name="task_name" aria-describedby="emailHelp">
		    </div>
	  		</div>
	  		
	  		<div class="text-center mt-5">
	  			<input type="submit" name="add_task" value="ADD" class="btn btn-primary">
	  		</div>
	  		
  	</div>
  		</div>
  	</form>
     		
		    
  </body>
</html>