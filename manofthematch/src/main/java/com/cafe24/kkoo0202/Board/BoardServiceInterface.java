package com.cafe24.kkoo0202.Board;

import java.util.List;



public interface BoardServiceInterface {
	public List<Board> boardAllList(int currentPage, int pagePerRow);
	public int boardAllListCount();
	public int boardAdd(Board board);
	public Board boardView(int boardNo);
	public int boardModify(Board board);
	public int boardRemove(int boardNo);
	public List<Reply> replyList(Reply reply);
	public int replyInsert(Reply reply);
	public int replyDelete(Reply reply);
	public Reply replyDetail(int replyNo);
}
