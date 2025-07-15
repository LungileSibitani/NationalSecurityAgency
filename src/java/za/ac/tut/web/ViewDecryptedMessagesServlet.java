/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.Agent;
import za.ac.tut.ejb.AgentFacadeLocal;

/**
 *
 * @author LUMGILE
 */
public class ViewDecryptedMessagesServlet extends HttpServlet {
@EJB
AgentFacadeLocal afl;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        List<Agent> agent = afl.findAll();
        List<String> decryptedMessages = new ArrayList<>();
        
        for (int i = 0; i < agent.size(); i++) {
            Agent ag = agent.get(i);
            
            List<String> cipherList = ag.getCypherText();
            
            for (int j = 0; j < cipherList.size(); j++) {
                String cipher = cipherList.get(j);
                String decrypted = afl.decryptCipherToNormaltext(cipher);
                decryptedMessages.add(decrypted);
                
            }
        }
        session.setAttribute("decryptedMessages", decryptedMessages);
        RequestDispatcher disp = request.getRequestDispatcher("view_decrypted_messages.jsp");
        disp.forward(request, response);
    }

}
