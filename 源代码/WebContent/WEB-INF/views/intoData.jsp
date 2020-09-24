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

	</head>

	<body>
		<div class="cBody">
			<form class="layui-form" action="stock/insert">
				<div class="console">
					<div class="layui-form-item">
						<a class="layui-btn" onclick="addIntoDataList('customList')">新增</a>					
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
							
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				<div class="layui-form-item">			
						<button  class="layui-btn" >确定</button>
					</div>
			</form>
		</div>
	</body>
	<script>
	function addIntoDataList(id){
	var str = '<tr>'+
		'<td>'+
		    '<select name="snumber" lay-verify="required" lay-search="">'+
	          '<option value="">直接选择或搜索选择</option>'+
	          '<option value="1">1</option>'+
	          '<option value="2">2</option>'+
	          '<option value="3">3</option>'+
	          '<option value="4">4</option>'+
	          '<option value="5">5</option>'+
	          '<option value="6">6</option>'+
	          '<option value="7">7</option>'+
	          '<option value="8">8</option>'+
	          '<option value="9">9</option>'+
	          '<option value="10">10</option>'+
	          '<option value="11">11</option>'+
	          '<option value="12">12</option>'+
	          '<option value="13">13</option>'+
	          '<option value="14">14</option>'+
	          '<option value="15">15</option>'+
	          '<option value="16">16</option>'+
	          '<option value="17">17</option>'+
	          '<option value="18">18</option>'+
	          '<option value="19">19</option>'+
	          '<option value="20">20</option>'+
	        '</select>'+
		'</td>'+
		'<td>'+
		    '<input type="date" name="sdate" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
		'<td>'+
		    '<input type="text" name="shouse" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
		'<td>'+
		    '<input type="text" name="stype" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
		'<td>'+
		    '<input type="text" name="sperson" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
		'<td>'+
		    '<input type="text" name="specification" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
		'<td>'+
		    '<input type="text" name="sunit" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
		'<td>'+
		    '<input type="text" name="icount" lay-verify="required" autocomplete="off" class="layui-input">'+
		'</td>'+
	'</tr>';
	$("#"+id).append(str);
	layui.use(['form','laydate'], function() {
		var form = layui.form;
		
		form.render();
	});
	//重新初始化Iframe的高度
	cframeInit();
}

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