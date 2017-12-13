package com.cafe24.kkoo0202.Board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.kkoo0202.Login.*;

@Service
public class BoardService implements BoardServiceInterface{
	
	@Autowired
    BoardDaoInterface boardDao;
	
	//?꾩껜 由ъ뒪??蹂닿린
	public List<Board> boardAllList(int currentPage, int pagePerRow)
	{
		System.out.println("BoardService??boardAllList?몄텧");
		return boardDao.boardAllList(currentPage, pagePerRow);
	}
	
	//?꾩껜 由ъ뒪?몄쓽 ??蹂닿린
	public int boardAllListCount()
	{
		System.out.println("BoardService??boardAllListCount?몄텧");
		return boardDao.boardAllListCount();
	}
	//寃뚯떆湲 異붽?
	public int boardAdd(Board board)
	{
		System.out.println("BoardService??boardAdd?몄텧");
		
		System.out.println("board.boardCategoryNo :" + board.getBoardCategoryNo());
		System.out.println("board.boardName :" + board.getBoardName());
		System.out.println("board.boardContent :" + board.getBoardContent());
		System.out.println("board.boardFile :" + board.getBoardFile());
		
		return boardDao.boardAdd(board);
	}
	
	//?대떦 寃뚯떆湲???곸꽭 ?댁뿭
	public Board boardView(int boardNo)
	{
		System.out.println("BoardService??boardView?몄텧");
		
		System.out.println("BoardService?쁞oardNo : " + boardNo);
		
		return boardDao.boardView(boardNo);
	}
	
	//寃뚯떆湲 ?섏젙
	public int boardModify(Board board)
	{
		System.out.println("BoardService??boardModify?몄텧");
		return boardDao.boardModify(board);
	}
	
	//寃뚯떆湲 ??젣
	public int boardRemove(int boardNo)
	{
		System.out.println("BoardService??boardRemove?몄텧");
		return boardDao.boardRemove(boardNo);
	}
}
