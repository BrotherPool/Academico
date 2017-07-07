var botao = document.querySelector("#btn-login");
botao.addEventListener("click", function(event){
	var campoUsuario = document.querySelector("#inputUser");
	var campoSenha = document.querySelector("#inputPassword");
	event.preventDefault();
	//evento para abrir na mesma pagina

	if(campoUsuario.value==="admin" && campoSenha.value==="123"){
		alert("Administrador, você logou com sucesso");
		window.open("admin","_self");
		//window.location.href = admin.html;
	}
	else if(campoUsuario.value==="estudante" && campoSenha.value==="123"){
		alert("Estudante, você logou com sucesso");
		window.open("estudante","_self");
	}
	else if(campoUsuario.value==="secretaria" && campoSenha.value==="123"){
		alert("Secretária, você logou com sucesso");
		window.open("secretaria","_self");
	}
	else if(campoUsuario.value==="professor" && campoSenha.value==="123"){
		alert("Professor, você logou com sucesso");
		window.open("professor","_self");
	}
	else if(campoUsuario.value==="coordenador" && campoSenha.value==="123"){
		alert("Coordenador, você logou com sucesso");;
		window.open("coordenador","_self");
	}

	else{
		alert("Usuario e/ou senha errado(s)");
		campoSenha.value = "";
		campoUsuario.value = "";
	}
})