package kr.hotel.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {

	private Logger log = Logger.getLogger(this.getClass());

	// 동작하면 인터셉트가 낚아채서 요청 호출
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		if(log.isDebugEnabled()) {
			log.debug("=====LoginCheckInterceptor 진입======");
		}
		// session 검사
		HttpSession session = request.getSession();
		if(session.getAttribute("user_id") == null) {
			// 로그인이 되지 않음
			if(log.isDebugEnabled()) {
				log.debug("======로그인되지 않아서 login.do 호출=======");
			}
			
			response.sendRedirect(request.getContextPath() + "/member/login.do");
			return false;	// 원래 요청 호출하지 않을 때
		}
		
		return true;	// 원래 요청 호출할 때
	}
	
	
}
