<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판 글쓰기</title>
<link rel="stylesheet" href="../../css/write.css">
<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
<script type="text/javascript">
function inputcheck(){
	if(f.subject.value==""){
		alert("제목을 입력하세요");
		f.subject.focus();
		return;
	}
	if(f.wsection.value==""){
		alert("국가를 선택하세요");
		f.wsection.focus();
		return;
	}
/* 	if(f.content.value==""){
		alert("내용을 입력하세요");
		f.content.focus();
		return;
	} */
	f.submit();
}
</script>
<style>
<style>
th{
	 margin: 3%;
}
table{
	width:100%;
	margin:5%;
	margin-right:auto; 
	margin-left:auto;
}

table tr{
	width:50px;
	text-align:center;
	vertical-align: middle;
	padding:2%;
	border:1px solid #77AAAD;
} 

table td{
	width:300px;
	margin: 3%;
}
form{
	margin-top:2%;
	margin-bottom:2%;

}
</style>
</style>
</head>
<body>

<form action="write.do" method="post" enctype="multipart/form-data" name="f">
<input type="hidden" value="${param.bsection}" name="bsection">
	<table border="1">
	<tr><th>국가 선택</th>
	 <td>
      	 <select name="wsection">
			<c:set var="arr" value='<%=new String[]{"영국","프랑스","스위스","오스트리아","스페인","이탈리아","동유럽","그 외국가"} %>' />
			<c:forEach var="d" items="${arr}">
				<option value="" selected disabled hidden >국가</option>
		   		<option>${d}</option>
		    </c:forEach></select>
    </td> 
	<th>작성자</th><td><input type="text" name="id" value="${login}" readonly></td></tr>
	<tr><th>제목</th><td colspan="3"><input type="text" name="subject" style="width:100%"></td></tr>
	<tr><th>내용</th><td colspan="3"><textarea rows="10" name="content" id="content1" style="width:100%"></textarea></td></tr>
	<script>CKEDITOR.replace("content",{ 	filebrowserImageUploadUrl : "imgupload.do"});
	</script>
	<tr><th>첨부파일</th><td colspan="3"><input type="file" name="file1"></td></tr>
	<tr><td colspan="4" >&nbsp;</td></tr>
	<tr><td colspan="2"><a href="<c:if test="${b.bsection==1}">tourForm.do?bsection=1</c:if>
						 <c:if test="${b.bsection==2}">restaurantForm.do?bsection=2</c:if>
						 <c:if test="${b.bsection==3}">etcForm.do?bsection=3</c:if>
						 <c:if test="${b.bsection==4}">photoForm.do?bsection=4</c:if>" style="text-align:right">취소</a></td><td colspan="2"><a href="javascript:inputcheck()"> 등록</a></td></tr>
</table>
</form>
</body>
</html>