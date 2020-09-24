<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		
		
		<style type="text/css">
			.hide {display:none;}
			.show {display:inline;}
		</style>
	</head>

	<body>
		<div class="cBody">
		
			<div class="console">

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
			<form action="user/select/1/10" >
				<div class="layui-input-inline">
						<input type="text" name="aname"   placeholder="输入分管名称" autocomplete="on" class="layui-input">
				</div>
				<button class="layui-btn">查询</button>   
			<!--  <a class="layui-btn"  href="user/select">查询</a>   -->
			
			</form>
			
			<table class="layui-table">
				<thead>
					<tr>
						<th>分管编码</th>
						<th>分管名称</th>
						<th>所属区域</th>
						<th>负责人</th>
						<th>登录名</th>
						<th>联系方式</th>
						<th>传真</th>
						<th>邮箱</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach items="${pageInfo.list}" var="agent">
						<tr>
							<td>${agent.anumber}</td>
							<td>${agent.aname}</td>
							<td>${agent.area}</td>
							<td>${agent.head}</td>
							<td>${agent.iname}</td>
							<td>${agent.contact}</td>
							<td>${agent.fax}</td>
							<td>${agent.email}</td>
							<td>
								<a type="button" href="user/delete/${pageInfo.pageNum}/${pageInfo.pageSize}?anumber=${agent.anumber}" class="layui-btn layui-btn-xs">
								<span hidden="true"></span>删除</a>	
								<input  type="button" value="编辑" onclick="updateAgent(this)" class="layui-btn layui-btn-xs">
								<input   type="button" value="提交修改" onclick="updateAgent1(this)" class="layui-btn layui-btn-xs hide">
								<script type="text/javascript">
								
									function updateAgent(e){
										var text = $(e).val();
										$(e).next("input").toggleClass("hide");
										if(text=='编辑') {
											$(e).val("取消"); 
											$(e).parents("tr").children("td").eq(1)
												.attr("contenteditable",true).css("background-color","#90EE90");
											$(e).parents("tr").children("td").eq(3)
											.attr("contenteditable",true).css("background-color","#90EE90");
											$(e).parents("tr").children("td").eq(4)
											.attr("contenteditable",true).css("background-color","#90EE90");
											$(e).parents("tr").children("td").eq(5)
											.attr("contenteditable",true).css("background-color","#90EE90");
											$(e).parents("tr").children("td").eq(6)
											.attr("contenteditable",true).css("background-color","#90EE90");
										}
										else {
											$(e).val("编辑"); 
											$(e).parents("tr").children("td").eq(1)
												.attr("contenteditable",false).css("background-color","white");
											$(e).parents("tr").children("td").eq(3)
											.attr("contenteditable",false).css("background-color","white");
											$(e).parents("tr").children("td").eq(4)
											.attr("contenteditable",false).css("background-color","white");
											$(e).parents("tr").children("td").eq(5)
											.attr("contenteditable",false).css("background-color","white");
											$(e).parents("tr").children("td").eq(6)
											.attr("contenteditable",false).css("background-color","white");
										}
									}

										 function updateAgent1(e){
											 var form = document.forms[0];				     
										        form.method = "post";
										        form.submit();
											 $.post("user/update",
														{
												 			anumber:$(e).parents("tr").children("td").eq(0).text(),
															aname:$(e).parents("tr").children("td").eq(1).text(),
															head:$(e).parents("tr").children("td").eq(3).text(),
															iname:$(e).parents("tr").children("td").eq(4).text(),
															contact:$(e).parents("tr").children("td").eq(5).text(),
															fax:$(e).parents("tr").children("td").eq(6).text()
														},
														"text"
													);
												}
										
									 
							
								</script>
							</td>
						</tr>
							
							
					</c:forEach>
				
					
				</tbody>
			
			</table>
			
			
			<!-- layUI 分页模块 -->
			<div class="h_55"></div>				
		<div id="pages" style="top: 577px;">
			<div class="layui-box layui-laypage layui-laypage-default"
				id="layui-laypage-1">
				<span class="layui-laypage-count">共 ${pageInfo.total} 条</span>
				
				<c:if test="${pageInfo.prePage>0}">
				 <a href="user/select/${pageInfo.prePage}/${pageInfo.pageSize}" class="layui-laypage-prev "
					data-page="0">上一页</a> <span class="layui-laypage-curr" > 
					<c:forEach begin="1" end="${pageInfo.pages}" var="i">							
						<c:if test="${pageInfo.pageNum==i}" ></c:if> 
							<a href="user/select/${i}/${pageInfo.pageSize}">${i}</a>		
															
					 </c:forEach>
				</c:if>				
				
				<c:if test="${pageInfo.nextPage>0}">
					<a href="user/select/${pageInfo.nextPage}/${pageInfo.pageSize}" class="layui-laypage-next" data-page="2">下一页</a><span
					class="layui-laypage-limits">
				</c:if>					
					<select lay-ignore=""><option
							value="10" selected="">10 条/页</option>
						<option value="20">20 条/页</option>
						<option value="30">30 条/页</option>
						<option value="40">40 条/页</option>
						<option value="50">50 条/页</option></select></span><span class="layui-laypage-skip">到第<input
					type="text" min="1" value="1" class="layui-input">页
					<button type="button" class="layui-laypage-btn">确定</button></span>
			</div>
		</div>
		<script>
				/* layui.use(['laypage', 'layer'], function() {
					var laypage = layui.laypage,
						layer = layui.layer;
				
					//总页数大于页码总数
					laypage.render({
					    elem: 'pages',
					    count: '${pageInfo.total}',
					    layout: ['count', 'prev', 'page', 'next', 'limit', 'skip'],
					    jump: function(obj){
					      console.log(obj)
					    }
					});
				}); */
			</script>
		</div>
	</body>


</html>