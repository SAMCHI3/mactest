package com.example.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.dao.UserDAO;
import com.example.domain.Criteria;
import com.example.domain.PageMaker;
import com.example.domain.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserDAO dao;

	@Autowired
	BCryptPasswordEncoder passEncoder;

	@Resource(name = "uploadPath")
	String path;
	
	@RequestMapping("/profile")
	public String profilet(Model model){
	
		model.addAttribute("pageName", "user/profile.jsp");
		return "/home";
	}
	
	@RequestMapping("/account")
	public String account(Model model){
	
		model.addAttribute("pageName", "user/account.jsp");
		return "/home";
	}
	
	@RequestMapping("/list")
	public String list(Model model){
	
		model.addAttribute("pageName", "user/list.jsp");
		return "/home";
	}
	
	@RequestMapping("/addressbook")
	public String addressbook(Model model){
	
		model.addAttribute("pageName", "user/addressbook.jsp");
		return "/home";
	}
	
	@RequestMapping("/list.json")
	@ResponseBody
	public Map<String, Object> listJSON(Criteria cri){
		Map<String, Object> map = new HashMap<String, Object>();
		cri.setPerPageNum(5);
		
		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		pm.setDisplayPageNum(4);
		pm.setTotalCount(dao.total());
		
		map.put("pm", pm);
		map.put("list", dao.list(cri));
		return map;
	}
	
	@RequestMapping("/insert")
	public String insert(Model model){
		model.addAttribute("pageName","user/insert.jsp");
		return "/home";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insertPost(UserVO vo){
		String password= passEncoder.encode(vo.getUpass());
		vo.setUpass(password);
			dao.insert(vo);
		return "redirect:/user/login";
	}
	
	@RequestMapping(value="/inserttest", method=RequestMethod.POST)
	@ResponseBody
	public int inserttestPost(String uid, HttpSession session){
		int result=0;
		UserVO vo=dao.read(uid);
		if(vo!=null){
			if(uid==vo.getUid()){
				result=1;
				session.setAttribute("uid", uid);
			}else{
				result=2;
			}
		}
		return result;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("pageName", "user/login.jsp");
		return "/home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public int loginPost(String uid, String upass, HttpSession session) {

		UserVO vo = dao.read(uid);

		 String ucode = "3"; 
	
		
		int result = 0;
		if (vo != null) {
			
			if(vo.getUcode().equals(ucode)){
				
				result = 3;
			}
			else if (passEncoder.matches(upass, vo.getUpass())) {
			
				result = 1; // ??????????
				session.setAttribute("uid", uid);
				session.setAttribute("image", vo.getUimage());
				session.setAttribute("ucode", vo.getUcode());
			
			} else {
				
				result = 2;
			
			}
			
		}
		return result;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePost(UserVO vo, MultipartHttpServletRequest multi) throws Exception {
		MultipartFile file = multi.getFile("file");

		String password = passEncoder.encode(vo.getUpass());
		vo.setUpass(password);

		if (!file.isEmpty()) {
			new File(path + vo.getUimage()).delete(); // ?????????? ????
			String image = "photo/" + System.currentTimeMillis() + "_" + file.getOriginalFilename();
			file.transferTo(new File(path + image));
			vo.setUimage(image);
		}

		dao.update(vo);
		return "redirect:/";
	}
	
	@RequestMapping("/mypage")
	public String read1(Model model, String uid) {
		model.addAttribute("vo", dao.read(uid));
		model.addAttribute("pageName", "user/mypage.jsp");
		return "/home";
	}
	
	@RequestMapping("/smypage")
	public String sread(Model model, String uid) {
		model.addAttribute("vo", dao.read(uid));
		model.addAttribute("pageName", "user/smypage.jsp");
		return "/home";
	}
	
	@RequestMapping("/bmypage")
	public String bread(Model model, String uid) {
		model.addAttribute("vo", dao.read(uid));
		model.addAttribute("pageName", "user/bmypage.jsp");
		return "/home";
	}
	
	@RequestMapping("/update")
	public String update(Model model, String uid) {
		model.addAttribute("vo", dao.read(uid));
		model.addAttribute("pageName", "user/update.jsp");
		return "/home";
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public void delete(String uid,String ucode, String check){
		UserVO vo = new UserVO();
		vo.setUid(uid);
		vo.setUcode(ucode);
		System.out.println("......."+vo.toString());
		dao.delete(vo);
		
	}
}
