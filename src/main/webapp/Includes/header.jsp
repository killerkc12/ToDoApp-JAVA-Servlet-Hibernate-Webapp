<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:purple;">
  <div class="container">
  	<a class="navbar-brand" href="index.jsp">To Do App</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
    <%
    	//HttpSession s = request.getSession();
    	
    		
    		if(session.getAttribute("name")==null){
        		%>
        		
        			<li class="nav-item active">
    		        <a class="nav-link" href="login.jsp">Login<span class="sr-only">(current)</span></a>
    		      </li>
    		      <li class="nav-item active">
    		        <a class="nav-link" href="register.jsp">Register</a>
    		      </li>
        		<%
    		
    	}else{
    		
    		String name = (String)session.getAttribute("name");
    		%>
    			<li class="nav-item active">
		        <a class="nav-link" href="login.jsp">Welcome <%=name %></a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="LogoutUser">Logout</a>
		      </li>
    		<%
    	}
    %>
    
    </ul>
  </div>
  </div>
</nav>