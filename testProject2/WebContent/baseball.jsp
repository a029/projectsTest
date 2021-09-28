<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#gameTable{
	width: 31rem;
}
</style>
<script type="text/javascript" src="/js/baseball.js?ver=1"></script>
</head>
<body>
<table id="gameTable">
	<colgroup>
		<col width="15rem;">
		<col width="15rem;">
	</colgroup>
	<thead>
	<tr>
		<td>입력</td>
		<td>결과</td>
	</tr>
	</thead>
	<tbody id="gameBody">
	
	</tbody>
</table>
<button type="button" id="PButton" onclick="solveProblem(answerPool);">문제풀기</button>
<button type="button" onclick="viewAnswer();">정답보기</button>
<button type="button" onclick="newGame();">새로운 게임</button>
<button type="button" onclick="sweapTable();">테이블밀기</button>


<script type="text/javascript">
var pool = [];
var answerPool = [];

function newGame(){
	pool = zeroToNumArr(10); //숫자 10개 담기
	answerPool = selectNumber(pool, 4); //answerpool에 정답번호 4개 넣음
	document.getElementById("PButton").disabled = false;
}

pool = zeroToNumArr(10); //숫자 10개 담기
answerPool = selectNumber(pool, 4); //answerpool에 정답번호 4개 넣음

//alert(answerPool +"\n"+pool);


//alert(giveNumber.length);

//alert(table.getAttribute("class"));

function viewAnswer(){
	alert(answerPool);
}
</script>
</body>
</html>