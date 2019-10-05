<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/Style.css" rel="stylesheet" type="text/css" />
	<script language="javascript" src="<%=request.getContextPath() %>/js/public.js"></script>
	<script type="text/javascript">
	    //添加
		function addProduct() {
			window.location.href = "${pageContext.request.contextPath}/addUser";
		}
		//删除
		function p_del() {   
			var msg = "您确定要删除该用户吗？";   
			if (confirm(msg)==true){   
			return true;   
			}else{   
			return false;   
			}   
		}   
	</script>
<title>查询用户</title>
</head>
<body>
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/seleteUser"
		method="post" >
		<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="1">
			<TBODY>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f2">
						<strong>查 询 条 件</strong>
					</td>
				</tr>
				<tr>
					<td>
					
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">车牌号 :</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="car_id" size="15" id="car_id" class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">编号 :</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="u_id" size="15"  id="u_id" class="bg" />
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
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>用户信息</strong>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="添加" class="button_add" onclick="addProduct()">
							添加
						</button>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td align="center" width="8%">编号</td>
								<td align="center" width="8%">姓名</td>
								<td align="center" width="8%">密码</td>
								<td align="center" width="8%">车牌号</td>
								<td align="center" width="8%">余额</td>
								<td align="center" width="8%">编辑</td>
								<td align="center" width="8%">删除</td>
							</tr>
                            <!--  循环输出所有商品 -->
							<c:forEach items="${list}" var="p">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.u_id }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.name }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.passwd }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.car_id }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.money }</td>
									<td align="center" style="HEIGHT: 22px" width="8%">
									   <a href="${pageContext.request.contextPath}/findtUserById?id=${p.u_id}"> <!-- 修改 -->
											<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand"> 
										</a>
									</td>
									<td align="center" style="HEIGHT: 22px" width="8%">
										<a href="${pageContext.request.contextPath}/deleteUser?id=${p.u_id}" onclick="javascript:return p_del()">
												<img src="<%=request.getContextPath() %>/images/i_del.gif"
												width="16" height="16" border="0" style="CURSOR: hand">
										</a>
									</td>
								
								</tr>
							</c:forEach>
						</table>
					 </td>
				</tr>
			</TBODY>
	 </table>
	</form>
</body>
</html>