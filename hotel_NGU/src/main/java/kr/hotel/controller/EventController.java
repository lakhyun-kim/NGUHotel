package kr.hotel.controller;

import java.util.ArrayList;
import java.util.List;

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

import kr.hotel.domain.EventCommand;
import kr.hotel.domain.ImageCommand;
import kr.hotel.service.EventService;

@Controller
public class EventController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private EventService eventService;
	
	@RequestMapping("/event/event_list.do")
	public ModelAndView process(){

		List<EventCommand> list = null;
		
		list = eventService.list();
		
		if(log.isDebugEnabled()){
			log.debug("list :" +list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("event_list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value="/event/event_write.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		
		String id = (String)session.getAttribute("user_id");
		
		EventCommand command = new EventCommand();
		command.setMem_id(id);
		model.addAttribute("command", command);
		
		return "event_write";
	}
	
	@RequestMapping(value="/event/event_write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")@Valid EventCommand eventcommand,
			BindingResult result, HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("command:"+eventcommand);
		}
		
		eventService.insert(eventcommand);
		
		return "redirect:/event/event_list.do";
	}
	
	@RequestMapping(value="/event/event_detail.do")
	public ModelAndView detail(@RequestParam("event_seq")int event_seq){
		
		EventCommand event = eventService.detail(event_seq);
		
		List<EventCommand> list2 = null;
				
		list2 = eventService.list();
		
		if(log.isDebugEnabled()){
			log.debug("event:"+event);
		}
		
		List<ImageCommand> list = new ArrayList<ImageCommand>();
			
		if(event.getEvent_filename1() != null){
			ImageCommand image = new ImageCommand();
			image.setSeq(event.getEvent_seq());
			image.setFile(1);
			list.add(image);
		}
		if(event.getEvent_filename2() != null){
			ImageCommand image = new ImageCommand();
			image.setSeq(event.getEvent_seq());
			image.setFile(2);
			list.add(image);
		}
		if(event.getEvent_filename3() != null){
			ImageCommand image = new ImageCommand();
			image.setSeq(event.getEvent_seq());
			image.setFile(3);
			list.add(image);
		}
		if(event.getEvent_filename4() != null){
			ImageCommand image = new ImageCommand();
			image.setSeq(event.getEvent_seq());
			image.setFile(4);
			list.add(image);
		}
		if(event.getEvent_filename5() != null){
			ImageCommand image = new ImageCommand();
			image.setSeq(event.getEvent_seq());
			image.setFile(5);
			list.add(image);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("event_detail");
		mav.addObject("event",event);
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		
		return mav;
	}
	
	@RequestMapping("/event/imageView.do")
	public ModelAndView detailview(@RequestParam("event_seq") int event_seq,@RequestParam("file")int file){
		
		EventCommand event = eventService.detail(event_seq);
		
		if(log.isDebugEnabled()){
			log.debug("event:"+event);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	
		if(file==1){
		mav.addObject("imageFile", event.getEvent_upload1());
		mav.addObject("filename", event.getEvent_filename1());
		}else if(file==2){		
		mav.addObject("imageFile", event.getEvent_upload2());
		mav.addObject("filename", event.getEvent_filename2());
		}else if(file==3){
		mav.addObject("imageFile", event.getEvent_upload3());
		mav.addObject("filename", event.getEvent_filename3());
		}else if(file==4){
		mav.addObject("imageFile", event.getEvent_upload4());
		mav.addObject("filename", event.getEvent_filename4());
		}else if(file==5){
		mav.addObject("imageFile", event.getEvent_upload5());
		mav.addObject("filename", event.getEvent_filename5());
		}
		return mav;		
	}
	
	@RequestMapping("/event/event_delete.do")
	public String submit(@RequestParam("event_seq") int event_seq, HttpSession session) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("seq"+event_seq);
		}
		
		EventCommand eventCommand = eventService.detail(event_seq);
		String user_id = (String)session.getAttribute("user_id");
		
		if(!user_id.equals(eventCommand.getMem_id())){
			throw new Exception("占싸깍옙占쏙옙占쏙옙 占쏙옙占싱듸옙占� 占쌜쇽옙占쏙옙 占쏙옙占쏙옙 占싣니깍옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌀곤옙占쏙옙占쌌니댐옙.");
		}
		eventService.delete(eventCommand.getEvent_seq());
		
		return "redirect:/event/event_list.do";
	}
	
	@RequestMapping(value="/event/event_update.do",method=RequestMethod.GET)
	public String Form(@RequestParam("event_seq") int event_seq, Model model) throws Exception{
		
		EventCommand eventCommand = eventService.detail(event_seq);
		model.addAttribute("command",eventCommand);
		
		System.out.println(eventCommand);
		
		return "event_update";
	}
	
	@RequestMapping(value="/event/event_update.do",method=RequestMethod.POST)
	public String updatesubmit(@ModelAttribute("command")@Valid EventCommand eventCommand,
					BindingResult result, HttpSession session, HttpServletRequest request){
		if(log.isDebugEnabled()){
			log.debug("eventCommand"+eventCommand);
		}
		
		EventCommand event = eventService.detail(eventCommand.getEvent_seq());
		
		System.out.println(result);
		
		if(result.hasErrors()){
			eventCommand.setEvent_filename1(event.getEvent_filename1());
			eventCommand.setEvent_filename2(event.getEvent_filename2());
			eventCommand.setEvent_filename3(event.getEvent_filename3());
			eventCommand.setEvent_filename4(event.getEvent_filename4());
			eventCommand.setEvent_filename5(event.getEvent_filename5());
			
			return "event_update";
		}
		
		if(eventCommand.getEvent_uploadfile1().isEmpty()){
			eventCommand.setEvent_upload1(event.getEvent_upload1());
			eventCommand.setEvent_filename1(event.getEvent_filename1());
			eventCommand.setEvent_upload2(event.getEvent_upload1());
			eventCommand.setEvent_filename2(event.getEvent_filename1());
			eventCommand.setEvent_upload3(event.getEvent_upload1());
			eventCommand.setEvent_filename3(event.getEvent_filename1());
			eventCommand.setEvent_upload4(event.getEvent_upload1());
			eventCommand.setEvent_filename4(event.getEvent_filename1());
			eventCommand.setEvent_upload5(event.getEvent_upload1());
			eventCommand.setEvent_filename5(event.getEvent_filename1());
		}
		
		eventService.update(eventCommand);
		
		return "redirect:/event/event_list.do";
		
	}
}
