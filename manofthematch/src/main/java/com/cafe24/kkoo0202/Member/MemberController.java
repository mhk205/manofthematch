package com.cafe24.kkoo0202.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class MemberController {
	@Autowired
	private MemberDao memberDao;
	
	
	
	//get방식의 MemberAdd요청을 처리하는 메서드
	@RequestMapping(value="/MemberAdd", method=RequestMethod.GET)
	public String MemberAdd() {
		return "Member/MemberAdd";
	}
	//post방식의 MemberAdd요청을 처리하는 메서드
	//form 입력 name과 일치하는 커맨드 객체를 사용
	@RequestMapping(value="/MemberAdd", method=RequestMethod.POST)
	public String MemberAdd(Member member) {
		
		int resultRow = memberDao.MemberAdd(member);
		System.out.println(resultRow==1);
		return "redirect:/";
	}
	
}