package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.MenuDTO;
import com.itbank.repository.MenuDAO;

@Service
public class MenuService {
	
	@Autowired private MenuDAO dao;

	public List<MenuDTO> selectAll() {

		return dao.selectAll();
	}

	public List<MenuDTO> selectByCategory(String category) {
		

		return dao.selectList(category);
	}

	public int add(MenuDTO dto) {

		return dao.insert(dto);
	}

	public MenuDTO selectOne(int idx) {

		return dao.selectOne(idx);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	public int modify(MenuDTO dto) {

		return dao.update(dto);
	}

}
