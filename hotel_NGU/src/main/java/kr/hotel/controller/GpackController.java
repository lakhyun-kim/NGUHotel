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

import kr.hotel.domain.GpackCommand;
import kr.hotel.service.GpackService;
import kr.hotel.util.PagingUtil;


@Controller
public class GpackController {
	
private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private GpackService gpService;
	
	@ModelAttribute
	public GpackCommand initCommand() {
		return new GpackCommand();
	}
	
	private int rowCount = 10;
	private int pageCount = 10;
	
	@RequestMapping("/gpack/list.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam(value="keyfield",defaultValue="") String keyfield,
			@RequestParam(value="keyword",defaultValue="") String keyword){
		if(log.isDebugEnabled()){
			log.debug("<<pageNum>> : " + currentPage);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int count = gpService.getRowCount(map);
		
		if(log.isDebugEnabled()){
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount,pageCount,"list.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<GpackCommand> list = null;
		if(count > 0){
			list = gpService.list(map);
		}
		
		if(log.isDebugEnabled()){
			log.debug("<<list>> : " + list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gpList");
		mav.addObject("count", count);
		mav.addObject("list", list);
		mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	//��Ű�� �ۼ�
	@RequestMapping(value="/gpack/gpWrite.do", method=RequestMethod.GET)
	public String GpWriteForm(HttpSession session, Model model){
		
		String mem_id = (String)session.getAttribute("user_id");
		
		if(log.isDebugEnabled()){
			log.debug("<<user_id>> : " + mem_id);
		}
		
		GpackCommand command = new GpackCommand();
		command.setMem_id(mem_id);
		model.addAttribute("command",command);
		
		return "gpWrite";
	}
	
	@RequestMapping(value="/gpack/gpWrite.do", method=RequestMethod.POST)
	public String GpWriteAction(@ModelAttribute("command") @Valid GpackCommand gpCommand, BindingResult result, HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("<<gpCommand>> : " + gpCommand);
		}
		
		if(result.hasErrors()){
			return "gpWrite";
		}
		
		gpService.gpInsert(gpCommand);
		
		return "redirect:/gpack/list.do";
	}
	//�̹��� ���
	@RequestMapping("gpack/imageView.do")
	public ModelAndView gpImage(@RequestParam("gpa_seq") int gpa_seq,
							    @RequestParam(value="file") int file){
		if(log.isDebugEnabled()){
			log.debug("gpa_seq : " + gpa_seq);
		}
		GpackCommand gp =gpService.selectGpack(gpa_seq);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		
		if(file==0){
			mav.addObject("imageFile", gp.getGpa_upfile());
			mav.addObject("filename", gp.getGpa_filename());
		}else if(file==1){
			mav.addObject("imageFile", gp.getGpa_demain());
			mav.addObject("filename", gp.getGpa_dmname());
		}else if(file==2){
			mav.addObject("imageFile", gp.getGpa_depro());
			mav.addObject("filename", gp.getGpa_dpname());
		}else if(file==3){
			mav.addObject("imageFile", gp.getGpa_reterm());
			mav.addObject("filename", gp.getGpa_rtname());
		}
		
		return mav;
	}
	
	@RequestMapping("/gpack/gpDetail.do")
	public ModelAndView process(@RequestParam("gpa_seq") int gpa_seq){
		
		if(log.isDebugEnabled()){
			log.debug("<<gpa_seq>> : " + gpa_seq);
		}
		GpackCommand gp = gpService.selectGpack(gpa_seq);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gpDetail");
		mav.addObject("gp", gp);
		
		return mav;
	}
	//�����κ�
	@RequestMapping(value="/gpack/gpUpdate.do",method=RequestMethod.GET)
	public String gpUpdateForm(@RequestParam("gpa_seq") int gpa_seq,Model model,HttpSession session){
		
		GpackCommand gpCommand = gpService.selectGpack(gpa_seq);
		String mem_id = (String)session.getAttribute("user_id");
		
		gpCommand.setGpa_filename(gpCommand.getGpa_filename());
		gpCommand.setGpa_dmname(gpCommand.getGpa_dmname());
		gpCommand.setGpa_dpname(gpCommand.getGpa_dpname());
		gpCommand.setGpa_rtname(gpCommand.getGpa_rtname());
		
		model.addAttribute("mem_id", mem_id);
		model.addAttribute("command", gpCommand);
		
		return "gpModify";
	}
	@RequestMapping(value="/gpack/gpUpdate.do",method=RequestMethod.POST)
	public String gpUpdateAction(@ModelAttribute("command")
								 @Valid GpackCommand gpCommand,
								 BindingResult result,
								 HttpSession session) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("<<gpCommand>> : " + gpCommand);
		}
		
		GpackCommand gp = gpService.selectGpack(gpCommand.getGpa_seq());
		
		if(result.hasErrors()){
			gpCommand.setGpa_filename(gp.getGpa_filename());
			gpCommand.setGpa_dmname(gp.getGpa_dmname());
			gpCommand.setGpa_dpname(gp.getGpa_dpname());
			gpCommand.setGpa_rtname(gp.getGpa_rtname());
			
			return "gpModify";
		}
		
		//���۵� ������ ���� ���
		if(gpCommand.getGpa_upload().isEmpty()){
			//���� ��������
			gpCommand.setGpa_upfile(gp.getGpa_upfile());
			gpCommand.setGpa_filename(gp.getGpa_filename());
		}
		if(gpCommand.getGpa_dmload().isEmpty()){
			gpCommand.setGpa_demain(gp.getGpa_demain());
			gpCommand.setGpa_dmname(gp.getGpa_dmname());
		}
		if(gpCommand.getGpa_dpload().isEmpty()){
			gpCommand.setGpa_depro(gp.getGpa_depro());
			gpCommand.setGpa_dpname(gp.getGpa_dpname());
		}
		if(gpCommand.getGpa_rtload().isEmpty()){
			gpCommand.setGpa_reterm(gp.getGpa_reterm());
			gpCommand.setGpa_rtname(gp.getGpa_rtname());
		}
		
		gpService.gpUpdate(gpCommand);
		
		return "redirect:/gpack/list.do";
	}
	
	@RequestMapping(value="/gpack/gpDelete.do")
	public String gpDeleteAction(@RequestParam("gpa_seq") int gpa_seq,
								 HttpSession session)throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("<<gpa_seq>> : " + gpa_seq);
		}
		
		GpackCommand gpCommand = gpService.selectGpack(gpa_seq);
		
		String mem_id = (String)session.getAttribute("user_id");
		
		gpService.gpDelete(gpCommand.getGpa_seq());
		
		return "redirect:/gpack/list.do";
	}
}






