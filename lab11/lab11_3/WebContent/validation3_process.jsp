<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwdchk = request.getParameter("passwd2");
	%>
	<p> 아이디 : <%=id%>
	<p> 비밀번호 : <%=passwd%>
	<p> 비밀번호 확인: <%=passwdchk%>
</body>
</html>