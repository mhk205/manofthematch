package com.cafe24.kkoo0202.Team;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	// 팀 생성 처리 
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
	
	// 하나의 팀 정보 불러오기( 팀 수정이 될 수 있음 )
	@RequestMapping(value="/TeamSangse")
	public String teamSangse(Model model, @RequestParam(value="teamName", required = true) String teamName) {
		Team team = teamDao.TeamOne(teamName);
		System.out.println("TeamController의 teamSangse메솓드: " +teamName );
		model.addAttribute("Team", team);
		return "Team/TeamSangse";
	}

}
