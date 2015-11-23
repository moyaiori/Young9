package kr.or.kosta.binning.young9.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/*
 * 세션 로그인 체크 인터셉터
 * @author 김기정
 */
public class AuthCheckInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession(); // 매개변수 false : session이 없을 때 exception
		if(session != null){
			String loginId = (String)session.getAttribute("loginId");
			if(loginId != null)	return true;
		}
		
		response.sendRedirect(request.getContextPath() + "/user/loginForm");
		return false;
	}
}
