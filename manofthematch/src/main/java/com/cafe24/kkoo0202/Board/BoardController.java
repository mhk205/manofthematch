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
	public String boardView(Model model, @RequestParam(value="boardNo", required=true) int boardNo)
	{
		System.out.println("BoardController??boardView?몄텧");
		Board board = boardService.boardView(boardNo);
		model.addAttribute("board", board);
        
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
}
