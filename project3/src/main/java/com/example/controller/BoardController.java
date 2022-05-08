package com.example.controller;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.dao.BoardDAO;
import com.example.domain.BoardVO;
import com.example.domain.Criteria;
import com.example.domain.PageMaker;
import com.example.domain.UserVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name="uploadPath")
	   String path;
	@Autowired
	BoardDAO dao;
	
	@RequestMapping("/insert")
	public void insert(Model model){
		model.addAttribute("pageName","board/insert.jsp");
		
	}
	@RequestMapping(value="/insert",method=RequestMethod.POST)
    public String insertPost(BoardVO vo,MultipartHttpServletRequest multi) throws Exception{
       
       //파일업로드
       MultipartFile file=multi.getFile("file");
       String image= "board/" + System.currentTimeMillis()+"_"+file.getOriginalFilename();
       file.transferTo(new File(path+image));
       vo.setBimage(image);
       dao.insert(vo);
       
       return "redirect:list";
 }
	
	@RequestMapping("/read")
	public String read(Model model, int bno){
		model.addAttribute("vo",dao.read(bno));
		model.addAttribute("pageName","board/read.jsp");
		return "/home";
	}
	
	@RequestMapping("/list")
	public String list(Model model){
		model.addAttribute("pageName","board/list.jsp");
		return "/home";
	}
	
	@RequestMapping("/list.json")
	@ResponseBody
	public HashMap<String, Object> listJson(Criteria cri){
		HashMap<String, Object> map=new HashMap<>();
		cri.setPerPageNum(9);
		PageMaker pm= new PageMaker();
		pm.setCri(cri);
		pm.setDisplayPageNum(10);
		pm.setTotalCount(dao.count(cri));
	
		map.put("pm", pm);
		map.put("list", dao.list(cri));
		return map;
	}
	
	@RequestMapping("/top.json")
	@ResponseBody
	public HashMap<String, Object> topJson(Criteria cri){
		HashMap<String, Object> map=new HashMap<>();
		cri.setPerPageNum(9);
		PageMaker pm= new PageMaker();
		pm.setCri(cri);
		pm.setDisplayPageNum(10);
		pm.setTotalCount(dao.count(cri));
	
		map.put("pm", pm);
		map.put("top", dao.top(cri));
		return map;
	}
}
