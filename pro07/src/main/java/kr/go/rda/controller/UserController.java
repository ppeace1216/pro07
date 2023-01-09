package kr.go.rda.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.go.rda.dto.UserDTO;
import kr.go.rda.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	HttpSession session;
	
	//member/list.do -> MemberService -> MemberDAO -> MyBatis(memberMapper) -> DB 
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String userList(Model model) throws Exception {
		List<UserDTO> userList = userService.userList();
		model.addAttribute("userList", userList);
		return "user/userList";
	}
	
	/* 관리자 회원 정보 보기 */
	@RequestMapping(value="detail", method = RequestMethod.GET)
	public String userDetail(@RequestParam String id, Model model) throws Exception {
		UserDTO user = userService.userDetail(id);
		model.addAttribute("user", user);
		return "user/userDetail";
	}

	/* 일반회원 정보보기 */
	@RequestMapping(value="read", method = RequestMethod.GET)
	public String userRead(Model model, HttpServletRequest request) throws Exception {
		String id = (String) session.getAttribute("sid");
		UserDTO user = userService.userDetail(id);
		model.addAttribute("user", user);
		return "user/userRead";
	}
	
	//회원 가입 - 약관 동의 페이지 로딩
	@GetMapping("agree")
	public String getAgree(Model model) throws Exception {
		return "user/agree";
	}
	//회원 가입 - 회원가입폼 페이지 로딩
	@GetMapping("join")
	public String joinUser(Model model) throws Exception {
		return "user/join";
	}
	//회원 가입 - Ajax로 아이디 중복 체크 
	@RequestMapping(value="idCheck", method=RequestMethod.POST)
	public void idCheck(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
		String id = request.getParameter("id");
		boolean result = false;
		UserDTO dto = new UserDTO();
		dto = userService.userDetail(id);

		if(dto!=null){	//이미 있는 아이디임
			result = false;
		} else {
			result = true;
		}
		JSONObject json = new JSONObject();
		json.put("result", result);
		PrintWriter out = response.getWriter();
		out.println(json.toString());
	}
	//회원 가입 - 회원 가입 처리
	@RequestMapping(value="joinUser", method = RequestMethod.POST)
	public String joinUser(UserDTO user, Model model) throws Exception {
		//비밀번호 암호화
		String userpw = user.getPw();
		String pwd = pwdEncoder.encode(userpw);
		user.setPw(pwd);
		userService.joinUser(user);
		return "redirect:/";
	}
	
	//Ajax를 이용하는 방법
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String userLogin(UserDTO dto, RedirectAttributes rttr) throws Exception {
		session.getAttribute("user");
		UserDTO user = userService.login(dto);
		boolean mat = pwdEncoder.matches(dto.getPw(), user.getPw());
		if(mat==true && user!=null) {
			session.setAttribute("user", user);
			session.setAttribute("sid", user.getId());
			rttr.addFlashAttribute("msg", "로그인 성공");
			return "redirect:/";
		} else {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:loginForm.do";
		}
	}
	
	//회원 정보 변경
	@RequestMapping(value="update", method = RequestMethod.POST)
	public String memberUpdate(UserDTO user, Model model) throws Exception {
		String pwd = pwdEncoder.encode(user.getPw());
		user.setPw(pwd);
		userService.userUpdate(user);
		return "redirect:/";
	}

	//회원 탈퇴
	@RequestMapping(value="delete", method = RequestMethod.GET)
	public String userDelete(@RequestParam String id, Model model, HttpSession session) throws Exception {
		userService.userDelete(id);
		session.invalidate();
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping("logout")
	public String userLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
}
