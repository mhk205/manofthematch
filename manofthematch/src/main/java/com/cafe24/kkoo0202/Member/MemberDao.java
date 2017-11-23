package com.cafe24.kkoo0202.Member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//회원등록
	public int insertMember(Member member) {
		return sqlSession.insert("com.cafe24.kkoo0202.Member.MemberMapper", member);
		
	}
	

}
