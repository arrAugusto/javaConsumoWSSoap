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
public class conectionEmpresas {

    public conectionEmpresas() {
    }

    public static int NewEmpresa(java.lang.String nombreReq, java.lang.String dominioReq, java.lang.String nitReq, java.lang.String telReq, java.lang.String direccionReq) {

        controladorServletEmpresa.WsProveedor service = new controladorServletEmpresa.WsProveedor();
        controladorServletEmpresa.WsProveedorSoap port = service.getWsProveedorSoap();
        // TODO initialize WS operation arguments here
        java.lang.String razonSocialParam = nombreReq;

        java.lang.String dominioEmailParam = dominioReq;
        java.lang.String nitParam = nitReq;
        java.lang.String telefonoParam = telReq;
        java.lang.String direccionParam = direccionReq;
        // TODO process result here
        int result = port.newProveedor(razonSocialParam, dominioEmailParam, nitParam, telefonoParam, direccionParam);

        return result;
    }

    public static controladorServletEmpresa.ArrayOfString AllEmpresas() {

        controladorServletEmpresa.WsProveedor service = new controladorServletEmpresa.WsProveedor();
        controladorServletEmpresa.WsProveedorSoap port = service.getWsProveedorSoap();
        // TODO process result here
        controladorServletEmpresa.ArrayOfString result = port.allProveedores();
        return result;

    }
}
