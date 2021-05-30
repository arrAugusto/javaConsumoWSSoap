/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author agr12
 */
public class correoConect {

    public correoConect() {
    }

    public static int NewCorreo(java.lang.String destinatario, java.lang.String remitente, java.lang.String asuntoReq, java.lang.String mensjae) {

        controladorServletEmail.WsEmailEnviado service = new controladorServletEmail.WsEmailEnviado();
        controladorServletEmail.WsEmailEnviadoSoap port = service.getWsEmailEnviadoSoap();
        // TODO initialize WS operation arguments here
        int idUserEnvia = Integer.parseInt(remitente);
        int idUserRecibe = Integer.parseInt(destinatario);

        java.lang.String asuntEnvia = asuntoReq;
        java.lang.String correoCuerpo = mensjae;
        // TODO process result here
        int result = port.newEmailEnviado(idUserEnvia, idUserRecibe, asuntEnvia, correoCuerpo);
        return result;

    }
}
