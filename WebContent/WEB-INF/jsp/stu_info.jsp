<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息页面</title>
</head>
<body>
	<body style="text-align: center;"background="${pageContext.request.contextPath}/img/bg5.jpg">
	<h1>个人信息</h1>
    
    <form action="${pageContext.request.contextPath}/StuModifyServlet" method="post" >

	 <table width="60%" border="1" align="center">
    	<tr>
    		<td>用户名</td>
    		<td>
    			<input type="text" name="name" value="${user.name}">
    		</td>
    	</tr>
    	
    	<tr>
    		<td>密码</td>
    		<td>
    			<input type="password" name="passwd" value="${user.passwd}">
    		</td>
    	</tr>
    	
  
    	
    	<tr>
    		<td>性别</td>
    		<td>
    			<c:if test="${user.gender=='male'}">
    				<input type="radio" name="gender" value="male" checked>男
    				<input type="radio" name="gender" value="female" >女    		
    			</c:if>
    			<c:if test="${user.gender=='female'}">
		   			<input type="radio" name="gender" value="male" >男
		   			<input type="radio" name="gender" value="female" checked>女    
    			</c:if>	
    		</td>
    	</tr>
    	
    	<tr>
    		<td>邮箱</td>
    		<td>
    			<input type="text" name="email" value="${user.email}">
    		</td>
    	</tr>
    	
    	<tr>
    		<td>电话</td>
    		<td>
    			<input type="text" name="telephone" value="${user.telephone}">
    		</td>
    	</tr>
    	
    	<tr>
    		<td>备注</td>
    		<td>
    			<textarea rows="5" cols="50" name="description">${user.description}</textarea>
    		</td>
    	</tr>
    	
    	<tr height="30">
    		<td colspan="2">
 				<input type="submit" value="修改" >
 				<input type="button" value="返回" onclick="window.location.href='${pageContext.request.contextPath}'">
 			</td>
 		</tr>
    </table>
     	
    </form>
    
   
</body>
</html>