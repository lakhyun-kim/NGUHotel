package kr.hotel.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.hotel.domain.LifeStyleCommand;

import kr.hotel.service.LifeStyleService;
import kr.hotel.util.PagingUtil;



@Controller
public class LifeStyleController {
	private Logger log = Logger.getLogger(this.getClass());
	
	private int rowCount = 50;
	private int pageCount = 10;
	
	@Resource
	private LifeStyleService lifestyleService;
	
	@RequestMapping("/lifestyle/list.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
								@RequestParam(value="keyfield",defaultValue="")String keyfield,
								@RequestParam(value="keyword",defaultValue="") String keyword
									){
		if (log.isDebugEnabled()) {
			log.debug("<<pageNum>> : " + currentPage);
			log.debug("<<keyfield>> : " + keyfield);
			log.debug("<<keyword>> : " + keyword);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		//�� ���� ���� �Ǵ� �˻��� ���� ����
		int count = lifestyleService.getRowCount(map);
		
		if (log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"list.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<LifeStyleCommand> list = null;
		if(count > 0){
			list = lifestyleService.list(map);
		}
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("lifestyleList");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml", page.getPagingHtml());
	
		return mav;
	}
	
	//Write~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	@RequestMapping(value="/lifestyle/write.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		String id = (String)session.getAttribute("user_id");//ȸ���� �����̱� ������ ���ǿ��� ���̵� ���´�
		
		LifeStyleCommand command = new LifeStyleCommand();
		command.setMem_id(id);
		model.addAttribute("command", command);
		
		return "lifestyleWrite";
	}
	@RequestMapping(value="/lifestyle/write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")@Valid LifeStyleCommand lifestyleCommand,BindingResult result,
														HttpServletRequest request){
			//��ȿ�� üũ
		
			//�۾���
		
		lifestyleService.insert(lifestyleCommand);
		
		return "redirect:/lifestyle/list.do";
	}
	
	
	
		   //�̹��� ���
		   @RequestMapping("/lifestyle/imageView.do")
		   public ModelAndView viewImage(@RequestParam("seq") int seq, @RequestParam("file")int file){
		      
			   LifeStyleCommand lifestyle = lifestyleService.selectLifeStyle(seq);
		      
		      ModelAndView mav = new ModelAndView();
		      mav.setViewName("imageView");
		      if(file==1){
		    	  mav.addObject("imageFile", lifestyle.getLif_topload());
			      mav.addObject("filename", lifestyle.getLif_topname());
		      }else if(file==2){
		    	  mav.addObject("imageFile", lifestyle.getLif_midload());
			      mav.addObject("filename", lifestyle.getLif_midname());
		      }else if(file==3){
		    	  mav.addObject("imageFile", lifestyle.getLif_lowload());
			      mav.addObject("filename", lifestyle.getLif_lowname());
		      }else if(file==4){
		    	  mav.addObject("imageFile", lifestyle.getLif_extraload());
			      mav.addObject("filename", lifestyle.getLif_extraname());
		      }else if(file==5){
				mav.addObject("imageFile", lifestyle.getLif_sliload1());
				mav.addObject("filename", lifestyle.getLif_sliname1());
			}else if(file==6){
				mav.addObject("imageFile", lifestyle.getLif_sliload2());
				mav.addObject("filename", lifestyle.getLif_sliname2());
			}else if(file==7){
				mav.addObject("imageFile", lifestyle.getLif_sliload3());
				mav.addObject("filename", lifestyle.getLif_sliname3());
			}else if(file==8){
				mav.addObject("imageFile", lifestyle.getLif_sliload4());
				mav.addObject("filename", lifestyle.getLif_sliname4());
			}else if(file==9){
				mav.addObject("imageFile", lifestyle.getLif_thload1());
				mav.addObject("filename", lifestyle.getLif_thname1());
			}else if(file==10){
				mav.addObject("imageFile", lifestyle.getLif_thload2());
				mav.addObject("filename", lifestyle.getLif_thname2());
			}else if(file==11){
				mav.addObject("imageFile", lifestyle.getLif_thload3());
				mav.addObject("filename", lifestyle.getLif_thname3());
			}else if(file==12){
				mav.addObject("imageFile", lifestyle.getLif_thload4());
				mav.addObject("filename", lifestyle.getLif_thname4());
			}
			return mav;
			}
		      
		   
		// �Ʒ� ������~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			@RequestMapping("/lifestyle/detail.do")
			public ModelAndView process(@RequestParam("seq") int seq){
				
				if (log.isDebugEnabled()) {
					log.debug("<<lif_seq>> : " + seq);
				}
				
				LifeStyleCommand lifestyle = lifestyleService.selectLifeStyle(seq);
				
				ModelAndView mav = new ModelAndView();
				mav.setViewName("lifestyleView");
				mav.addObject("lifestyle", lifestyle);
				
				return mav;
			}
		      

		     
			
			
		   //������Ʈ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		   
		   
			
		   @RequestMapping(value="/lifestyle/update.do",method=RequestMethod.GET)
			public String form(@RequestParam("seq")int seq, Model model){
			   LifeStyleCommand lifestyleCommand = lifestyleService.selectLifeStyle(seq);
				model.addAttribute("command", lifestyleCommand);
				
				
				
				return "lifestyleModify";
				
			}
			@RequestMapping(value="/lifestyle/update.do",method=RequestMethod.POST)
			public String submit(@ModelAttribute("command")@Valid LifeStyleCommand lifestyleCommand,
									BindingResult result, HttpSession session,
									HttpServletRequest request) throws Exception{
				
				if (log.isDebugEnabled()) {
					log.debug("<<lifestyleCommand>> : " + lifestyleCommand);
				}
				//�ۼ��� �ƴϸ� ������
				String user_id=(String)session.getAttribute("user_id");
				if (!user_id.equals(lifestyleCommand.getMem_id())) {
					throw new Exception("�α����� ���̵�� �ۼ��� ���� �ƴϱ� ������ ������ �� �����ϴ�.");
				}
				
				LifeStyleCommand lifestyle = lifestyleService.selectLifeStyle(lifestyleCommand.getLif_seq());
				
				if (result.hasErrors()) {
					//���� ���ϸ� ����
					lifestyleCommand.setLif_topname(lifestyle.getLif_topname());
					lifestyleCommand.setLif_midname(lifestyle.getLif_midname());
					lifestyleCommand.setLif_lowname(lifestyle.getLif_lowname());
					lifestyleCommand.setLif_extraname(lifestyle.getLif_extraname());
					
					return "lifestyleModify";
				}
				
				//���۵� ������ ���� ���
				if(lifestyleCommand.getTopload().isEmpty()){
					//���� ���� ����
					lifestyleCommand.setLif_topload(lifestyle.getLif_topload());
					lifestyleCommand.setLif_topname(lifestyle.getLif_topname());
					lifestyleCommand.setLif_midload(lifestyle.getLif_midload());
					lifestyleCommand.setLif_midname(lifestyle.getLif_midname());
					lifestyleCommand.setLif_lowload(lifestyle.getLif_lowload());
					lifestyleCommand.setLif_lowname(lifestyle.getLif_lowname());
					lifestyleCommand.setLif_extraload(lifestyle.getLif_extraload());
					lifestyleCommand.setLif_extraname(lifestyle.getLif_extraname());
				}
				
				//�ۼ���
				lifestyleService.update(lifestyleCommand);
				
				return "redirect:/lifestyle/list.do";
			}
			
			
			//�Ʒ��� Delete~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			
			
			@RequestMapping("/lifestyle/delete.do")
			public String submit(@RequestParam("seq") int seq, HttpSession session)throws Exception{
				if (log.isDebugEnabled()) {
					log.debug("<<seq>> : " + seq);
				}
				
				LifeStyleCommand lifestyleCommand = lifestyleService.selectLifeStyle(seq);
				String user_id = (String)session.getAttribute("user_id");
				if (!user_id.equals(lifestyleCommand.getMem_id())) {
					throw new Exception("�α����� ���̵�� �ۼ��� ���� �ƴϱ� ������ ������ �� �����ϴ�.");
					
				}
				//�� ����
				lifestyleService.delete(lifestyleCommand.getLif_seq());
				return "redirect:/lifestyle/list.do";
			}

			@RequestMapping("/lifestyle/lifestylePopup.do")
			public String popup(){
				return "lifestyle/lifestylePopup";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup2.do")
			public String popup2(){
				return "lifestyle/lifestylePopup2";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup3.do")
			public String popup3(){
				return "lifestyle/lifestylePopup3";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup4.do")
			public String popup4(){
				return "lifestyle/lifestylePopup4";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup5.do")
			public String popup5(){
				return "lifestyle/lifestylePopup5";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup6.do")
			public String popup6(){
				return "lifestyle/lifestylePopup6";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup7.do")
			public String popup7(){
				return "lifestyle/lifestylePopup7";
			}
			
			@RequestMapping("/lifestyle/lifestylePopup8.do")
			public String popup8(){
				return "lifestyle/lifestylePopup8";
			}
		   
}
