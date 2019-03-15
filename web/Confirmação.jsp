<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Confirmação
    Created on : 14/03/2019, 15:53:39
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro realizado</title>
    </head>
    <body>
        <%
            String CPF = request.getParameter("CPF");
            String Nome = request.getParameter("Nome");
            String UF = request.getParameter("estados");
            String Peso = request.getParameter("Peso");
            String Data = request.getParameter("Data");
        %>

        
        
    <sql:update var="Cadastrando" dataSource="jdbc/empresa">
        INSERT INTO clientes (CPF, Nome, UF, Peso, Nascimento)
        VALUES (<%=CPF%>, "<%=Nome%>", "<%=UF%>", "<%=Peso%>", "<%=Data%>")
    </sql:update>
    <div id="pag">
            <div id="logo">         
            </div>
            <div id="titulo">
                <h1>Cadastro De Pessoas<h1>
            </div> 
            <div id="menu">
                <br><br>
                <form action="ListaCadastros.jsp">
                    <input type="submit" value="Cadastros" />
                </form>
            </div> 
            <div id="conteudo">
                <h1>Cadastro Realizado com sucesso<h1>
                <form action="index.jsp">
                    <input type="submit" value="Voltar" name="voltar" />
                </form>
            </div>
    </div>
    </body>
</html>
