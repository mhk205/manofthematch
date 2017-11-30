package com.cafe24.kkoo0202.Match;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface MatchServiceInterface {
	Map<String, Object> MatchAdd();
	/*List<Ground> MatchAdd();*/
}
