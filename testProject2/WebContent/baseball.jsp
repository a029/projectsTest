<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var pool = [];
var answerPool = [];

var zeroToNumArr = function(target, length){
	for ( var i = 0 ; i < length ; i++){
		target.push(i);
	};
	//math.random(); //0<=x<1;
}

zeroToNumArr(pool, 10); //숫자 10개 담기
var selectNumber = function(length){
	for (var i = 0 ; i < length ; i++) {
		var pickRand = Math.floor(Math.random() * pool.length);
		answerPool.push(pool.splice(pickRand, 1));
	};
};
selectNumber(4); //answerpool에 정답번호 4개 넣음

//alert(answerPool +"\n"+pool);

var giveNumber;
//alert(giveNumber.length);
function checkNumber4(numbers){
	if(numbers.length != 4){
		return false;
	}
	if(isNaN(Number(numbers))){
		return false;
	}
	else{
		return true;
	}
}

do {
	giveNumber = prompt("숫자 OOOO");
}while(!checkNumber4(giveNumber));
</script>
</head>
<body>
<table id="gameTable">
	<tr>
		<td>입력</td>
		<td>결과</td>
	</tr>
</table>
</body>
</html>