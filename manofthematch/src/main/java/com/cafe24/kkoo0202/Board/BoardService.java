package com.cafe24.kkoo0202.Board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BoardService implements BoardServiceInterface{
	
	@Autowired
    BoardDaoInterface boardDao;
	
	//전체 리스트 보기
	public List<Board> boardAllList(int currentPage, int pagePerRow)
	{
		System.out.println("BoardService의 boardAllList호출");
		return boardDao.boardAllList(currentPage, pagePerRow);
	}
	
	//전체 리스트의 수 보기
	public int boardAllListCount()
	{
		System.out.println("BoardService의 boardAllListCount호출");
		return boardDao.boardAllListCount();
	}
	//게시글 추가
	public int boardAdd(Board board)
	{
		System.out.println("BoardService의 boardAdd호출");
		
		System.out.println("board.boardCategoryNo :" + board.getBoardCategoryNo());
		System.out.println("board.boardName :" + board.getBoardName());
		System.out.println("board.boardContent :" + board.getBoardContent());
		System.out.println("board.boardFile :" + board.getBoardFile());
		
		return boardDao.boardAdd(board);
	}
	
	//해당 게시글의 상세 내역
	public Board boardView(int boardNo)
	{
		System.out.println("BoardService의 boardView호출");
		
		System.out.println("BoardService의boardNo : " + boardNo);
		
		return boardDao.boardView(boardNo);
	}
	
	//게시글 수정
	public int boardModify(Board board)
	{
		System.out.println("BoardService의 boardModify호출");
		return boardDao.boardModify(board);
	}
	
	//게시글 삭제
	public int boardRemove(int boardNo, String boardPw)
	{
		System.out.println("BoardService의 boardRemove호출");
		return boardDao.boardRemove(boardNo, boardPw);
	}
}
