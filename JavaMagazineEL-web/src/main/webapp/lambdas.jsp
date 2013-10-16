<%-- 
    Document   : index
    Created on : Sep 7, 2013, 2:55:04 PM
    Author     : marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EL 3.0 - Expressões Lambda</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style/examples.css" />
    </head>
    <body>        
        <h2>EL 3.0 - Expressões Lambda</h2>
        <table>
            <thead>
                <tr>
                    <td>Descrição</td>
                    <td>Expressão</td>
                    <td>Resultado</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Invocação imediata</td>
                    <td class="code">\${((x) -> -1 * x)(9)}</td> 
                    <td>${((x) -> -1 * x)(9)}</td>
                </tr>
                <tr>
                    <td>Atribuição e invocação indireta</td>
                    <td class="code">\${upper = (s) -> s.toUpperCase(); upper("Java")}</td> 
                    <td>${upper = (s) -> s.toUpperCase(); upper("Java")}</td>
                </tr>
                <tr>
                    <td>Invocação recursiva</td>
                    <td class="code">\${fib = n -> n < 2 ? n : (fib(n-1) + fib(n-2)); fib(8)}</td> 
                    <td>${fib = n -> n < 2 ? n : (fib(n-1) + fib(n-2)); fib(8)}</td>
                </tr>
                <tr>
                    <td>Função anônima como argumento de método</td>
                    <td class="code">\${[2, 3, 1].stream().sorted((a, b) -> a - b).toList()}</td> 
                    <td>${[2, 3, 1].stream().sorted((a, b) -> a - b).toList()}</td>
                </tr>
                <tr>
                    <td>Usando EL dentro do corpo de funções</td>
                    <td class="code">\${((n1, n2) -> n1 gt n2)(10, 5)}</td> 
                    <td>${((n1, n2) -> n1 gt n2)(10, 5)}</td>
                </tr>
            </tbody>
        </table>                
    </body>
</html>
