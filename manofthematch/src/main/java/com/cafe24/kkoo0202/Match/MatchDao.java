package com.cafe24.kkoo0202.Match;

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
	MatchTeam matchTeam = new MatchTeam();
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
		
	private static final String NS="com.cafe24.kkoo0202.Match.MatchMapper.";
	
	//1.매칭 등록하는 메서드. 파라메터를 Request로 받는다.
	@Override
	public int MatchAdd (HttpServletRequest req) {	
		//req로 받아온 파라메터를 match의 형식에 맞게 넣기.
		match.setMathcing_no(Integer.parseInt(req.getParameter("mathcing_no")));
		match.setMathcing_date(req.getParameter("mathcing_date"));
		match.setGround_no(Integer.parseInt(req.getParameter("ground_no")));
		match.setReward_no(Integer.parseInt(req.getParameter("reward_no")));
		match.setMatching_status_condition(req.getParameter("matching_status_condition"));
		match.setMatching_title(req.getParameter("matching_title"));
		match.setMember_id(req.getParameter("member_id"));
		//넣은 값 확인.
		log.info(match);		
		//sql 실행.
		int result = sqlSessionTemplate.insert(NS+"MatchInsert", match);
		log.info(result);
	 return result;
	}
	//2.매칭성사 시  등록되면, matching_status_condition의 값을 변경하기 위한 메서드. 파라메터를 match객체로 받는다.
	@Override
	public int MatchAdd(Match match) {
		log.info(match);
		int result = sqlSessionTemplate.insert(NS+"MatchInsert", match);
		log.info(result);
		return result;
	}
	//3.매치리스트를 불러오는 메서드. 파라메터 값은 없음
	@Override
	public List<Match> MatchList() {		
		return sqlSessionTemplate.selectList(NS+"MatchList");
	}
	//4.특정 번호의 매칭리스트를 불러오는 메서드, 파라메터값은 매칭번호;
	@Override
	public List<Match> MatchListDetail(int mathcing_no) {
		List<Match> list = sqlSessionTemplate.selectList(NS+"MatchListById", mathcing_no);		
		log.info(list);
		return list;
	}
	//5.매칭에서 같은 번호를 가진 글의 숫자를 불러오는 메서드, 현재 사용처 없음.
	@Override
	public int MatchCount() {
		int resultCount = sqlSessionTemplate.selectOne(NS+"MatchCount");
		return resultCount;
	}
	//6.매칭팀의 정보를 불러오는 메서드. 파라메터 값은 매칭 팀;
	@Override
	public List<MatchTeam> MatchTeam(MatchTeam matchTeam) {
		log.info(matchTeam.getTeam_name());
		log.info(matchTeam.getMathcing_no());
		return sqlSessionTemplate.selectList(NS+"MatchTeamCalendar",matchTeam);
	}
	//7.멤버 아이디를 통해 멤버 번호를 불러오는 메서드, 파라메터 값은 멤버 아이디;
	@Override
	public int MemberNoById(String member_id) {	
		log.info(member_id);
		return sqlSessionTemplate.selectOne(NS+"MamberNoById", member_id);
	}
	//8.매칭상세정보에서 삭제하는 메서드. 파라메터값은 get방식의 매칭번호;
	@Override
	public int MatchListRemove(int mathcing_no) {
		log.info(mathcing_no);
		int resultNum = sqlSessionTemplate.delete(NS+"MatchListRemove", mathcing_no);
		if(resultNum == 1) {
			sqlSessionTemplate.delete(NS+"MatchTeamRemove", mathcing_no);
		}else {
			resultNum += 2;
		}
		return resultNum;
	}
	//9.매칭팀에서 같은 번호를 가진 글의 숫자를 불러오는 메서드, 현재 사용처 없음.
	@Override
	public int MatchTeamCount(int mathcing_no) {
		log.info(mathcing_no + " : MatchTeamCount");
		return sqlSessionTemplate.selectOne(NS+"MatchTeamCount", mathcing_no);
	}
	//10.매치 팀 add, 홈팀추가 방법만 넣어둠... 어웨이도 따로 만들어야 함...
	@Override
	public int MatchTeamAdd(HttpServletRequest req, String team_name) {
		//1-matchTeam에 받아온 정보를 넣는다.
		matchTeam.setMathcing_no(Integer.parseInt(req.getParameter("mathcing_no")));
		matchTeam.setMathcing_date(req.getParameter("mathcing_date"));
		matchTeam.setGround_no(Integer.parseInt(req.getParameter("ground_no")));
		matchTeam.setMatching_type_code(1);
		matchTeam.setTeam_name(team_name);	
		//2-정보를 확인한다.
		log.info("---------------10.MatchTeamAdd----------------");
		log.info(matchTeam.getMathcing_no());
		log.info(matchTeam.getMathcing_date());
		log.info(matchTeam.getGround_no());
		log.info(matchTeam.getMatching_type_code());
		log.info(matchTeam.getTeam_name());
		log.info(matchTeam);
		log.info("---------------10.MatchTeamAdd----------------");
		return sqlSessionTemplate.insert(NS+"MatchTeamInsert", matchTeam);
	}
	//11.매치 리스트에서 상세정보 글의 매치신청을 누를시에 자동으로 매치팀에 나머지 부분을 채워넣으면서 대기상태를 성사상태로 바꾸는 메서드.
		//1-매칭번호를 가지고 매칭팀에 들어가는 정보들을 불러옴
		@Override
		public List<MatchTeam> MatchTeamSelect(int mathcing_no) {
			List<MatchTeam> list = sqlSessionTemplate.selectList(NS+"MatchTeamSelect", mathcing_no);		
			return list;
		}
		//2-가공된 정보를 이용하여 매칭팀 정보에 어웨이팀 정보를 입력한다.
		@Override
		public int MatchTeamInsert(MatchTeam matchTeam) {		
			return sqlSessionTemplate.insert(NS+"MatchTeamInsert", matchTeam);
		}
		//3-매칭 정보에 대기를 성사로 변경한다.
		@Override
		public int MatchUpdate(Match match) {						
			return sqlSessionTemplate.update(NS+"MatchUpdate", match);				
		}
	
	//12.인덱스에 리스트에서 자신이 쓴 글중 성사된 것만 가져와서 보여주는 메서드
		public List<Match> MatchVS(String member_id){						
			return sqlSessionTemplate.selectList(NS+"MatchListByMId", member_id);
		}
}
