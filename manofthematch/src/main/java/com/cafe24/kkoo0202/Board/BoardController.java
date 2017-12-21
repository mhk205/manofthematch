package com.cafe24.kkoo0202.Board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.kkoo0202.Login.*;
import com.cafe24.kkoo0202.Member.*;

import com.cafe24.kkoo0202.Login.*;

@Controller
public class BoardController {
	@Autowired
	BoardServiceInterface boardService;
	
	@Autowired
	private HttpSession session;
	
	//?꾩껜由ъ뒪?몃낫湲?
	@RequestMapping(value = "/BoardAllList", method = RequestMethod.GET)
	public String boardAllList(Model model
								, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage)
	{
		System.out.println("BoardController??boardAllList?몄텧");
		System.out.println("currentPage : " + currentPage);
		//?섏씠吏뺤쓣 ?꾪븳 蹂???좎뼵 諛??꾩껜 寃뚯떆湲????
		int boardCount = boardService.boardAllListCount();
		//?쒗솕硫댁뿉 10媛쒖뵫 蹂댁뿴 以꾧볼??
		//밑에 페이징 할떄 나타낼 수
		int countPerPage = 10;
		/*
		currentPage		startPage								endPage
		1				1 : (currentPage-1)/countPerPage*countPerPage+1		10 : startPage+countPerPage-1
		2				1			  							10
		10				1										10
		11				11 : 11/countPerPage +1=11							20
		12				11 : 12/cou +1=11 
		*/
		//1~10은 첫번째 수 가 1, 11~20은 첫번쨰 수가 11, 21~30은 첫번째 수가 21인 공식
		int startPageCount = (currentPage-1)/countPerPage*countPerPage+1;
		//1~10은 마지막 수 가 10, 11~20은 마지막 수가 20, 21~30은 마지막 수가 30인 공식
		int endPageCount = startPageCount+countPerPage-1; //20
		// endPage
		//총 튜플수
		
		//반복문 초기화 변수
		int i = 0;
		int pagePerRow = 10;
		int lastPage = (int)(Math.ceil(boardCount / (float) pagePerRow));
		int nextPage = currentPage + 1;
		if(lastPage < nextPage) nextPage = currentPage;
		int totalCount = boardService.boardAllListCount();
		int endPage = totalCount/pagePerRow; // 11
		int startRow = (currentPage-1) * pagePerRow + 1; // 1page -> 1
		int endRow = startRow + pagePerRow - 1; // 1page -> 10
		List<Board> list = boardService.boardAllList(currentPage, pagePerRow);
		
		model.addAttribute("currentPage", 	currentPage);
		model.addAttribute("boardCount", 	boardCount);
		model.addAttribute("countPerPage", 		countPerPage);
		model.addAttribute("startPageCount", 		startPageCount);
		model.addAttribute("endPageCount", 		endPageCount);
		model.addAttribute("i", 		i);
		model.addAttribute("pagePerRow", 		pagePerRow);
		model.addAttribute("lastPage", 		lastPage);
		model.addAttribute("nextPage", 		nextPage);
		model.addAttribute("totalCount", 		totalCount);
		model.addAttribute("endPage", 		endPage);
		model.addAttribute("startRow", 		startRow);
		model.addAttribute("endRow", 		endRow);
		model.addAttribute("list", 			list);
		
		System.out.println("currentPage : " + currentPage);
		System.out.println("boardCount : " + boardCount);
		System.out.println("countPerPage : " + countPerPage);
		System.out.println("startPageCount : " + startPageCount);
		System.out.println("endPageCount : " + endPageCount);
		System.out.println("i : " + i);
		System.out.println("pagePerRow : " + pagePerRow);
		System.out.println("lastPage : " + lastPage);
		System.out.println("nextPage : " + nextPage);
		System.out.println("totalCount : " + totalCount);
		System.out.println("endPage : " + endPage);
		System.out.println("startRow : " + startRow);
		System.out.println("endRow : " + endRow);
		System.out.println("list : " + list);
		
		return "Board/BoardList";
	}
	
	//寃뚯떆湲 異붽? (泥섎━)
	@RequestMapping(value = "/BoardAdd", method = RequestMethod.POST)
	public String boardAdd(Board board)
	{
		System.out.println("BoardController??boardAdd?몄텧(post)");
		boardService.boardAdd(board);
		return "redirect:/BoardAllList";
	}
	
	//寃뚯떆湲 異붽? ?쇱쑝濡??대룞
	@RequestMapping(value = "/BoardAdd", method = RequestMethod.GET)
	public String boardAdd(Model model, HttpSession session)
	{
		String MapValue = null;
		if(session.getAttribute("loginfor") == null)
		{
			MapValue = "Home";
		}
		else
		{
			MapValue = "Board/BoardAdd";
		}
		
		System.out.println("BoardController??boardAdd?몄텧(get)");
		return MapValue;
	}
	
	//湲 ?곸꽭 ?댁슜 ?붿껌
	@RequestMapping(value="/BoardView", method = RequestMethod.GET)
	public String boardView(Model model, Reply reply, @RequestParam(value="boardNo", required=false) int boardNo)
	{
		System.out.println("BoardController??boardView?몄텧");
		Board board = boardService.boardView(boardNo);
		List<Reply> replyList = boardService.replyList(reply);
		model.addAttribute("board", board);
		model.addAttribute("replyList", replyList);
        
		return "Board/BoardView";
	}
	
	// 湲 ?섏젙 ???붿껌
	@RequestMapping(value="/BoardModify", method = RequestMethod.GET)
	public String boardModify(Model model
							, @RequestParam(value="boardNo", required=true) int boardNo
							, HttpSession session)
	{
		String MapValue = null;
		System.out.println("BoardController??boardModify?몄텧");
		if(session.getAttribute("loginfor") == null)
		{
			MapValue = "Home";
			return MapValue;
		}
		Board board = boardService.boardView(boardNo);
		Login login = new Login();
		login = (Login) session.getAttribute("loginfor");
		System.out.println("-----------------------" + login.getMemberId());
		String a1 = login.getMemberId();
		System.out.println("-----------------------------------" + board.getMemberId());
		String a2 = board.getMemberId();
		if(a1.equals(a2))
		{
			MapValue = "Board/BoardModify";
			
		} 
		else
		{
			MapValue = "Home";
		}
		model.addAttribute("board", board);
		System.out.println("MapValue: " + MapValue);
		return MapValue;
	}
	
	// 湲 ?섏젙 ?붿껌
	@RequestMapping(value="/BoardModify", method = RequestMethod.POST)
	public String boardModify(Board board)
	{
		boardService.boardModify(board);
		return "redirect:/BoardView?boardNo="+board.getBoardNo();
	}
	
	// 湲 ??젣 ???붿껌(鍮꾨?踰덊샇 ?낅젰 ??
	@RequestMapping(value="/BoardRemove", method = RequestMethod.GET)
	public String boardRemove(@RequestParam(value="boardNo", required=true) int boardNo, HttpSession session)
	{
		String MapValue = null;
		System.out.println("BoardController??boardRemove?몄텧(get)");
		if(session.getAttribute("loginfor") == null)
		{
			MapValue = "Home";
			return MapValue;
		}
		Board board = boardService.boardView(boardNo);
		Login login = new Login();
		login = (Login) session.getAttribute("loginfor");
		System.out.println("-----------------------" + login.getMemberId());
		String a1 = login.getMemberId();
		System.out.println("-----------------------------------" + board.getMemberId());
		String a2 = board.getMemberId();
		if(a1.equals(a2))
		{
			MapValue = "Board/BoardRemove";
			
		} 
		else
		{
			MapValue = "Home";
		}
		return MapValue;
	}
	
	// 湲 ??젣 ?붿껌
	@RequestMapping(value="/BoardRemove", method = RequestMethod.POST)
	public String boardRemove(@RequestParam(value="boardNo", required=true) int boardNo)
	{
		System.out.println("BoardController??boardRemove?몄텧(post)");
		boardService.boardRemove(boardNo);
		return "redirect:/BoardAllList";
	}
	
	/*	
	// replyInsert ��
	@RequestMapping(value="/replyInsert", method=RequestMethod.GET)
	public String replyInsert(){
		return "replyInsert";
	}
	*/
	// replyInsert
	@RequestMapping(value="/replyInsert", method=RequestMethod.POST)
	public String replyInsert(Board board , Reply reply, Model model){
		System.out.println("컨트롤러에서 replyInsert");
		System.out.println("Board board:" + board);
		System.out.println("Reply reply:" + reply);
		boardService.replyInsert(reply);
		board = boardService.boardView(board.getBoardNo());
		List<Reply> replyList = boardService.replyList(reply);
		model.addAttribute("board", board);
		model.addAttribute("replyList", replyList);
		return "Board/BoardView";
	}
	
	// replyList
	@RequestMapping(value="/replyList", method=RequestMethod.GET)
	public String replyList(Reply reply){
		System.out.println("컨트롤러에서 replyList");
		boardService.replyList(reply);
		return "Board/BoardList";
	}
/*	replyModify ����!!!
	// replyModify ��
	@RequestMapping(value="/replyModify", method=RequestMethod.GET)
	public String replyModify(Article article, Reply reply, Model model){
		article = boardService.articleDetail(article);
		List<Reply> replyList = boardService.replyList(reply);
		model.addAttribute("article", article);
		model.addAttribute("replyList", replyList);
		return "articleDetail";
	}
	
	// replyModify
	@RequestMapping(value="/replyModify", method=RequestMethod.POST)
	public String replyModify(Reply reply){
		boardService.replyModify(reply);
		return "articleDetail";
	}
	*/
/*	// replyDelete ��
	@RequestMapping(value="/replyDelete", method=RequestMethod.GET)
	public String replyDelete(Reply reply, Model model){
		reply = boardService.replyDetail(reply);
		model.addAttribute("reply", reply);
		return "replyDelete";
	}
	*/
	// replyDelete
	@RequestMapping(value="/replyDelete", method=RequestMethod.GET)
	public String replyDelete(@RequestParam(value = "replyNo", required = false) int replyNo, Model model, @RequestParam(value = "boardNo",  required = false) int boardNo, HttpSession session){
		System.out.println("BoardController의 replyDelete메서드 호출" );
		System.out.println("replyNo:" + replyNo);
		Reply reply = boardService.replyDetail(replyNo);
		System.out.println("reply:" + reply);
		System.out.println("boardNo:" + boardNo);
		List<Reply> replyList = boardService.replyList(reply);
		System.out.println("reply.getReplyWriter(): "  + reply.getReplyWriter());
		String MapValue = null;
		if(session.getAttribute("loginfor") == null)
		{
			MapValue = "Home";
			return MapValue;
		}
		Board board = boardService.boardView(boardNo);
		System.out.println("board:" + board);
		int boarNo = board.getBoardNo();
		Login login = new Login();
		login = (Login) session.getAttribute("loginfor");
		System.out.println("-----------------------" + login.getMemberId());
		String a1 = login.getMemberId();
		System.out.println("-----------------------------------" + reply.getReplyWriter());
		String a2 = reply.getReplyWriter();
		if(a1.equals(a2))
		{
			MapValue = "redirect:/BoardView";
			
		} 
		else
		{
			MapValue = "Home";
		}
	
		boardService.replyDelete(reply);
		System.out.println("BoardController의 replyDelete메서드 호출22" );
		model.addAttribute("boardNo", boardNo);
		model.addAttribute("board", board);
		model.addAttribute("replyList", replyList);
		return MapValue;
	}
}
