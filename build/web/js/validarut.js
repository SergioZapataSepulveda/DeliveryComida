function required()
{

    var ok = true;
    var msg = "";

    if (document.forms["form1"]["rutInicial"].value == "")
    {
        //alert("El Rut no puede estar vacio");
        msg += "* Rut no puede estar vacio\n";
        ok = false;
    }



    if (document.forms["form1"]["rutInicial"].value.trim().length == 0 && document.forms["form1"]["rutInicial"].value !== "")
    {
        msg += "* Rut no puede contener solo espacios en blanco\n";
        ok = false;
    }

    /*
     var caracterRut = document.forms["form1"]["rutInicial"].value;
     if (caracterRut.indexOf('-') != -1) {
     msg += "* Rut no puede contener 'Guiones'\n";
     ok = false;
     }
     if (caracterRut.indexOf('.') != -1) {
     msg += "* Rut no puede contener 'Puntos'\n";
     ok = false;
     }
     if (caracterRut.indexOf(' ') != -1) {
     msg += "* Rut no puede contener 'Espacios en Blanco'\n";
     ok = false;
     }
     */

    if (document.forms["form1"]["rutInicial"].value.trim() !== "")
    {
        var LimpiadorRut = "";
        var crut = document.forms["form1"]["rutInicial"].value;
        alert("Rut sin limpiar " + crut);

        for (i = 0; i < crut.length; i++)
            if (crut.charAt(i) != ' ' && crut.charAt(i) != '.' && crut.charAt(i) != '-')
            {
                LimpiadorRut = LimpiadorRut + crut.charAt(i);
            }
        crut = LimpiadorRut;
        alert("Rut Limpiado " + crut);
        //enviar rut limpio de puntos o guiones al formulario
        document.forms["form1"]["rut"].value = crut;

        rut = crut;
        largo = crut.length;
        if (largo > 2)
            rut = crut.substring(0, largo - 1);
        else
            rut = crut.charAt(0);

        dv = crut.charAt(largo - 1);

        if (rut == null || dv == null)
            return 0;

        var dvr = '0';
        suma = 0;
        mul = 2;

        for (i = rut.length - 1; i >= 0; i--) {
            suma = suma + rut.charAt(i) * mul;
            if (mul == 7)
                mul = 2;
            else
                mul++;
        }

        res = suma % 11;
        if (res == 1)
            dvr = 'k';
        else if (res == 0)
            dvr = '0';
        else {
            dvi = 11 - res;
            dvr = dvi + "";
        }

        if (dvr != dv.toLowerCase()) {
            msg += "* Rut Invalido\n";
            ok = false;
        }

    }


    if (document.forms["form1"]["pass"].value == "")
    {
        msg += "* Password no puede estar vacia\n";
        ok = false;
    }

    if (document.forms["form1"]["pass"].value.trim().length == 0 && document.forms["form1"]["pass"].value !== "")
    {
        msg += "* Password no puede contener solo espacios en blanco\n";
        ok = false;
    }



    if (ok == false)
        alert(msg);
    return ok;



}



