package com.cafe24.kkoo0202.Match;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.kkoo0202.Login.Login;




@Controller
public class MatchController {
	
	private static Logger log = Logger.getLogger(MatchController.class);
	
	@Autowired
	private MatchDao matchDao;
	
	@Autowired
	private PlayerDao playerDao;
	
	@Autowired
	private MatchService matchService;
	
	@Autowired
	private GroundDao groundDao;
	
	@Autowired
	private HttpSession session;
	
	//매치 메뉴의 달력 부분으로 가는 컨트롤러, 현재 기능이 구현되어있지 않으며, 또한 서비스로 보내야 할 기능들이 산재되어 있다.
	//정리할 것.
	@RequestMapping(value="/MatchIndex", method=RequestMethod.GET)
	public String MatchIndex(Model model, HttpSession session) {
		String MapValue = null;		
		if(session.getAttribute("loginfor") == null) {
			model.addAttribute("msg", "log-in plz"); 
			model.addAttribute("url", "../kkoo0202/Home"); 
			MapValue = "Match/MatchAlert";
		}else{
			Login loginfor = (Login) session.getAttribute("loginfor");		
			String member_id = loginfor.getMemberId();
			model.addAttribute("MatchVS", matchDao.MatchVS(member_id));
			MapValue = "Match/MatchIndex";					
		}
		return MapValue;
	}
	//매칭 추가로 가는 컨트롤러, 비로그인시 접근불가설정이 되어 있으며, Match_no와 Ground_Name을 받아가고 있다.
	//if문 안쓰고 서비스로 처리하고 싶기는 하다.
	@RequestMapping(value="/MatchAdd", method=RequestMethod.GET)
	public String MatchAdd(Model model,  HttpSession session) {
		String MapValue = null;
		if(session.getAttribute("loginfor") == null) {
			model.addAttribute("msg", "log-in plz"); 
			model.addAttribute("url", "../kkoo0202/Home"); 
			MapValue = "Match/MatchAlert";
		}else{
			model.addAttribute("MatchCount", matchDao.MatchCount());
			model.addAttribute("GroundList", groundDao.GroundSelect());
			MapValue = "Match/MatchAdd";
		}		
		return MapValue;
	}
	//추가시 insert하는 컨트롤러, 객체대신 req로 받는 이유는 charset이 이상해서 이다.
	@RequestMapping(value="/MatchAdd", method = RequestMethod.POST)
	public String MatchInsert(HttpServletRequest req, HttpServletResponse res) throws Exception {	
		req.setCharacterEncoding("UTF-8");
		int resultNum = matchService.MatchAddTeam(req);
		log.info(resultNum);
		return "redirect:/MatchList";
	}
	//리스트로 이동하는 컨트롤러인데, 페이징 작업이 안되어 있다. 
	//페이징 작업 처리요망
	@RequestMapping(value="/MatchList", method= {RequestMethod.GET, RequestMethod.POST})
	public String MatchList(Model model) {		
		for(Match M : matchDao.MatchList()) {
			int Match_No = M.getMathcing_no();
			log.info(Match_No + " : MatchCount");
			model.addAttribute("MatchCount", matchDao.MatchTeamCount(Match_No));
			log.info(matchDao.MatchTeamCount(Match_No) + " : MatchTeamCount Test1");
			model.addAttribute("MatchList", matchDao.MatchList());
		}		
		return "Match/MatchList";
	}	
	//상세보기 컨트롤러이다. 
	//서비스에서 처리해야 하는 작업들이 산재되어 있음. 처리요망.
	@RequestMapping(value="/Detail", method= {RequestMethod.GET, RequestMethod.POST})
	public String MatchListDetail(Model model,  
									@RequestParam(value="param", required=true ) int param) {
		log.info(param);
		List<Match> MatchList = matchDao.MatchListDetail(param); 
		model.addAttribute("MatchList", MatchList);
		log.info(MatchList);
		model.addAttribute("GroundList", groundDao.GroundSelectById(matchService.MatchListDetail2(param)));
		log.info(groundDao.GroundSelectById(matchService.MatchListDetail2(param)));
		List<Player> playerList = null;
		for(Match ML : MatchList) {
			String member_id = ML.getMember_id();
			log.info(member_id);
			int member_no = matchDao.MemberNoById(member_id);
			log.info(member_no);
			playerList = playerDao.PlayerList(member_no);
			log.info(playerList);
		}
		model.addAttribute("PlayerList", playerList);
		log.info(playerList);
		return "Match/MatchListDetail";
	}	
	//매칭 리스트에서 글을 삭제하는 컨트롤러. 매칭의 글만 사라지는게 아니라. 매칭팀의 기록까지 같이 삭제되게 만들었다. 문제는 트랜젝션 처리가 아니라 단순처리해버린게 문제.
	//트랜젝션 처리를 하고 싶지만, 설정을 맘대로 바꾸면 에러날꺼 같더라...
	@RequestMapping(value = "/MatchListRemove", method = RequestMethod.GET)
	public String MatchListRemove(@RequestParam(value="param", required=true ) int param) {
		log.info(param+" Mat No");
		int resultNum = matchDao.MatchListRemove(param);
		log.info(resultNum);
		return "redirect:/MatchList";
	}
	//매칭 신청 컨트롤러.
	@RequestMapping(value="/MatchListupdate", method = RequestMethod.GET)
	public String MatchListupdate(@RequestParam(value="param", required=true ) int param, HttpSession session) {
		log.info(param);
		matchService.MatchTeamSeIn(param, session);
		return "redirect:/MatchList";
	}
}