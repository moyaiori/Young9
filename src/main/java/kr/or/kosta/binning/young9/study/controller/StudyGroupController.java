package kr.or.kosta.binning.young9.study.controller;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.or.kosta.binning.young9.member.domain.Member;
import kr.or.kosta.binning.young9.member.service.MemberService;
import kr.or.kosta.binning.young9.study.domain.GroupMember;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;
import kr.or.kosta.binning.young9.study.service.StudyGroupService;
import kr.or.kosta.binning.young9.word.domain.Words;
import kr.or.kosta.binning.young9.word.service.WordsService;

/** 스터디그룹 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/study")
public class StudyGroupController {
	
	Logger logger = Logger.getLogger(StudyGroupController.class);
	
	@Autowired
	private StudyGroupService studyGroupService;
	
	@Autowired
	private WordsService wordsService;
	
	@Autowired
	private MemberService memberService;

	public StudyGroupService getStudyGroupService() {
		return studyGroupService;
	}

	public void setStudyGroupService(StudyGroupService studyGroupService) {
		this.studyGroupService = studyGroupService;
	}

	@RequestMapping("/add")
	public String add(Model model){
		return "";
	}
	
	@RequestMapping("/search")
	public String search(Model model){
		model.addAttribute("contentFile", "../searchStudy/search.jsp");
		return "template/template";
	}
	
	@RequestMapping(value="/searchProc", method=RequestMethod.POST)
	public String searchProc(Model model, String type, String searches, String term, String[] recruit, String[] testType, String endStudy){
		logger.debug("/searchProc");
		logger.debug("type : " + type);
		logger.debug("term : " + term);
		logger.debug("searches : " + searches);
		for (String string : recruit) {
			logger.debug("recruit : " + string);
		}
		for (String string : testType) {
			logger.debug("testType : " + string);
		}
		logger.debug("endStudy : " + endStudy);
		
		HashMap<String, Object> searchData = new HashMap<String, Object>();
		
		searchData.put("type", type);	// 검색어 타입
		searchData.put("term", term);	// 스터디 기간
		searchData.put("searches", searches);	// 검색어
		searchData.put("endStudy", endStudy);	// 종료된 스터디 검색여부
		searchData.put("recruit", recruit);		// 모집인원
		searchData.put("testType", testType);	// 시험종류
		
		List<StudyGroup>result = studyGroupService.serach(searchData);
		for (StudyGroup studyGroup : result) {
			logger.debug("studyGroup : " + studyGroup);
		}

		//model.addAttribute("contentFile", "../searchStudy/search.jsp");
		return null;
	}
	
	// 만들기 화면 페이지 이동
	@RequestMapping("/create")
	public String create(Model model){
		model.addAttribute("contentFile", "../createStudy/create.jsp");
		return "template/template";
	}
	
	// ㄹㅇ 만들긔
	@RequestMapping("/createProc")
	public String createProc(Model model, @ModelAttribute("studyGroup") StudyGroup studyGroup, HttpServletRequest request, @CookieValue(value="loginInfo", required=false) String loginInfo){
		
		// 쿠키정보라능(이메일과 닉네임이 들어있다능)
		String [] info = loginInfo.split(",");
		
		// 닉네임 셋팅
		studyGroup.setGroupOwner(info[1]); 
		
		//스터디 그룹 등록
		studyGroupService.insert(studyGroup);
		
		// 가장 최근 스터디그룹 가져옴
		StudyGroup group = studyGroupService.getRecent();
		
		/* JSON텍스트 형태로 오는 데이터를 파싱 */
		String jsonTxt = request.getParameter("words");
		JSONParser parser = new JSONParser();
		Object obj = null;
		
		try {
			obj = parser.parse(jsonTxt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		/* 단어 생성 */
		JSONArray array = (JSONArray) obj;
		for (int i = 0; i < array.size(); i++) {
			JSONObject jsonObj = (JSONObject)array.get(i);
			Words word = new Words();
			word.setStudyGroupId(group.getStudyGroupId());
			word.setWord((String) jsonObj.get("word"));
			word.setWordMeans((String) jsonObj.get("means"));
			wordsService.add(word);
		}
		
		// 모임 만든 아이 소속 모임에 포함
		HashMap<String , Object> data = new HashMap<String, Object>();
		data.put("studyGroupId", group.getStudyGroupId());
		data.put("email", info[0]);
		data.put("nickname", info[1]);
		data.put("groupName", group.getGroupName());		
		studyGroupService.join(data);
		
		// 모임만든아이 소속 변경
		Member member = new Member(info[0], info[1]);
		member.setStudyGroupId(group.getStudyGroupId());
		memberService.updateStudyId(member);
		
		// 나중에 게시판도 생성해야 될거같아욤(2015-11-22 유안상올림)
		
		model.addAttribute("contentFile", "../createStudy/detail.jsp");
		return "template/template";
	}
	
	@RequestMapping("/exit")
	public String exit(Model model){
		model.addAttribute("contentFile", "../myStudy/exit.jsp");
		return "template/template";
	}
	
	@RequestMapping("/exitProc")
	public void exitProc(@CookieValue(value="loginInfo", required=false) String loginInfo){
		// 맴버의 상태 변경
		
		
		// 그룹 멤버 테이블 변경
	}
	
	@RequestMapping("/kick")
	public String kick(Model model, @CookieValue(value="loginInfo", required=false) String loginInfo){
		model.addAttribute("contentFile", "../myStudy/kick.jsp");
		
		Member member = memberService.getMyInfo(loginInfo.split(",")[0]);
		
		List<GroupMember> groupMember = studyGroupService.getMyMember(member.getStudyGroupId());
		
		model.addAttribute("groupMember", groupMember);
		
		return "template/template";
	}
	
	@RequestMapping("/studyinfo")
	public String studyInfo(Model model, @CookieValue(value="loginInfo", required=false) String loginInfo){
		
		Member member = memberService.getMyInfo(loginInfo.split(",")[0]);
		
		StudyGroup group = studyGroupService.getMyGroup(member.getStudyGroupId());
		
		List<GroupMember> groupMember = studyGroupService.getMyMember(member.getStudyGroupId());
		
		model.addAttribute("group", group);
		model.addAttribute("groupMember", groupMember);
		
		model.addAttribute("contentFile", "../myStudy/studyInfo.jsp");
		return "template/template";
	}
	
	@RequestMapping("/setquiz")
	public String setQuiz(Model model){
		model.addAttribute("contentFile", "../myStudy/setQuiz.jsp");
		return "template/template";
	}
	
	@RequestMapping("/todayquiz")
	public String todayquiz(Model model){
		model.addAttribute("contentFile", "../myStudy/todayQuiz.jsp");
		return "template/template";
	}
	
	@RequestMapping("/viewrecord")
	public String viewRecord(Model model){
		model.addAttribute("contentFile", "../myStudy/viewRecord.jsp");
		return "template/template";
	}
	
	@RequestMapping("/quizlist")
	public String quizList(Model model){
		model.addAttribute("contentFile", "../myStudy/quizList.jsp");
		return "template/template";
	}
	
	@RequestMapping("/studyboard")
	public String board(Model model){
		model.addAttribute("contentFile", "../myStudy/studyBoard.jsp");
		return "template/template";
	}
}
