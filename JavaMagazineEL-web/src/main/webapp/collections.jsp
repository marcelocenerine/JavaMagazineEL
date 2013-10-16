<%-- 
    Document   : collections
    Created on : Aug 18, 2013, 12:35:00 PM
    Author     : marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL 3.0 - Coleções</title>
        <link rel="stylesheet" href="style/examples.css" />
    </head>
    <body>
        <h2>EL 3.0 - Construção dinâmica de coleções</h2>
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
                    <td>List literal</td>
                    <td class="code">\${['um', 'dois', 'três', 'quatro']}</td> 
                    <td>${['um', 'dois', 'três', 'quatro']}</td>
                </tr>
                <tr>
                    <td>Set literal</td>
                    <td class="code">\${{1, 1, 2, 2, 3, 3, 4, 4}}</td> 
                    <td>${{1, 1, 2, 2, 3, 3, 4, 4}}</td>
                </tr>
                <tr>
                    <td>Map literal</td>
                    <td class="code">\${{1 : 'um', 2 : 'dois', 3 : 'três', 4 : 'quatro'}}</td> 
                    <td>${{1 : 'um', 2 : 'dois', 3 : 'três', 4 : 'quatro'}}</td>
                </tr>
                <tr>
                    <td>Expressão/coleção aninhada</td>
                    <td class="code">\${[header.host, ['127.0.0.1', '192.168.0.1']}</td> 
                    <td>${[header.host, ['127.0.0.1', '192.168.0.1']]}</td>
                </tr>
            </tbody>
        </table>
        <br />   
        
        <h2>EL 3.0 - Operações sobre coleções</h2>
        <table>
            <thead>
                <tr>
                    <td>Operação</td>
                    <td>Descrição</td>
                    <td>Expressão</td>
                    <td>Resultado</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>filter</td>
                    <td>Filtra apenas as cidades do estado de SP</td>
                    <td class="code">\${cidades.stream().filter(c -> c.estado eq 'SP').toList()}</td> 
                    <td>${cidades.stream().filter(c -> c.estado eq 'SP').toList()}</td>
                </tr> 
                <tr>
                    <td>map</td>
                    <td>Obtém uma lista com os nomes das cidades</td>
                    <td class="code">\${cidades.stream().map(c -> c.nome).toList()}</td> 
                    <td>${cidades.stream().map(c -> c.nome).toList()}</td>
                </tr>
                <tr>
                    <td rowspan="2">sorted</td>
                    <td>Ordena cidades pela quantidade de habitantes (DESC)</td>
                    <td class="code">\${cidades.stream().sorted((a, b) -> b.populacao - a.populacao).toList()}</td> 
                    <td>${cidades.stream().sorted((a, b) -> b.populacao - a.populacao).toList()}</td>
                </tr>
                <tr>
                    <td>Ordenação natural de números</td>
                    <td class="code">\${[100, 45, 30, 10, 80].stream().sorted().toList()}</td> 
                    <td>${[100, 45, 30, 10, 80].stream().sorted().toList()}</td>
                </tr>
                <tr>
                    <td>reduce</td>
                    <td>Reduz a lista para um único valor: a cidade com maior número de habitantes</td>
                    <td class="code">\${cidades.stream().reduce((a, b) -> (a.populacao gt b.populacao ? a : b)).get()}</td> 
                    <td>${cidades.stream().reduce((acum, elem) -> (acum.populacao gt elem.populacao ? acum : elem)).get()}</td>
                </tr>
                <tr>
                    <td rowspan="2">min</td>
                    <td>Localiza a cidade com menor população</td>
                    <td class="code">\${cidades.stream().min((a, b) -> (a.populacao - b.populacao)).get()}</td> 
                    <td>${cidades.stream().min((a, b) -> (a.populacao - b.populacao)).get()}</td>
                </tr>
                <tr>
                    <td>Localiza o menor número considerando a ordem natural</td>
                    <td class="code">\${[100, 45, 30, 10, 80].stream().min().get()}</td> 
                    <td>${[100, 45, 30, 10, 80].stream().min().get()}</td>
                </tr>
                <tr>
                    <td rowspan="2">max</td>
                    <td>Localiza a cidade com maior população</td>
                    <td class="code">\${cidades.stream().max((a, b) -> (a.populacao - b.populacao)).get()}</td> 
                    <td>${cidades.stream().max((a, b) -> (a.populacao - b.populacao)).get()}</td>
                </tr>
                <tr>
                    <td>Localiza o maior número considerando a ordem natural</td>
                    <td class="code">\${[100, 45, 550, 30, 10, 80].stream().max().get()}</td> 
                    <td>${[100, 45, 550, 30, 10, 80].stream().max().get()}</td>
                </tr>
                <tr>
                    <td rowspan="2">average</td>
                    <td>Calcula a média de habitantes das cidades</td>
                    <td class="code">\${cidades.stream().map(c -> c.populacao).average().get()}</td> 
                    <td>${cidades.stream().map(c -> c.populacao).average().get()}</td>
                </tr>
                <tr>
                    <td>Calcula a média dos números</td>
                    <td class="code">\${[10, 20, 30, 40].stream().average().get()}</td> 
                    <td>${[10, 20, 30, 40].stream().average().get()}</td>
                </tr>
                <tr>
                    <td rowspan="2">sum</td>
                    <td>Calcula a soma da população de todas as cidades</td>
                    <td class="code">\${cidades.stream().map(c -> c.populacao).sum()}</td> 
                    <td>${cidades.stream().map(c -> c.populacao).sum()}</td>
                </tr>
                <tr>
                    <td>Calcula a soma dos números</td>
                    <td class="code">\${[10, 20, 30, 40].stream().sum()}</td> 
                    <td>${[10, 20, 30, 40].stream().sum()}</td>
                </tr>
                <tr>
                    <td>count</td>
                    <td>Retorna a quantidade de elementos na coleção</td>
                    <td class="code">\${cidades.stream().count()}</td> 
                    <td>${cidades.stream().count()}</td>
                </tr>
                <tr>
                    <td>distinct</td>
                    <td>Elimina os estados duplicados do resultado</td>
                    <td class="code">\${cidades.stream().map(c -> c.estado).distinct().toList()}</td> 
                    <td>${cidades.stream().map(c -> c.estado).distinct().toList()}</td>
                </tr>
                <tr>
                    <td>flatMap</td>
                    <td>Retorna uma lista contendo os bairros de todas as cidades</td>
                    <td class="code">\${cidades.stream().flatMap(c -> c.bairros.stream()).toList()}</td> 
                    <td>${cidades.stream().flatMap(c -> c.bairros.stream()).toList()}</td>
                </tr>
                <tr>
                    <td>limit</td>
                    <td>Reduz o tamanho da lista para apenas 2 elementos</td>
                    <td class="code">\${cidades.stream().limit(2).toList()}</td> 
                    <td>${cidades.stream().limit(2).toList()}</td>
                </tr>
                <tr>
                    <td>substream</td>
                    <td>Retira uma fatia (do segundo ao terceiro elemento) da lista</td>
                    <td class="code">\${cidades.stream().substream(1, 3).toList()}</td> 
                    <td>${cidades.stream().substream(1, 3).toList()}</td>
                </tr>
                <tr>
                    <td>findFirst</td>
                    <td>Retorna a primeira cidade da lista</td>
                    <td class="code">\${cidades.stream().findFirst().get()}</td> 
                    <td>${cidades.stream().findFirst().get()}</td>
                </tr>
                <tr>
                    <td>forEach</td>
                    <td>Itera sobre os elementos da lista acumulando a quantidade de habitantes</td>
                    <td class="code">\${p = 0; cidades.stream().forEach(c -> (p = p + c.populacao)); p}</td> 
                    <td>${p = 0; cidades.stream().forEach(c -> (p = p + c.populacao)); p}  </td>
                </tr>
                <tr>
                    <td rowspan="2">anyMatch</td>
                    <td>Verifica se alguma das cidades fica no estado de SC</td>
                    <td class="code">\${cidades.stream().anyMatch(c -> c.estado == 'SC')}</td>
                    <td>${cidades.stream().anyMatch(c -> c.estado == 'SC')}</td>
                </tr>
                <tr>
                    <td>Verifica se alguma das cidades fica no estado de AM</td>
                    <td class="code">\${cidades.stream().anyMatch(c -> c.estado == 'AM')}</td> 
                    <td>${cidades.stream().anyMatch(c -> c.estado == 'AM')}</td>
                </tr>
                <tr>
                    <td rowspan="2">allMatch</td>
                    <td>Verifica se todas as cidades ficam no estado de SP</td>
                    <td class="code">\${cidades.stream().allMatch(c -> c.estado == 'SP')}</td> 
                    <td>${cidades.stream().allMatch(c -> c.estado == 'SP')}</td> 
                </tr>
                <tr>
                    <td>Verifica se todas as cidades possuem mais de 10K habitantes</td>
                    <td class="code">\${cidades.stream().allMatch(c -> c.populacao gt 10000)}</td> 
                    <td>${cidades.stream().allMatch(c -> c.populacao gt 10000)}</td>
                </tr>
                 <tr>
                     <td rowspan="2">noneMatch</td>
                     <td>Verifica se nenhuma cidade fica no estado de SC</td>
                    <td class="code">\${cidades.stream().noneMatch(c -> c.estado == 'SC')}</td>
                    <td>${cidades.stream().noneMatch(c -> c.estado == 'SC')}</td>
                 </tr>
                 <tr>
                     <td>Verifica se nenhuma cidade fica no estado de AM</td>
                    <td class="code">\${cidades.stream().noneMatch(c -> c.estado == 'AM')}</td> 
                    <td>${cidades.stream().noneMatch(c -> c.estado == 'AM')}</td>
                </tr>
                <tr>
                    <td>combinação de múltiplas operações</td>
                    <td>Calcula a soma dos habitantes de cidades do Paraná</td>
                    <td class="code">\${cidades.stream().filter(c -> c.estado eq 'PR').map(c -> c.populacao).sum()}</td> 
                    <td>${cidades.stream().filter(c -> c.estado eq 'PR').map(c -> c.populacao).sum()}</td>
                </tr>
            </tbody>            
        </table>
    </body>
</html>
