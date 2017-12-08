package com.cafe24.kkoo0202.Login;

public class Login {
	private String memberId;
	private String memberPassword;
	private String memberName;
	
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
	@Override
	public String toString() {
		return "Login [memberId=" + memberId + ", memberPassword=" + memberPassword + ", memberName=" + memberName
				+ "]";
	}
}
