<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/selectStop_place" method="post" >
					<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01" >车位号:</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="stop_id" size="15" value="" id="stop_id" class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">车位状态 :</td>
								<td class="ta_01" bgColor="#ffffff">
								<input type="text" name="status" size="15" value="" id="status" class="bg" />
								</td>
							</tr>
							<tr>
								<td width="100" height="22" align="center" bgColor="#f5fafe" class="ta_01"></td>
								<td class="ta_01" bgColor="#ffffff">
									<font face="宋体" color="red"> &nbsp;</font>
								</td>
								<td align="right" bgColor="#ffffff" class="ta_01">
									<br /><br />
								</td>
								<td align="right" bgColor="#ffffff" class="ta_01">
								<!-- 查询 -->
									<button type="submit" id="search" name="search" value="查询" class="button_view">
										查询
									</button> 
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<!-- 重置 -->
									<input type="reset" name="reset" value="重置" class="button_view" />
								</td>
							</tr>
						</table>
						</form>

</body>
</html>