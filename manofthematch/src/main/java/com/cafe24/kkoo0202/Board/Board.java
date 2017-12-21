package com.cafe24.kkoo0202.Board;

import com.cafe24.kkoo0202.Login.*;

public class Board {
	private int boardNo;//private int bno;   articleNo;         // 게시글 번호
	private String memberNo;
	private String memberId;//  private String writer;        // 게시글 작성자
	private String boardNo2;
	private String boardCategoryNo;
	private String boardName;// private String title;    articleTitle;    // 게시글 제목
	private String boardContent;// private String content;   articleContent     // 게시글 내용
	private String boardDate;//private Date regdate;    articleDate    // 게시글 작성일자 util.Date
	private String boardFile;
	private String boardUsername;// private String userName;  articleWriter  // 게시글 작성자의 이름(회원이름)
    private int boardViewcnt;//private int viewcnt;        // 게시글 조회수
    private int boardRecnt;//private int recnt;   
    
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getBoardNo2() {
		return boardNo2;
	}
	public void setBoardNo2(String boardNo2) {
		this.boardNo2 = boardNo2;
	}
	public String getBoardCategoryNo() {
		return boardCategoryNo;
	}
	public void setBoardCategoryNo(String boardCategoryNo) {
		this.boardCategoryNo = boardCategoryNo;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}
	public String getBoardUsername() {
		return boardUsername;
	}
	public void setBoardUsername(String boardUsername) {
		this.boardUsername = boardUsername;
	}
	public int getBoardViewcnt() {
		return boardViewcnt;
	}
	public void setBoardViewcnt(int boardViewcnt) {
		this.boardViewcnt = boardViewcnt;
	}
	public int getBoardRecnt() {
		return boardRecnt;
	}
	public void setBoardRecnt(int boardRecnt) {
		this.boardRecnt = boardRecnt;
	}
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", memberNo=" + memberNo + ", memberId=" + memberId + ", boardNo2="
				+ boardNo2 + ", boardCategoryNo=" + boardCategoryNo + ", boardName=" + boardName + ", boardContent="
				+ boardContent + ", boardDate=" + boardDate + ", boardFile=" + boardFile + ", boardUsername="
				+ boardUsername + ", boardViewcnt=" + boardViewcnt + ", boardRecnt=" + boardRecnt + "]";
	}	
	
	
}
