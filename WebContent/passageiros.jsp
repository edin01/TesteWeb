<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Passageiros</title>

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

<table class="table table-striped">
      <thead>
      <tr>
        <th>Nome do passageiro</th>
        <th>Id</th>
        <th>Data de nascimento</th>
        <th>CPF</th>
        <th>Sexo</th>
      </tr>
    </thead>

<%
	String nomePas;
	int idPas;
	String dtPas;
	long cpfPas;
	String sxPas;
	
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/TesteWeb",
					"root", "");
	 Statement stmt = conn.createStatement();
	 ResultSet rs = stmt.executeQuery("SELECT * FROM passageiros");
	 while(rs.next()){
		 idPas = rs.getInt("id_passageiro");
		 nomePas = rs.getString("nm_passageiro");
		 dtPas = rs.getString("dt_passageiro");
		 cpfPas = rs.getLong("cpf_passageiro");
		 sxPas = rs.getString("sx_passageiro");
%>

	<tbody>
      <tr>
        <td><%=nomePas%></td>
        <td><%=idPas%></td>
        <td><%=dtPas%></td>
        <td><%=cpfPas%></td>
        <td><%=sxPas%></td>
    </tr>
    </tbody>

<% }
    
    rs.close();
    stmt.close();
    conn.close();

%> 
  </table>
  
<div class="cent">
<a href="cadPass.jsp" class="btn btn-info" type="button">Adicionar</a>
<a href="index.jsp" class="btn voltar" type="button">Voltar</a>
</div>

<!-- importações -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script src="js/script.js"></script>
</body>
</html>