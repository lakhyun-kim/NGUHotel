package kr.hotel.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.hotel.domain.WedingCommand;
import kr.hotel.service.WedingService;
import kr.hotel.util.PagingUtil;

public class WedingMenuInterceptor extends HandlerInterceptorAdapter {

   private Logger log = Logger.getLogger(this.getClass());

   @Resource
   WedingService wedingService;
   
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

      if(log.isDebugEnabled()) {
         log.debug("=====WedingMenuInterceptor ����======");
      }
      
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("keyfield", "");
      map.put("keyword", "");
      
      // �� ���� ���� �Ǵ� �˻��� ���� ����
      int count = wedingService.getRowCount(map);
      
      if(log.isDebugEnabled()){
         log.debug("<<count>> : " + count);
      }
      
      PagingUtil page = new PagingUtil("", "", 1, count, 50,10,"list.do");
      
      map.put("start", page.getStartCount());
      map.put("end", page.getEndCount());
      
      List<WedingCommand> list = null;
      if(count > 0){
         list = wedingService.list(map);
      }
      
      request.setAttribute("side_menu2", list);
      
      return true;   
   }
   
   
}