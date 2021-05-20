/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import controladorServlet.ArrayOfString;

/**
 *
 * @author agr12
 */
public class conectionUser {

    public conectionUser() {
    }

    public static ArrayOfString UsuarioConect(java.lang.String usuario, java.lang.String password) {
        controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
        controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
        return port.usuarioConect(usuario, password);
    }

    /*
    
        controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
    controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
    // TODO initialize WS operation arguments here
    java.lang.String usuario = "";
    java.lang.String password = "";
    // TODO process result here
    controladorServlet.ArrayOfString result = port.usuarioConect(usuario, password);
    System.out.println("Result = "+result);
     */
}
