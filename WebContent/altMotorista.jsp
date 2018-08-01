<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar motorista</title>

<!-- icones -->

<link rel="icon" href="img/corrida.png" type="image/x-icon" />
<link rel="shortcut icon" href="img/corrida.png" type="image/x-icon" />

<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
 <link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
	<a href="index.jsp">EasyPaths</a>
</nav>

	<div class="cadMot" id="cadMot">
		<form name="formAlt" action="AltMotorista" method="Post">
			<fieldset class="fd">
				
				<label>Id:</label>
				<input readonly="readonly" type="text" class="form-control" name="id" id="id" value="<%=request.getParameter("idMot")%>"/>
				<label for="newNome">Nome completo:</label>
				<input value="<%=request.getParameter("nomeMot")%>" class="form-control" type="text" maxlength="50" id="newNome" name="newNome" placeholder="Ex: Fulano da Silva" pattern="[A-Za-z\s]+$"><br>
				<label for="newData">Data de nascimento:</label>
				<input value="<%=request.getParameter("dtMot")%>" class="form-control" type="date" id="newData" name="newData"><br>
				<label for="newCpf">CPF:</label>
				<input value="<%=request.getParameter("cpfMot")%>" class="form-control" type="text" maxlength="11" id="newCpf" name="newCpf" placeholder="Ex: 123456789-00" pattern="[0-9]+$"><br>
				<label for="newCarro">Modelo do carro:</label>
				<input value="<%=request.getParameter("modelo")%>" class="form-control" type="text" maxlength="20" id="newCarro" name="newCarro" placeholder="Ex: Corsa, Gol, Palio, etc" pattern="[A-Za-z\s]+$">
				<br>Status:<br>
				<input class="rad" type="radio" name="newStatus" id="anewStatus" value="Ativo"><label for="aStatus"> Ativo</label>
				<input class="rad" type="radio" name="newStatus" id="inewStatus" value="Inativo"><label for="iStatus"> Inativo</label><br>
				Sexo:<br>
				<input class="rad" type="radio" name="newSexo" id="mnewSexo" value="Masculino"><label for="mnewSexo"> Masculino</label>
				<input class="rad" type="radio" name="newSexo" id="fnewSexo" value="Feminino"><label for="fnewSexo"> Feminino</label><br>
				<input class="btn cadastro" type="submit" onclick="return validacaoAlt();" value="Alterar">
				<a href="motoristas.jsp" class="btn voltar" type="button">Voltar</a>
			
			</fieldset>
		</form>
	</div>




<!-- importações -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script src="js/script.js"></script>
</body>
</html>