package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.SystemPropertyUtils;

import com.example.dao.LikesDAO;
import com.example.dao.ProductListDAO;
import com.example.dao.UserDAO;
import com.example.domain.LikesVO;
import com.example.domain.ProductVO;
import com.example.domain.ProductVO1;
import com.example.domain.UserVO;

@Service
public class LikesServiceImpl implements LikesService{
	@Autowired
	LikesDAO ldao;
	
	@Autowired
	ProductListDAO pdao;
	
	@Autowired
	UserDAO udao;

	@Transactional
	@Override
	public void lpupdate(ProductVO1 vo, String uid, String pmodel) {
		System.out.println("......." + vo.getUplike() + "\n" + vo.getPlcount());
		pdao.plcount(pmodel, vo);
		udao.lpupdate(vo, uid);
	}

}
