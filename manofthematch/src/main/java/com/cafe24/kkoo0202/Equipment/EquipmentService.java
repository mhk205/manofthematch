package com.cafe24.kkoo0202.Equipment;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class EquipmentService {
	@Autowired
	private EquipmentDao Dao;
	
	@Autowired
	HttpSession session;

	// 모든 팀 비품 리스트
	public void EquipmentList(Model model) {
		model.addAttribute("EquipmentList", Dao.EquipmentList());
		session.setAttribute("top", "equipment");
	}
	
	// 팀 비품 수정 폼
	public void EquipmentOne(Model model, String teamName) {
		model.addAttribute("Equipment", Dao.EquipmentOne(teamName));
	}
	
	// 팀 비품 수정 처리
	public void EquipmentUpdate(Equipment equipment) {
		if(equipment.getEquipmentBall().equals("")) {
			equipment.setEquipmentBall(null);
		}
		Dao.EquipmentUpdate(equipment);
	}
	
	// 한 팀의 비품리스트
	public void TeamEquipmentListOne(Model model, String teamName) {
		model.addAttribute("Equipment", Dao.TeamEquipmentListOne(teamName));
	}
}










