function zeroToNumArr(length){
	let target = [];
	for ( var i = 0 ; i < length ; i++){
		target.push(i);
	};
	return target;
	//math.random(); //0<=x<1;
}

function selectNumber(pool, length){
	let target = [];
	for (var i = 0 ; i < length ; i++) {
		var pickRand = Math.floor(Math.random() * pool.length);
		target.push(pool.splice(pickRand, 1));
	};
	return target;
}

function checkNumber4(numbers){
	if(numbers.length != 4){
		return false;
	}
	else if(isNaN(Number(numbers))){
		return false;
	}
	else{
		return true;
	}
}

function makeAnswer(numbers){
	var answer = [];
	for (var i = 0 ; i < numbers.length ; i++){
		answer.push(numbers[i]);
	}
	return answer;
}

function crossCheck(answerPool, answer){
	var result = {
		ball: 0,
		strike :0
	};
	
	for (var i = 0 ; i < answerPool.length ; i++){
		for (var j = 0 ; j < answer.length ; j++){
			if(answerPool[i] == answer[j]){
				result.ball++;
			}
		}
	}
	for (var i = 0 ; i < answerPool.length ; i++){
		if(answerPool[i] == answer[i]){
			result.strike++;
			result.ball--;
		}
	}
	return result;
}

function makeLine1(text){
	var newLine = document.createElement("tr");
	newLine.innerHTML = "<td colspan='2'>" + text + "</td>";
	
	return newLine;

}

function makeLine(answer, result){
	let newLine = document.createElement("tr");
	const table = document.getElementById("gameTable");
	let answerLine = "";
	for (var i = 0 ; i < answer.length ; i++){
		answerLine += answer[i] + " ";
	}
	newLine.innerHTML = "<td>" + answerLine + "</td><td>B : " + result.ball + " S : " + result.strike + "</td>";
	
	table.appendChild(newLine);
	if(result.strike == 4){
		table.appendChild(makeLine1("정답! 축하합니다."));
		document.getElementById("PButton").disabled = 'disabled';
	}
	
	//alert(answerPool + "\n" + answer );
	//alert(result.ball + " " + result.strike);
}

function solveProblem(answerPool){
	let giveNumber;
	do {
		giveNumber = prompt("숫자 OOOO");
		if(checkNumber4(giveNumber)){
			const answer = makeAnswer(giveNumber);
			const result = crossCheck(answerPool, answer);
			
			makeLine(answer, result);
			break;
		}
	}while(true);
}

function sweapTable(){
	const table = document.getElementById("gameTable");
	for (var i = table.rows.length-1 ; i > 0 ; i--){
		table.deleteRow(i);
	}
	//const base = "<tr><td>입력</td><td>결과</td></tr>";
	//makeLine1(base);
};

