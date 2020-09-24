package com.study.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.study.ssm.entity.YuanGong;
import com.study.ssm.service.YuanGongService;

@Controller
@RequestMapping("/yg")
public class YuanGongController {
	@Autowired
	private YuanGongService ygService;
	Integer id2;
	@RequestMapping("/select")
	public String selectAll(Model model,Integer eid){
		id2 = eid;
		List<YuanGong> ygList = ygService.selectAll();
		if(eid==null){
		model.addAttribute("ygList", ygList);
		}else{
			model.addAttribute("ygList", ygService.selectYuanGongById(eid));
		}
		return "emp_list";
	}
	@RequestMapping("/select/{id}")
	public String search2(Model model,@PathVariable("id")Integer eid){
		model.addAttribute("yg",ygService.selectYuanGongById(eid).get(0));
		return "emp_update";
	}
	@RequestMapping("/delete")
	public String deleteYuanGong(Model model,Integer eid){
		model.addAttribute("yg", ygService.deleteYuanGong(eid));
		return selectAll(model,id2);
	}
	@RequestMapping("/update")
	public String updateYuanGong(Model model,YuanGong yg){
		model.addAttribute("ygList",ygService.updateYuanGong(yg));
		return selectAll(model,id2);
	}
}
