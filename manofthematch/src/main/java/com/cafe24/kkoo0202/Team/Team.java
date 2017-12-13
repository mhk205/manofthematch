package com.cafe24.kkoo0202.Team;

public class Team {
	
	private String teamName;
	private String teamGradeNo;
	private String localNo;
	private String teamPlaytype;
	private String teamEmblem;
	private String cityName;
	private String cityNo;
	
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamGradeNo() {
		return teamGradeNo;
	}
	public void setTeamGradeNo(String teamGradeNo) {
		this.teamGradeNo = teamGradeNo;
	}
	public String getLocalNo() {
		return localNo;
	}
	public void setLocalNo(String localNo) {
		this.localNo = localNo;
	}
	public String getTeamPlaytype() {
		return teamPlaytype;
	}
	public void setTeamPlaytype(String teamPlaytype) {
		this.teamPlaytype = teamPlaytype;
	}
	public String getTeamEmblem() {
		return teamEmblem;
	}
	public void setTeamEmblem(String teamEmblem) {
		this.teamEmblem = teamEmblem;
	}
	
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
	public String getCityNo() {
		return cityNo;
	}
	public void setCityNo(String cityNo) {
		this.cityNo = cityNo;
	}
	
	@Override
	public String toString() {
		return "Team [teamName=" + teamName + ", teamGradeNo=" + teamGradeNo + ", localNo=" + localNo
				+ ", teamPlaytype=" + teamPlaytype + ", teamEmblem=" + teamEmblem + ", cityName=" + cityName
				+ ", cityNo=" + cityNo + "]";
	}

}
