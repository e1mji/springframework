package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.component.HashComponent;
import com.itbank.model.AccountDTO;
import com.itbank.repository.AccountDAO;

@Service
public class AccountService {
	
	@Autowired private HashComponent hashComponent;
	@Autowired private AccountDAO accountDAO;

	public int join(AccountDTO dto) {
		String salt = hashComponent.getRandomSalt();
		String hash = hashComponent.getHash(dto.getUserpw(),salt);
		dto.setSalt(salt);
		dto.setUserpw(hash);
		return accountDAO.accountJoin(dto); 
	}

	public AccountDTO login(AccountDTO dto) {
		AccountDTO login = accountDAO.selectOneByUserId(dto.getUserid());
		
		if(login != null) {
			String dbpw = login.getUserpw();
			String userpw = hashComponent.getHash(dto.getUserpw(), login.getSalt());
			if(dbpw.equals(userpw)) {
				return login;
			}
		}
		return null;
	}

}
