package com.cafe24.kkoo0202.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
		@Autowired
		private LoginDao loginDao;
		
		@RequestMapping(value="/Login", method=RequestMethod.GET)
		public String Login() {
			return "Login/Login";
		}

}
