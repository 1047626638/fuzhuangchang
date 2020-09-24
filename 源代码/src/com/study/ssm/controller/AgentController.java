package com.study.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.pagehelper.PageInfo;
import com.study.ssm.entity.Agent;
import com.study.ssm.entity.Employee;
import com.study.ssm.service.AgentService;
import com.study.ssm.service.EmployeeService;
import com.study.ssm.service.UserService;


@Controller
@Scope(value="session")
@RequestMapping("/user")
public class AgentController {
	@Autowired
	AgentService agentService;
	String agentName = "";
	@RequestMapping("/add")
	public String add(Agent agent){
		agentService.addAgent(agent);
		return "agent_add";	
	}
	@RequestMapping(value="/select/{pageNum}/{pageSize}")
	public String search(Model model,String aname,@PathVariable("pageNum")int pageNum,
			@PathVariable("pageSize")int pageSize){
		agentName = aname;
		PageInfo<Agent> pageInfo = agentService.getAgentList(pageNum,pageSize);
		PageInfo<Agent> pageIngo2 = agentService.selectAgentByAname(aname, pageNum, pageSize);
		if(aname!=null && !"".equals(aname.trim())){
			model.addAttribute("pageInfo",pageIngo2);	
	}
		else{
			model.addAttribute("pageInfo",pageInfo);
		}
		return "agent_list";
	}
	@RequestMapping("/delete/{pageInfo.pageNum}/{pageInfo.pageSize}")
	public String deleteAgent(Model model,int anumber){
		model.addAttribute("agent",agentService.deleteAgent(anumber));
		return search(model, agentName,1,10);
	}
	@RequestMapping("/update")
	public String updateAgent(Model model,Agent agent){
		model.addAttribute("agentList",agentService.updateAgent(agent));
		return search(model, agentName, 0, 0);
	
		
	}
	 
	
	
	
	
	
	
}
