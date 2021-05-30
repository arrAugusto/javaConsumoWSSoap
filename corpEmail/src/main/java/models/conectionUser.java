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

    public static int NewUsuario(java.lang.String nitReq, java.lang.String nombresReq, java.lang.String apellidosReq, java.lang.String emailReq, java.lang.String passReq, java.lang.String telefonoReq, java.lang.String nivelReq) {
        controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
        controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
        // TODO initialize WS operation arguments here
        java.lang.String nitProve = nitReq;
        java.lang.String nomUsuarioParam = nombresReq;
        java.lang.String apeUsuarioParam = apellidosReq;
        java.lang.String nameEmailParam = emailReq;
        java.lang.String passEmailParam = passReq;
        java.lang.String telefonoParam = telefonoReq;
        int nivelParam = Integer.parseInt(nivelReq);
        // TODO process result here
        int result = port.newUsuario(nitProve, nomUsuarioParam, apeUsuarioParam, nameEmailParam, passEmailParam, telefonoParam, nivelParam);
        return result;

    }

    public static ArrayOfString AllUser() {
        controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
        controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
        // TODO process result here
        controladorServlet.ArrayOfString result = port.allUser();
        return result;
    }

    public static ArrayOfString ConsultaUsuarioID(java.lang.String idUsuarioReq) {

        controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
        controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
        // TODO initialize WS operation arguments here
        int idUsuario = Integer.parseInt(idUsuarioReq);
        // TODO process result here
        controladorServlet.ArrayOfString result = port.usuarioConsult(idUsuario);
        return result;

    }

    public static int EditUsuario(java.lang.String nombresReq, java.lang.String apellidosReq, java.lang.String emailReq, java.lang.String passReq, java.lang.String telefonoReq, java.lang.String nivelReq, java.lang.String idReq) {
        controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
        controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
        // TODO initialize WS operation arguments here
        java.lang.String nomUsuarioParam = nombresReq;
        java.lang.String apeUsuarioParam = apellidosReq;
        java.lang.String nameEmailParam = emailReq;
        java.lang.String passEmailParam = passReq;
        java.lang.String telefonoParam = telefonoReq;
        int isActivo = 1;
        int nivelParam = Integer.parseInt(nivelReq);
        int idUser = Integer.parseInt(idReq);

        // TODO process result here
        int result = port.editUsuario(nomUsuarioParam, apeUsuarioParam, nameEmailParam, passEmailParam, telefonoParam, isActivo, nivelParam, idUser);
        return result;

    }

        public static int DeleteUser(java.lang.String idReq) {

                controladorServlet.WsUsuarios service = new controladorServlet.WsUsuarios();
                controladorServlet.WsUsuariosSoap port = service.getWsUsuariosSoap();
                // TODO initialize WS operation arguments here
                int idUser = Integer.parseInt(idReq);
                // TODO process result here
                int result = port.deleteUsuario(idUser);
                return result;
            

    }

}
