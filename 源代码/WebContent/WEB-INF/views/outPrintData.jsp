<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>穷在闹市出品</title>

		<!-- 公共样式 开始 -->
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
		<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
		<script type="text/javascript" src="layui/layui.js"></script>
		<script src="framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<script src="framework/printThis.js"></script>
		<!-- 公共样式 结束 -->
		

	</head>

	<body>
		<div class="cBody">
		<form class="layui-form" action="stock/select" method="post">
			<div class="console">
				<div class="layui-form-item">
					<a class="layui-btn layui-btn-sm layui-btn-normal" onclick="printTable('dayindaju1')">打印</a>
					<button class="layui-btn layui-btn-sm layui-btn-normal">查询</button>
					<input style="width: 200px"  class="layui-input" name="sdate" type="date" />
				</div>
			</div>
		</form>
			<div class="layui-row" id="dayindaju1">
				<table class="layui-table printTable">
				
					<tbody>
						<tr>
							<td class="printName" colspan="9">打印单</td>
						</tr>
						<tr>
							<td class="printDis" colspan="9">
								<span>单据日期：
									<input style="border:none" type="datetime-local">
								</span>
								<span class="right">单据编号：DJ9562154640003</span>
								<span>入库类型：
									<select style="border: none">
										<option>采购入库</option>
										<option>采购出库</option>
									</select>
								</span>
							</td>
						</tr>
						
						<tr>
							<th width="8%" class="textCenter">单号</th>
							<th width="10%">入库日期</th>
							<th width="10%" class="textCenter">所属仓库</th>
							<th width="10%" class="textCenter">制单人</th>
							<th width="10%" class="textCenter">类型</th>
							<th width="10%" class="textCenter">规格</th>
							<th width="10%" class="textCenter">单位</th>
							<th width="10%" class="textCenter">入库数量</th>	
						</tr>
					<c:forEach items="${stockList}" var="stock">
						<tr>
							<td class="textCenter">${stock.snumber}</td>
							<td>${stock.sdate}</td>
							<td class="textCenter">${stock.shouse}</td>
							<td class="textCenter">${stock.sperson}</td>
							<td class="textCenter">${stock.stype}</td>
							<td class="textCenter">${stock.specification}</td>
							<td class="textCenter">${stock.sunit}</td>
							<td class="textCenter">${stock.icount}</td>
						</tr>
					
			            </c:forEach>	           
						<tr>
							<td class="printOperator" colspan="9">
								<span>经手人：
									<input style="border:none;width: 200px;" class="layui-input" type="text" />
								</span>
								<span class="right">打印日期：
									<input style="border:none" type="datetime-local">
								</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<script>
			//打印方法
		    function printTable(id){
		    	$('#'+id).printThis({ importCss: true, importStyle: true });
		    }
		</script>
	</body>

</html>