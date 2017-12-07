package com.cafe24.kkoo0202.Board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao implements BoardDaoInterface{
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.kkoo0202.Board.BoardMapper.";
	
	//리스트 전체 보기
	public List<Board> boardAllList(int currentPage, int pagePerRow)
	{
		System.out.println("BoardDao의 baordAllList호춣");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1) * pagePerRow);
		map.put("pagePerRow", pagePerRow);
		return sqlSessionTemplate.selectList(NS + "boardAllList", map);
	}
	
	//리스트의 전체 수 보기
	public int boardAllListCount()
	{
		System.out.println("BoardDao의 boardAllListCount호출");
		return sqlSessionTemplate.selectOne(NS + "boardAllListCount");
		
	}
	
	//리스트 추가
	public int boardAdd(Board board)
	{
		System.out.println("BoardDao의 boardAdd호출");	
		
		System.out.println("board.boardCategoryNo :" + board.getBoardCategoryNo());
		System.out.println("board.boardName :" + board.getBoardName());
		System.out.println("board.boardContent :" + board.getBoardContent());
		System.out.println("board.boardFile :" + board.getBoardFile());
		
		return sqlSessionTemplate.insert(NS + "boardAdd", board);
	}
	
	//해당 게시글의 상세 내역
	public Board boardView(int boardNo)
	{
		System.out.println("BoardDao의 boardView호출");
		
		System.out.println("BoardDao의 boardNo : " + boardNo);
		
		return sqlSessionTemplate.selectOne(NS + "boardView", boardNo);
	}
	
	//게시글 수정 처리
	public int boardModify(Board board)
	{
		System.out.println("BoardDao의 boardModify호출");
		return sqlSessionTemplate.update(NS + "boardModify", board);
	}
	
	//게시글 삭제 처리
	public int boardRemove(int boardNo, String boardPw)
	{
		System.out.println("BoardDao의 boardRemove호출");
		Board board = new Board();
		board.setBoardNo(boardNo);
		board.setBoardPw(boardPw);
		return sqlSessionTemplate.delete(NS + "boardRemove", board);
	}
}
