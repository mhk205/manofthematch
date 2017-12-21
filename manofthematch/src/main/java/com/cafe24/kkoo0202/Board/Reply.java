package com.cafe24.kkoo0202.Board;

public class Reply {
	private int replyNo;
	private int boardNo;
	private String replyContent;
	private String replyWriter;
	private String replyPw;
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyWriter() {
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}
	public String getReplyPw() {
		return replyPw;
	}
	public void setReplyPw(String replyPw) {
		this.replyPw = replyPw;
	}
	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", boardNo=" + boardNo + ", replyContent=" + replyContent
				+ ", replyWriter=" + replyWriter + ", replyPw=" + replyPw + "]";
	}
	
	
}
