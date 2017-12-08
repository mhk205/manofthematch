package com.cafe24.kkoo0202.Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value="/Login", method=RequestMethod.GET)
		public String Login() {
			return "/Login/Login";
	}
	@RequestMapping(value="/Login", method=RequestMethod.POST)
		public String Login(Login login) {
			boolean resultInteger = loginDao.loginCheck(login);
			return "redirect:/";
	}
	
	@RequestMapping(value="/Login/loginCheck")
		public void loginCheck(Locale locale, Model model, Login login, HttpSession session, HttpServletResponse response) throws IOException {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			if((login.getMemberId() !=null && !login.getMemberId().equals("")
					&& login.getMemberPassword() !=null && !login.getMemberPassword().equals(""))) {
				if(loginDao.loginCheck(login)) {
					session.setAttribute("login", 0); //로그인 성공시 세션
					System.out.println("세션 추가됨");
					session.setAttribute("memberId", login.getMemberId());
					
					out.println("<script>location.href='/'; </script>");
					out.flush();
					out.close();
					
					
				}
				if(loginDao.loginCheck(login) == false) {
					out.println("<script>alret('로그인 정보를 확인하세요!'); history.go(-1); </script>");
					out.flush();
					out.close();
				}
			}
		}
	
	
}
