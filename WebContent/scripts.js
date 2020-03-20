"use strict";

function login() {
		const loginError = document.getElementById("loginError");
		loginError.innerHTML = "";
		const errorText = document.getElementById("errorText");
		const account = document.login.account.value.trim();
		if (account === "") {
			errorText.innerHTML = "Login is empty";
			return;
		}
		var password = document.login.password.value;
		if (password === "") {
			errorText.innerHTML = "Password is empty";
			return;
		}
		document.login.submit();
	}

function register() {
	const registerError = document.getElementById("registerError");
	registerError.innerHTML = "";
	const err = document.getElementById("errorText");
	const account = document.register.account.value.trim();
	if (account === "") {
		err.innerHTML = "Login is empty";
		return;
	}
	const password = document.register.password.value;
	const confirmPassword = document.register.confirmPassword.value;
	if (password != confirmPassword) {
		err.innerHTML = "Enter the same password";
		return;
	}
	if (password === "") {
		err.innerHTML = "Password is empty";
		return;
	}
	document.register.submit();
}

function logout() {
	document.logout.submit();
}

function addTask() {
		const err = document.getElementById("errorText");
		const text = document.addTask.text.value.trim();
		if (text === "") {
			err.innerHTML = "Text is empty";
			return;
		}
		const date = document.addTask.date.value;
		const time = Date.parse(date);
		if (isNaN(time)) {
			err.innerHTML = "Incorrect date";
			return;
		}
		document.addTask.submit();
	}

function uploadFile() {
	const err = document.getElementById("errorText");
	err.innerHTML = '';
	if(document.uploadFile.file.value === ''){
		err.innerHTML = "No file is selected";
		return;
	};
	document.uploadFile.submit();
}

function toggle(box) {		
	if(typeof document.tasks.idTask.length == 'undefined'){
		document.tasks.idTask.checked = box.checked;		
	}
	else{
		for (let i = 0; i < document.tasks.idTask.length; i++) {
			document.tasks.idTask[i].checked = box.checked;
		}
	}		
}

function doOperation(operationName) {
	const err = document.getElementById("errorText");
	let noTaskSelected = true;		
	if(typeof document.tasks.idTask.length == 'undefined'){
		noTaskSelected = !document.tasks.idTask.checked;			
	}
	else{
		for (let i = 0; i < document.tasks.idTask.length; i++) {
			if (document.tasks.idTask[i].checked) {					
				noTaskSelected = false;
			}
		}
	}				
	if (noTaskSelected) {
		err.innerHTML = "No task is selected";
		return;
	}
	document.tasks.operation.value = operationName;
	document.tasks.submit();
}

function emptyBin() {
	if(typeof document.tasks.idTask.length == 'undefined'){
		document.tasks.idTask.checked = true;			
	}
	else{
		for (let i = 0; i < document.tasks.idTask.length; i++) {
			document.tasks.idTask[i].checked = true;
		}
	}		
	document.tasks.operation.value = 'delete';
	document.tasks.submit();		
}

function deleteFileById(id) {		
	document.deleteFile.idTask.value = id;
	document.deleteFile.submit();		
}