<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset style="width:400px">
		<legend align="center">添加车位</legend>
	<form action="${pageContext.request.contextPath }/addStop_place">
		<table>
			<tr>
				<td>车位位置</td>
				<td><input type="text" name="stop_id" placeholder="请输入车位号" /></td>
			</tr>
			
			<tr>
				<td>车位状态</td>
				<td><input type="text" name="status" value="0"  placeholder="默认为空位" /></td>
			</tr>
			<tr>
				
				<td><input type="submit" value="提交"/></td>
				<td><input type="reset" value="重置"/></td>
				<td><input type="button" value="关闭" onclick="javascript:history.back(-1);"/></td>
			</tr>
		</table>
		
	</form>
	</fieldset>
</body>
</html>