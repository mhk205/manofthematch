package com.cafe24.kkoo0202.Equipment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EquipmentDao {
	@Autowired
	private SqlSessionTemplate SST;
	private final String NS = "com.cafe24.kkoo0202.Equipment.EquipmentMapper.";

	// 비품 리스트
	public List<Equipment> EquipmentList(){
		return SST.selectList(NS+"EquipmentList");
		
	}
	
	// 비품 수정 폼
	public Equipment EquipmentOne(String teamName) {
		return SST.selectOne(NS+"EquipmentOne", teamName);
		
	}
	// 비품 수정처리
	public void EquipmentUpdate(Equipment equipment) {
		SST.update(NS+"EquipmentUpdate", equipment);
	}
}
