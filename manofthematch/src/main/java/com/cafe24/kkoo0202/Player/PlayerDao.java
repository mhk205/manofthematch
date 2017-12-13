package com.cafe24.kkoo0202.Player;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayerDao {
	
	@Autowired
	private SqlSessionTemplate SST;
	
	private final String NS = "com.cafe24.kkoo0202.Player.PlayerMapper.";

	// 플레이어 리스트
	public List<Player> PlayerList(){
		return SST.selectList(NS+"PlayerList");
	}
	
	// 한 팀의 플레이어 리스트
	public Player PlayerListOne(String teamName) {
		System.out.println("PlayerListOne메소드의 teamName :" + teamName);
		System.out.println("PlayerListOne메소드의 리턴 :" + SST.selectOne(NS+"PlayerListOne", teamName));
		return SST.selectOne(NS+"PlayerListOne", teamName);
	}

}