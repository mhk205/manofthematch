package com.cafe24.kkoo0202.Login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS="com.cafe24.kkoo0202.Login.LoginMapper";
	//濡쒓렇??
	public Login Login(Login login) {
		System.out.println("Dao param login: " + login) ;
		return sqlSessionTemplate.selectOne(NS+".login", login);
	}
	
	
}
