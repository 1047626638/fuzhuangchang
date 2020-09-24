package com.study.ssm.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.ssm.entity.Account;
import com.study.ssm.entity.Users;
import com.study.ssm.service.UserService;

@Controller
@Scope(value="session")
@RequestMapping("/users")
public class UserController {
	@Autowired
	UserService userService;
	int usersId;
	@RequestMapping("/kaihu")
	public String kaihu(Account account,String confirmPassword){
		System.out.println(account);
		if(userService.kaihuValidate(account, confirmPassword))
			return "modify_password";
		else {
			return "fail";
		}
	}
	@RequestMapping("select")
	public String search(Model model,int uid){
		usersId = uid;
		List<Account> account = userService.selectAll(uid);
		model.addAttribute("accountList",account);	
		return "admin_select";
	}
	@RequestMapping("/delete")
	public String delete(Model model,int uid){
		model.addAttribute("account",userService.deleteAccount(uid));
		return search(model,usersId);
	}
}
