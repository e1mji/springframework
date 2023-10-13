package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.ReviewDTO;

@Repository
public interface ReviewDAO {

	int write(ReviewDTO dto);

	List<ReviewDTO> selectList();

	ReviewDTO selectOne(int idx);

	int delete(int idx);

}
