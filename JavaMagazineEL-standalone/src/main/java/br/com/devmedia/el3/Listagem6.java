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
public class Listagem6 {
    
    public static void main(String[] args) throws ClassNotFoundException, NoSuchMethodException {
        ELProcessor elp = new ELProcessor();
        elp.defineFunction("fn", "random", "java.lang.Math", "random");
        System.out.println(elp.eval("fn:random()"));
    }
}
