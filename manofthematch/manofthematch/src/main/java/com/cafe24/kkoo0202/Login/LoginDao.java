package com.cafe24.kkoo0202.Login;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao implements LoginDaoInterface{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public boolean loginCheck(Login login) {
		int count = Integer.parseInt(sqlSessionTemplate.selectOne("loginCheck", login).toString()),
				totalCount = sqlSessionTemplate.selectOne("totalAccount");
		
		if(totalCount > 0) {
			if(count > 0) {
				return true;
			} else 
				return false;
		}
		return false;
	}
	
	
}
