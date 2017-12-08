package com.cafe24.kkoo0202.Match;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MatchService implements MatchServiceInterface{
	
	private Logger log = Logger.getLogger(MatchService.class);

	@Autowired
	private GroundDaoInterface groundDao;
	@Autowired
	private MatchDaoInterface matchDao;
		
	private Map<String, Object> map;
	
	@Override
	public Map<String,Object> MatchAdd() {
		List<Ground> list = groundDao.GroundSelect();		
		map.put("GroundList", list);		
		return map;
	}

	@Override
	public Map<String, Object> MatchListDetail(int mathcing_no) {
		map.put("MatchList", matchDao.MatchListDetail(mathcing_no));
		List<Match> list = matchDao.MatchListDetail(mathcing_no);
		/*for(Match M : list) {
			map.put("GroundList",(groundDao.GroundSelectById(M.getGround_no())));
		}*/
		return map;
	}

	@Override
	public int MatchListDetail2(int mathcing_no) {
		int num = 0;
		List<Match> list = matchDao.MatchListDetail(mathcing_no);
		for(Match M : list) {
			num += M.getGround_no();
			log.info(num);
		}
		return num;
	}
	public void MatchTeamDate() {
		
	}
	
	
}
