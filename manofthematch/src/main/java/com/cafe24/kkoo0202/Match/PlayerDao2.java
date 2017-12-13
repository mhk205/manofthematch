package com.cafe24.kkoo0202.Match;

import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayerDao2 implements PlayerDaoInterface2 {
	
	private Logger log = Logger.getLogger(PlayerDao2.class);
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NS="com.cafe24.kkoo0202.Match.PlayerMapper.";
	
	@Override
	public List<Player2> PlayerList(int member_no) {
		log.info(member_no);		
		return sqlSessionTemplate.selectList(NS+"PlayerList", member_no);
	}

}
