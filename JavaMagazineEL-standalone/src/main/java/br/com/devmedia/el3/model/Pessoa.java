package br.com.devmedia.el3.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
public class Pessoa {

    @Getter
    private String nome;
    @Getter @Setter
    private Integer idade;

    public Pessoa(String nome) {
        this.nome = nome;
    }
}
