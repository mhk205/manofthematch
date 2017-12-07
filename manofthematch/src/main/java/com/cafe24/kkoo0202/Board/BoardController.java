package com.cafe24.kkoo0202.Board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	@Autowired
	BoardServiceInterface boardService;
	
	//전체리스트보기
	@RequestMapping(value = "/BoardAllList", method = RequestMethod.GET)
	public String boardAllList(Model model
								, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage)
	{
		System.out.println("BoardController의 boardAllList호출");
		System.out.println("currentPage : " + currentPage);
		//페이징을 위한 변수 선언 및 전체 게시글의 수
		int boardCount = boardService.boardAllListCount();
		//한화면에 10개씩 보열 줄꺼임
		int pagePerRow = 10;
		int lastPage = (int)(Math.ceil(boardCount / (float) pagePerRow));
		int nextPage = currentPage + 1;
		if(lastPage < nextPage) nextPage = currentPage;
		
		List<Board> list = boardService.boardAllList(currentPage, pagePerRow);
		model.addAttribute("list", 			list);
		model.addAttribute("currentPage", 	currentPage);
		model.addAttribute("nextPage", 		nextPage);
		model.addAttribute("boardCount", 	boardCount);
		model.addAttribute("lastPage", 		lastPage);
		
		System.out.println("boardCount : " + boardCount);
		System.out.println("lastPage : " + lastPage);
		System.out.println("nextPage : " + nextPage);
		System.out.println("pagePerRow : " + pagePerRow);
		System.out.println("currentPage : " + currentPage);
		return "Board/BoardList";
	}
	
	//게시글 추가 (처리)
	@RequestMapping(value = "/BoardAdd", method = RequestMethod.POST)
	public String boardAdd(Board board)
	{
		System.out.println("BoardController의 boardAdd호출(post)");
		boardService.boardAdd(board);
		return "redirect:/BoardAllList";
	}
	
	//게시글 추가 폼으로 이동
	@RequestMapping(value = "/BoardAdd", method = RequestMethod.GET)
	public String boardAdd()
	{
		System.out.println("BoardController의 boardAdd호출(get)");
		return "Board/BoardAdd";
	}
	
	//글 상세 내용 요청
	@RequestMapping(value="/BoardView", method = RequestMethod.GET)
	public String boardView(Model model, @RequestParam(value="boardNo", required=true) int boardNo)
	{
		System.out.println("BoardController의 boardView호출");
		Board board = boardService.boardView(boardNo);
		model.addAttribute("board", board);
        
		return "Board/BoardView";
	}
	
	// 글 수정 폼 요청
	@RequestMapping(value="/BoardModify", method = RequestMethod.GET)
	public String boardModify(Model model
							, @RequestParam(value="boardNo", required=true) int boardNo)
	{
		System.out.println("BoardController의 boardModify호출");
		Board board = boardService.boardView(boardNo);
		model.addAttribute("board", board);
		return "Board/BoardModify";
	}
	
	// 글 수정 요청
	@RequestMapping(value="/BoardModify", method = RequestMethod.POST)
	public String boardModify(Board board)
	{
		boardService.boardModify(board);
		return "redirect:/BoardView?boardNo="+board.getBoardNo();
	}
	
	// 글 삭제 폼 요청(비밀번호 입력 폼)
	@RequestMapping(value="/BoardRemove", method = RequestMethod.GET)
	public String boardRemove(@RequestParam(value="boardNo", required=true) int boardNo)
	{
		System.out.println("BoardController의 boardRemove호출(get)");
		return "Board/BoardRemove";
	}
	
	// 글 삭제 요청
	@RequestMapping(value="/BoardRemove", method = RequestMethod.POST)
	public String boardRemove(@RequestParam(value="boardNo", required=true) int boardNo
							, @RequestParam(value="boardPw", required=true) String boardPw)
	{
		System.out.println("BoardController의 boardRemove호출(post)");
		boardService.boardRemove(boardNo, boardPw);
		return "redirect:/BoardAllList";
	}
}
