package com.cafe24.kkoo0202.Login;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LoginService implements LoginServiceInterface {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private LoginDao loginDao;
	@Autowired
	HttpSession session;
	
	//濡쒓렇??
	@Transactional
	public String Login(Login login, HttpSession session) {
		Login loginfor = loginDao.Login(login);
		System.out.println("---濡쒓렇?몄젙蹂?-->" + loginfor);
		
		if(loginfor == null) {
			System.out.println("--濡쒓렇?몄떎??-");
		} else {
				System.out.println("--濡쒓렇?몄셿猷?--");
				
				//濡쒓렇???몄뀡 ?뺣낫 ?명똿
				session.setAttribute("loginfor", loginfor);
				session.setAttribute("Top", "Home");
		}
		return "redirect:/Home";
	}
	//濡쒓렇?꾩썐
	@Transactional
	public String logout(HttpSession session) {
		Login loginfor = (Login) session.getAttribute("loginfor");
		System.out.println(loginfor + "?꾩옱 濡쒓렇???뺣낫");
		
		session.invalidate();
		System.out.println("--濡쒓렇?꾩썐 ?깃났---");
		
		return "redirect:/Home";
		
	}
	//Home ?몄뀡 ?ㅼ젙
	public void HomeSession() {
		session.setAttribute("Top", "Home");
	}
	
}
