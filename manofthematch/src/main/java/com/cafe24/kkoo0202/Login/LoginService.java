package com.cafe24.kkoo0202.Login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LoginService {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private LoginDao loginDao;
	@Autowired
	HttpSession session;
	
	//로그인
	@Transactional
	public String login(Login login, HttpSession session) {
		Login loginfor = loginDao.login(login);
		System.out.println("--로그인정보--->" + loginfor);
		
		if(loginfor == null) {
			System.out.println("---로그인실패");
		}else {
			System.out.println("---로그인완료");
			
		}
		return "redirect:/";
	}//로그아웃
	@Transactional
	public String logout(HttpSession session) {
		Login loginfor = (Login) session.getAttribute("loginfor");
		System.out.println(loginfor+"현재 로그인정보");
		
		session.invalidate();
		System.out.println("---로그아웃 성공");
	
		return "redirect:/";
	}
	
	//home 세션 설정
	public void HomeSesseion() {
		session.setAttribute("top", "home");
	}
}
