<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ListaCadastros
    Created on : 14/03/2019, 16:06:17
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros</title>
    </head>
    <body>    
        <div id="pag">
            <div id="logo">         
            </div>
            <div id="titulo">
                <br><br><br>
                <h1>Cadastro De Pessoas<h1>
            </div>
            <div id="menu">
                <br><br>
                <form action="index.jsp">
                    <input type="submit" value="Voltar" />
                </form>
            </div> 
            <div id="conteudo">
                <sql:query var="cadastros" dataSource="jdbc/empresa">
                    SELECT * FROM clientes
                </sql:query>
        
                <table border="1">
                    <!-- column headers -->
                    <tr>
                    <c:forEach var="columnName" items="${cadastros.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                    </c:forEach>
                </tr>
                <!-- column data -->
                <c:forEach var="row" items="${cadastros.rowsByIndex}">
                    <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                    </tr>
                </c:forEach>
                </table>
                    <h1>
                    <form name="voltar" action="index.jsp">
                        <input type="submit" value="Voltar" name="voltar" />
                    </form></h1>
            </div>
        </div>
    </body>
</html>
