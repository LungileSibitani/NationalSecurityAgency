/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
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
public class EncryptionServlet extends HttpServlet {
@EJB
AgentFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String name = (String)session.getAttribute("name");
        Integer idCode = (Integer)session.getAttribute("id");
        String message = request.getParameter("message");
        String usertexts = afl.encryptPlainTextToCipherText(message);
        List<String> cipherText = new ArrayList<>();
        cipherText.add(usertexts);
        byte lengthOfMessage = 0;
    
        System.out.println(message);
        System.out.println(cipherText);
        int byteLength =message.getBytes("UTF-8").length;
        lengthOfMessage = (byte) byteLength;
        
        Agent agent = new Agent(idCode,cipherText,name,lengthOfMessage,new Date());
        session.setAttribute("agent", agent);
        
        afl.create(agent);
        
          RequestDispatcher disp = request.getRequestDispatcher("add_agent_details_outcome.jsp");
        disp.forward(request, response);
    }

}
