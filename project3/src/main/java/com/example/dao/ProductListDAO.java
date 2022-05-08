package com.example.dao;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.ProductVO;
import com.example.domain.ProductVO1;
import com.example.domain.ProductVO2;

public interface ProductListDAO {
	public List<ProductVO> list(Criteria cri);
	public int count(Criteria cri);
	public ProductVO1 read(String pmodel,String uid);
	public ProductVO2 read1(String pmodel);
	public ProductVO readSize(String pmodel, String ssize, String uid);
	public ProductVO2 buySize(String pmodel, String bsize);
	public void insert(ProductVO vo);
	public void update(ProductVO vo);
	public void delete(String pmodel);
	public void plcount(String pmodel,ProductVO1 vo);
	public void plcountCancel(String pmodel);
}
