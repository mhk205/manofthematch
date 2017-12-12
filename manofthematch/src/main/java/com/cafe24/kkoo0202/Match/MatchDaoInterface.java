package com.cafe24.kkoo0202.Match;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface MatchDaoInterface {
	int MatchAdd(HttpServletRequest req);
	int MatchAdd(Match match);
	List<Match> MatchList();
	List<Match> MatchListDetail(int mathcing_no);
	int MatchCount();
	List<MatchTeam> MatchTeam(MatchTeam matchTeam);
	//멤버id로 no를 찾는다.
	int MemberNoById(String member_id);
	//매칭글 삭제
	int MatchListRemove(int mathcing_no);
	//매칭이 성사 되었는지 대기중인지 판별하기 위한 카운트 
	int MatchTeamCount(int mathcing_no);
	//매치가 저장되면 매치팀도 저장되도록 만들기
	int MatchTeamAdd(HttpServletRequest req, String team_name);
	//매치신청시 매치팀에 나머지 반쪽을 추가하고 매치에 있는 condition을 대기에서 성사로 바꾸는 매커니즘
	//1.매치팀 신청시 기존 정보를 불러온다.
	List<MatchTeam> MatchTeamSelect(int mathcing_no);
	//2.정보를 가공하여, 새롭게 저장한다.
	int MatchTeamInsert(MatchTeam matchTeam);
	//3.대기를 성사로 변경한다.
	int MatchUpdate(Match match);
	
}
