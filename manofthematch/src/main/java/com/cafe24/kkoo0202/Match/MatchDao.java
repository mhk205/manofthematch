package com.cafe24.kkoo0202.Match;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MatchDao implements MatchDaoInterface {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NS="com.cafe24.kkoo0202.Match.MatchMapper.";
	
	//?��?��?���?? 처리
	@Override
	public int MatchAdd (Match match) {
	 return sqlSessionTemplate.insert(NS+"MatchInsert", match);
	}

	@Override
	public List<Match> MatchList() {		
		return sqlSessionTemplate.selectList(NS+"MatchList");
	}	
}
