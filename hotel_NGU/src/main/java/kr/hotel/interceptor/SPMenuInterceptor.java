package kr.hotel.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.hotel.domain.GpackCommand;
import kr.hotel.service.GpackService;
import kr.hotel.util.PagingUtil;

public class SPMenuInterceptor extends HandlerInterceptorAdapter{

	private Logger log = Logger.getLogger(this.getClass());

	   @Resource
	   GpackService gpService;
	   //@Resource
	   //EventService evService;
	   
	   @Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

	      if(log.isDebugEnabled()) {
	         log.debug("=====SPMenuInterceptor ����======");
	      }
	      
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("keyfield", "");
	      map.put("keyword", "");
	      
	      // �� ���� ���� �Ǵ� �˻��� ���� ����
	      int count = gpService.getRowCount(map);
	      //int count2 = evService.getRowCount(map);
	      
	      if(log.isDebugEnabled()){
	         log.debug("<<count>> : " + count);
	      }
	      
	      PagingUtil page = new PagingUtil("", "", 1, count, 50,10,"list.do");
	      
	      map.put("start", page.getStartCount());
	      map.put("end", page.getEndCount());
	      
	      List<GpackCommand> list = null;
	      if(count > 0){
	         list = gpService.list(map);
	      }
	      
	      request.setAttribute("gpleftbar", list);
	      
	      return true;   
	   }

}








