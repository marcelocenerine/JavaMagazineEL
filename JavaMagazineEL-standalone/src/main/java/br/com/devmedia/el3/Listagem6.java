package br.com.devmedia.el3;

import javax.el.ELProcessor;

public class Listagem6 {

    public static void main(String[] args) throws ClassNotFoundException, NoSuchMethodException {
        ELProcessor elp = new ELProcessor();
        elp.defineFunction("fn", "random", "java.lang.Math", "random");
        System.out.println(elp.eval("fn:random()"));
    }
}
