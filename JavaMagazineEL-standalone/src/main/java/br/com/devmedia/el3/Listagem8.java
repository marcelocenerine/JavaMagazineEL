package br.com.devmedia.el3;

import javax.el.ELProcessor;

public class Listagem8 {

    public static void main(String[] args) {
        ELProcessor elp = new ELProcessor();
        System.out.println(elp.eval("Long('1000')"));
        System.out.println(elp.eval("Integer.MAX_VALUE"));
        System.out.println(elp.eval("Math.max(20, 50)"));
    }
}
