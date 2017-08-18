package kr.hotel.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.hotel.domain.LifeStyleCommand;
import kr.hotel.service.LifeStyleService;
import kr.hotel.util.PagingUtil;

public class LifeStyleMenuInterceptor extends HandlerInterceptorAdapter {

   private Logger log = Logger.getLogger(this.getClass());

   @Resource
   LifeStyleService lifestyleService;
   
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

      if(log.isDebugEnabled()) {
         log.debug("=====LifeStyleMenuInterceptor 진입======");
      }
      
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("keyfield", "");
      map.put("keyword", "");
      
      // 총 글의 개수 또는 검색된 글의 개수
      int count = lifestyleService.getRowCount(map);
      
      if(log.isDebugEnabled()){
         log.debug("<<count>> : " + count);
      }
      
      PagingUtil page = new PagingUtil("", "", 1, count, 50,10,"list.do");
      
      map.put("start", page.getStartCount());
      map.put("end", page.getEndCount());
      
      List<LifeStyleCommand> list = null;
      if(count > 0){
         list = lifestyleService.list(map);
      }
      
      request.setAttribute("side_menu", list);
      
      return true;   
   }
   
   
}