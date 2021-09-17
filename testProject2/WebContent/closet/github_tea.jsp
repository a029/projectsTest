<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.teaTable{
	border: 2px black solid;
	border-collapse: collapse;
	width: 100%;
}
.teaTable td{
	border: 1px black solid;
}
.teaPic {
	display: inline-block;
	width: 100%;
	height: 15rem;
	background-color: olive;
}
</style>
</head>
<body>
	<table class="teaTable">
		<colgroup>
			<col width="60%">
			<col width="*">
		</colgroup>
		<tr>
			<td>
				<div class="teaPic">
					티사진
				</div>
			</td>
			<td>
				티정보 쫙
			</td>
		</tr>
		<tr>
			<td colspan="2">
				티 상세정보 쫙
			</td>
		</tr>
	</table>
</body>
</html>