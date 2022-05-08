package com.example.dao;

import java.util.List;

import com.example.domain.BoardVO;
import com.example.domain.Criteria;

public interface BoardDAO {
	public List<BoardVO> list(Criteria cri);
	public int count(Criteria cri);
	public BoardVO read(int bno);
	public void insert(BoardVO vo);
	public BoardVO top(Criteria cri);
}
