package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Task;
import com.helper.SessionFact;

public class ChangeStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int tid = Integer.parseInt(request.getParameter("tid"));
		String tname = request.getParameter("tname");
		String status = request.getParameter("status");
		
		Session s = SessionFact.getSessionFact().openSession();
		Transaction tx = s.beginTransaction();
		
		Task task = s.get(Task.class,tid);
		
		task.setTask_name(tname);
		if(status.equals("undone")){
			
			task.setStatus("done");
		}else{
			task.setStatus("undone");
		}
		
		tx.commit();
		s.close();
		
		response.sendRedirect("index.jsp?msg=Task Status has Changed");
	}

}
