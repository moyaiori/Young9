package kr.or.kosta.binning.young9.member.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.kosta.binning.young9.member.domain.Member;
import kr.or.kosta.binning.young9.member.service.MemberService;

/** 사용자 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/member")
public class MemberController {
	
	Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;

	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value="/regist", method=RequestMethod.GET)
	public String regist(Model model){
		model.addAttribute("contentFile", "../member/regist.jsp");
		return "template/template";
	}


	/*로그인 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model model, HttpServletResponse response, String email, String passwd){
		
		Member member = memberService.login(email, passwd);
		System.out.println(member);
		
		Cookie cookie = null;
		try {
			cookie = new Cookie("loginInfo", email+"," + URLEncoder.encode(member.getNickname(),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			logger.debug("[DEBUG] : " + e.toString());
			e.printStackTrace();
		}
		
		cookie.setPath("/");
		response.addCookie(cookie);
		
		model.addAttribute("contentFile", "../main/main.jsp");
		return "template/template";
	}

    /*회원가입 */
    @RequestMapping(value="/registdb",  produces="text/plain;charset=UTF-8", method=RequestMethod.POST) 
    public @ResponseBody String insert(Model model,@ModelAttribute("member") Member member){
       logger.debug("[registdb] 컨트롤러 접속");
       memberService.regist(member);
 
       return "회원이 되신걸 환영합니다.";
    }

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request, HttpServletResponse response){
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("loginInfo")){
					cookie.setPath("/");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}			
		}
		
		model.addAttribute("contentFile", "../main/main.jsp");	
		return "/template/template";
	}
	
	
	/*
	 * 			
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("loginId")){
					cookie.setPath("/");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}				
			}			
		}
	 * */
	

	// --------참고사항 --------//
	
/*	@RequestMapping(value="/registProc", method=RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("user") Member user){
		
		logger.debug("사용자: " + user);
		return "template/template";
	}*/
	@RequestMapping(value="/myinfo", method=RequestMethod.GET)
	public String myInfo(Model model){
		model.addAttribute("contentFile", "../member/myInfo.jsp");
		return "template/template";		
	}
	
	
	
	/** 요청헤더 읽기 */
	@RequestMapping("/header")
	public String getHeader(Model model, @RequestHeader("user-agent") String userAgent){
		logger.debug("요청헤더의 user-agent: " + userAgent);
		return "member/list";
	}

	
	/** 로그인 - 서블릿 API를 이용하여 쿠키 읽기 */
	/*
	@RequestMapping("/readcookie")
	public String userHome(Model model, HttpServletRequest request){
		String cookieValue = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for (Cookie cookie : cookies) {
				String cookieName = cookie.getName();
				if(cookieName.equalsIgnoreCase("loginId")){
					cookieValue = cookie.getValue();
				}
			}
		}
		logger.debug("로그인 아이디: " + cookieValue);
		
		return "user/list";
	}
	*/

	// 쿠키에 있는 값을 가져온다(value=쿠키 이름, required 쿠키값이 없을 때 exception, defaultValue 없으면 guest로 쿠키 값을 설정)
	// 위에 코드와 똑같은 코드이다
	@RequestMapping("/readcookie")
	public String userHome(Model model, @CookieValue(value="loginId", required=false, defaultValue="Guest") String loginId){
		logger.debug("로그인 아이디: " + loginId);
		return "member/list";
	}
	
	/** JSON 응답 처리 샘플2 - 권장 */
	/**
	 * @ResponseBody를 사용하면 해당 콘트롤러 메소드에서 리턴하는 값이 바로 응답 바디가 되므로
	 * 다른 뷰로 사용하지 않고도 간단한 응답을 클라이언트에게 직접 전송할 수 있다
	 * 주로 AJAX 요청에 대한 XML, JSON 응답 처리 시 사용
	 * pom.xml에 jackson json 라이브러리 추가 필요
	 */
	@RequestMapping(value = "/json2", produces="text/plain; charset=utf8") // 한글이 포함될 수 있기 때문에 포함
	public  @ResponseBody String json2(Model model){ // 리턴타입이 논리적 이름이 아닌 Entity Body문에 들어감 
		String sampleJson = "{\"id\": \"bangry\", \"passwd\" : \"1234\", \"name\" : \"김기정\"}";
		return sampleJson;
	}
	
	/** JSON 응답 처리 샘플3 - 권장 */
	// 위는 User객체를 가져와서 setter메소드로 동적으로 만들어줘야함
	// 하지만 리턴 타입을 도메인 객체(User 객체)로 해주면 user객체 안의 property를
	// 자동으로 json형태로 만들어준다.
/*	@RequestMapping(value = "/json3")
	public  @ResponseBody Member json3(Model model){
	//	Member user = new Member("bangry", "김기정", "1234");
	//	return user;
	}*/
	
	/** JSON 응답 처리 샘플4 - 권장 */
	// DB에서 동적인 데이터를 가져올 경우 리턴 타입을 map으로 사용한다.
	@RequestMapping(value = "/json4")
	public  @ResponseBody Map<String, Object> json4(Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", "bangry");
		map.put("name", "김기정");
		map.put("passwd", "1234");
		map.put("address", "서울시 동작구");
		return map;
	}
}
