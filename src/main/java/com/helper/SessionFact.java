package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionFact {
	public static SessionFactory  sf;
	public static SessionFactory getSessionFact(){
		if(sf==null){
			sf = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return sf;
	}
}
