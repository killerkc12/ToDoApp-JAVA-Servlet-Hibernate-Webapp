package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entities.User;
import com.helper.SessionFact;

public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String msg = "<script> alert('Invalid Credients');;window.location.href='login.jsp';</script>";
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Session s = SessionFact.getSessionFact().openSession();
		String sql = "from User where email='"+email+"' and password='"+password+"'";
		Query q = s.createQuery(sql);
		List<User> list = q.list();
		for(User user:list){
//			out.print(user.getId()+" : "+user.getName());
			if(user!=null){
				HttpSession session = request.getSession();
				session.setAttribute("name",user.getName());
				session.setAttribute("uid",user.getId());
				msg = "<script> alert('User Login Successfully');window.location.href='index.jsp';</script>";
			}
			else if(user==null){
				 msg = "<script> alert('User Login Successfully');</script>";
				
			}
		}
		out.println(msg);
		s.close();
		
		
		
		
		
	}

}
