package com.cafe24.kkoo0202.Match;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MatchDao implements MatchDaoInterface {
	
	private Logger log = Logger.getLogger(MatchDao.class);
	
	Match match = new Match(); 
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NS="com.cafe24.kkoo0202.Match.MatchMapper.";
	
	//?��?��?���?? 처리
	@Override
	public int MatchAdd (HttpServletRequest req) {
		int mathcing_no = Integer.parseInt(req.getParameter("mathcing_no"));
		String mathcing_date = req.getParameter("mathcing_date");
		int ground_no = Integer.parseInt(req.getParameter("ground_no"));
		int reward_no = Integer.parseInt(req.getParameter("reward_no"));
		String matching_status_condition = req.getParameter("matching_status_condition");
		String matching_title = req.getParameter("matching_title");
		String member_id = req.getParameter("member_id");
		match.setMathcing_no(mathcing_no);
		match.setMathcing_date(mathcing_date);
		match.setGround_no(ground_no);
		match.setReward_no(reward_no);
		match.setMatching_status_condition(matching_status_condition);
		match.setMatching_title(matching_title);
		match.setMember_id(member_id);
		log.info(mathcing_no);
		log.info(mathcing_date);
		log.info(ground_no);
		log.info(reward_no);
		log.info(matching_status_condition);
		log.info(matching_title);
		log.info(member_id);		
		int result = sqlSessionTemplate.insert(NS+"MatchInsert", match);		
	 return result;
	}

	@Override
	public List<Match> MatchList() {		
		return sqlSessionTemplate.selectList(NS+"MatchList");
	}

	@Override
	public List<Match> MatchListDetail(int mathcing_no) {
		List<Match> list = sqlSessionTemplate.selectList(NS+"MatchListById", mathcing_no);
		log.info(list);
		return list;
	}	
	@Override
	public int MatchCount() {
		int resultCount = sqlSessionTemplate.selectOne(NS+"MatchCount");
		return resultCount;
	}
	@Override
	public List<MatchTeam> MatchTeam(MatchTeam matchTeam) {
		log.info(matchTeam.getTeam_name());
		log.info(matchTeam.getMathcing_no());
		return sqlSessionTemplate.selectList(NS+"MatchTeamCalendar",matchTeam);
	}
	
}
