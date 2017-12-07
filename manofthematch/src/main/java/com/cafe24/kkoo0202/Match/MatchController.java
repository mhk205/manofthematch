package com.cafe24.kkoo0202.Match;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.kkoo0202.HomeController;



@Controller
public class MatchController {
	
	private static Logger log = Logger.getLogger(MatchController.class);
	
	@Autowired
	private MatchDao matchDao;
	
	@Autowired
	private MatchService matchService;
	
	@Autowired
	private GroundDao groundDao;
	
	@Autowired
	private HttpSession session;
	
	//get방식?�� MemberAdd?���???�� 처리?��?�� 메서?��
	@RequestMapping(value="/MatchIndex", method=RequestMethod.GET)
	public String MatchIndex(Model model) {
		MatchTeam matchTeam = new MatchTeam();
		matchTeam.setMathcing_no(1);
		matchTeam.setTeam_name("Arsenal");
		log.info(matchTeam);
		List<MatchTeam> list = matchDao.MatchTeam(matchTeam);
		for(MatchTeam MT : list) {
			Date MatchDate = MT.getMathcing_date();
			String Name = MT.getTeam_name();
			log.info(MatchDate);
			String matchDate = new SimpleDateFormat("yyyy-MM-dd").format(MatchDate);
			log.info(matchDate);
			String year = matchDate.substring(0, 4);
			String month = matchDate.substring(5, 7);
			String day = matchDate.substring(8, 10);
			log.info(year);
			log.info(month);
			log.info(day);
			model.addAttribute("Year", year);
			model.addAttribute("Month", month);
			model.addAttribute("Day", day);
			model.addAttribute("Name", Name);
		}		
		return "Match/MatchIndex";
	}
	//post방식?�� MemberAdd?���???�� 처리?��?�� 메서?��
	//form ?��?�� name�?? ?��치하?�� 커맨?�� 객체�?? ?��?��
	@RequestMapping(value="/MatchAdd", method=RequestMethod.GET)
	public String MatchAdd(Model model) {
		model.addAttribute("MatchCount", matchDao.MatchCount());
		model.addAttribute("GroundList", groundDao.GroundSelect());
		return "Match/MatchAdd";
	}
	@RequestMapping(value="/MatchAdd", method = RequestMethod.POST)
	public String MatchInsert(HttpServletRequest req, HttpServletResponse res) throws Exception {	
		req.setCharacterEncoding("UTF-8");
		matchDao.MatchAdd(req);		
		log.info(req.getParameter("matching_status_condition"));
		return "redirect:/MatchList";
	}
	@RequestMapping(value="/MatchList", method= {RequestMethod.GET, RequestMethod.POST})
	public String MatchList(Model model) {
		model.addAttribute("MatchList", matchDao.MatchList());
		return "Match/MatchList";
	}	
	
	@RequestMapping(value="/Detail", method= {RequestMethod.GET, RequestMethod.POST})
	public String MatchListDetail(Model model,  
									@RequestParam(value="param", required=true ) int param) {
		log.info(param);
		model.addAttribute("MatchList", matchDao.MatchListDetail(param));
		log.info(matchDao.MatchListDetail(param));
		model.addAttribute("GroundList", groundDao.GroundSelectById(matchService.MatchListDetail2(param)));
		log.info(groundDao.GroundSelectById(matchService.MatchListDetail2(param)));
		return "Match/MatchListDetail";
	}	
}