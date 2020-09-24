package com.study.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.ssm.entity.Agent;
import com.study.ssm.entity.Commodity;
import com.study.ssm.service.CommodityService;

@Controller
@Scope(value="session")
@RequestMapping("/comm")
public class CommodityController {
	@Autowired
	CommodityService commodityService;
	Integer commId ;
	@RequestMapping("/select")
	public String search(Model model,Integer cid){
		commId = cid;
		List<Commodity> commList = commodityService.getCommodityList();
		if(cid!=null ){
		model.addAttribute("commList",commodityService.selectCommodityById(cid));
		}
		else{
		model.addAttribute("commList",commList);
		}
		return "goods_list";
	}
	@RequestMapping("/select/{id}")
	public String search2(Model model,@PathVariable("id")Integer cid){
		model.addAttribute("comm",commodityService.selectCommodityById(cid).get(0));
		return "good_update";
	}
	
	
	@RequestMapping("/delete")
	public String deleteCommodity(Integer cid,Model model){
		model.addAttribute("comm",commodityService.deleteCommodity(cid));
		return search(model,commId);
	}
	@RequestMapping("/add")
	public String add(Commodity comm){
		commodityService.addCommodity(comm);
		System.out.println(comm);
		return "goods_add";	
	}
	@RequestMapping("/update")
	public String updateAgent(Model model,Commodity comm){
			model.addAttribute("agentList",commodityService.updateCommodity(comm));
			return search(model,commId);
		
		 
	}
}
