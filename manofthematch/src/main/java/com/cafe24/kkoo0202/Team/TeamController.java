package com.cafe24.kkoo0202.Team;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeamController {
	@Autowired
	TeamDao teamDao;
	@Autowired
	TeamService teamService;
	
	//팀 생성
	@RequestMapping(value="/TeamAdd", method=RequestMethod.GET)
	public String TeamAdd() {
		return "Team/TeamAdd";
	}
	// 팀 생성
	@RequestMapping(value="/TeamAdd", method=RequestMethod.POST)
	public String TeamAdd(Team team) {
		int resultRow = teamDao.TeamAdd(team);
		System.out.println(resultRow==1);
		return "redirect:/";
	}
	
	// 팀 리스트
	@RequestMapping(value="/TeamList")
		public String teamList(Model model) {
			teamService.TeamList(model);
			return "Team/TeamList";
		
	}

}
