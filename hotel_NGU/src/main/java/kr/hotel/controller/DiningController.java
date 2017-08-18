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

import kr.hotel.domain.DiningCommand;
import kr.hotel.domain.DiningReserveCommand;
import kr.hotel.service.DiningService;
import kr.hotel.util.PagingUtil;

@Controller
public class DiningController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	private int rowCount = 30;
	private int pageCount = 10;
	
	@Resource
	private DiningService diningService;
	
	@RequestMapping("/dining/list.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
								@RequestParam(value="keyfield",defaultValue="") String keyfield,
								@RequestParam(value="keyword",defaultValue="") String keyword){
		
		if(log.isDebugEnabled()){
			log.debug("<<pageNum>> : " + currentPage);
			log.debug("<<keyfield>> : " + keyfield);
			log.debug("<<keyword>> : " + keyword);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		
		if(keyfield.equals("din_title")){
			//A table ȣ��
		}else{
			//B table ȣ��
		}
		
		// �� ���� ���� �Ǵ� �˻��� ���� ����
		int count = diningService.getRowCount(map);
		
		if(log.isDebugEnabled()){
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount,pageCount,"list.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<DiningCommand> list = null;
		if(count > 0){
			list = diningService.list(map);
		}
		if(log.isDebugEnabled()){
			log.debug("<<list>> : " + list);
		}
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("diningList");
		mav.addObject("count",count);
		mav.addObject("list", list);
		mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	// �̹��� ���
	@RequestMapping("/dining/imageView.do")
	public ModelAndView viewImage(@RequestParam("seq") int seq, @RequestParam("din_file") int din_file){
	
		DiningCommand dining = diningService.selectDining(seq);
		if(log.isDebugEnabled()){
			log.debug("<<dining>> : " + dining);
		}
	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		if(din_file==1){
			mav.addObject("imageFile", dining.getDin_uf1());
			mav.addObject("filename", dining.getDin_fn1());
		}else if(din_file==2){
		mav.addObject("imageFile", dining.getDin_uf2());
		mav.addObject("filename", dining.getDin_fn2());
		}
		return mav;
	}
	
	//�����̵� �̹�����
	   @RequestMapping("/dining/slideView.do")
	   public ModelAndView sliImage(@RequestParam("seq") int seq,
	                              @RequestParam(value="slide_file") int slide_file){
	      
	      DiningCommand dining = diningService.selectDining(seq);
	      if(log.isDebugEnabled()){
		         log.debug("<<dining>> : " + dining);
		      }
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("imageView");
	      
	      if(slide_file==1){
	    	  mav.addObject("imageFile", dining.getDin_uf4());
	    	  mav.addObject("filename", dining.getDin_fn4());
	      }else if(slide_file==2){
	    	  mav.addObject("imageFile", dining.getDin_uf5());
	    	  mav.addObject("filename", dining.getDin_fn5());
	      }else if(slide_file==3){
	    	  mav.addObject("imageFile", dining.getDin_uf6());
	    	  mav.addObject("filename", dining.getDin_fn6());
	      }else if(slide_file==4){
	    	  mav.addObject("imageFile", dining.getDin_uf7());
	    	  mav.addObject("filename", dining.getDin_fn7());
	      }else if(slide_file==5){
	    	  mav.addObject("imageFile", dining.getDin_uf8());
	    	  mav.addObject("filename", dining.getDin_fn8());
	      }else if(slide_file==6){
	    	  mav.addObject("imageFile", dining.getDin_uf9());
	    	  mav.addObject("filename", dining.getDin_fn9());
	      }else if(slide_file==7){
	    	  mav.addObject("imageFile", dining.getDin_uf10());
	    	  mav.addObject("filename", dining.getDin_fn10());
	      }else if(slide_file==8){
	    	  mav.addObject("imageFile", dining.getDin_uf11());
	    	  mav.addObject("filename", dining.getDin_fn11());
	      }
	      return mav;
	   }
	@RequestMapping(value="/dining/write.do",method=RequestMethod.GET)
	public String form(HttpSession session,Model model){
		String mem_id = (String)session.getAttribute("user_id");
		
		DiningCommand command = new DiningCommand();
		command.setMem_id(mem_id);
		model.addAttribute("diningCommand", command);
		
		return "diningWrite";
	}
	
		@RequestMapping(value="/dining/write.do", method=RequestMethod.POST)
		public String submit(@Valid DiningCommand diningCommand,
							 BindingResult result,
							 HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("<<diningCommand>> : " + diningCommand);
		}
		/*// ��ȿ�� üũ
		if(result.hasErrors()){
			return "diningWrite";
		}
		//�۾���
*/		
		diningService.insert(diningCommand);
	
		return "redirect:/dining/list.do";
	}
		
	@RequestMapping("/dining/detail.do")
	public ModelAndView process(@RequestParam("seq") int seq){
	if(log.isDebugEnabled()){
		log.debug("<<seq>> : " + seq);
	}
	DiningCommand dining = diningService.selectDining(seq);
	
	return new ModelAndView("diningView", "dining", dining);
	
	}
	
	//���� �ٿ�ε�
	@RequestMapping("/dining/file.do")
	public ModelAndView download(@RequestParam("seq") int seq){
		
		DiningCommand dining = diningService.selectDining(seq);
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("downloadView");
		mav.addObject("downloadFile", dining.getDin_uf3()); // pdf �ٿ�ε� �߰�
		mav.addObject("filename", dining.getDin_fn3());
		
		return mav;
	}
	
	@RequestMapping(value="/dining/update.do",method=RequestMethod.GET)
	public String form(@RequestParam("seq") int seq,Model model){
		
		DiningCommand diningCommand = diningService.selectDining(seq);
		model.addAttribute("command",diningCommand);
		
		return "diningModify";
	}
	
	@RequestMapping(value="/dining/update.do",method=RequestMethod.POST)
	public String submit(DiningCommand diningCommand,
						 BindingResult result,
						 HttpSession session,
						 HttpServletRequest request) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("<<diningCommand>> : " + diningCommand);
		}
		
		String user_id = (String)session.getAttribute("user_id");
		if(!user_id.equals(diningCommand.getMem_id())){
		}
		
		
		
		DiningCommand dining = diningService.selectDining(diningCommand.getSeq());
		if(log.isDebugEnabled()){
			log.debug("<<dining>> : " + dining);
		}
		//���۵� ������ ���� ���
		if(diningCommand.getUpload1().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf1(dining.getDin_uf1());
			diningCommand.setDin_fn1(dining.getDin_fn1());
		}
		
		//���۵� ������ ���� ���
		if(diningCommand.getUpload2().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf2(dining.getDin_uf2());
			diningCommand.setDin_fn2(dining.getDin_fn2());
		}
				
		//���۵� ������ ���� ���
		if(diningCommand.getUpload3().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf3(dining.getDin_uf3());
			diningCommand.setDin_fn3(dining.getDin_fn3());
		}
		
		//���۵� ������ ���� ���
		if(diningCommand.getUpload4().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf4(dining.getDin_uf4());
			diningCommand.setDin_fn4(dining.getDin_fn4());
		}
		
		//���۵� ������ ���� ���
		if(diningCommand.getUpload5().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf5(dining.getDin_uf5());
			diningCommand.setDin_fn5(dining.getDin_fn5());
		}
				
		//���۵� ������ ���� ���
		if(diningCommand.getUpload6().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf6(dining.getDin_uf6());
			diningCommand.setDin_fn6(dining.getDin_fn6());
		}
		
//���۵� ������ ���� ���
		if(diningCommand.getUpload7().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf7(dining.getDin_uf7());
			diningCommand.setDin_fn7(dining.getDin_fn7());
		}
		
		//���۵� ������ ���� ���
		if(diningCommand.getUpload8().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf8(dining.getDin_uf8());
			diningCommand.setDin_fn8(dining.getDin_fn8());
		}
				
		//���۵� ������ ���� ���
		if(diningCommand.getUpload9().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf9(dining.getDin_uf9());
			diningCommand.setDin_fn9(dining.getDin_fn9());
		}	
		
		//���۵� ������ ���� ���
		if(diningCommand.getUpload10().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf10(dining.getDin_uf10());
			diningCommand.setDin_fn10(dining.getDin_fn10());
		}
				
		//���۵� ������ ���� ���
		if(diningCommand.getUpload11().isEmpty()){
			// ���� ���� ����
			diningCommand.setDin_uf11(dining.getDin_uf11());
			diningCommand.setDin_fn11(dining.getDin_fn11());
		}		
		
		
		
		diningService.update(diningCommand);
		
		return "redirect://dining/list.do";
				
		}
	
		@RequestMapping("/dining/delete.do")
		public String submit(@RequestParam("seq") int seq, HttpSession session) throws Exception{
			
			if(log.isDebugEnabled()){
				log.debug("<<seq>> : " + seq);
			}
		
		DiningCommand diningCommand = diningService.selectDining(seq);
		/*String user_id = (String)session.getAttribute("user_id");*/
		/*if(!user_id.equals(diningCommand.getMem_id())){
			throw new Exception("�α����� ���̵�� �ۼ��� ���� �ƴϱ� ������ ������ �� �����ϴ�.");
			
		}*/
		
		//�ۻ���
		diningService.delete(diningCommand.getSeq());
		
		return "redirect://dining/list.do";
		}
		
		//�ڹٺ� �ʱ�ȭ
		//Ŀ�ǵ尴ü(�ڹٺ�) �ʱ�ȭ
		@ModelAttribute("command")
		public DiningReserveCommand initCommand(){
			return new DiningReserveCommand();
		}
		
		
		@RequestMapping(value="/dining/reservation.do",method=RequestMethod.GET)
		public String form(){
			
			return "dining/diningPopup";
		}
		
		@RequestMapping(value="/dining/reservation.do",method=RequestMethod.POST)
		public String submit(@ModelAttribute("command") 
							 @Valid DiningReserveCommand drCommand,
							 BindingResult result,
							 HttpServletRequest request){
			
			if(log.isDebugEnabled()){
				log.debug("<<diningReserveCommand>> : " + drCommand);
			}
			
			// �۾���
			diningService.insert(drCommand);
			
			return "dining/diningSuccess";
		}
		
		
		
		@Resource
		private DiningService diningService2;
		
		@RequestMapping("/dining/result.do")
		public ModelAndView process2(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
									@RequestParam(value="keyfield",defaultValue="") String keyfield,
									@RequestParam(value="keyword",defaultValue="") String keyword){
			
			if(log.isDebugEnabled()){
				log.debug("<<pageNum>> : " + currentPage);
				log.debug("<<keyfield>> : " + keyfield);
				log.debug("<<keyword>> : " + keyword);
			}
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("keyfield", keyfield);
			map.put("keyword", keyword);
			
			
			
			if(keyfield.equals("din_title")){
				//A table ȣ��
			}else{
				//B table ȣ��
			}
			
			// �� ���� ���� �Ǵ� �˻��� ���� ����
			int count = diningService2.getRowCount(map);
			
			if(log.isDebugEnabled()){
				log.debug("<<count>> : " + count);
			}
			
			PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount,pageCount,"result.do");
			
			map.put("start", page.getStartCount());
			map.put("end", page.getEndCount());
			
			List<DiningReserveCommand> result = null;
			if(count > 0){
				result = diningService.result(map);
			}
			if(log.isDebugEnabled()){
				log.debug("<<result>> : " + result);
			}
					
			ModelAndView mav = new ModelAndView();
			mav.setViewName("diningResult");
			mav.addObject("count",count);
			mav.addObject("result", result);
			mav.addObject("pagingHtml", page.getPagingHtml());
			
			return mav;
		}
		
		@RequestMapping("/dining/deleteReservation.do")
		public String submit3(@RequestParam("din_seq") int din_seq, HttpSession session) throws Exception{
			
			if(log.isDebugEnabled()){
				log.debug("<<din_seq>> : " + din_seq);
			}
		
			DiningReserveCommand diningReserveCommand = diningService2.selectDining2(din_seq);
		
		//�ۻ���
		diningService.delete2(diningReserveCommand.getDin_seq());
		
		return "dining/deleteReservation";
		}
		
		
			
	}
	

