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
		<meta name="author" content="服装" />
		<!-- 作者 -->
		<meta name="revised" content="服装.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>服装回收管理</title>

		<!-- 公共样式 开始 -->
		<link rel="shortcut icon" href="images/favicon.ico"/>
		<link rel="bookmark" href="images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
		<script type="text/javascript" src="framework/jquery-1.11.3.min.js" ></script>
		<script type="text/javascript" src="js/base.js"></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="framework/html5shiv.min.js"></script>
	      	<script src="framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="layui/layui.js"></script>
		<script src="framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<link rel="stylesheet" type="text/css" href="css/frameStyle.css">
		<script type="text/javascript" src="framework/frame.js" ></script>
		
	</head>

	<body>
		<!-- 左侧菜单 - 开始 -->
		<div class="frameMenu">
		    <div class="logo">
		        <img src="images/logo.png"/>
		        <div class="logoText">
		            <h1>服装回收管理系统</h1>
		        </div>
		    </div>
		    <div class="menu">
		    	<div class="hoverBox"></div>
		        <ul>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)" onclick="menuCAClick('tgls/qdAPI.html',this, 'page10001')"><i class="iconfont icon-zhishi left" onmouseenter="getLeftTips(this, '前端API')" onmouseleave="layer.closeAll('tips')"></i><font>前端API</font></a>
		            </li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)" onclick="menuCAClick('tgls/iconfont.html',this, 'page10002')"><i class="iconfont icon-huojian left" onmouseenter="getLeftTips(this, 'iconfont字体库')" onmouseleave="layer.closeAll('tips')"></i><font>iconfont字体库</font></a>
		            </li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-liuliangyunpingtaitubiao03 left" onmouseenter="getLeftTips(this, '代理商管理')" onmouseleave="layer.closeAll('tips')"></i><font>代理商管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('agent_add',this, 'page10022')">添加代理商</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('agent_list',this, 'page10023')">代理商列表</a></dt>
		                </dl>
		            </li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left" onmouseenter="getLeftTips(this, '商品管理')" onmouseleave="layer.closeAll('tips')"></i><font>商品管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<!-- <dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/goodsManage/goodsType_list.html',this, 'page10024')">分类列表</a></dt> -->
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('goods_list',this, 'page10025')">基本商品库</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('goods_add',this, 'page10026')">添加商品</a></dt>
		                	
		                </dl>
		            </li>
		            <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-wodeyewuyuan left" onmouseenter="getLeftTips(this, '员工管理')" onmouseleave="layer.closeAll('tips')"></i><font>员工管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('emp_list',this, 'page10098')">员工列表</a></dt>
		                	
		                </dl>
		            </li>
		            <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-dingdan left" onmouseenter="getLeftTips(this, '订单管理')" onmouseleave="layer.closeAll('tips')"></i><font>订单管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		              
		                	
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('reportForm1',this, 'page10035')">订单统计报表</a></dt>
		               
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('order_add',this, 'page11026')">添加订单</a></dt>
		                	
		                </dl>
		            </li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-yunying left" onmouseenter="getLeftTips(this, '基础库内容')" onmouseleave="layer.closeAll('tips')"></i><font>基础库内容</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('base_add',this, 'page10027')">表单含编辑器</a></dt>
		                	<!-- <dt><a href="javascript:void(0)" onclick="menuCAClick('base_list, 'page10028')">常用列表</a></dt> -->
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/base/base_customList.html',this, 'page10029')">可新增的列表</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/base/base_customNewList.html',this, 'page10030')">可新增的列表(手写)</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/base/pages.html',this, 'page10031')">页签切换Table</a></dt>
		              
		                </dl>
		           	</li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left" onmouseenter="getLeftTips(this, '打印模板')" onmouseleave="layer.closeAll('tips')"></i><font>打印模板</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/print/outPrintData.html',this, 'page10033')">打印单打印模版</a></dt>
		                </dl>
		           	</li>
		        	
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-peisong2 left" onmouseenter="getLeftTips(this, '出入库管理')" onmouseleave="layer.closeAll('tips')"></i><font>出入库管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('intoData',this, 'page10036')">入库管理</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('outData',this, 'page10037')">出库管理</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('outPrintData',this, 'page10038')">库存列表</a></dt>
		                </dl>
		           </li>
		        </ul>
		    </div>
		</div>
		<!-- 左侧菜单 - 结束 -->
		
		<div class="main">
			<!-- 头部栏 - 开始 -->
			<div class="frameTop">
				<div class="shrinkBut">
		    		<div class="hoverBox"></div>
					<ul>
						<li><a href="javascript:void(0)" onclick="menuShrink(this)" onmouseenter="getTips(this, '收缩菜单')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-caidan-shousuo"></i></a></li>
						<li><a href="javascript:void(0)" onclick="frameRefresh()" onmouseenter="getTips(this, '刷新')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-htmal5icon23"></i></a></li>
					</ul>
				</div>
				<div class="topMenu">
		    		<div class="hoverBox"></div>
					<ul>
						<li><a href="javascript:void(0)" onclick="menuCAClick('tgls/base/maintain.html',this, 'pageNotice', '通知公告')" onmouseenter="getTips(this, '通知公告')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-tongzhigonggao1"></i><span class="news"></span></a></li>
						<li><a href="javascript:void(0)" id="fullScreenBut" onclick="fullScreen('fullScreenBut')" onmouseenter="getTips(this, '全屏')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-full-screen"></i></a></li>
						<li>
							<a href="javascript:void(0)"><font>用户</font><i class="iconfont icon-up-copy"></i></a>
							<dl>
								<dt><a href="javascript:void(0)" onclick="menuCAClick('modify_password',this, 'pageUserInfo')">添加账户</a></dt>			 
			                	<dt><a href="javascript:void(0)" onclick="menuCAClick('admin_select',this, 'pageModifyPassword')">基本资料</a></dt>
			                </dl>
						</li>
						<li><a href="logout" onmouseenter="getTips(this, '退出系统')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-084tuichu"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- 头部栏 - 结束 -->
			
			<!-- 核心区域 - 开始 -->
			<div class="frameMain">
				<div class="title" id="frameMainTitle">
					<i class="iconfont icon-shuangzuojiantou- leftbut" onclick="pageShow('l')"></i>
					<div class="mainPageBox">
						<div class="mainPage">
							<span class="active" onclick="pageSwitch(this)">
			    				<div class="hoverBox"></div>
								<i class="iconfont icon-shouye"></i>
							</span>
						</div>
					</div>
					<i class="iconfont icon-shuangyoujiantou- rightbut" onclick="pageShow('r')"></i>
					<i class="iconfont icon-iconfontarrows1 rightbut pageAllBut">
						<dl>
		                	<dt><a href="javascript:void(0)" onclick="nowpageClose()">关闭当前标签页</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="otherpageClose()">关闭其它标签页</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="allpageClose()">关闭全部标签页</a></dt>
		                </dl>
					</i>
				</div>
				<div class="con">
					<div class="mainPageCon">
						<iframe class="mainIframe" src="tgls/index.html" scrolling="yes"></iframe>
					</div>
				</div>
			</div>
			<!-- 核心区域 - 结束 -->
		</div>
	</body>

</html>