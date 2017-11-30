package com.cafe24.kkoo0202.Match;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class MatchController {
	
	private Logger log = Logger.getLogger(MatchController.class);
	
	@Autowired
	private MatchDao matchDao;
	
	@Autowired
	private GroundDao groundDao;
	
	//get방식?�� MemberAdd?���???�� 처리?��?�� 메서?��
	@RequestMapping(value="/MatchIndex", method=RequestMethod.GET)
	public String MatchIndex() {				
		return "Match/MatchIndex";
	}
	//post방식?�� MemberAdd?���???�� 처리?��?�� 메서?��
	//form ?��?�� name�?? ?��치하?�� 커맨?�� 객체�?? ?��?��
	@RequestMapping(value="/MatchAdd", method= {RequestMethod.GET, RequestMethod.POST})
	public String MatchAdd(Model model) {	
		model.addAttribute("GroundList", groundDao.GroundSelect());
		return "Match/MatchAdd";
	}
	@RequestMapping(value="/MatchInsert", method=RequestMethod.POST)
	public String MatchInsert(Match match) {
		int ResultRow = matchDao.MatchAdd(match);		
		return "Match/MatchList";
	}
	@RequestMapping(value="/MatchList", method= {RequestMethod.GET, RequestMethod.POST})
	public String MatchList(Model model) {
		model.addAttribute("MatchList", matchDao.MatchList());
		return "Match/MatchList";
	}	
}