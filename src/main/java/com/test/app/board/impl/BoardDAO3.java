package com.test.app.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.app.board.BoardVO;

@Repository("boardDAO")
public class BoardDAO3 {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	// 게시글 등록
	public void insertBoard(BoardVO vo) {
		System.out.println("insertBoard() 호출됨");
		mybatis.insert("BoardDAO.insertBoard",vo);
	}
	// 글 상세 보기
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("getBoard() 호출됨");
		return (BoardVO)mybatis.selectOne("BoardDAO.getBoard",vo);
	}
	// 게시판 출력
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("getBoardList() 호출됨");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard",vo);
	}
	public void deleteBoard(BoardVO vo) {
		mybatis.delete("BoardDAO.deleteBoard",vo);
	}

}
