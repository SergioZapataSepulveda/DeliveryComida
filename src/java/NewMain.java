
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Sergio
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static boolean validarRut(String rut) {

        boolean validacion = false;
        try {
            rut = rut.toUpperCase();
            rut = rut.replace(".", "");
            rut = rut.replace("-", "");
            int rutAux = Integer.parseInt(rut.substring(0, rut.length() - 1));

            char dv = rut.charAt(rut.length() - 1);

            int m = 0, s = 1;
            for (; rutAux != 0; rutAux /= 10) {
                s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
            }
            if (dv == (char) (s != 0 ? s + 47 : 75)) {
                validacion = true;
            }

        } catch (java.lang.NumberFormatException e) {
        }
        return validacion;
    }

    public static void main(String[] args) {
        // TODO code application logic here

        System.out.println(validarRut("16908074-7"));
        System.out.println(validarRut("16908074-K"));

        Date date = new Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        String formattedDate = dateFormat.format(date);
        System.out.println(formattedDate);

        DateFormat  _FechaHora   = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        System.out.println(_FechaHora);
    }

}
