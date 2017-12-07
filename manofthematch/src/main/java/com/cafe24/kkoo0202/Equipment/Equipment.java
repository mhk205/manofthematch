package com.cafe24.kkoo0202.Equipment;

public class Equipment {
	private String teamName;
	private String equipmentBall;
	private String equipmentUniform;
	private String equipmentVest;
	private String equipmentMedicine;
	private String equipmentCorn;
	private String equipmentGlove;
	
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getEquipmentBall() {
		return equipmentBall;
	}
	public void setEquipmentBall(String equipmentBall) {
		this.equipmentBall = equipmentBall;
	}
	public String getEquipmentUniform() {
		return equipmentUniform;
	}
	public void setEquipmentUniform(String equipmentUniform) {
		this.equipmentUniform = equipmentUniform;
	}
	public String getEquipmentVest() {
		return equipmentVest;
	}
	public void setEquipmentVest(String equipmentVest) {
		this.equipmentVest = equipmentVest;
	}
	public String getEquipmentMedicine() {
		return equipmentMedicine;
	}
	public void setEquipmentMedicine(String equipmentMedicine) {
		this.equipmentMedicine = equipmentMedicine;
	}
	public String getEquipmentCorn() {
		return equipmentCorn;
	}
	public void setEquipmentCorn(String equipmentCorn) {
		this.equipmentCorn = equipmentCorn;
	}
	public String getEquipmentGlove() {
		return equipmentGlove;
	}
	public void setEquipmentGlove(String equipmentGlove) {
		this.equipmentGlove = equipmentGlove;
	}
	
	@Override
	public String toString() {
		return "Equipment [teamName=" + teamName + ", equipmentBall=" + equipmentBall + ", equipmentUniform="
				+ equipmentUniform + ", equipmentVest=" + equipmentVest + ", equipmentMedicine=" + equipmentMedicine
				+ ", equipmentCorn=" + equipmentCorn + ", equipmentGlove=" + equipmentGlove + "]";
	}

}
