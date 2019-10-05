<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>修改用户</title>
</head>
<body>
	<fieldset style="width:400px">
		<legend align="center">修改用户信息</legend>
	<form action="${pageContext.request.contextPath }/updateUser" method="post">
		<font color="greee">
			<span id="updateSuccess">${updateSuccess}</span>
		</font>
		<font color="red">
			<span id="updateFaile">${updateFaile}</span>
		</font>
		
		<table>
			<tr>
				<td>编号</td>
				<td><input type="text" name="u_id" id="u_id" value="${user1.u_id}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name"  id="name" value="${user1.name}"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="passwd" id="passwd" value="${user1.passwd}"/></td>
			</tr>
			<tr>
				<td>车牌号</td>
				<td>
					<input type="text" name="car_id" id="car_id" value="${user1.car_id}" />
				</td>
			</tr>
			<tr>
				<td>余额</td>
				<td><input type="text" name="money" id="money" value="${user1.money}"  readonly="readonly"/></td>
			</tr>
			
			<tr>
				
				<td><input type="submit" value="提交"/></td>
				<td><input type="button" value="关闭" onclick="javascript:history.back(-1);"/></td>
			</tr>
		</table>
		
	</form>
	</fieldset>
</body>
</html>