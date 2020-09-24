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
		<!-- 公共样式 结束 -->

	</head>

	<body>
		<div class="cBody">
			<form class="layui-form" action="stock/select2">
				<div class="console">
					<div class="layui-form-item">
						<button class="layui-btn">查询</button>					
					</div>
				</div>
				
				<table id="customList" class="layui-table">
					<thead>
						<tr>
							<th>单号</th>
							<th>入库日期</th>
							<th>所属仓库</th>
							<th>类型</th>
							<th>制单人</th>
							<th>规格</th>
							<th>单位</th>
							<th>入库数量</th>	
							<th>操作</th>					
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${stockList}" var="stock">
						<tr>
							<td>${stock.snumber}</td>
							<td>${stock.sdate}</td>
							<td>${stock.shouse}</td>
							<td>${stock.sperson}</td>
							<td>${stock.stype}</td>
							<td>${stock.specification}</td>
							<td>${stock.sunit}</td>
							<td>${stock.icount}</td>
							<td>
								<a type="button" onclick="delCustomList(_this)" href="stock/delete?snumber=${stock.snumber}" class="layui-btn layui-btn-xs">
								<span hidden="true" ></span>出库</a>	
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
	</body>
<script type="text/javascript">
//删除
function delCustomList(_this){
	layui.use(['form','laydate'], function() {
		layer.confirm('确定要删除么？', {
			btn: ['确定', '取消'] //按钮
		}, function() {
			$(_this).parent().parent().remove();
			layer.msg('删除成功', {
				icon: 1
			});
		}, function() {
			layer.msg('取消删除', {
				time: 2000 //20s后自动关闭
			});
		});
	});
}
</script>
</html>