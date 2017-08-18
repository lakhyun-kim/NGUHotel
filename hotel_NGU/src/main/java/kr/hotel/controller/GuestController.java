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

import kr.hotel.domain.GuestCommand;
import kr.hotel.service.GuestService;
import kr.hotel.service.GuestServiceImpl;
import kr.hotel.util.PagingUtil;

@Controller
public class GuestController {
	
private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private GuestService gueService;
	
	@ModelAttribute
	public GuestCommand initCommand() {
		return new GuestCommand();
	}
	
	private int rowCount = 10;
	private int pageCount = 10;
	
	@RequestMapping("/guest/list.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
								@RequestParam(value="keyfield",defaultValue="") String keyfield,
								@RequestParam(value="keyword",defaultValue="") String keyword){
		if(log.isDebugEnabled()){
			log.debug("<<pageNum>> : " + currentPage);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();

		int count = gueService.getRowCount(map);
		
		if(log.isDebugEnabled()){
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount,pageCount,"list.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<GuestCommand> list = null;
		if(count > 0){
			list = gueService.list(map);
		}
		
		if(log.isDebugEnabled()){
			log.debug("<<list>> : " + list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("guestList");
		mav.addObject("count", count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	//���� �ۼ�
	@RequestMapping(value="/guest/gueWrite.do", method=RequestMethod.GET)
	public String GuestWriteForm(HttpSession session, Model model){
		//���� �����ڸ� �����ϰ� �����ؾ��ϴ� �κ�
		String mem_id = (String)session.getAttribute("user_id");
		
		if(log.isDebugEnabled()){
			log.debug("<<user_id>> : " + mem_id);
		}
		
		GuestCommand command = new GuestCommand();
		command.setMem_id(mem_id);
		model.addAttribute("command", command);
		return "gueWrite";
	}
	
	@RequestMapping(value="/guest/gueWrite.do", method=RequestMethod.POST)
	public String GuestWriteSubmit(@ModelAttribute("command") @Valid GuestCommand gueCommand, BindingResult result, HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("<<gueCommand>> : " + gueCommand);
		}
		
		if(result.hasErrors()){
			return "gueWrite";
		}
		
		gueService.gueinsert(gueCommand);
		
		return "redirect:/guest/list.do";
	}
	//�̹��� ���
	@RequestMapping("guest/imageView.do")
	public ModelAndView gueImage(@RequestParam("gue_num") int gue_num,
			                     @RequestParam(value="file",defaultValue="0") int file){
		if(log.isDebugEnabled()){
			log.debug("<<gue_num>> : " + gue_num);
		}
		GuestCommand guest = gueService.selectGuest(gue_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		
		if(file==0){
			mav.addObject("imageFile", guest.getGue_uploadfile());
			mav.addObject("filename", guest.getGue_filename());
		}else if(file==1){
			mav.addObject("imageFile", guest.getGue_ltopfile());
			mav.addObject("filename", guest.getGue_ltopfilename());
		}else if(file==2){
			mav.addObject("imageFile", guest.getGue_lbotfile());
			mav.addObject("filename", guest.getGue_lbotfilename());
		}else if(file==3){
			mav.addObject("imageFile", guest.getGue_rtopfile());
			mav.addObject("filename", guest.getGue_rtopfilename());
		}else if(file==4){
			mav.addObject("imageFile", guest.getGue_rbotfile());
			mav.addObject("filename", guest.getGue_rbotfilename());
		}
		return mav;
	}
	//�����̵� �̹�����
	@RequestMapping("guest/slideView.do")
	public ModelAndView sliImage(@RequestParam("gue_num") int gue_num,
			                     @RequestParam(value="slifile") int slifile){
		if(log.isDebugEnabled()){
			log.debug("<<gue_num>> : " + gue_num);
		}
		GuestCommand guest = gueService.selectSlide(gue_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		
		if(slifile==0){
			mav.addObject("imageFile", guest.getSli_file1());
			mav.addObject("filename", guest.getSli_fname1());
		}else if(slifile==1){
			mav.addObject("imageFile", guest.getSli_file2());
			mav.addObject("filename", guest.getSli_fname2());
		}else if(slifile==2){
			mav.addObject("imageFile", guest.getSli_file3());
			mav.addObject("filename", guest.getSli_fname3());
		}else if(slifile==3){
			mav.addObject("imageFile", guest.getSli_file4());
			mav.addObject("filename", guest.getSli_fname4());
		}else if(slifile==4){
			mav.addObject("imageFile", guest.getThum_file1());
			mav.addObject("filename", guest.getSli_thname1());
		}else if(slifile==5){
			mav.addObject("imageFile", guest.getThum_file2());
			mav.addObject("filename", guest.getSli_thname2());
		}else if(slifile==6){
			mav.addObject("imageFile", guest.getThum_file3());
			mav.addObject("filename", guest.getSli_thname3());
		}else if(slifile==7){
			mav.addObject("imageFile", guest.getThum_file4());
			mav.addObject("filename", guest.getSli_thname4());
		}
		return mav;
	}
	
	@RequestMapping("/guest/gueDetail.do")
	public ModelAndView process(@RequestParam("gue_num") int gue_num){
		
		if(log.isDebugEnabled()){
			log.debug("<<gue_num>> : " + gue_num);
		}
		GuestCommand guest1 = gueService.selectGuest(gue_num);
		GuestCommand guest2 = gueService.selectSlide(gue_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gueDetail");
		mav.addObject("guest1", guest1);
		mav.addObject("guest2", guest2);
		
		return mav;
	}
	//�����κ�
	@RequestMapping(value="/guest/gueUpdate.do",method=RequestMethod.GET)
	public String updateForm(@RequestParam("gue_num") int gue_num,Model model,HttpSession session){
		GuestCommand guestCommand1 = gueService.selectGuest(gue_num);
		GuestCommand guestCommand2 = gueService.selectSlide(gue_num);
		String mem_id = (String)session.getAttribute("user_id");
		
		guestCommand1.setSli_fname1(guestCommand2.getSli_fname1());
		guestCommand1.setSli_fname2(guestCommand2.getSli_fname2());
		guestCommand1.setSli_fname3(guestCommand2.getSli_fname3());
		guestCommand1.setSli_fname4(guestCommand2.getSli_fname4());
		guestCommand1.setSli_thname1(guestCommand2.getSli_thname1());
		guestCommand1.setSli_thname2(guestCommand2.getSli_thname2());
		guestCommand1.setSli_thname3(guestCommand2.getSli_thname3());
		guestCommand1.setSli_thname4(guestCommand2.getSli_thname4());
		
		model.addAttribute("mem_id",mem_id);
		model.addAttribute("command",guestCommand1);
		
		return "gueModify";
	}		
	
	@RequestMapping(value="/guest/gueUpdate.do",method=RequestMethod.POST)
	public String updateAction(@ModelAttribute("command")
							   @Valid GuestCommand guestCommand,
							   BindingResult result,
							   HttpSession session,
							   HttpServletRequest request) throws Exception{
		if(log.isDebugEnabled()){
			log.debug("<<guestCommand>> " + guestCommand);
		}
		
		
		GuestCommand guest1 = gueService.selectGuest(guestCommand.getGue_num());
		GuestCommand guest2 = gueService.selectSlide(guestCommand.getGue_num());
		
		if(result.hasErrors()){
			guestCommand.setGue_filename(guest1.getGue_filename());
			guestCommand.setGue_ltopfilename(guest1.getGue_ltopfilename());
			guestCommand.setGue_lbotfilename(guest1.getGue_lbotfilename());
			guestCommand.setGue_rtopfilename(guest1.getGue_rtopfilename());
			guestCommand.setGue_rbotfilename(guest1.getGue_rbotfilename());
			guestCommand.setSli_fname1(guest2.getSli_fname1());
			guestCommand.setSli_fname2(guest2.getSli_fname2());
			guestCommand.setSli_fname3(guest2.getSli_fname3());
			guestCommand.setSli_fname4(guest2.getSli_fname4());
			guestCommand.setSli_thname1(guest2.getSli_thname1());
			guestCommand.setSli_thname2(guest2.getSli_thname2());
			guestCommand.setSli_thname3(guest2.getSli_thname3());
			guestCommand.setSli_thname4(guest2.getSli_thname4());
			
			return "gueModify";
		}
		
		//���۵� ������ ���� ���
		if(guestCommand.getGue_upload().isEmpty()){
			//���� ��������
			guestCommand.setGue_uploadfile(guest1.getGue_uploadfile());
			guestCommand.setGue_filename(guest1.getGue_filename());
		}
		if(guestCommand.getGue_ltop().isEmpty()){
			guestCommand.setGue_ltopfile(guest1.getGue_ltopfile());
			guestCommand.setGue_ltopfilename(guest1.getGue_ltopfilename());
		}
		if(guestCommand.getGue_lbot().isEmpty()){
			guestCommand.setGue_lbotfile(guest1.getGue_lbotfile());
			guestCommand.setGue_lbotfilename(guest1.getGue_lbotfilename());
		}
		if(guestCommand.getGue_rtop().isEmpty()){
			guestCommand.setGue_rtopfile(guest1.getGue_rtopfile());
			guestCommand.setGue_rtopfilename(guest1.getGue_rtopfilename());
		}
		if(guestCommand.getGue_rbot().isEmpty()){
			guestCommand.setGue_rbotfile(guest1.getGue_rbotfile());
			guestCommand.setGue_rbotfilename(guest1.getGue_rbotfilename());
		}
		if(guestCommand.getSli_upfile1().isEmpty()){
			guestCommand.setSli_file1(guest2.getSli_file1());
			guestCommand.setSli_fname1(guest2.getSli_fname1());
		}
		if(guestCommand.getSli_upfile2().isEmpty()){
			guestCommand.setSli_file2(guest2.getSli_file2());
			guestCommand.setSli_fname2(guest2.getSli_fname2());
		}
		if(guestCommand.getSli_upfile3().isEmpty()){
			guestCommand.setSli_file3(guest2.getSli_file3());
			guestCommand.setSli_fname3(guest2.getSli_fname3());
		}
		if(guestCommand.getSli_upfile4().isEmpty()){
			guestCommand.setSli_file4(guest2.getSli_file4());
			guestCommand.setSli_fname4(guest2.getSli_fname4());
		}
		if(guestCommand.getThum_upfile1().isEmpty()){
			guestCommand.setThum_file1(guest2.getThum_file1());
			guestCommand.setSli_thname1(guest2.getSli_thname1());
		}
		if(guestCommand.getThum_upfile2().isEmpty()){
			guestCommand.setThum_file2(guest2.getThum_file2());
			guestCommand.setSli_thname2(guest2.getSli_thname2());
		}
		if(guestCommand.getThum_upfile3().isEmpty()){
			guestCommand.setThum_file3(guest2.getThum_file3());
			guestCommand.setSli_thname3(guest2.getSli_thname3());
		}
		if(guestCommand.getThum_upfile4().isEmpty()){
			guestCommand.setThum_file4(guest2.getThum_file4());
			guestCommand.setSli_thname4(guest2.getSli_thname4());
		}
		
		gueService.gueUpdate(guestCommand);
		
		return "redirect:/guest/list.do";
	}		
	
	@RequestMapping(value="/guest/gueDelete.do")
	public String deleteAction(@RequestParam("gue_num") int gue_num,
							   HttpSession session)throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("<<gue_num>> " + gue_num);
		}
		
		GuestCommand guestCommand1 = gueService.selectGuest(gue_num);
		GuestCommand guestCommand2 = gueService.selectSlide(gue_num);
		
		String mem_id = (String)session.getAttribute("user_id");
		
		guestCommand1.setSli_fname1(guestCommand2.getSli_fname1());
		guestCommand1.setSli_fname2(guestCommand2.getSli_fname2());
		guestCommand1.setSli_fname3(guestCommand2.getSli_fname3());
		guestCommand1.setSli_fname4(guestCommand2.getSli_fname4());
		guestCommand1.setSli_thname1(guestCommand2.getSli_thname1());
		guestCommand1.setSli_thname2(guestCommand2.getSli_thname2());
		guestCommand1.setSli_thname3(guestCommand2.getSli_thname3());
		guestCommand1.setSli_thname4(guestCommand2.getSli_thname4());
		
		gueService.guedelete(guestCommand1.getGue_num());
		
		return "redirect:/guest/list.do";
	}
	
	@RequestMapping("/guest/imgSlide.do")
	public ModelAndView imgsProcess(@RequestParam("gue_num") int gue_num){
		
		if(log.isDebugEnabled()){
			log.debug("<<gue_num>> : " + gue_num);
		}
		
		GuestCommand guest = gueService.selectSlide(gue_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("guest/imgSlide");
		mav.addObject("guest", guest);
		
		int slifile = 0;
		if(slifile==0){
			mav.addObject("imageFile", guest.getSli_file1());
			mav.addObject("filename", guest.getSli_fname1());
		}else if(slifile==1){
			mav.addObject("imageFile", guest.getSli_file2());
			mav.addObject("filename", guest.getSli_fname2());
		}else if(slifile==2){
			mav.addObject("imageFile", guest.getSli_file3());
			mav.addObject("filename", guest.getSli_fname3());
		}else if(slifile==3){
			mav.addObject("imageFile", guest.getSli_file4());
			mav.addObject("filename", guest.getSli_fname4());
		}else if(slifile==4){
			mav.addObject("imageFile", guest.getThum_file1());
			mav.addObject("filename", guest.getSli_thname1());
		}else if(slifile==5){
			mav.addObject("imageFile", guest.getThum_file2());
			mav.addObject("filename", guest.getSli_thname2());
		}else if(slifile==6){
			mav.addObject("imageFile", guest.getThum_file3());
			mav.addObject("filename", guest.getSli_thname3());
		}else if(slifile==7){
			mav.addObject("imageFile", guest.getThum_file4());
			mav.addObject("filename", guest.getSli_thname4());
		}
		
		return mav;
	}
	
}










