package com.cafe24.kkoo0202.Member;

public class Member {
	private String memberNo;
	private String memberPosition;
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberSex;
	private String memberBirthday;
	private String memberEmail;
	private String memberPhonenumber;
	private String memberPicture;
	
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberPosition() {
		return memberPosition;
	}
	public void setMemberPosition(String memberPosition) {
		this.memberPosition = memberPosition;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberSex() {
		return memberSex;
	}
	public void setMemberSex(String memberSex) {
		this.memberSex = memberSex;
	}
	public String getMemberBirthday() {
		return memberBirthday;
	}
	public void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPhonenumber() {
		return memberPhonenumber;
	}
	public void setMemberPhonenumber(String memberPhonenumber) {
		this.memberPhonenumber = memberPhonenumber;
	}
	public String getMemberPicture() {
		return memberPicture;
	}
	public void setMemberPicture(String memberPicture) {
		this.memberPicture = memberPicture;
	}
	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberPosition=" + memberPosition + ", memberId=" + memberId
				+ ", memberPassword=" + memberPassword + ", memberName=" + memberName + ", memberSex=" + memberSex
				+ ", memberBirthday=" + memberBirthday + ", memberEmail=" + memberEmail + ", memberPhonenumber="
				+ memberPhonenumber + ", memberPicture=" + memberPicture + "]";
	}
	
}
