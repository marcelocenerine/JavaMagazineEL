package br.com.devmedia.el3;

import java.util.Arrays;

import javax.el.ELProcessor;

import br.com.devmedia.el3.model.Pessoa;

public class Listagem5 {

    public static void main(String[] args) {
        ELProcessor elp = new ELProcessor();
        elp.defineBean("pessoas", Arrays.asList(new Pessoa("João", 30), new Pessoa("Maria", 25), new Pessoa("José", 50)));
        elp.setVariable("oldest", "(p1, p2) -> p1.idade - p2.idade");
        String nome = (String) elp.eval("pessoas.stream().max(oldest).get().nome");
        System.out.println(nome); // Imprime ‘José’
    }

}
