
package br.com.devmedia.el3.servlet;


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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,  IOException {
        List<Cidade> cidades = Arrays.asList(Cidade.builder().nome("Rio de Janeiro").estado("RJ").populacao(7_000_000).addBairro("Copacabana").addBairro("Ipanema").addBairro("Leblon").get(),
                                             Cidade.builder().nome("Curitiba").estado("PR").populacao(1_700_000).addBairro("Jardim Botânico").addBairro("Rebouças").addBairro("Cristo Rei").get(),
                                             Cidade.builder().nome("Maringá").estado("PR").populacao(380_000).addBairro("Centro").get(),
                                             Cidade.builder().nome("São Paulo").estado("SP").populacao(12_000_000).addBairro("Centro").addBairro("Morumbi").addBairro("Ipiranga").get(),
                                             Cidade.builder().nome("Porto Alegre").estado("RS").populacao(1_500_000).addBairro("Independência").addBairro("Moinhos de Vento").addBairro("Cidade Baixa").get(),
                                             Cidade.builder().nome("Florianópolis").estado("SC").populacao(500_000).addBairro("Jurerê").addBairro("Lagoa").addBairro("Agronômica").get(),
                                             Cidade.builder().nome("Araçatuba").estado("SP").populacao(180_000).addBairro("Centro").get(),
                                             Cidade.builder().nome("Salvador").estado("BA").populacao(2_700_000).addBairro("Barra").addBairro("Rio Vermelho").addBairro("Campo Grande").get());
       request.setAttribute("cidades", cidades);
       request.getServletContext().getRequestDispatcher("/collections.jsp").forward(request, response);
    }
}
