package com.study.ssm.dao;

import java.util.List;
import java.util.Map;

import com.study.ssm.entity.Employee;


public interface IEmployeeMapper {
	int insertEmployee(Employee employee);//添加员工
	int insertMuiltipleEmp(List<Employee> empList);//将list集合中的所有员工对象插入表中
	List<Employee> selectEmpLikeEname(Map<String, Object> params);
	List<Employee> selectEmpLikeEname2(Map<String, Object> params);
	int updateEmp(Employee emp);
}
