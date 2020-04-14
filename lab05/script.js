id=prompt("아이디를 입력해주세요.");

if(id == 'id01') {
	password=prompt("비밀번호를 입력해주세요.");
	if(password == '1234') {
		location.href="log.html"
	}
	else {
		location.href="err.html"
	}
}
else {
	location.href = "err.html"
}

if(id == 'id02') {
	password=prompt("비밀번호를 입력해주세요.");
	if(password == '4321') {
		location.href="log.html"
	}
	else {
		location.href="err.html"
	}
}
else {
	location.href = "err.html"
}

if(id == 'id03') {
	password=prompt("비밀번호를 입력해주세요.");
	if(password == '5678') {
		location.href="log.html"
	}
	else {
		location.href="err.html"
	}
}
else {
	location.href = "err.html"
}