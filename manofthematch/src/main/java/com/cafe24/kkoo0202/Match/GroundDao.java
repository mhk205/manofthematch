package com.cafe24.kkoo0202.Match;

import java.sql.ResultSet;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GroundDao implements GroundDaoInterface {
	
	private static final String NS="com.cafe24.kkoo0202.Match.GroundMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Ground> GroundSelect() {		
		return sqlSessionTemplate.selectList(NS+"GroundSelect");
	}
}
