<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>JSTL</title>
    </head>
    <body> 
       <%

            String mensagem = "Boa Tarde";
            request.setAttribute("mensagem", mensagem);

            int valor = 20;
            request.setAttribute("numero", valor);
       %>
        <h2>forEach</h2>
        <c:forEach var="cont" begin="1" end= "10">
            ${cont}<br />

        </c:forEach>

        <h3>Listas</h3>
        <c:forTokens var="fruta" items="maçã, manga, melão" delims=",">
            ${fruta}</br >
    </c:forTokens>

        <h3>Estrutura de Dados</h3>
        |<%
            String[] dias = {"Seg", "Ter", "Qua", "Qui", "Sex"};
            request.setAttribute("dias", dias);
        %>

        <c:forEach var="d" items="${dias}">
            ${d}<br />
        </c:forEach>
    </body>
</html>