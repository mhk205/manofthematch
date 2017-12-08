package com.cafe24.kkoo0202.Member;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface MemberServiceInterface {
	//회원가입 위한 회원기본정보 입력
	int MemberAdd (Member member);
}
