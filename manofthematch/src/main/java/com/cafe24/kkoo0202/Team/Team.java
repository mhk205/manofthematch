package com.cafe24.kkoo0202.Team;

public class Team {
	
	private String teamName;
	private String teamGradeNo;
	private String localNo;
	private String teamPlaytype;
	private String teamEmblem;
	
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
	
	@Override
	public String toString() {
		return "Team [teamName=" + teamName + ", teamGradeNo=" + teamGradeNo + ", localNo=" + localNo
				+ ", teamPlaytype=" + teamPlaytype + ", teamEmblem=" + teamEmblem + "]";
	}
	

}
