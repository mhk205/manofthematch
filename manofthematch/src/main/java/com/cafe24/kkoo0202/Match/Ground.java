package com.cafe24.kkoo0202.Match;

public class Ground {
	private int ground_no;
	private String ground_name;
	private String ground_phonenumber;
	private int local_no;
	
	public int getGround_no() {
		return ground_no;
	}
	public void setGround_no(int ground_no) {
		this.ground_no = ground_no;
	}
	public String getGround_name() {
		return ground_name;
	}
	public void setGround_name(String ground_name) {
		this.ground_name = ground_name;
	}
	public String getGround_phonenumber() {
		return ground_phonenumber;
	}
	public void setGround_phonenumber(String ground_phonenumber) {
		this.ground_phonenumber = ground_phonenumber;
	}
	public int getLocal_no() {
		return local_no;
	}
	public void setLocal_no(int local_no) {
		this.local_no = local_no;
	}
	@Override
	public String toString() {
		return "Ground [ground_no=" + ground_no + ", ground_name=" + ground_name + ", ground_phonenumber="
				+ ground_phonenumber + ", local_no=" + local_no + "]";
	}	
}
