<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin( ) {
		
		var id = document.frm.id.value;
		var idregExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가\힣]/;
		
		var passwd = document.frm.passwd.value;
		var pwdregExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
		var pwdregExp1 =  /(\d)\1\1/;
		var pwdregExp2 =  /(\w)\1\1/;
		
		var pwdchk = document.frm.passwd2.value;
		
		if (!idregExp.test(id)) {
			alert("이름은 숫자로 시작할 수 없습니다!");
			return;
		}
		
		if (!pwdregExp.test(passwd)) {
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			return;
		}
		
		
		if (pwdregExp1.test(passwd)) {
			alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
			return;
		}
		
		if (pwdregExp2.test(passwd)) {
			alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
			return;
		}
		
		if(passwd != pwdchk){
			alert("비밀번호가 일치하지 않습니다.");
			return;
		}
		
		

  		frm.submit();
	}
</script>

<body>
	<form name="frm" action="validation3_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호: <input type="password" name="passwd">
		<p> 비밀번호 확인: <input type="password" name="passwd2">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>