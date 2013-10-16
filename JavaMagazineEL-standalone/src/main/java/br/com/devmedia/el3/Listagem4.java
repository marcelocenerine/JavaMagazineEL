/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.devmedia.el3;

import br.com.devmedia.el3.model.Pessoa;
import javax.el.ELProcessor;

/**
 *
 * @author marcelo
 */
public class Listagem4 {
    
    public static void main(String[] args) {
        ELProcessor elp = new ELProcessor();        
        Pessoa joao = new Pessoa("João");
        elp.defineBean("pessoa", joao);
        elp.setValue("pessoa.idade", 30); 
        System.out.println(elp.eval("pessoa.nome")); // Imprime ‘João’
        System.out.println(elp.eval("pessoa.idade")); // Imprime ‘30’
    }
}
