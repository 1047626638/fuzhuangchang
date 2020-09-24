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
		<style type="text/css">
			.hide {display:none;}
			.show {display:inline;}
		</style>
		<style>
			.layui-table img {
			    max-width: none;
			}
		</style>

	</head>

	<body>
		<div class="cBody">
			<div class="console">
				
			<form class="layui-form" action="comm/select" method="post">
				<div class="layui-input-inline">
						<input type="text" name="cid"  placeholder="输入商品编号" autocomplete="on" class="layui-input">
				</div>
			<button class="layui-btn">查询</button>
		
			</form>

				<script>
					layui.use('form', function() {
						var form = layui.form;
				
						//监听提交
						form.on('submit(submitBut)', function(data) {
							layer.msg(JSON.stringify(data.field));
							return false;
						});
					});
				</script>
			</div>
			
			<table class="layui-table">
				<thead>
					<tr>
						<th>商品编号</th>
						<th>商品名称</th>
						<th>参考价格</th>
						<th>商品单位</th>
						<th>商品类型</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${commList}" var="comm">
					<tr>
						<td>${comm.cid}</td>
						<td>${comm.cname}</td>
						<td>${comm.price}</td>
						<td>${comm.unit}</td>
						<td>${comm.cvalue}</td>
						<td>
						<a type="button" onclick="delCustomList(_this)" href="comm/delete?cid=${comm.cid}" class="layui-btn layui-btn-xs">
								<span hidden="true" ></span>删除</a>	
						<button class="layui-btn layui-btn-xs" onclick="updateBut(${comm.cid})">修改</button>
		
							
						</td>
					</tr>
					
				</c:forEach>
				</tbody>
			</table>
			
			<!-- layUI 分页模块 -->
			<div class="h_55"></div>
			<div id="pages"></div>
			<script>		
				layui.use('laypage', function() {
					var laypage = layui.laypage;
				
					//总页数大于页码总数
					laypage.render({
					    elem: 'pages'
					    ,count: 100
					    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
					    ,jump: function(obj){
//					      console.log(obj)
					    }
					});
				});
				//修改规格
				function specificationsBut(){
					layui.use('layer', function() {
						var layer = layui.layer;
						
						//iframe层-父子操作
						layer.open({
							type: 2,
							area: ['70%', '60%'],
							fixed: false, //不固定
							maxmin: true,
							content: 'specifications_list.html'
						});
					});
					
				}
				//修改按钮
				var updateFrame = null;
				function updateBut(id){
					layui.use('layer', function() {
						var layer = layui.layer;
							
						//iframe层-父子操作
						updateFrame = layer.open({
                    		title: "商品信息修改",
							type: 2,
							area: ['70%', '60%'],
							scrollbar: false,	//默认：true,默认允许浏览器滚动，如果设定scrollbar: false，则屏蔽
							maxmin: true,
							content: 'comm/select/'+id
							//content: 'good_update'
						});
					});
					
				}
				
				//删除按钮
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
		</div>
	</body>

</html>