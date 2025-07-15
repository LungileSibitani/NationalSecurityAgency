package za.ac.tut.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StartSessionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);

       
            String name = request.getParameter("name");
            String idCode = request.getParameter("idCode");

            if (idCode != null && !idCode.trim().isEmpty()) {
                idCode = idCode.trim();
                
                // ✅ Check if it's exactly 3 digits
                if (idCode.matches("\\d{3}")) {
                   Integer id = Integer.parseInt(idCode);
                    // You can store agentCode as a String if leading zeros matter
                    session.setAttribute("name", name);
                    session.setAttribute("id", id);

                    // Forward to message.jsp
                    RequestDispatcher disp = request.getRequestDispatcher("message.jsp");
                    disp.forward(request, response);
                } else {
                    // Not exactly 3 digits
                    response.sendRedirect("error.jsp");
                }
            } else {
                // idCode was missing or blank
                response.sendRedirect("error.jsp");
            }
       
    }
}
