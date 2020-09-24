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
			<form id="addForm" class="layui-form" action="comm/add" >
				<div class="layui-form-item">
					<label class="layui-form-label">商品编号</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="cid" placeholder="只允许输入数字" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>
			
				<div class="layui-form-item">
					<label class="layui-form-label">商品名称</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="cname" required lay-verify="required"  autocomplete="off" class="layui-input">
					</div>
            		<i class="iconfont icon-huaban bt"></i>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">商品图片</label>
					<div class="layui-upload-drag" id="goodsPic">
					  <i class="layui-icon"></i>
					  <p>点击上传，或将文件拖拽到此处</p>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">价格</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="price" required lay-verify="required|number"  autocomplete="off" class="layui-input">
					</div>
				</div>
			
				<div class="layui-form-item">
					<label class="layui-form-label">单位</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="unit" required lay-verify="required"  autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">商品类型</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="cvalue" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>	
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit lay-filter="submitBut">立即提交</button>
						<!-- <a class="layui-btn"  href="comm/add">立即提交</a> -->
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		<script>
		layui.use(['upload','form'], function() {
			var form = layui.form;
			var upload = layui.upload;
			var layer = layui.layer;
			//监听提交
			form.on('submit(submitBut)', function(data) {
				return true;
			});
			form.verify({
				//数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
			  	ZHCheck: [
				    /^[\u0391-\uFFE5]+$/
				    ,'只允许输入中文'
			  	] 
			});
					//拖拽上传
					upload.render({
						elem: '#goodsPic',
						url: '/upload/',
						done: function(res) {
						  	console.log(res)
						}
					});
		});
				
			</script>
		</div>
	</body>

</html>