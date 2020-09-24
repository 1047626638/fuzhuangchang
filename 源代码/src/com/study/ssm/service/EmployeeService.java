package com.study.ssm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.dao.IEmployeeMapper;
import com.study.ssm.entity.Employee;


@Service
public class EmployeeService {
	@Autowired
	private IEmployeeMapper employeeMapper;
	public List<Employee> getEmployeeList(){
		Map params = new HashMap<>();//封装查询信息
		return employeeMapper.selectEmpLikeEname(params);//依赖Mapper完成数据查询并返回
	}
	
	
	
	
	
	
	
}
