package com.study.ssm.dao;

import java.util.List;
import java.util.Map;

import com.study.ssm.entity.Employee;


public interface IEmployeeMapper {
	int insertEmployee(Employee employee);//���Ա��
	int insertMuiltipleEmp(List<Employee> empList);//��list�����е�����Ա������������
	List<Employee> selectEmpLikeEname(Map<String, Object> params);
	List<Employee> selectEmpLikeEname2(Map<String, Object> params);
	int updateEmp(Employee emp);
}
