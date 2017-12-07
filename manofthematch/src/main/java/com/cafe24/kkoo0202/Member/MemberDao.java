package com.cafe24.kkoo0202.Member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao implements MemberDaoInterface {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//회원등록 처리
	@Override
	public int MemberAdd (Member member) {
		return sqlSessionTemplate.insert("com.cafe24.kkoo0202.Member.MemberMapper.MemberAdd", member);
	}
	
	
	
}
