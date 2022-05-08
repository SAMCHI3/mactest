package com.example.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.LikesVO;

@Repository
public class LikesDAOImpl implements LikesDAO{
	@Autowired
	SqlSession session;
	String namespace="com.example.mapper.LikesMapper";
	
	@Override
	public void lpupdate(LikesVO vo) {
		session.update(namespace+".lpupdate",vo);
		
	}
	
	@Override
	public void lpinsert(LikesVO vo) {
		session.insert(namespace+".lpinsert",vo);
		
	}
	
	
}
