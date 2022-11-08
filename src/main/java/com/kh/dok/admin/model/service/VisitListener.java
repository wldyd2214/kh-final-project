package com.kh.dok.admin.model.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.kh.dok.admin.controller.AdminController;
import com.kh.dok.admin.model.dao.AdminDao;
import com.kh.dok.admin.model.dao.AdminDaoImpl;


@Repository
public class VisitListener implements HttpSessionListener{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		HttpSession session = arg0.getSession();
		session.setMaxInactiveInterval(60*30);
		
		String time = session.getCreationTime()+"";
		String ip = session.getId();
		
		
		session.setAttribute("time", time);
		session.setAttribute("ip", ip);
		
		System.out.println(session.getId()+":세션이 생성되었습니다.");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		HttpSession session = arg0.getSession();
		System.out.println(session.getId()+": 세션이 소멸되었습니다.");
	}
}
