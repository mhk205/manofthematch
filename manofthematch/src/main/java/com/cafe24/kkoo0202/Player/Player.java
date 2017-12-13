package com.cafe24.kkoo0202.Player;

public class Player {
	private String memberNo;
	private String teamName;
	private String playGradeNo;
	private String positionNo;
	private String playerBackno;
	private String playerPlayerstatus;
	private String strengthNo;
	private String footballCareerNo;
	private String memberName;
	private String memberPosition;
	
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getPlayGradeNo() {
		return playGradeNo;
	}
	public void setPlayGradeNo(String playGradeNo) {
		this.playGradeNo = playGradeNo;
	}
	public String getPositionNo() {
		return positionNo;
	}
	public void setPositionNo(String positionNo) {
		this.positionNo = positionNo;
	}
	public String getPlayerBackno() {
		return playerBackno;
	}
	public void setPlayerBackno(String playerBackno) {
		this.playerBackno = playerBackno;
	}
	public String getPlayerPlayerstatus() {
		return playerPlayerstatus;
	}
	public void setPlayerPlayerstatus(String playerPlayerstatus) {
		this.playerPlayerstatus = playerPlayerstatus;
	}
	public String getStrengthNo() {
		return strengthNo;
	}
	public void setStrengthNo(String strengthNo) {
		this.strengthNo = strengthNo;
	}
	public String getFootballCareerNo() {
		return footballCareerNo;
	}
	public void setFootballCareerNo(String footballCareerNo) {
		this.footballCareerNo = footballCareerNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPosition() {
		return memberPosition;
	}
	public void setMember_position(String memberPosition) {
		this.memberPosition = memberPosition;
	}
	
	@Override
	public String toString() {
		return "Player [memberNo=" + memberNo + ", teamName=" + teamName + ", playGradeNo=" + playGradeNo
				+ ", positionNo=" + positionNo + ", playerBackno=" + playerBackno + ", playerPlayerstatus="
				+ playerPlayerstatus + ", strengthNo=" + strengthNo + ", footballCareerNo=" + footballCareerNo
				+ ", memberName=" + memberName + ", memberPosition=" + memberPosition + "]";
	}
	
	
}
