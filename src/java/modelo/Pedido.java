/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Sergio
 */
public class Pedido {

    private String plato;
    private String platoNum;
    private String platoPrecio;
    private String nombrePlato;  
    
    private String bebida;
    private String bebidaNum;
    private String bebidaPrecio;
    private String nombreBebida;
    
    private String despacho;

    
    public Pedido(String _plato, String _platoNum, String _bebida, String _bebidaNum, String _despacho) {
        this.plato = _plato;
        this.platoNum = _platoNum;
        this.bebida = _bebida;
        this.bebidaNum = _bebidaNum;
        this.despacho = _despacho;
    }

    public String getPlato() {
        return plato;
    }

    public void setPlato(String _plato) {
        this.plato = _plato;
    }

    public String getNombrePlato() {
        if (Integer.parseInt(plato) == 1) {
            return "Arroz con pollo";
        }
        if (Integer.parseInt(plato) == 2) {
            return "Cazuela de vacuno";
        }
        if (Integer.parseInt(plato) == 3) {
            return "Lentejas con longaniza";
        }
        if (Integer.parseInt(plato) == 4) {
            return "Porotos con riendas";
        }
        return "nn";
    }

    public void setNombrePlato(String _plato) {
        this.nombrePlato = _plato;
    }

    
    
    
    public String getPlatoNum() {
        return platoNum;
    }
    public void setPlatoNum(String _platoNum) {
        this.platoNum = _platoNum;
    }

    
    
    public String getPlatoPrecio() {
        if (Integer.parseInt(plato) == 1) {
            return "3200";
        }
        if (Integer.parseInt(plato) == 2) {
            return "3500";
        }
        if (Integer.parseInt(plato) == 3) {
            return "3000";
        }
        if (Integer.parseInt(plato) == 4) {
            return "2000";
        }
        return "nn";
    }

    public void setPlatoPrecio(String _plato) {
        this.platoPrecio = _plato;
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public String getNombreBebida() {
        if (Integer.parseInt(bebida) == 1) {
            return "Mineral";
        }
        if (Integer.parseInt(bebida) == 2) {
            return "Jugo";
        }
        if (Integer.parseInt(bebida) == 3) {
            return "Malteada";
        }
        return "nn";
    }
    public void setNombreBebida(String _bebida) {
        this.nombreBebida = _bebida;
    }

    
    
    public String getBebida() {
        return bebida;
    }
    public void setBebida(String _bebida) {
        this.bebida = _bebida;
    }

    
    
    public String getBebidaNum() {
        return bebidaNum;
    }

    public void setBebidaNum(String _bebidaNum) {
        this.bebidaNum = _bebidaNum;
    }
    
    
     public String getBebidaPrecio() {
        if (Integer.parseInt(bebida) == 1) {
            return "700";
        }
        if (Integer.parseInt(bebida) == 2) {
            return "800";
        }
        if (Integer.parseInt(bebida) == 3) {
            return "1000";
        }
        return "nn";
    }
    public void setBebidaPrecio(String _bebida) {
        this.bebidaPrecio = _bebida;
    }
    
    
    
    
    
    
    
    
    
    
    
    

    public String getDespacho() {
        if ("Si".equals(despacho)) {
            return "Si";
        }
        return "No";
    }

    public void setDespacho(String _despacho) {
        this.despacho = _despacho;
    }

}
