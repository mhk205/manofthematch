package com.cafe24.kkoo0202.Login;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS="com.cafe24.kkoo0202.Login.LoginMapper";
	
	//로그인
	public Login login(Login login) {
		return sqlSessionTemplate.selectOne(NS+".login", login);
	}
}
