package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.component.FileComponent;
import com.itbank.model.ReviewDTO;
import com.itbank.repository.ReviewDAO;

@Service
public class ReviewService {
	
	@Autowired private ReviewDAO reviewDAO;
	@Autowired private FileComponent fileComponent;

	public int write(ReviewDTO dto) {
		if(dto.getUpload().isEmpty() == false) {
			String fileName = fileComponent.upload(dto.getUpload());
			dto.setFileName(fileName);
		}
		int row = reviewDAO.write(dto);
		return row;
	}

	public List<ReviewDTO> selectAll() {
		return reviewDAO.selectList();
	}

	public ReviewDTO selectOne(int idx) {
		// TODO Auto-generated method stub
		return reviewDAO.selectOne(idx);
	}

	public int delete(int idx) {
		return reviewDAO.delete(idx);
	}

	

}
