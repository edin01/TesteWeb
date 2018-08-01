<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jogos de mesa</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
       <nav class="navbar navbar-light" style="background-color: #46b8da">
           <a href="javascript:history.back()"><img src="img/train.png" width="50" height="50"></a>
           Hott'oys
           <a href="javascript:history.back()"><img src="img/train.png" width="50" height="50"></a>
       </nav>
                    <div class="brinquedoinfo">
                    <img src="img/jogo1.png" width="300" height="250"><br><br>
                    
                                        <% 
    String nomeprod;
    String preçoprod;
    String descr;
    String marca;
    int idprod;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/brinquedos",
				"root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from Produtos WHERE IdProduto = 7 ");
    while(rs.next()){
        nomeprod = rs.getString("NomeProduto");
        preçoprod = rs.getString("Preço");
        descr = rs.getString("Descrição");
        marca = rs.getString("Marca");
        idprod = rs.getInt("IdProduto");
%>
                    
                    Nome: <%=nomeprod%> <br>
                    Código: <%=idprod%><br>
                    Preço: <%=preçoprod%><br>
                    Marca: <%=marca%><br>
                    Descrição: <%=descr%><br><br>
  

<% }
    
    rs.close();
    stmt.close();
    conn.close();

%>


                    <a onclick="history.back()" class="btn-primary">Voltar</a>
                    </div>


        <footer class="footer">
            Atura ou Surta
        </footer>
    </body>
</html>
