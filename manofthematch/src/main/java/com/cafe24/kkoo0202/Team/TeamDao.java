package com.cafe24.kkoo0202.Team;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamDao {
	
	@Autowired
	private SqlSessionTemplate SST;
	
	private final String NS = "com.cafe24.kkoo0202.Team.TeamMapper.";
	
	// 팀생성 처리
	public int TeamAdd(Team team) {
		return SST.insert(NS+"TeamAdd",team);
		
	}
	
	// 팀 목록
	public List<Team> TeamList(){
		return SST.selectList(NS+"TeamList");
		
	}
	
	// 하나의 팀 만 불러오기
	public Team TeamOne(String teamName) {
		System.out.println("TeamDao의 TeamOne메솓드: " +teamName );
		return SST.selectOne(NS+"TeamOne", teamName);
		
	}
	
	
}
