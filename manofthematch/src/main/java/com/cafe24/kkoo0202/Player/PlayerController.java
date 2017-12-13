package com.cafe24.kkoo0202.Player;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PlayerController {
	
	@Autowired
	PlayerDao Dao;
	
	@Autowired
	PlayerService Service;
	
	// 플레이어 리스트
	@RequestMapping(value="/PlayerList")
	public String PlayerList(Model model) {
		Service.PlayerList(model);
		return "Player/PlayerList";
		
	}
	
	// 한 팀의 플레이어 리스트
	@RequestMapping(value="/PlayerListOne", method = RequestMethod.GET)
	public String PlayerListOne(Model model, @RequestParam(value="teamName", required = true)String teamName) {
		Player player = Dao.PlayerListOne(teamName);
		System.out.println("PlayerController의 PlayerListOne메솓드: " +teamName );
		model.addAttribute("Player", player);
		return "Player/PlayerListOne";	
	}

}
