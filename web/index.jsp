<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 14/03/2019, 15:46:46
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title> 
        
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
                <form action="ListaCadastros.jsp">
                    <input type="submit" value="Cadastros" />
                </form>
            </div> 
            <div id="conteudo">
                <h1>Preencha o formulário abaixo para fazer o cadastro</h1>
                <form action="Confirmação.jsp">
                    Nome:<br>
                    <input type="text" name="Nome" value="" size="70" /><br><br>
                    CPF:<br>
                    <input type="text" name="CPF" value="" /><br><br>
                    Peso:<br>
                    <input type="text" name="Peso" value="" size="5" /> Kg<br><br>
                    UF <select name="estados">
                        <option>AC</option>
                        <option>AL</option>
                        <option>AP</option>
                        <option>AM</option>
                        <option>BA</option>
                        <option>CE</option>
                        <option>DF</option>
                        <option>ES</option>
                        <option>GO</option>
                        <option>MA</option>
                        <option>MT</option>
                        <option>MS</option>
                        <option>MG</option>
                        <option>PA</option>
                        <option>PB</option>
                        <option>PR</option>
                        <option>PE</option>
                        <option>PI</option>
                        <option>RJ</option>
                        <option>RN</option>
                        <option>RS</option>
                        <option>RO</option>
                        <option>RR</option>
                        <option>SC</option>
                        <option>SP</option>
                        <option>SE</option>
                        <option>TO</option>
                    </select><br><br>
                    <input type="submit" value="Confirmar" />   <input type="reset" value="Limpar" />   
                </form>
            </div>
        </div>
    </body>
</html>
