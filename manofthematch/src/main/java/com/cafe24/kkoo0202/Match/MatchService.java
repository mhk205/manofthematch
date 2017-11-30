package com.cafe24.kkoo0202.Match;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

public class MatchService implements MatchServiceInterface{
	
	@Autowired
	private GroundDao groundDao;
	private Map<String,Object> map;
	
	@Override
	public Map<String,Object> MatchAdd() {
		List<Ground> list = groundDao.GroundSelect();		
		map.put("GroundList", list);		
		return map;
	}

/*	@Override
	public List<Ground> MatchAdd() {		
		return groundDao.GroundSelect();
	}*/

}
