/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.devmedia.el3.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author marcelo
 */
public class Cidade {

    private String nome;
    private String estado;
    private Integer populacao;
    private List<String> bairros = new ArrayList<>();
    
    public static Builder builder() {
        return new Builder();
    }
    
    public static class Builder {
        
        private Cidade cidade = new Cidade();
        
        public Builder nome(String nome) {
            cidade.setNome(nome);
            return this;
        }
        
        public Builder estado(String estado) {
            cidade.setEstado(estado);
            return this;
        }
        
        public Builder populacao(Integer populacao) {
            cidade.setPopulacao(populacao);
            return this;
        }
        
        public Builder addBairro(String bairro) {
            cidade.getBairros().add(bairro);
            return this;
        }        
        
        public Cidade get() {
            return cidade;
        }
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Integer getPopulacao() {
        return populacao;
    }

    public void setPopulacao(Integer populacao) {
        this.populacao = populacao;
    }

    public List<String> getBairros() {
        return bairros;
    }

    @Override
    public String toString() {
        return "Cidade{" + "nome=" + nome + ", uf=" + estado + ", hab=" + populacao + "}";
    }        
}
