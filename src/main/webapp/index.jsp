<%@ page import = "db.dto.PersonInfoDTO"%>
<%@ page import = "java.util.List" %>
<%@ page import = "db.dao.PersonInfoDAO" %>
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
		PersonInfoDAO personInfoDAO = new PersonInfoDAO();
		
		List<PersonInfoDTO> personList = personInfoDAO.findPersonInfoList();
	%>
	
	<h1>index.jsp 페이지</h1>
	
	<%@
		 include file="navigation.jsp"
	 %>
	<!-- <a href = "./addPerson.jsp">신규 인원 추가</a>
	//<a href = "./hobbyList.jsp">취미 목록으로이동</a> -->
	
	<hr/>
	
	<%
		for(PersonInfoDTO personInfo : personList){		
	%>
	<p> <%=personInfo.getId()%> <a href="./personInfo.jsp?id=<%=personInfo.getId()%>"><%=personInfo.getName()%></a> </p>
	
	<% 
		}
	%>
	
	
</body>
</html>