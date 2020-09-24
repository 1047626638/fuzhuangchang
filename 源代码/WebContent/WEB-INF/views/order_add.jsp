<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
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
		
		<style>
			.layui-form{
				margin-right: 30%;
			}
		</style>

	</head>
	<body>
		<div class="cBody">
			<form id="addForm" class="layui-form" action="orders/insert" method="post">
				<div class="layui-form-item">
					<label class="layui-form-label">日期</label>
					<div class="layui-input-inline shortInput">
						<input type="date" name="odate" required lay-verify="required" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">订货单数</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="iorders" placeholder="只允许输入数字" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>	
				<div class="layui-form-item">
					<label class="layui-form-label">退货单数</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="rorders" placeholder="只允许输入数字" required lay-verify="required|number"  autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">订货客户数</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="oamount" placeholder="只允许输入数字" required lay-verify="required|number"  autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">退货客户数</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="ramount" placeholder="只允许输入数字"  required lay-verify="required|number"  autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">订单金额</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="omoney"  placeholder="只允许输入数字" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>	
				<div class="layui-form-item">
					<label class="layui-form-label">退货金额</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="rmoney" placeholder="只允许输入数字" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>	
				<div class="layui-form-item">
					<label class="layui-form-label">金额合计</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="amoney" placeholder="只允许输入数字" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>	
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit lay-filter="submitBut">立即提交</button>
					<!--  <a class="layui-btn"  href="orders/insert">立即提交</a>  -->
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>

		<script>
				
					//拖拽上传
					upload.render({
						elem: '#goodsPic',
						url: '/upload/',
						done: function(res) {
						  	console.log(res)
						}
					});		
			</script>
		</div>
	</body>

</html>