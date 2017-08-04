package kr.hotel.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
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
import kr.hotel.service.MemberService;

@Controller
public class MemberController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private MemberService memberService;

	// 자바빈 초기화
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}

	// 약관동의
	@RequestMapping("/member/writeCheck.do")
	public String WriteForm1() {
		return "memberWriteCheck";
	}
	
	// 회원가입 정보입력 폼
	@RequestMapping(value="/member/write.do", method=RequestMethod.GET)
	public String WriteForm() {
		return "memberWrite";
	}

	// 회원가입 완료
	@RequestMapping(value="/member/write.do", method=RequestMethod.POST)
	public ModelAndView WriteSubmit(MemberCommand memberCommand) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}

/*		// 생년월일 월,일 앞에 0붙여 넣고 /로 구분해서 넣어줌
		String ss = memberCommand.getMem_birth().replace(",", "");
		String text = String.format("%04d/%02d/%02d", Integer.parseInt(ss.substring(0, 4)), Integer.parseInt(ss.substring(4, 5)), Integer.parseInt(ss.substring(5)));
		memberCommand.setMem_birth(text);*/
		// 회원가입
		memberService.insert(memberCommand);
		
		// 번호와 아이디를 뿌려줘야하므로 회원가입 후 정보 가져옴
		MemberCommand member = memberService.selectMember(memberCommand.getMem_id());
		
		return new ModelAndView("memberWriteSuccess", "member" , member);
	}
	
	// 로그인 폼
	@RequestMapping(value="/member/login.do", method=RequestMethod.GET)
	public String LoginForm() {
		return "memberLogin";
	}
	
	// 로그인 완료
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public String LoginSubmit(@ModelAttribute("command") @Valid MemberCommand memberCommand, BindingResult result, HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + memberCommand);
		}
		
		// id와 passwd 필드만 체크
		if(result.hasFieldErrors("mem_id") || result.hasFieldErrors("mem_pw")) {
			return LoginForm();
		}
		
		// 로그인 체크(id 또는 비밀번호 일치 여부 체크)
		try {
			MemberCommand member = memberService.selectMember(memberCommand.getMem_id());
			boolean check = false;
			
			if(member != null) {
				// 비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(memberCommand.getMem_pw());
			}

			if(check) {
				// 인증 성공, 로그인 처리
				session.setAttribute("user_id", memberCommand.getMem_id());
				session.setAttribute("user_auth", memberCommand.getAuth());
				return "redirect:/main/main.do";
			} else {
				// 인증 실패
				throw new Exception();
			}
		} catch(Exception e) {
			// 인증 실패로 폼 호출
			result.reject("invalidIdOrPassword");
			return LoginForm();
		}
		
	}
	
	// 로그아웃
	@RequestMapping("/member/logout.do")
	public String process(HttpSession session) {
		// 로그아웃
		session.invalidate();
		return "redirect:/main/main.do";
	}
	
	// 아이디 중복 체크
	@RequestMapping("/member/confirmId.do")
	@ResponseBody	// 자동으로 View 객체로 만들어줌 / key=value형태로 만들어주면 자동으로 json객체로 만들어줌
	public Map<String, String> process(@RequestParam("mem_id") String mem_id) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<id>> : " + mem_id);
		}
		
		Map<String, String> map = new HashMap<String, String>();
		
		MemberCommand member = memberService.selectMember(mem_id);
		
		if(member != null) {
			// 아이디 중복
			map.put("result", "idDuplicated");
		} else {
			// 아이디 미중복
			map.put("result", "idNotFound");
		}
		
		return map;
	}
	
	// 마이페이지
	// 등급 및 포인트
	@RequestMapping("/member/myLevel.do")
	public ModelAndView myLevel(HttpSession session) {
		
		String user_id = (String)session.getAttribute("user_id");
		
		MemberCommand member = memberService.selectMember(user_id);
		
		return new ModelAndView("memberMyLevel", "member", member);
	}
	
	// 프로필 수정 확인 폼
	@RequestMapping(value="/member/updateCheck.do", method=RequestMethod.GET)
	public ModelAndView updateCheckForm(HttpSession session) {
		
		String user_id = (String)session.getAttribute("user_id");
		MemberCommand member = memberService.selectMember(user_id);
		
		return new ModelAndView("memberUpdateCheck", "command", member);
	}
	
	// 프로필 수정 폼으로
	@RequestMapping(value="/member/updateCheck.do", method=RequestMethod.POST)
	public String updateCheckSubmit(@ModelAttribute("command") @Valid MemberCommand member, BindingResult result, HttpSession session, Model model) {

		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + member);
		}
		
		// passwd 필드만 체크
		if(result.hasFieldErrors("mem_pw")) {
			return "memberUpdateCheck";
		}
		
		// 로그인 체크(id 또는 비밀번호 일치 여부 체크)
		try {
			MemberCommand memberCommand = memberService.selectMember(member.getMem_id());
			boolean check = false;
			// 비밀번호 일치 여부 체크
			check = memberCommand.isCheckedPasswd(member.getMem_pw());

			if(check) {
				// 인증 성공, 수정 폼으로
				model.addAttribute("memberCommand", memberCommand);

				Map<String, String[]> map = new HashMap<String, String[]>();
				
				String[] birth = memberCommand.getMem_birth().split("/");
				String[] email = memberCommand.getMem_email().split("@");
				String[] phone = memberCommand.getMem_p_cell().split("-");
				// 자택전화는 null 값이 들어가므로 비교해줌
				if(memberCommand.getMem_h_cell() != null) {
					String[] hphone = memberCommand.getMem_h_cell().split("-");
					map.put("hphone", hphone);
				}

				map.put("birth", birth);
				map.put("email", email);
				map.put("phone", phone);
				
				model.addAllAttributes(map);
				
				return "memberUpdate";
			} else {
				// 인증 실패
				throw new Exception();
			}
			
		} catch(Exception e) {
			// 인증 실패로 폼 호출
			result.reject("invalidIdOrPassword");
			return "memberUpdateCheck";
		}
	}

	// 수정하기
	@RequestMapping(value="/member/update.do", method=RequestMethod.POST)
	public String updateSubmit(MemberCommand memberCommand) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		memberService.update(memberCommand);
        
		return "/member/success";
	}
	
	// 비밀번호 변경 폼
	@RequestMapping(value="/member/pwdUpdate.do", method=RequestMethod.GET)
	public String pwdForm() {
		return "memberPwdUpdate";
	}

	// 비밀번호 변경완료
	@RequestMapping(value="/member/pwdUpdate.do", method=RequestMethod.POST)
	public String pwdSubmit(@RequestParam("mem_pw") String mem_pw, @RequestParam("mem_newpw") String mem_newpw, HttpSession session) {
		
		String user_id = (String)session.getAttribute("user_id");
		
		MemberCommand member = memberService.selectMember(user_id);
		boolean check = false;
		
		check = member.isCheckedPasswd(mem_pw);
		
		if(check) {
			member.setMem_pw(mem_newpw);
			memberService.updatePwd(member);
			return "/member/success";
		} else {
			return "/member/fail";
		}
	}
	
	// 탈퇴 요청
	@RequestMapping(value="/member/deleteCheck.do", method=RequestMethod.GET)
	public ModelAndView deleteCheckForm(HttpSession session) {
		
		String user_id = (String)session.getAttribute("user_id");
		MemberCommand member = memberService.selectMember(user_id);
		
		return new ModelAndView("memberDeleteCheck", "command", member);
	}

	// 탈퇴 요청 확인
	@RequestMapping(value="/member/deleteCheck.do", method=RequestMethod.POST)
	public String deleteCheckSubmit(@ModelAttribute("command") @Valid MemberCommand member, BindingResult result, HttpSession session, Model model) {

		if(log.isDebugEnabled()) {
			log.debug("memberCommand : " + member);
		}
		
		// passwd 필드만 체크
		if(result.hasFieldErrors("mem_pw")) {
			return "memberDeleteCheck";
		}
		
		// 비밀번호 체크
		try {
			MemberCommand memberCommand = memberService.selectMember(member.getMem_id());
			boolean check = false;
			// 비밀번호 일치 여부 체크
			check = memberCommand.isCheckedPasswd(member.getMem_pw());

			if(check) {
				// 인증 성공, 탈퇴 폼으로
				model.addAttribute("memberCommand", memberCommand);

				return "memberDelete";
			} else {
				// 인증 실패
				throw new Exception();
			}
			
		} catch(Exception e) {
			// 인증 실패로 폼 호출
			result.reject("invalidIdOrPassword");
			return "memberDeleteCheck";
		}
	}

	// 탈퇴완료
	@RequestMapping("/member/delete.do")
	public String deleteButton(HttpSession session) {
		
		String user_id = (String)session.getAttribute("user_id");
		
		// 탈퇴
		memberService.delete(user_id);
		
		// 로그아웃
		session.invalidate();
		
		return "/member/userDelete";
	}
	
	// 포인트 조회

	@RequestMapping("/member/pointList.do")
	public String pointList() {
		
		return "memberPointList";
	}
	
	
	
}
