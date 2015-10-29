var user = {}
var responses = []

function question1 () {
	'use strict';
	var name = prompt('What is your name?')
	user.name = name
}

question1();

function quiz1 () {
	'use strict';
	var firstQuestion = prompt('Does object === array ? (Yes or No)')
	if (firstQuestion.toLowerCase() === 'yes') {
		firstQuestion = false;
	} else if (firstQuestion.toLowerCase() === 'no') {
		firstQuestion = true;
	} else {
		alert('Please answer either Yes or No');
		return quiz1();
	}
	responses.push(firstQuestion);
}

quiz1();

function quiz2 () {
	'use strict';
	var js = prompt('What was the original name for Javascript: Java, LiveScript, or Mocha?');
	js =js.toLowerCase();
	switch (js) {
		case 'java', 'livescript' :
			js = false;
		break;

		case 'mocha':
			js = true;
		break;

		default:
			alert('Please answer Java, LiveScript or Mocha');
			return quiz2();
		break;
	}
	responses.push(js);
}

quiz2();

function quiz3 () {
	var school = prompt('Which is the best school to study? Ironhack or Cice?');
	school = school.toLowerCase();
	if (school === 'ironhack') {
		school = true;
	} else if (school === 'cice') {
		school = false;
	} else {
		alert('Please answer either Ironhack or Cice')
		return quiz3();
	}
	responses.push(school);
}

quiz3();

function quiz4 () {
	var webBrowser = prompt('What is the name of Google\'s browser: Safari, Explorer, Chrome, Netscape or Opera?');
	webBrowser = webBrowser.toLowerCase();

	switch (webBrowser) {
		case 'safari', 'explorer', 'netscape', 'opera':
			webBrowser = false;
		break;

		case 'chrome':
			webBrowser = true;
		break;

		default:
			alert('Please answer Safari, Explorer, Chrome, Netscape or Opera');
			return quiz4();
		break;
	}
	responses.push(webBrowser);
}

quiz4();

function results (anArray) {
	var trues = 0;
	var falses = 0;
	for (i = 0; i < anArray.length; i++) {
		if (anArray[i] === true) {
			trues += 1;
		} else {
			falses += 1;
		}
	}
	alert('Hello ' + user.name + '.\nYou\'ve responsed ' + trues + ' correct answers\nand ' + falses + ' incorrect answers.');
}

results(responses);