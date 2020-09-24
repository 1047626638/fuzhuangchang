package com.study.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.ssm.entity.Employee;
import com.study.ssm.service.EmployeeService;


@Controller
@RequestMapping("/emp")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	@RequestMapping(value="/page",method=RequestMethod.GET)
	public String toPage(){
		return "EmpPage";
	}
	@RequestMapping(value="/search")
	public String search(Model model){
		List<Employee> empList = employeeService.getEmployeeList();
		model.addAttribute("empList",empList);
		return "EmpPage";
	}
	
	
	
	
	
	
	
	
	
	
}
