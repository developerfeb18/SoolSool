<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	function check(){
		if(document.update.uuserNickname.value == ""){
			alert("닉네임을 입력하십시오!");
		}else if(document.update.uuserPassword.value == ""){
			alert("비밀번호를 입력하십시오!");
		}else if(document.update.uuserPhone.value == ""){
			alert("전화번호를 입력하십시오!");
		}else{
			document.update.submit();
		}
	}
</script>
<%@include file = "/WEB-INF/views/layout/header.jsp" %>
 	<div align="center">
 		<form action="${ pageContext.request.contextPath }/uuser/update" method="post" name = "update">
 			<table id="table">
		<tr>
			<td id="border">이름</td>
			<td id="border" >${vo.uuserName }</td>
		</tr>
		<tr>
			<td id="border">닉네임</td>
			<td id="border"><input type="text" name="uuserNickname"></td>
		</tr>
		<tr>
			<td id="border">비밀번호</td>
			<td id="border"><input type="password" name="uuserPassword"></td>
		</tr>
		<tr>
			<td id="border">이메일</td>
			<td id="border">${vo.uuserEmail}</td>
		</tr>
		<tr>
			<td id="border">전화번호</td>
			<td id="border"><input type="text" name="uuserPhone"></td>
		</tr>
		<tr>
			<td id="border">수신 이메일</td>
			<td id="border"><input type="checkbox" name="uuserEcheck" value="1"></td>
		</tr>
		<tr>
			<td id="border">수신 SMS</td>
			<td id="border"><input type="checkbox" name="uuserScheck" value="1"></td>
		</tr>
			 	<tr>
			 		<td colspan="2" align="right" id="border">
			 			<input type="button" value = "수정" onclick="javascript:check()">
			 			<input type="button" value = "돌아가기" onclick="location.href='${ pageContext.request.contextPath }/uuser/uuserInfo'">
			 		</td>
			 	</tr>
			 </table>	
 	</form>
 	</div>
<%@include file = "/WEB-INF/views/layout/footer.jsp" %>