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
	
	//�� �깮�꽦
	@RequestMapping(value="/TeamAdd", method=RequestMethod.GET)
	public String TeamAdd() {
		return "Team/TeamAdd";
	}
	// �� �깮�꽦 泥섎━ 
	@RequestMapping(value="/TeamAdd", method=RequestMethod.POST)
	public String TeamAdd(Team team) {
		int resultRow = teamDao.TeamAdd(team);
		System.out.println(resultRow==1);
		return "redirect:/";
	}
	
	// �� 由ъ뒪�듃
	@RequestMapping(value="/TeamList")
		public String teamList(Model model) {
			teamService.TeamList(model);
			return "Team/TeamList";
		
	}
	
	// �븯�굹�쓽 �� �젙蹂� 遺덈윭�삤湲�( �� �닔�젙�씠 �맆 �닔 �엳�쓬 )
	@RequestMapping(value="/TeamSangse")
	public String teamSangse(Model model, @RequestParam(value="teamName", required = true) String teamName) {
		Team team = teamDao.TeamOne(teamName);
		System.out.println("TeamController�쓽 teamSangse硫붿넃�뱶: " +teamName );
		model.addAttribute("Team", team);
		return "Team/TeamSangse";
	}
	@RequestMapping(value="/TeamTactics")
	public String teamTactics(Model model) {
		teamService.TeamList(model);
		return "Team/TeamTactics";
	
}

}
