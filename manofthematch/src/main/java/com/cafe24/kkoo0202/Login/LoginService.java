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
	
	//로그인
	@Transactional
	public String Login(Login login, HttpSession session) {
		Login loginfor = loginDao.Login(login);
		System.out.println("---로그인정보--->" + loginfor);
		
		if(loginfor == null) {
			System.out.println("--로그인실패--");
		} else {
				System.out.println("--로그인완료---");
				
				//로그인 세션 정보 세팅
				session.setAttribute("loginfor", loginfor);
				session.setAttribute("Top", "Home");
		}
		return "redirect:/Home";
	}
	//로그아웃
	@Transactional
	public String logout(HttpSession session) {
		Login loginfor = (Login) session.getAttribute("loginfor");
		System.out.println(loginfor + "현재 로그인 정보");
		
		session.invalidate();
		System.out.println("--로그아웃 성공---");
		
		return "redirect:/Home";
		
	}
	//Home 세션 설정
	public void HomeSession() {
		session.setAttribute("Top", "Home");
	}
	
}
