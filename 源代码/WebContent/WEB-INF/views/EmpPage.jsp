<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工信息管理页面</title>
</head>
<body>
	<h2>员工信息管理</h2>
	<a href="search">查询</a>
	<table>
		<thead>
			<tr><th>员工编号</th><th>员工姓名</th><th>职务</th>
			<th>领导编号</th><th>入职日期</th><th>工资</th>
			<th>奖金</th><th>部门编号</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${empList}" var="emp">
				<tr>
					<td>${emp.empNo}</td>
					<td>${emp.ename}</td>
					<td>${emp.job}</td>
					<td>${emp.mgr}</td>
					<td>${emp.hiredate}</td>
					<td>${emp.sal}</td>
					<td>${emp.comm}</td>
					<td>${emp.deptNo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>