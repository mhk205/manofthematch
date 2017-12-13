package com.cafe24.kkoo0202.Player;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class PlayerService {
	@Autowired
	private PlayerDao Dao;
	
	@Autowired
	HttpSession session;
	

	// 플레이어 리스트
	public void PlayerList(Model model) {
		model.addAttribute("PlayerList", Dao.PlayerList());
	}
	
	// 한 팀의 플레이어 리스트
	public void PlayerListOne(Model model, String teamName) {
		model.addAttribute("Player", Dao.PlayerListOne(teamName));
	}
	
	
}
