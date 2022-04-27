package com.test.app.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.test.app.board.BoardService;
import com.test.app.board.BoardVO;

@Controller

@SessionAttributes("data") // data라는 이름의 정보가 Model에 들어온다면, session에 기억해둬라! ☆
public class BoardController {
	// 1. Controller 교체
	// 2. 반환타입의 변경 -> ModelAndView(무엇을 보낼지_정보_datas,data,member,... + 어디로 가야하는지_경로)
	
	@Autowired
	private BoardService boardService;

	@ModelAttribute("conMap") 
	public Map<String,String> searchConditionMap() {
		Map<String,String> conMap=new HashMap<String,String>();
		conMap.put("제목", "title");
		conMap.put("작성자", "writer");
		conMap.put("내용", "content");
		return conMap; // 반환값은 자동으로 Model에 저장
	}
	
	@RequestMapping(value="/main.do")
	public String getBoardList(BoardVO vo,Model model) {

		if(vo.getSearchCondition()==null) {

			vo.setSearchCondition("title");
		}
		if(vo.getSearchKeyword()==null) {

			vo.setSearchKeyword("");
		}
		
		model.addAttribute("datas",boardService.getBoardList(vo));
		// Model을 이용하여 전달할 정보를 저장!
		return "main.jsp";
	}
	@RequestMapping(value="/board.do")
	public String getBoard(BoardVO vo,Model model) {
		vo=boardService.getBoard(vo);
		model.addAttribute("data", vo); // ☆
		return "board.jsp";
	}
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(BoardVO vo) throws IllegalStateException, IOException {
		// 파일업로드 로직
		System.out.println(vo);
		MultipartFile uploadFile=vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			String name=uploadFile.getOriginalFilename();
			System.out.println("파일명: "+name);
			uploadFile.transferTo(new File("C:\\lee\\workspace\\day61\\src\\main\\webapp\\images\\"+name));
			vo.setFilename(name);
		}
		else {
			vo.setFilename("default.jpg");
		}
		boardService.insertBoard(vo);
		return "redirect:main.do";
	}
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		return "redirect:main.do";
	}
	@RequestMapping(value="/updateBoard.do")
	public String updateBoard(@ModelAttribute("data")BoardVO vo) {  // ☆
		System.out.println(" null 업데이트 이슈 확인: "+vo.getWriter()); // session에 저장해둔 정보가 먼저 setter
		System.out.println(" null 업데이트 이슈 확인: "+vo.getTitle()); // 이후에 파라미터로 들어온 정보가 나중에 setter
		System.out.println(" null 업데이트 이슈 확인: "+vo.getContent());
		boardService.updateBoard(vo);
		return "redirect:main.do";
	}
}
