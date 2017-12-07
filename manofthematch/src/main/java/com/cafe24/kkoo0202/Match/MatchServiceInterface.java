package com.cafe24.kkoo0202.Match;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.transaction.annotation.Transactional;

public interface MatchServiceInterface {
	Map<String, Object> MatchAdd();
	Map<String, Object> MatchListDetail(int Match_no);
	int MatchListDetail2(int Match_no);
	
}
