<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사진 등록 :D</title>
</head>
<body>
<h3>사진 업로드</h3>
<form action="picture.do" method="post" enctype="multipart/form-data">
	<input type="file" name ="pic">
	<input type="submit" value="사진등록">
</form>
</body>
</html>