package br.com.devmedia.el3.model;

import java.util.ArrayList;
import java.util.List;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
@Builder
public class Cidade {

    private String nome;
    private String estado;
    private Integer populacao;
    private List<String> bairros = new ArrayList<>();
}
