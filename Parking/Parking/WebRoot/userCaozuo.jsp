<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<style>
	ul#nav{ width:100%; height:60px; background:#00A2CA;margin:0 auto} 
ul#nav li{display:inline; height:60px} 
ul#nav li a{display:inline-block; padding:0 200px; height:60px; line-height:60px;
 color:#FFF; font-family:"\5FAE\8F6F\96C5\9ED1"; font-size:16px} 
ul#nav li a:hover{background:#0095BB}/*设置鼠标滑过或悬停时变化的背景颜色*/ 
	</style>

  </head>
  
  <body>

 
    <h2 align="center" style="color:#0000FF;">用户管理</h2>
    <ul id="nav" align="center"> 
        
        <li><a href="index.jsp">返回首页</a></li> 
        <li><a href="admin.jsp">管理员操作</a></li> 
        
    </ul>  
   
  


		<table border="2" width="100%;" style="float:center;">
			<tr>
				
				<th>用户名：</th>
				
				<th>是否为管理员：</th>
				<th>账户余额：</th>
				<th>删除</th>
               

			</tr>

			<c:forEach items="${userList}" var="bean">
				<tr>
					<td align="center">${bean.username}</td>
					<td align="center">${bean.administra}</td>	
					<td align="center">${bean.balance}</td>						
					<td align="center"><a href="${request.contextPath}/Parking/UserAction!delete.action?id=${bean.id} ">删除</td>
				
				</tr>

			</c:forEach>

		</table>
		
	



  </body>
</html>
