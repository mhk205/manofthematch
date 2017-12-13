package com.cafe24.kkoo0202.Match;

public class Player2 {
	private int member_no;
	private String team_name;
	private int player_grade_no;
	private int position_no;
	private int player_backno;
	private String player_playerstatus;
	private int strength_no;
	private int football_career_no;
	
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public int getPlayer_grade_no() {
		return player_grade_no;
	}
	public void setPlayer_grade_no(int player_grade_no) {
		this.player_grade_no = player_grade_no;
	}
	public int getPosition_no() {
		return position_no;
	}
	public void setPosition_no(int position_no) {
		this.position_no = position_no;
	}
	public int getPlayer_backno() {
		return player_backno;
	}
	public void setPlayer_backno(int player_backno) {
		this.player_backno = player_backno;
	}
	public String getPlayer_playerstatus() {
		return player_playerstatus;
	}
	public void setPlayer_playerstatus(String player_playerstatus) {
		this.player_playerstatus = player_playerstatus;
	}
	public int getStrength_no() {
		return strength_no;
	}
	public void setStrength_no(int strength_no) {
		this.strength_no = strength_no;
	}
	public int getFootball_career_no() {
		return football_career_no;
	}
	public void setFootball_career_no(int football_career_no) {
		this.football_career_no = football_career_no;
	}
	@Override
	public String toString() {
		return "Player [member_no=" + member_no + ", team_name=" + team_name + ", player_grade_no=" + player_grade_no
				+ ", position_no=" + position_no + ", player_backno=" + player_backno + ", player_playerstatus="
				+ player_playerstatus + ", strength_no=" + strength_no + ", football_career_no=" + football_career_no
				+ "]";
	}	
}
