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
	
	//由ъ뒪???꾩껜 蹂닿린
	public List<Board> boardAllList(int currentPage, int pagePerRow)
	{
		System.out.println("BoardDao??baordAllList?몄땃");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1) * pagePerRow);
		map.put("pagePerRow", pagePerRow);
		return sqlSessionTemplate.selectList(NS + "boardAllList", map);
	}
	
	//由ъ뒪?몄쓽 ?꾩껜 ??蹂닿린
	public int boardAllListCount()
	{
		System.out.println("BoardDao??boardAllListCount?몄텧");
		return sqlSessionTemplate.selectOne(NS + "boardAllListCount");
		
	}
	
	//由ъ뒪??異붽?
	public int boardAdd(Board board)
	{
		System.out.println("BoardDao??boardAdd?몄텧");	
		
		System.out.println("board.boardCategoryNo :" + board.getBoardCategoryNo());
		System.out.println("board.boardName :" + board.getBoardName());
		System.out.println("board.boardContent :" + board.getBoardContent());
		System.out.println("board.boardFile :" + board.getBoardFile());
		
		return sqlSessionTemplate.insert(NS + "boardAdd", board);
	}
	
	//?대떦 寃뚯떆湲???곸꽭 ?댁뿭
	public Board boardView(int boardNo)
	{
		System.out.println("BoardDao의boardView호출");
		
		System.out.println("BoardDao의boardNo : " + boardNo);
		
		return sqlSessionTemplate.selectOne(NS + "boardView", boardNo);
	}
	
	//寃뚯떆湲 ?섏젙 泥섎━
	public int boardModify(Board board)
	{
		System.out.println("BoardDao??boardModify?몄텧");
		return sqlSessionTemplate.update(NS + "boardModify", board);
	}
	
	//寃뚯떆湲 ??젣 泥섎━
	public int boardRemove(int boardNo)
	{
		System.out.println("BoardDao??boardRemove?몄텧");
		Board board = new Board();
		board.setBoardNo(boardNo);
		return sqlSessionTemplate.delete(NS + "boardRemove", board);
	}
	
	//댓글리스트
	public List<Reply> replyList(Reply reply)
	{
		System.out.println("BoardDao의replyList호춯");
		return sqlSessionTemplate.selectList(NS + "replyList", reply);
	}
	
	//댓글추가
	public int replyInsert(Reply reply)
	{
		System.out.println("BoardDao의replyInsert호춯");
		return sqlSessionTemplate.insert(NS + "replyInsert", reply);
	}
	
	//댓글삭제
	public int replyDelete(Reply reply)
	{
		System.out.println("BoardDao의replyDelete호춯");
		return sqlSessionTemplate.delete(NS + "replyDelete", reply);
	}
	
	//댓글삭제를 위해 뽑는쿼리??
	public Reply replyDetail(int replyNo)
	{
		System.out.println("BoardDao의replyDetail호춯");
		return sqlSessionTemplate.selectOne(NS + "replyDetail", replyNo);
	}
}
