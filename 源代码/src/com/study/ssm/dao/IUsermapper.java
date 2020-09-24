package com.study.ssm.dao;

import java.util.List;

import com.study.ssm.entity.Account;
import com.study.ssm.entity.Users;

public interface IUsermapper {
	Account selectLoginUser(int username);
	int insertAccount(Account account);
	int insertUsers(Users users);
	List<Account> selectAll(int uid);
	boolean deleteAccount (int uid);
} 
