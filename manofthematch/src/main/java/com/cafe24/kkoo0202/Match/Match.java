package com.cafe24.kkoo0202.Match;

import java.util.Date;

public class Match {
	private int mathcing_no;
	private Date mathcing_date;
	private int ground_no;
	private int reward_no;
	private String matching_status_condition;
	private String matching_title;
	
	public String getMatching_title() {
		return matching_title;
	}
	public void setMatching_title(String matching_title) {
		this.matching_title = matching_title;
	}
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
	public int getReward_no() {
		return reward_no;
	}
	public void setReward_no(int reward_no) {
		this.reward_no = reward_no;
	}
	public String getMatching_status_condition() {
		return matching_status_condition;
	}
	public void setMatching_status_condition(String matching_status_condition) {
		this.matching_status_condition = matching_status_condition;
	}
	@Override
	public String toString() {
		return "Match [mathcing_no=" + mathcing_no + ", mathcing_date=" + mathcing_date + ", ground_no=" + ground_no
				+ ", reward_no=" + reward_no + ", matching_status_condition=" + matching_status_condition
				+ ", matching_title=" + matching_title + "]";
	}
	
}
