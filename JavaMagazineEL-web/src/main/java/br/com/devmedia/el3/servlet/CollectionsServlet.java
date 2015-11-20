
package br.com.devmedia.el3.servlet;

import static java.util.Arrays.asList;
import br.com.devmedia.el3.model.Cidade;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CollectionsServlet", urlPatterns = {"/collections"})
public class CollectionsServlet extends HttpServlet {

    private static final long serialVersionUID = 8413501580139754085L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,  IOException {
        List<Cidade> cidades = Arrays.asList(Cidade.builder().nome("Rio de Janeiro").estado("RJ").populacao(7_000_000).bairros(asList("Copacabana", "Ipanema", "Leblon")).build(),
                                             Cidade.builder().nome("Curitiba").estado("PR").populacao(1_700_000).bairros(asList("Jardim Botânico", "Rebouças", "Cristo Rei")).build(),
                                             Cidade.builder().nome("Maringá").estado("PR").populacao(380_000).bairros(asList("Centro")).build(),
                                             Cidade.builder().nome("São Paulo").estado("SP").populacao(12_000_000).bairros(asList("Centro", "Morumbi", "Ipiranga")).build(),
                                             Cidade.builder().nome("Porto Alegre").estado("RS").populacao(1_500_000).bairros(asList("Independência", "Moinhos de Vento", "Cidade Baixa")).build(),
                                             Cidade.builder().nome("Florianópolis").estado("SC").populacao(500_000).bairros(asList("Jurerê", "Lagoa", "Agronômica")).build(),
                                             Cidade.builder().nome("Araçatuba").estado("SP").populacao(180_000).bairros(asList("Centro")).build(),
                                             Cidade.builder().nome("Salvador").estado("BA").populacao(2_700_000).bairros(asList("Barra", "Rio Vermelho", "Campo Grande")).build());
       request.setAttribute("cidades", cidades);
       request.getServletContext().getRequestDispatcher("/collections.jsp").forward(request, response);
    }
}
