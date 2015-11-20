package br.com.devmedia.el3.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
public class Pessoa {

    @Getter @Setter
    private String nome;
    @Getter
    private String sobrenome;
}
