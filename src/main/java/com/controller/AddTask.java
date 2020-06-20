package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Task;
import com.entities.User;
import com.helper.SessionFact;

public class AddTask extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String task_name = request.getParameter("task_name");
		HttpSession session = request.getSession();
		int uid = (Integer) session.getAttribute("uid");
		
		Session s1 = SessionFact.getSessionFact().openSession();
		Transaction tx = s1.beginTransaction();
		
		
		User user = s1.get(User.class,uid);
				
		Task task = new Task(task_name,"undone", user);
				
		
		s1.save(task);
		
		
		tx.commit();
		s1.close();
		
		response.sendRedirect("index.jsp");
	}

}
