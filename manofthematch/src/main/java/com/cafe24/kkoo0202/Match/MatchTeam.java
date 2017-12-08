package com.cafe24.kkoo0202.Match;

import java.util.Date;

public class MatchTeam {
	private int mathcing_no;
	private Date mathcing_date;
	private int ground_no;
	private int matching_type_code;
	private String team_name;
	public int getMathcing_no() {
		return mathcing_no;
	}
	public void setMathcing_no(int mathcing_no) {
		this.mathcing_no = mathcing_no;
	}
	public Date getMathcing_date() {
		return mathcing_date;
	}
	public void setMathcing_date(Date mathcing_date) {
		this.mathcing_date = mathcing_date;
	}
	public int getGround_no() {
		return ground_no;
	}
	public void setGround_no(int ground_no) {
		this.ground_no = ground_no;
	}
	public int getMatching_type_code() {
		return matching_type_code;
	}
	public void setMatching_type_code(int matching_type_code) {
		this.matching_type_code = matching_type_code;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	@Override
	public String toString() {
		return "MatchTeam [mathcing_no=" + mathcing_no + ", mathcing_date=" + mathcing_date + ", ground_no=" + ground_no
				+ ", matching_type_code=" + matching_type_code + ", team_name=" + team_name + "]";
	}
}
