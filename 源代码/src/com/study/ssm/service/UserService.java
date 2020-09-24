package com.study.ssm.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.dao.IUsermapper;
import com.study.ssm.entity.Account;
import com.study.ssm.entity.Agent;
import com.study.ssm.entity.Users;
/*
 * loginUser 控制器传过来的
 * 登录成功返回查到的登录用户对象，否则返回null
 * */
@Service
public class UserService {
	@Autowired
	private IUsermapper userMapper;
	public Account loginValidate(Account account){
		//从数据库中查找这个账号对应的登录用户信息
		Account userDo = userMapper.selectLoginUser(account.getUsername());
		if(userDo!=null){//账号对了
		if(userDo.getPassword().equals(account.getPassword())){//密码对了
			
			return userDo;
			}
		}
		return null;
	}
	public boolean kaihuValidate(Account account,String confirmPassword){
		if(confirmPassword.equals(account.getPassword())){
			Users users = account.getUsers();
			userMapper.insertUsers(users);
			userMapper.insertAccount(account);
			return true;
			
		}else{
			return false;
		}
	}
	public List<Account> selectAll(int uid){
		List<Account>  account = new ArrayList<Account>();
		account = userMapper.selectAll(uid);
		return account;
	}
	public boolean deleteAccount(int uid){
		return userMapper.deleteAccount(uid);
	}
}
