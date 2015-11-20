package br.com.devmedia.el3;

import javax.el.ELProcessor;

public class Listagem7 {

    public static void main(String[] args) {
        ELProcessor elp = new ELProcessor();
        elp.getELManager().importClass("java.math.BigDecimal");
        System.out.println(elp.eval("BigDecimal(\"1000.0\")"));
    }
}
