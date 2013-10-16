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
public class Listagem8 {
    
    public static void main(String[] args) {
        ELProcessor elp = new ELProcessor();               
        System.out.println(elp.eval("Long('1000')"));
        System.out.println(elp.eval("Integer.MAX_VALUE"));
        System.out.println(elp.eval("Math.max(20, 50)"));
    }
}
