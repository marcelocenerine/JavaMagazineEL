/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.devmedia.el3;

import javax.el.ELProcessor;

/**
 *
 * @author marcelo
 */
public class Listagem7 {
    
    public static void main(String[] args) {
        ELProcessor elp = new ELProcessor();           
        elp.getELManager().importClass("java.math.BigInteger");
        System.out.println(elp.eval("BigInteger('1000')"));
    }
    
}
