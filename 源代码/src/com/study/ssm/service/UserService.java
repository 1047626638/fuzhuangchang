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
 * loginUser ��������������
 * ��¼�ɹ����ز鵽�ĵ�¼�û����󣬷��򷵻�null
 * */
@Service
public class UserService {
	@Autowired
	private IUsermapper userMapper;
	public Account loginValidate(Account account){
		//�����ݿ��в�������˺Ŷ�Ӧ�ĵ�¼�û���Ϣ
		Account userDo = userMapper.selectLoginUser(account.getUsername());
		if(userDo!=null){//�˺Ŷ���
		if(userDo.getPassword().equals(account.getPassword())){//�������
			
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
