<%@page import="db.dto.PersonInfoDTO"%>
<%@page import="db.dao.PersonInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!--  수정하기  -->
	<%
		request.setCharacterEncoding("UTF-8"); //수정하기 버튼을 눌렀을때 리퀘스트가 있어야 한글이 잘나옴
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		if( name == null){
			//이름이 안넘어왔는데?
		}
		System.out.println("modifyPerson_proc 파라미터 : " + id+ " " + name);
		int intId = Integer.parseInt(id);
		
		PersonInfoDAO personInfoDAO = new PersonInfoDAO();
		PersonInfoDTO personInfo = new PersonInfoDTO(intId, name);
		
		int result = personInfoDAO.modifyPersonInfo(personInfo);
		
		if(result > 0){
			%>
				<script> alert('수정 성공');
					location.href = 'personInfo.jsp?id=<%=id%>'; //해당 경로로 페이지 이동 //id 값을 지정해야 화면을 보여준다.
				</script>
			<%		
				} else {
			%>
				<script> alert('수정 실패');
				//	location.href = 'addPerson.jsp'; //해당 경로로 페이지 이동
					history.back(); //뒤로가기
				</script>
				
			<%		
				}
			%>
	
</body>
</html>