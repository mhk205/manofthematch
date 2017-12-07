package com.cafe24.kkoo0202.Login;

import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	final static org.slf4j.Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	

	
	//로그인 처리
	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public String loginpro() {
		System.out.println("Login.jsp로 요청");
		return "Login/Login";
	}
	@RequestMapping(value="/Login", method = RequestMethod.POST)
	public String loginpro(Login login, HttpSession session) {
		System.out.println("로그인" + login);
		return loginService.Login(login, session);
	}
	//로그아웃 처리
	@RequestMapping(value="/Logout", method = RequestMethod.POST)
	public String logoutpro(HttpSession session) {
		return loginService.logout(session);
	}
	
}
