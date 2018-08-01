<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionar corridas</title>

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

	<div class="cadCor" id="cadCor">
		<form name="formCor" action="CadCorrida" method="Post">
			<fieldset class="fd">
		
				<label for="passageiro">Nome do Passageiro:</label>
				<input class="form-control" type="text" maxlength="50" id="passageiro" name="passageiro" placeholder="Ex: Fulano da Silva" pattern="[A-Za-z\s]+$"><br>
				<label for="motorista">Nome do Motorista:</label>
				<input class="form-control" type="text" maxlength="50" id="motorista" name="motorista" placeholder="Ex: Ciclano da Silva" pattern="[A-Za-z\s]+$"><br>
				<label for="valor">Valor da corrida:</label>
				<input class="form-control" type="text" maxlength="50" id="valor" name="valor" placeholder="Ex: 12.90" pattern="[0-9.]{3,6}"><br>
				<input class="btn cadastro" type="submit" onclick="return validacaoCor();" value="Cadastrar">
				<a href="corridas.jsp" class="btn voltar" type="button">Voltar</a>
			
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