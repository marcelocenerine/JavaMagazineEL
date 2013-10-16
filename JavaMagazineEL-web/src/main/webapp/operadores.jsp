<%-- 
    Document   : operadores
    Created on : Sep 15, 2013, 1:40:01 PM
    Author     : marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL 3.0 - Novos Operadores</title>
        <link rel="stylesheet" href="style/examples.css" />
    </head>
    <body>
        <h2>EL 3.0 - Novos Operadores</h2>
        <table>
            <thead>
                <tr>
                    <td>Operador</td>
                    <td>Expressão</td>
                    <td>Resultado</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>"=" (atribuição)</td>
                    <td>\${requestScope.pessoa.nome = "José"}</td>
                    <td>${requestScope.pessoa.nome = "José"}</td>
                </tr>
                <tr>
                    <td>"+=" (concatenação)</td>
                    <td>\${"Olá " += pessoa.nome += " " += pessoa.sobrenome += ", seja bem vindo!"}</td>
                    <td>${"Olá " += pessoa.nome += " " += pessoa.sobrenome += ", seja bem vindo!"}</td>
                </tr>
                <tr>
                    <td>";" (separador)</td>
                    <td>\${num1 = 10; num2 = 30; resultado = ((x, y) -> x + y)(num1, num2)}</td>
                    <td>${num1 = 10; num2 = 30; resultado = ((x, y) -> x + y)(num1, num2)}</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
