package com.cafe24.kkoo0202.Equipment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sun.util.logging.resources.logging;

@Controller
public class EquipmentController {
	@Autowired
	EquipmentDao equipmentDao;
	@Autowired
	EquipmentService equipmentService;
	
	// 비품 리스트
	@RequestMapping(value="/EquipmentList")
	public String EquipmentList(Model model) {
		equipmentService.EquipmentList(model);
		return "Equipment/EquipmentList";
		
	}
	
	// 비품 수정 폼
	@RequestMapping(value="/EquipmentUpdate", method = RequestMethod.GET)
	public String EquipmentUpdate(Model model, @RequestParam(value="teamName", required = true) String teamName) {
		Equipment equipment = equipmentDao.TeamEquipmentListOne(teamName);
		model.addAttribute("Equipment", equipment);
		return "Equipment/EquipmentUpdate";
		
	}
	
	// 비품 수정 처리
	@RequestMapping(value="/EquipmentUpdate", method = RequestMethod.POST)
	public String EquipmentUpdate(Equipment equipment) {
		equipmentDao.EquipmentUpdate(equipment);
		return "redirect:/TeamEquipmentListOne?teamName="+equipment.getTeamName();
		
	}
	
	// 한팀의 비품 리스트 
	@RequestMapping(value="/TeamEquipmentListOne", method = RequestMethod.GET)
	public String TeamEquipmentListOne(Model model, @RequestParam(value="teamName", required = true) String teamName) {
		Equipment equipment = equipmentDao.TeamEquipmentListOne(teamName);
		model.addAttribute("Equipment", equipment);
		return "Equipment/TeamEquipmentListOne";
	}

}









