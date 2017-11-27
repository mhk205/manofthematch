package com.cafe24.kkoo0202.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements MemberServiceInterface {
	@Autowired
	private MemberDaoInterface dao;
	
	//회원가입시 회원정보 입력하기 위한 dao메서드 호출
	@Override
	public int MemberAdd(Member member) {
		return dao.MemberAdd(member);
	}

}
