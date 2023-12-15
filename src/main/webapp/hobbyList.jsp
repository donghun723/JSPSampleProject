
<%@page import="java.util.List"%>
<%@page import="db.dao.HobbyDAO"%>
<%@page import="db.dto.HobbyDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		
		HobbyDAO HobbyDAO = new HobbyDAO();

		List<HobbyDTO> hobbyList = HobbyDAO.findHobbyList();
	%>
	<h1>취미목록</h1>
	<%@ include file = "navigation.jsp" %>
	<!-- <a href = "./index.jsp">메인 페이지로</a> -->
	<table>
			<tr>
				<th>아이디</th>
				<th>순번</th>
				<th>취미</th>
				<th>선호도</th>
			</tr>
			<%
			if(hobbyList != null){
				for(HobbyDTO hobby : hobbyList){
			%>
				<tr>
					<td><%=hobby.getId()%></td>
					<td><%=hobby.getNo()%></td>
					<td><%=hobby.getHobby()%></td>
					<td><%=hobby.getPrefer()%></td>
				</tr>
			<%		
				}
			}
			 %>
	</table>
</body>
</html>