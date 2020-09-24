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
			<form id="addForm" class="layui-form" action="user/add" method="post">
				<div class="layui-form-item">
					<label class="layui-form-label">分管编码</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="anumber" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>
			
				<div class="layui-form-item">
					<label class="layui-form-label">分管名称</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="aname" required lay-verify="required|ZHCheck" placeholder="例:穷在闹市(只允许输入中文)" autocomplete="off" class="layui-input">
					</div>
            		<i class="iconfont icon-huaban bt"></i>
				</div>
				<div class="layui-form-item" >
					<label class="layui-form-label">地区</label>
	                <div class="layui-input-inline" >
	                    <select name="provid" id="provid" lay-filter="provid">
	                    
	                    </select>
	                </div>
	                <div class="layui-input-inline">
	                    <select name="cityid" id="cityid" lay-filter="cityid">
	                     
	                    </select>
	                </div>
	                <div class="layui-input-inline">
	                    <select name="areaid" id="areaid" lay-filter="areaid">
	                     
	                    </select>
	                </div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">负责人</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="head" required lay-verify="required|ZHCheck" placeholder="例:张三(只允许输入中文)" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">登录名</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="iname" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
		
				
				<div class="layui-form-item">
					<label class="layui-form-label">电话</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="contact" required lay-verify="required|phone" placeholder="例：13000000000" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">传真</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="fax" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">邮箱</label>
					<div class="layui-input-inline shortInput">
						<input type="text" name="email" autocomplete="off" class="layui-input">
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
			
			<!-- 三级省市 插件 -->
    		<script src="framework/area.js"></script>
			<script src="framework/province.js"></script>
			<script>
				//默认城市为：四川 - 成都
		        var defaults = {
		            s1: 'provid',
		            s2: 'cityid',
		            s3: 'areaid',
		            v1: 510000,
		            v2: 510100,
		            v3: null
		        };
			</script>

		</div>
	</body>

</html>