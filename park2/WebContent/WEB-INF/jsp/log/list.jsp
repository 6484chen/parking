<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
	<meta http-equiv="Content-Language" content="zh-cn">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/css/Style.css" rel="stylesheet" type="text/css" />
	<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>

</HEAD>
<body>
	<br />
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/seleteLog"
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
					<!-- 修改了 border值 -->
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01" >车牌号</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="car_id" size="15" value="" id="car_id" class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">车位号</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="stop_id" size="15" value="" id="stop_id" class="bg" />
								</td>
							</tr>
							<tr>
								
								<td></td>
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
									<button type="submit" id="search" name="search" value="&#26597;&#35810;" class="button_view">
										&#26597;&#35810;
									</button> 
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<!-- 重置 -->
									<input type="reset" name="reset" value="&#37325;&#32622;" class="button_view" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>停车记录</strong>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="&#28155;&#21152;" class="button_add" onclick="addProduct()">
							&#28155;&#21152;
						</button>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td align="center" width="14%">编号</td>
								<td align="center" width="14%">车牌号</td>
								<td align="center" width="14%">进入时间</td>
								<td align="center" width="14%">离开时间</td>
								<td align="center" width="14%">车位号</td>
								<td align="center" width="14%">停车时长</td>
								<td align="center" width="14%">消费</td>

							</tr>
                            <!--  循环输出所有商品 -->
							<c:forEach items="${list}" var="p">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.id }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.car_id}</td><!-- 更改性别位置 -->
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.in_time }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.out_time }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.stop_id }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.long_time}</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.cost}</td>
								</tr>
							</c:forEach>
						</table>
					 </td>
				</tr>
			</TBODY>
	 </table>
	</form>
</body>
</HTML>