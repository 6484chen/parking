<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加用户</title>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var passwd = $("#passwd").val();
    var passwd1 = $("#passwd1").val();
    if(passwd != passwd1){
    	$("#message").text("两次密码不正确");
        return false;
    }  
    return true;
}
</script>
</head>

<body>

<fieldset style="width:400px">
		<legend align="center">添加用户信息</legend>
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
	<form action="${pageContext.request.contextPath }/addUser1" method="post" onsubmit="return check()">
		<table>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" id="name"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="passwd" id="passwd"/></td>
			</tr>
			<tr>
				<td>确认密码</td>
				<td><input type="text" name="passwd1"  id="passwd1"/></td>
			</tr>
			<tr>
				<td>车牌号</td>
				<td><input type="text" name="car_id" id= "car_id"/></td>
			</tr>
			<tr>
				<td>余额</td>
				<td><input type="text" name="money"  id="money"/></td>
			</tr>
			<tr>
				
				<td><input type="submit" value="提交" /></td>
				<td><input type="reset" value="重置"/></td>
				<td><input type="button" value="关闭" onclick="javascript:history.back(-1);"/></td>
			</tr>
		</table>
		
	</form>
	</fieldset>

</body>
</html>