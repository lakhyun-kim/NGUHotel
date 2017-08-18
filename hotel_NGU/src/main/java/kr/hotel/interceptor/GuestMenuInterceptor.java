package kr.hotel.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.hotel.domain.GuestCommand;
import kr.hotel.service.GuestService;
import kr.hotel.util.PagingUtil;

public class GuestMenuInterceptor extends HandlerInterceptorAdapter{

	private Logger log = Logger.getLogger(this.getClass());

	   @Resource
	   GuestService gueService;
	   
	   @Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

	      if(log.isDebugEnabled()) {
	         log.debug("=====GuestMenuInterceptor 진입======");
	      }
	      
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("keyfield", "");
	      map.put("keyword", "");
	      
	      // 총 글의 개수 또는 검색된 글의 개수
	      int count = gueService.getRowCount(map);
	      
	      if(log.isDebugEnabled()){
	         log.debug("<<count>> : " + count);
	      }
	      
	      PagingUtil page = new PagingUtil("", "", 1, count, 50,10,"list.do");
	      
	      map.put("start", page.getStartCount());
	      map.put("end", page.getEndCount());
	      
	      List<GuestCommand> list = null;
	      if(count > 0){
	         list = gueService.list(map);
	      }
	      
	      request.setAttribute("gueleftbar", list);
	      
	      return true;   
	   }

}








