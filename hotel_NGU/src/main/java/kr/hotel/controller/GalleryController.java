package kr.hotel.controller;

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

import kr.hotel.domain.GalleryCommand;
import kr.hotel.service.GalleryService;

@Controller
public class GalleryController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private GalleryService galleryService;
	
	@RequestMapping("/gallery/gallery_list.do")
	public ModelAndView process(){
		List<GalleryCommand> list = null;
		
		list = galleryService.list();
		
		if(log.isDebugEnabled()){
			log.debug("list:"+list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gallery_list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value="/gallery/gallery_write.do",method=RequestMethod.GET)
	public String form(HttpSession session, Model model){
		String id = (String)session.getAttribute("user_id");
		
		System.out.println(id);
		
		GalleryCommand command = new GalleryCommand();
		command.setMem_id(id);
		model.addAttribute("command", command);
		
		if(log.isDebugEnabled()){
			log.debug("command:"+command);
		}
		
		return "gallery_write";
	}
	
	@RequestMapping(value="/gallery/gallery_write.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")@Valid GalleryCommand gallerycommand,
			BindingResult result, HttpServletRequest request){
		
		if(log.isDebugEnabled()){
			log.debug("command:"+gallerycommand);
		}
		
		if(result.hasErrors()){
			return "gallery_write";
		}
		
		galleryService.insert(gallerycommand);


		if(log.isDebugEnabled()){
			log.debug("gallerycommand :"+gallerycommand);
		}
		
		return "redirect:/gallery/gallery_list.do";
	}
	
	@RequestMapping(value="/gallery/gallery_detail.do")
	public ModelAndView process(@RequestParam("h_gallery_seq")int h_gallery_seq){
		
		if(log.isDebugEnabled()){
			log.debug("seq :"+h_gallery_seq);
		}
		
		GalleryCommand gallery = galleryService.detail(h_gallery_seq);
		
		return new ModelAndView("gallery_detail","gallery",gallery);
	}
	
	@RequestMapping("/gallery/imageView.do")
	public ModelAndView imageView(@RequestParam("h_gallery_seq")int h_gallery_seq,@RequestParam("file")int file){
	
		GalleryCommand gallery = galleryService.detail(h_gallery_seq);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	
		if(file==1){
		mav.addObject("imageFile", gallery.getH_gallery_upload1());
		mav.addObject("filename", gallery.getH_gallery_filename1());
		}else if(file==2){		
		mav.addObject("imageFile", gallery.getH_gallery_upload2());
		mav.addObject("filename", gallery.getH_gallery_filename2());
		}else if(file==3){
		mav.addObject("imageFile", gallery.getH_gallery_upload3());
		mav.addObject("filename", gallery.getH_gallery_filename3());
		}else if(file==4){
		mav.addObject("imageFile", gallery.getH_gallery_upload4());
		mav.addObject("filename", gallery.getH_gallery_filename4());
		}else if(file==5){
		mav.addObject("imageFile", gallery.getH_gallery_upload5());
		mav.addObject("filename", gallery.getH_gallery_filename5());
		}else if(file==6){
		mav.addObject("imageFile", gallery.getH_gallery_upload6());
		mav.addObject("filename", gallery.getH_gallery_filename6());
		}else if(file==7){
		mav.addObject("imageFile", gallery.getH_gallery_upload7());
		mav.addObject("filename", gallery.getH_gallery_filename7());
		}else if(file==8){
		mav.addObject("imageFile", gallery.getH_gallery_upload8());
		mav.addObject("filename", gallery.getH_gallery_filename8());
		}else if(file==9){
		mav.addObject("imageFile", gallery.getH_gallery_upload9());
		mav.addObject("filename", gallery.getH_gallery_filename9());
		}else if(file==10){
		mav.addObject("imageFile", gallery.getH_gallery_upload10());
		mav.addObject("filename", gallery.getH_gallery_filename10());
		}else if(file==11){
		mav.addObject("imageFile", gallery.getH_gallery_upload11());
		mav.addObject("filename", gallery.getH_gallery_filename11());
		}else if(file==12){
		mav.addObject("imageFile", gallery.getH_gallery_upload12());
		mav.addObject("filename", gallery.getH_gallery_filename12());
		}
				
		return mav;		
	}
	
	@RequestMapping("/gallery/gallery_delete.do")
	public String submit(@RequestParam("h_gallery_seq") int h_gallery_seq, HttpSession session) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("seq"+h_gallery_seq);
		}
		
		GalleryCommand galleryCommand = galleryService.detail(h_gallery_seq);
		String user_id = (String)session.getAttribute("user_id");
		
		if(!user_id.equals(galleryCommand.getMem_id())){
			throw new Exception("占싸깍옙占쏙옙占쏙옙 占쏙옙占싱듸옙占� 占쌜쇽옙占싫깍옙占쏙옙 占싣니깍옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌀곤옙占쏙옙占쌌니댐옙");
		}
		galleryService.delete(galleryCommand.getH_gallery_seq());
		
		return "redirect:/gallery/gallery_list.do";
	}
	@RequestMapping(value="/gallery/gallery_update.do",method=RequestMethod.GET)
	public String Form(@RequestParam("h_gallery_seq") int h_gallery_seq, Model model){
		
		GalleryCommand galleryCommand = galleryService.detail(h_gallery_seq);
		model.addAttribute("command", galleryCommand);
		
		if(log.isDebugEnabled()){
			log.debug("galleryCommand"+galleryCommand);
		}
		
		return "gallery_update";
	}
	@RequestMapping(value="/gallery/gallery_update.do",method=RequestMethod.POST)
	public String updatesubmit(@ModelAttribute("command") @Valid GalleryCommand galleryCommand,
			BindingResult result,HttpSession session,HttpServletRequest request) throws Exception{
		
		if(log.isDebugEnabled()){
			log.debug("galleryCommand"+galleryCommand);
		}
		
		GalleryCommand gallery = galleryService.detail(galleryCommand.getH_gallery_seq());
		
		if(result.hasErrors()){
			galleryCommand.setH_gallery_filename1(gallery.getH_gallery_filename1());
			galleryCommand.setH_gallery_filename2(gallery.getH_gallery_filename2());
			galleryCommand.setH_gallery_filename3(gallery.getH_gallery_filename3());
			galleryCommand.setH_gallery_filename4(gallery.getH_gallery_filename4());
			galleryCommand.setH_gallery_filename5(gallery.getH_gallery_filename5());
			galleryCommand.setH_gallery_filename6(gallery.getH_gallery_filename6());
			galleryCommand.setH_gallery_filename7(gallery.getH_gallery_filename7());
			galleryCommand.setH_gallery_filename8(gallery.getH_gallery_filename8());
			galleryCommand.setH_gallery_filename9(gallery.getH_gallery_filename9());
			galleryCommand.setH_gallery_filename10(gallery.getH_gallery_filename10());
			galleryCommand.setH_gallery_filename11(gallery.getH_gallery_filename11());
			galleryCommand.setH_gallery_filename12(gallery.getH_gallery_filename12());
			
			return "gallery_update";
		}
		
		if(galleryCommand.getUpload1().isEmpty()){
			galleryCommand.setUpload1(gallery.getUpload1());
			galleryCommand.setH_gallery_filename1(gallery.getH_gallery_filename1());
			galleryCommand.setUpload2(gallery.getUpload2());
			galleryCommand.setH_gallery_filename2(gallery.getH_gallery_filename2());
			galleryCommand.setUpload3(gallery.getUpload3());
			galleryCommand.setH_gallery_filename3(gallery.getH_gallery_filename3());
			galleryCommand.setUpload4(gallery.getUpload4());
			galleryCommand.setH_gallery_filename4(gallery.getH_gallery_filename4());
			galleryCommand.setUpload5(gallery.getUpload5());
			galleryCommand.setH_gallery_filename5(gallery.getH_gallery_filename5());
			galleryCommand.setUpload6(gallery.getUpload6());
			galleryCommand.setH_gallery_filename6(gallery.getH_gallery_filename6());
			galleryCommand.setUpload6(gallery.getUpload7());
			galleryCommand.setH_gallery_filename7(gallery.getH_gallery_filename7());
			galleryCommand.setUpload6(gallery.getUpload8());
			galleryCommand.setH_gallery_filename8(gallery.getH_gallery_filename8());
			galleryCommand.setUpload6(gallery.getUpload9());
			galleryCommand.setH_gallery_filename9(gallery.getH_gallery_filename9());
			galleryCommand.setUpload6(gallery.getUpload10());
			galleryCommand.setH_gallery_filename10(gallery.getH_gallery_filename10());
			galleryCommand.setUpload6(gallery.getUpload11());
			galleryCommand.setH_gallery_filename11(gallery.getH_gallery_filename11());
			galleryCommand.setUpload6(gallery.getUpload12());
			galleryCommand.setH_gallery_filename12(gallery.getH_gallery_filename12());
		}
				
		galleryService.update(galleryCommand);
		
		return "redirect:/gallery/gallery_list.do";
	}
	
	@RequestMapping(value="/gallery/gallery_movie.do")
	public String movie(){
		return "gallery_movie";
	}
	
}
