<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员修改</title>
</head>
<body>

	<body style="text-align: center;" background="${pageContext.request.contextPath}/img/bg5.jpg">

    <br><br><br><br><br><form action="${pageContext.request.contextPath}/AdminModifyServlet" method="post">
	 <table width="30%" border="1" align="center">
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
    		<td colspan="2">
    			<input type="submit" value="修改" align="middle">&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type="button" value="返回" onclick="window.location.href='${pageContext.request.contextPath}'" align="middle">		
    		</td>
    	</tr>
    
    </table>
     	
    </form>

</body>
</html>