/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.devmedia.el3.servlet;

import br.com.devmedia.el3.model.Pessoa;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marcelo
 */
@WebServlet(name = "OperadoresServlet", urlPatterns = {"/operadores"})
public class OperadoresServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("pessoa", new Pessoa("João", "Silva"));
        request.getServletContext().getRequestDispatcher("/operadores.jsp").forward(request, response);
    }
}
