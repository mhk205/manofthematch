package com.cafe24.kkoo0202.Match;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.transaction.annotation.Transactional;

public interface MatchServiceInterface {
	Map<String, Object> MatchAdd();
	Map<String, Object> MatchListDetail(int Match_no);
	int MatchListDetail2(int Match_no);
	//매치 리스트에서 상세글을 클릭하면, 아이디로 멤버 번호를 찾아온다. 이후 찾아온 번호로 플레이어리스트를 검색하고, 거기서 팀 이름을 찾아온다.
	int MemberNoById(String member_id);
	//매치가 저장되면 매치팀도 저장되도록 만들기
	int MatchAddTeam(HttpServletRequest req);
	//매칭팀 정보를 가져와서, 가공후, 매칭팀 정보를 입력하는 메서드
	int MatchTeamSeIn(int mathcing_no, HttpSession session);
}
