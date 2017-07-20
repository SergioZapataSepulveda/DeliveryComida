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
public class Persona {

    
    private String userName;
    private String userPass;

    public Persona(String _userName, String _userPass) {
        this.userName = _userName;
        this.userPass = _userPass;
        
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String _userName) {
        this.userName = _userName;
    }
    
    
    
     public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String _userPass) {
        this.userPass = _userPass;
    }
    
    
    
    
}
