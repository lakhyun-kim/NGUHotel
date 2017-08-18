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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.QnareplyCommand;
import kr.hotel.service.MemberService;
import kr.hotel.service.QnaService;

@Controller
public class QnaController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private QnaService qnaService;
	
	@Resource
	private MemberService memberService;
	
	@RequestMapping("/qna/qna_list.do")
	public ModelAndView process(){

		List<QnaCommand> list = null;
		
		list = qnaService.list();
		
		if(log.isDebugEnabled()){
			log.debug("list :" +list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qna_list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value="/qna/qna_write.do", method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		
		String id = (String)session.getAttribute("user_id");
		
		MemberCommand member = memberService.selectMember(id);
		
		QnaCommand command = new QnaCommand();
		command.setMem_id(id);
		model.addAttribute("command",command);
		member.setMem_id(id);
		model.addAttribute("member", member);
		return "qna_write";
	}
	
	@RequestMapping(value="/qna/qna_write.do", method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")@Valid QnaCommand qnaCommand,
								BindingResult result,HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("qnacommand:"+qnaCommand);
		}
		
		if(result.hasErrors()){
			System.out.println(result);
			return "qna_write";
		}
		qnaService.insert(qnaCommand);
		
		return "redirect:/qna/qna_done.do";
	}
	
	@RequestMapping(value="/qna/qna_done.do")
	public String done(){
		
		return "qna_done";
	}
	
	@RequestMapping(value="/qna/qna_detail.do")
	public ModelAndView detail(@RequestParam("h_qna_seq") int h_qna_seq){
		
		QnaCommand qna = qnaService.detail(h_qna_seq);
		
		if(log.isDebugEnabled()){
			log.debug("qna:"+qna);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qna_detail");
		mav.addObject("qna", qna);
		
		return mav;
	}
	
	@RequestMapping("/qna/qna_delete.do")
	public String submit(@RequestParam("h_qna_seq")int h_qna_seq, HttpSession session) throws Exception{
		
		QnaCommand qnaCommand = qnaService.detail(h_qna_seq);
		
		qnaService.delete(qnaCommand.getH_qna_seq());
		
		return "redirect:/main/main.do";
	}
	
	@RequestMapping("/qna/qna_write_reply.do")
	@ResponseBody
	public Map<String,String> process(QnareplyCommand qnareplyCommand,
			HttpSession session,HttpServletRequest request){
		if(log.isDebugEnabled()){
			log.debug("<<qnaReplyCommand>> : " 
		                             + qnareplyCommand);
		}
		
		Map<String, String> map = new HashMap<String, String>();
		
		String user_id = (String)session.getAttribute("user_id");
		
		System.out.println(user_id);
		
		if(user_id==null){
			map.put("result", "logout");
		}else{
			qnaService.insertQnaReply(qnareplyCommand);
			map.put("result", "success");
		}
		return map;
	}
	
	@RequestMapping("/qna/qna_list_reply.do")
	@ResponseBody
	public Map<String, Object> list_reply(@RequestParam("h_qna_seq") int h_qna_seq){

		
		Map<String,Object> map = new HashMap<String, Object>();
		
		map.put("h_qna_seq", h_qna_seq);

		List<QnareplyCommand> list = qnaService.qna_reply_list(map);
		
		Map<String, Object> mapJson = new HashMap<String, Object>();
		mapJson.put("h_qna_seq", h_qna_seq);
		mapJson.put("list", list);
		
		return mapJson;
	}
	
	@RequestMapping("/qna/qna_update_reply.do")
	@ResponseBody
	public Map<String, String> qna_update_reply(QnareplyCommand qnareplyCommand,
			HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("<<qnareplyCommand>> : " 
		                             + qnareplyCommand);
		}
		System.out.println(qnareplyCommand);
		Map<String, String> map = new HashMap<String, String>();
		String user_id = (String)session.getAttribute("user_id");
		if(user_id == null){
			map.put("result", "logout");
		}else{
			qnaService.updateQnaReply(qnareplyCommand);
			map.put("result", "success");
		}
		return map;
	}
	
	@RequestMapping("/qna/qna_delete_reply.do")
	@ResponseBody
	public Map<String, String> qna_delete_reply(@RequestParam("qna_reply_seq")int qna_reply_seq,@RequestParam("mem_id")String id, HttpSession session){
		if(log.isDebugEnabled()){
			log.debug("<<qna_reply_seq>> : " + qna_reply_seq);
			log.debug("<<user_id>> : " + id);
		}
		
		Map<String, String> map = new HashMap<String, String>();
		String user_id = (String)session.getAttribute("user_id");
		
		if(user_id ==null){
			map.put("result", "logout");
		}else if(user_id!=null && user_id.equals(id)){
			qnaService.deleteQnaReply(qna_reply_seq);
			map.put("result", "success");
		}else{
			map.put("result","wrongAccess");
		}
		
		return map;
		
	}
	
	
}
