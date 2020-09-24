<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	//http://127.0.0.1:8080/SSMPro/
	String contextPath = request.getScheme()+"://"//协议头
		+ request.getLocalAddr() + ":" + request.getLocalPort()//ip+端口
		+ request.getServletContext().getContextPath() + "/";
%>
<base href="<%=contextPath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

</body>
</html>