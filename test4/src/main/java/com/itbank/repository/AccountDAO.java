package com.itbank.repository;

import org.springframework.stereotype.Repository;

import com.itbank.model.AccountDTO;

@Repository
public interface AccountDAO {

	int accountJoin(AccountDTO dto);

	AccountDTO selectOneByUserId(String userid);

}
