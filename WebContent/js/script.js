/**
 * 
 */
function validacaoPas(){
	
	var nome = formPas.nomePas.value;
	var data = formPas.dataPas.value;
	var cpf = formPas.cpfPas.value;
	var sexo = document.getElementsByName('genPas');
	
	if(nome == "" || nome.length < 7){
		alert('Insira seu nome completo!');
		formPas.nomePas.focus();
		return false;
	}
	
	if(data == ""){
		alert('Insira sua data de nascimento!');
		formPas.dataPas.focus();
		return false;
	}
	
	if(cpf == "" || cpf.length < 10){
		alert('Insira um CPF valido!');
		formPas.cpfPas.focus();
		return false;
	}
	
	if(sexo[0].checked == false && sexo[1].checked == false){
		alert('Escolha seu sexo!');
		return false;
	}

}

function validacaoMot(){
	
	var nomeMot = formMot.nomeMot.value;
	var dataMot = formMot.dataMot.value;
	var cpfMot = formMot.cpfMot.value;
	var modelo = formMot.tipoCarro.value;
	var sexoMot = document.getElementsByName('genMot');
	var status = document.getElementsByName('status');
	
	
	if(nomeMot == "" || nomeMot.length < 7){
		alert('Insira seu nome completo!');
		formMot.nomeMot.focus();
		return false;
	}
	
	if(dataMot == ""){
		alert('Insira sua data de nascimento!');
		formMot.dataMot.focus();
		return false;
	}
	
	if(cpfMot == "" || cpfMot.length < 10){
		alert('Insira um CPF valido!');
		formMot.cpfMot.focus();
		return false;
	}
	
	if(modelo == "" || modelo.length < 3){
		alert('Insira um tipo de modelo valido!');
		formMot.tipoCarro.focus();
		return false;
	}
	
	if(status[0].checked == false && status[1].checked == false){
		alert('Defina seu Status!');
		return false;
	}
	
	if(sexoMot[0].checked == false && sexoMot[1].checked == false){
		alert('Escolha seu sexo!');
		return false;
	}

}

	function validacaoCor(){
		var passageiro = formCor.passageiro.value;
		var motorista = formCor.motorista.value;
		var valor = formCor.valor.value;
		
		if(passageiro == "" || passageiro.length < 7){
			alert('Insira o nome completo do passageiro!');
			formCor.passageiro.focus();
			return false;
		}
		
		if(motorista == "" || motorista.length < 7){
			alert('Insira o nome completo do motorista!');
			formCor.motorista.focus();
			return false;
		}
		
		if (!isNaN(valor) == "false" || valor == ""){
			alert('Insira um numero valido!');
			formCor.valor.focus();
			return false;
		}
		
	}
	
	function validacaoAlt(){
		
		var newNomeMot = formAlt.newNome.value;
		var newDataMot = formAlt.newData.value;
		var newCpfMot = formAlt.newCpf.value;
		var newModelo = formAlt.newCarro.value;
		var newSexoMot = document.getElementsByName('newSexo');
		var newStatus = document.getElementsByName('newStatus');
		
		
		if(newNomeMot == "" || newNomeMot.length < 7){
			alert('Insira seu nome completo!');
			formAlt.newNome.focus();
			return false;
		}
		
		if(newDataMot == ""){
			alert('Insira sua data de nascimento!');
			formAlt.newData.focus();
			return false;
		}
		
		if(newCpfMot == "" || newCpfMot.length < 10){
			alert('Insira um CPF valido!');
			formAlt.newCpf.focus();
			return false;
		}
		
		if(newModelo == "" || newModelo.length < 3){
			alert('Insira um tipo de modelo valido!');
			formAlt.newCarro.focus();
			return false;
		}
		
		if(newStatus[0].checked == false && newStatus[1].checked == false){
			alert('Defina seu Status!');
			return false;
		}
		
		if(newSexoMot[0].checked == false && newSexoMot[1].checked == false){
			alert('Escolha seu sexo!');
			return false;
		}

	}
