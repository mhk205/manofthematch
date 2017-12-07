package com.cafe24.kkoo0202.Team;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class TeamService {
	@Autowired
	private TeamDao dao;
	
	@Autowired
	HttpSession session;
	
	// 팀 생성시 정보입력
	public int TeamAdd(Team team) {
		return dao.TeamAdd(team);
		
	}
	
	// 팀 리스트
	public void TeamList(Model model) {
		model.addAttribute("TeamList", dao.TeamList());
		session.setAttribute("top", "team");
	}

}
