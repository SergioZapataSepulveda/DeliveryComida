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


    if (document.forms["form1"]["_pass1"].value == "")
    {
        msg += "* Password no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_pass1"].value.trim().length == 0 && document.forms["form1"]["_pass1"].value !== "")
    {
        msg += "* Password no puede contener solo espacios en blanco\n";
        ok = false;
    }
    if (document.forms["form1"]["_pass2"].value == "")
    {
        msg += "* Confirmacion de Password no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_pass2"].value.trim().length == 0 && document.forms["form1"]["_pass2"].value !== "")
    {
        msg += "* Confirmacion de Password no puede contener solo espacios en blanco\n";
        ok = false;
    }
    if (document.forms["form1"]["_pass1"].value !== document.forms["form1"]["_pass2"].value)
    {
        msg += "* Passwords no Coinciden\n";
        ok = false;
    }







    if (document.forms["form1"]["_Nombre"].value == "")
    {
        msg += "* Nombre no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_Nombre"].value.trim().length == 0 && document.forms["form1"]["_Nombre"].value !== "")
    {
        msg += "* Nombre no puede contener solo espacios en blanco\n";
        ok = false;
    }








    if (document.forms["form1"]["_ApPaterno"].value == "")
    {
        msg += "* Apellido Paterno no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_ApPaterno"].value.trim().length == 0 && document.forms["form1"]["_ApPaterno"].value !== "")
    {
        msg += "* Apellido Paterno no puede contener solo espacios en blanco\n";
        ok = false;
    }








    if (document.forms["form1"]["_ApMaterno"].value == "")
    {
        msg += "* Apellido Materno no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_ApMaterno"].value.trim().length == 0 && document.forms["form1"]["_ApMaterno"].value !== "")
    {
        msg += "* Apellido Materno no puede contener solo espacios en blanco\n";
        ok = false;
    }








    if (document.forms["form1"]["_Direccion"].value == "")
    {
        msg += "* Direccion no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_Direccion"].value.trim().length == 0 && document.forms["form1"]["_Direccion"].value !== "")
    {
        msg += "* Direccion no puede contener solo espacios en blanco\n";
        ok = false;
    }




    if (document.forms["form1"]["_Numeracion"].value == "")
    {
        msg += "* Numeracion no puede estar vacia\n";
        ok = false;
    }
    if (document.forms["form1"]["_Numeracion"].value.trim().length == 0 && document.forms["form1"]["_Numeracion"].value !== "")
    {
        msg += "* Numeracion no puede contener solo espacios en blanco\n";
        ok = false;
    }







    if (document.forms["form1"]["_Telefono"].value == "")
    {
        msg += "* Telefono no puede estar vacio\n";
        ok = false;
    }
    if (document.forms["form1"]["_Telefono"].value.trim().length == 0 && document.forms["form1"]["_Telefono"].value !== "")
    {
        msg += "* Telefono no puede contener solo espacios en blanco\n";
        ok = false;
    }





    if (ok == false)
        alert(msg);
    return ok;



}



