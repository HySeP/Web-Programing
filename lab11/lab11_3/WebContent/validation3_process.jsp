<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation</title>
</head>
<body>
	<h3>�Է¿� �����߽��ϴ�.</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwdchk = request.getParameter("passwd2");
	%>
	<p> ���̵� : <%=id%>
	<p> ��й�ȣ : <%=passwd%>
	<p> ��й�ȣ Ȯ��: <%=passwdchk%>
</body>
</html>