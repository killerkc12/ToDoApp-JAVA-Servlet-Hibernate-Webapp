<!doctype html>
<%@page import="com.entities.User"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Task"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.SessionFact"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>To Do App!</title>
    <%@include file="Includes/links.jsp" %>
  </head>
  <body>
  
	<div class="container">
		<%@include file="Includes/header.jsp" %>
	</div>
	
	
		 <%
	 if(session.getAttribute("name")!=null){
		 
	 %>
	
	
	<div class="container text-center">
		<h1>All Tasks</h1>
	 </div>
	 <div class="container">
	 	<a href="addtask.jsp">+ Add Tasks Here</a>
	 </div>
	 
	 <div class="container text-center">
	 <h3>
	 <%
	 if(request.getAttribute("msg")!=null){
		 out.println(request.getAttribute("msg"));
	 }
	 %>
	 </h3>
	 </div>
	 

	 
	 
	 <div class="container">
	 	<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">TASK TITLE</th>
		      <th scope="col">STATUS</th>		     
		    </tr>
		  </thead>
		  <tbody>
		  <%
		  		String name = (String)session.getAttribute("name");
		  		Object uid = session.getAttribute("uid");
		  		
		  		Session sec = SessionFact.getSessionFact().openSession();
		  		
				Query q = sec.createQuery("from Task where user_uid='"+uid+"'");
				List<Task> l = q.list();
				for(Task t:l){
				
					%>
		  	
		  		<%
		  		if(t.getStatus().equals("undone")){
		  			
		  		%>
		  		<tr>
		  		<th><%=t.getTid() %></th>
		  		<td><%=t.getTask_name() %></td>
		  		<td><a href="ChangeStatus?tid=<%=t.getTid()%>&tname=<%=t.getTask_name()%>&status=<%=t.getStatus()%>"><p style="color: red;"><%=t.getStatus() %></p></a></td>
		  		</tr>
		  		<%
		  		}
		  		}
		  		
		  		%>
		  </tbody>
		</table>
	 </div>
	 
	 <div class="container pt-10">
	 	<h3 style="color: green;">Completed Tasks are Here</h3>
	 </div>
	 
	 <div class="container">
	 	<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">TASK TITLE</th>
		      <th scope="col">STATUS</th>
		    </tr>
		  </thead>
		  <tbody>
		  <%
		  		
				for(Task t:l){
				
					%>
		  	
		  		<%
		  		if(t.getStatus().equals("done")){
		  			
		  		%>
		  		<tr>
		  		<th><%=t.getTid() %></th>
		  		<td><%=t.getTask_name() %></td>
		  		<td><a href="ChangeStatus?tid=<%=t.getTid()%>&tname=<%=t.getTask_name()%>&status=<%=t.getStatus()%>"><p style="color: green;"><%=t.getStatus() %></p></a></td>
		  		</tr>
		  		<%
		  		}
		  		}%>
		  </tbody>
		</table>
	 </div>
	 
	 <%
	 }else{
	 
	 %>
	 
	 <div class="container text-center mt-50">
	 	<h1>First Register or Login Here</h1>
	 </div>
	
	<%
	 }
	%>
    
  </body>
</html>