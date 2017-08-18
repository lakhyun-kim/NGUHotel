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

import kr.hotel.domain.WedingCommand;
import kr.hotel.service.WedingService;
import kr.hotel.util.PagingUtil;



@Controller
public class WedingController {

private Logger log = Logger.getLogger(this.getClass());
	
	private int rowCount = 50;
	private int pageCount = 10;
	
	@Resource
	private WedingService wedingService;
	
	@RequestMapping("/weding/list.do")
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
		int count = wedingService.getRowCount(map);
		
		if (log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"list.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<WedingCommand> list = null;
		if(count > 0){
			list = wedingService.list(map);
		}
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("wedingList");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml", page.getPagingHtml());
	
		return mav;
	}
	
	//Write~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	
	@RequestMapping(value="/weding/write.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		String id = (String)session.getAttribute("user_id");//ȸ���� �����̱� ������ ���ǿ��� ���̵� ���´�
		
		WedingCommand command = new WedingCommand();
		command.setMem_id(id);
		model.addAttribute("command", command);
		
		return "wedingWrite";
	}
	@RequestMapping(value="/weding/write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")@Valid WedingCommand wedingCommand,BindingResult result,
														HttpServletRequest request){
			//��ȿ�� üũ
		
			//�۾���
		
		wedingService.insert(wedingCommand);
		
		return "redirect:/weding/list.do";
	}
	
	
	
			//���� �ٿ�ε�
			@RequestMapping("/weding/file.do")
			   public ModelAndView download(@RequestParam("seq") int seq){
			      
			     WedingCommand weding = wedingService.selectWeding(seq);
			     
			     ModelAndView mav = new ModelAndView();
			     mav.setViewName("downloadView");
			     mav.addObject("downloadFile", weding.getWed_extraload());
			     mav.addObject("filename", weding.getWed_extraname());
			      
			      return mav;
			   }
		//�̹��� ���
		   @RequestMapping("/weding/imageView.do")
		   public ModelAndView viewImage(@RequestParam("seq") int seq, @RequestParam("file")int file){
		      
			   WedingCommand weding = wedingService.selectWeding(seq);
		      
		      ModelAndView mav = new ModelAndView();
		      mav.setViewName("imageView");
		      if(file==1){
		    	  mav.addObject("imageFile", weding.getWed_topload());
			      mav.addObject("filename", weding.getWed_topname());
		      }else if(file==2){
		    	  mav.addObject("imageFile", weding.getWed_midload());
			      mav.addObject("filename", weding.getWed_midname());
		      }else if(file==3){
		    	  mav.addObject("imageFile", weding.getWed_lowload());
			      mav.addObject("filename", weding.getWed_lowname());
		      }else if(file==4){
		    	  mav.addObject("imageFile", weding.getWed_extraload());
			      mav.addObject("filename", weding.getWed_extraname());
		      }else if(file==5){
				mav.addObject("imageFile", weding.getWed_sliload1());
				mav.addObject("filename", weding.getWed_sliname1());
			}else if(file==6){
				mav.addObject("imageFile", weding.getWed_sliload2());
				mav.addObject("filename", weding.getWed_sliname2());
			}else if(file==7){
				mav.addObject("imageFile", weding.getWed_sliload3());
				mav.addObject("filename", weding.getWed_sliname3());
			}else if(file==8){
				mav.addObject("imageFile", weding.getWed_sliload4());
				mav.addObject("filename", weding.getWed_sliname4());
			}else if(file==9){
				mav.addObject("imageFile", weding.getWed_thload1());
				mav.addObject("filename", weding.getWed_thname1());
			}else if(file==10){
				mav.addObject("imageFile", weding.getWed_thload2());
				mav.addObject("filename", weding.getWed_thname2());
			}else if(file==11){
				mav.addObject("imageFile", weding.getWed_thload3());
				mav.addObject("filename", weding.getWed_thname3());
			}else if(file==12){
				mav.addObject("imageFile", weding.getWed_thload4());
				mav.addObject("filename", weding.getWed_thname4());
			}
			return mav;
			}
		      
		   
		// �Ʒ� ������~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			@RequestMapping("/weding/detail.do")
			public ModelAndView process(@RequestParam("seq") int seq){
				
				if (log.isDebugEnabled()) {
					log.debug("<<wed_seq>> : " + seq);
				}
				
				WedingCommand weding = wedingService.selectWeding(seq);
				
				ModelAndView mav = new ModelAndView();
				mav.setViewName("wedingView");
				mav.addObject("weding", weding);
				
				return mav;
			}
	
		   //������Ʈ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		   
		   
		   @RequestMapping(value="/weding/update.do",method=RequestMethod.GET)
			public String form(@RequestParam("seq")int seq, Model model){
			   WedingCommand wedingCommand = wedingService.selectWeding(seq);
				model.addAttribute("command", wedingCommand);
				
				
				
				return "wedingModify";
				
			}
			@RequestMapping(value="/weding/update.do",method=RequestMethod.POST)
			public String submit(@ModelAttribute("command")@Valid WedingCommand wedingCommand,
									BindingResult result, HttpSession session,
									HttpServletRequest request) throws Exception{
				
				if (log.isDebugEnabled()) {
					log.debug("<<wedingCommand>> : " + wedingCommand);
				}
				//�ۼ��� �ƴϸ� ������
				String user_id=(String)session.getAttribute("user_id");
				if (!user_id.equals(wedingCommand.getMem_id())) {
					throw new Exception("�α����� ���̵�� �ۼ��� ���� �ƴϱ� ������ ������ �� �����ϴ�.");
				}
				
				WedingCommand weding = wedingService.selectWeding(wedingCommand.getWed_seq());
				
				if (result.hasErrors()) {
					//���� ���ϸ� ����
					wedingCommand.setWed_topname(weding.getWed_topname());
					wedingCommand.setWed_midname(weding.getWed_midname());
					wedingCommand.setWed_lowname(weding.getWed_lowname());
					wedingCommand.setWed_extraname(weding.getWed_extraname());
					
					return "wedingModify";
				}
				
				//���۵� ������ ���� ���
				if(wedingCommand.getTopload().isEmpty()){
					//���� ���� ����
					wedingCommand.setWed_topload(weding.getWed_topload());
					wedingCommand.setWed_topname(weding.getWed_topname());
					wedingCommand.setWed_midload(weding.getWed_midload());
					wedingCommand.setWed_midname(weding.getWed_midname());
					wedingCommand.setWed_lowload(weding.getWed_lowload());
					wedingCommand.setWed_lowname(weding.getWed_lowname());
					wedingCommand.setWed_extraload(weding.getWed_extraload());
					wedingCommand.setWed_extraname(weding.getWed_extraname());
				}
				
				//�ۼ���
				wedingService.update(wedingCommand);
				
				return "redirect:/weding/list.do";
			}
			
			
			//�Ʒ��� Delete~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			
			
			@RequestMapping("/weding/delete.do")
			public String submit(@RequestParam("seq") int seq, HttpSession session)throws Exception{
				if (log.isDebugEnabled()) {
					log.debug("<<seq>> : " + seq);
				}
				
				WedingCommand wedingCommand = wedingService.selectWeding(seq);
				String user_id = (String)session.getAttribute("user_id");
				if (!user_id.equals(wedingCommand.getMem_id())) {
					throw new Exception("�α����� ���̵�� �ۼ��� ���� �ƴϱ� ������ ������ �� �����ϴ�.");
					
				}
				//�� ����
				wedingService.delete(wedingCommand.getWed_seq());
				return "redirect:/weding/list.do";
			}
			
			@RequestMapping("/weding/wedingPopup.do")
			public String popup(){
				return "weding/wedingPopup";
			}
			
			@RequestMapping("/weding/wedingPopup2.do")
			public String popup2(){
				return "weding/wedingPopup2";
			}
			
			@RequestMapping("/weding/wedingPopup3.do")
			public String popup3(){
				return "weding/wedingPopup3";
			}
			
			@RequestMapping("/weding/wedingPopup4.do")
			public String popup4(){
				return "weding/wedingPopup4";
			}
			
			@RequestMapping("/weding/wedingPopup5.do")
			public String popup5(){
				return "weding/wedingPopup5";
			}
			
			@RequestMapping("/weding/wedingPopup6.do")
			public String popup6(){
				return "weding/wedingPopup6";
			}
			
			@RequestMapping("/weding/wedingPopup7.do")
			public String popup7(){
				return "weding/wedingPopup7";
			}
			
			@RequestMapping("/weding/wedingPopup8.do")
			public String popup8(){
				return "weding/wedingPopup8";
			}
			
			@RequestMapping("/weding/wedingPopup9.do")
			public String popup9(){
				return "weding/wedingPopup9";
			}
			
		    
	
}
