package com.study.ssm.controller;

import javax.servlet.http.HttpSession;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.ssm.entity.Account;
import com.study.ssm.service.UserService;

@Controller
@RequestMapping("/")
public class IndexController {
	@Autowired
	UserService userService;
	@RequestMapping({"/frame","/login1","/agent_add","/agent_list","/base_add",
		"/goods_list","/goods_add","/modify_password","/admin_select","/order_add",
		"/reportForm1","/good_update","/emp_list","/emp_update","/orders_update","/intoData",
		"/outPrintData","/outData"})
	public void toIndexPage(){
	}
	@RequestMapping(value="/login1",method=RequestMethod.POST)
	public String login1(HttpSession session,Account account){
		if(userService.loginValidate(account)!=null){
			session.setAttribute("account", account);
			return "redirect:/frame";//使用响应重定向的方式跳转页面
		}else{
			return "login1";
		}
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.invalidate();//使session失效
		return "redirect:/login1";
	}
}
