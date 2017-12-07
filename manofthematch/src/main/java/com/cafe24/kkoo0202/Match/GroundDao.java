package com.cafe24.kkoo0202.Match;

import java.sql.ResultSet;
import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GroundDao implements GroundDaoInterface {
	
	private Logger log = Logger.getLogger(GroundDao.class);
	
	private static final String NS="com.cafe24.kkoo0202.Match.GroundMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Ground> GroundSelect() {		
		return sqlSessionTemplate.selectList(NS+"GroundSelect");
	}

	@Override
	public List<Ground> GroundSelectById(int ground_no) {		
		return sqlSessionTemplate.selectList(NS+"GroundSelectById", ground_no);
	}
}
