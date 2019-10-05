<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<form action="${pageContext.request.contextPath}/findStop_place1" method="post">
			
					编号：
									<input type="text" name="s_id" size="15" id="s_id" class="bg" />
								</td>
								车位号：
								<input type="text" name="stop_id" size="15" id="stop_id" class="bg" />
								车位状态
								
								<input type="text" name="status" size="15" id="status" class="bg" />
							
								<input type="submit"  value="查询" />
						
					</form>
</body>
</html>