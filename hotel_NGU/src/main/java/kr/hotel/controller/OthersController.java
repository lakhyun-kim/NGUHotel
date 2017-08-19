package kr.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OthersController {

	@RequestMapping("/others/introduce.do")
	public String introduce() {
		return "introduce";
	}
	
	@RequestMapping("/others/design.do")
	public String design(){
		return "design";
	}
	
	@RequestMapping("/others/info.do")
	public String info(){
		return "info";
	}
	
	@RequestMapping("/others/information.do")
	public String information(){
		return "information";
	}
	
	@RequestMapping("/others/informationPopup.do")
	public String popup(){
		return "others/informationPopup";
	}
	
	@RequestMapping("/others/informationPopup2.do")
	public String popup2(){
		return "others/informationPopup2";
	}
	
	@RequestMapping("/others/informationPopup3.do")
	public String popup3(){
		return "others/informationPopup3";
	}
	
	@RequestMapping("/others/informationPopup4.do")
	public String popup4(){
		return "others/informationPopup4";
	}
	
	@RequestMapping("/others/infoPopup1.do")
	public String popup5(){
		return "others/infoPopup1";
	}
	
	@RequestMapping("/others/infoPopup2.do")
	public String popup6(){
		return "others/infoPopup2";
	}
	
	@RequestMapping("/others/infoPopup3.do")
	public String popup7(){
		return "others/infoPopup3";
	}
	
	@RequestMapping("/others/infoPopup4.do")
	public String popup8(){
		return "others/infoPopup4";
	}
	
	@RequestMapping("/others/come.do")
	public String come(){
		return "come";
	}
	
}
