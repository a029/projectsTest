<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.newT{
	border: 2px solid black;
	border-collapse: collapse;
	width: 100%;
}
.newT td{
	border: 1px solid black;
}
.dib {
	display: inline-block;
	width: 4rem;
	height: 4rem;
}
</style>
</head>
<body>
<div>
	티셔츠를 팔거에요
	<div>
		<a href="/shoe.jsp">신도 팔꺼임</a>
	</div>
</div>
<div>
	<a href="/maple.jsp">메이플템 팜</a>
</div>
<table class="newT">
	<colgroup>
		<col width="10%">
		<col width="4.5rem">
		<col width="*">
	</colgroup>
	<tr>
		<td>1</td>
		<td>
			<div class="dib">
				<a href="/closet/apple_tea.jsp">간지나는 애플티</a>
			</div>
		</td>
		<td>티셔츠설명 쭉</td>
	</tr>
	<tr>
		<td>2</td>
		<td>
			<div class="dib">
				<a href="/closet/samsung_tea.jsp">느낌있는 삼성티</a>
			</div>
		</td>
		<td>티셔츠설명 쭉</td>
	</tr>
	<tr>
		<td>3</td>
		<td>
			<div class="dib">
				<a href="/closet/github_tea.jsp">귀여운 깃헙티</a>
			</div>
		</td>
		<td>티셔츠설명 쭉</td>
	</tr>
</table>
</body>
</html>