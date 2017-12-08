package com.cafe24.kkoo0202.Match;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface MatchDaoInterface {
	int MatchAdd(HttpServletRequest req);
	List<Match> MatchList();
	List<Match> MatchListDetail(int mathcing_no);
	int MatchCount();
	List<MatchTeam> MatchTeam(MatchTeam matchTeam);
}
