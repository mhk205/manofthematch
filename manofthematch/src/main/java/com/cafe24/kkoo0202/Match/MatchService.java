package com.cafe24.kkoo0202.Match;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.kkoo0202.Login.Login;

@Repository
public class MatchService implements MatchServiceInterface{
	
	private Logger log = Logger.getLogger(MatchService.class);

	@Autowired
	private GroundDaoInterface groundDao;
	@Autowired
	private MatchDaoInterface matchDao;
	@Autowired
	private PlayerDaoInterface2 playerDao;
	
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
	@Override
	public int MemberNoById(String member_id) {
		int memberNo = matchDao.MemberNoById(member_id);		
		return memberNo;
	}
	@Override
	public int MatchAddTeam(HttpServletRequest req) {
		int result = matchDao.MatchAdd(req);
		log.info(result + " : result");
		int ResultNum = 0;		
		if(result == 1) {
			ResultNum += result;
			log.info(ResultNum+" : MatchAddTeam" );
			String member_id = req.getParameter("member_id");
			log.info(member_id+" : MatchAddTeam");
			int member_no = matchDao.MemberNoById(member_id);
			log.info(member_no+" : MatchAddTeam");
			List<Player2> list = playerDao.PlayerList(member_no);
			log.info(list+" : MatchAddTeam");
			for(Player2 P :list) {
				String team_name = P.getTeam_name();
				log.info(team_name+" : MatchAddTeam");
				matchDao.MatchTeamAdd(req, team_name);
				log.info(ResultNum + " MatchAddTeam if");
			}
		}else {
			int mathcing_no = Integer.parseInt(req.getParameter("mathcing_no"));
			ResultNum += matchDao.MatchListRemove(mathcing_no);
			log.info(ResultNum + " : MatchAddTeam else");
		}
		return ResultNum;
	}
	//1.매칭팀 리스트 불러오기
	//2.정보가공
	//3.매칭팀 정보 insert
	@Override
	public int MatchTeamSeIn(int mathcing_no, HttpSession session) {
		//빈 객체 생성		
		int resultNum = 0;		
		//세션에서 아이디 가져오기 & 확인
		Login loginfor = (Login) session.getAttribute("loginfor");		
		String member_id = loginfor.getMemberId();
		log.info(member_id);		
		
		//아이디로 멤버 번호 가져오기. 멤버 번호로 플레이어 리스트, 매치 리스트 불러오기.
		int member_no = matchDao.MemberNoById(member_id);
		List<Player2> listP = playerDao.PlayerList(member_no);
		List<Match> listM = matchDao.MatchListDetail(mathcing_no);
		
		//확인
		log.info("----------------MatchTeamSeIn-----------------");
		log.info(member_id);
		log.info(member_no);
		log.info(listP);
		log.info(listM);
		log.info("----------------MatchTeamSeIn-----------------");
		
		//기존에 저장된 매칭팀 정보를 불러온다.
		for(MatchTeam MT : matchDao.MatchTeamSelect(mathcing_no)) {
			log.info("----------------MT-----------------");
			log.info(MT);
			log.info("----------------MT-----------------");
			MT.setMatching_type_code(2);
			for(Player2 P :listP) {
				String team_name = P.getTeam_name();
				MT.setTeam_name(team_name);
				log.info("----------------MT-----------------");
				log.info(MT);
				log.info("----------------MT-----------------");
				matchDao.MatchTeamInsert(MT);
				//매칭정보를 불러와서 대기를 성사로 변경한다.
				for(Match M : listM) {
					M.setMatching_status_condition("성사");
					log.info("----------------M-----------------");
					log.info(M);
					log.info("----------------M-----------------");
					resultNum = matchDao.MatchUpdate(M);
				}
			}
		}		
		return resultNum;
	}
	
}
