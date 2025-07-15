<%@page import="za.ac.tut.ejb.Agent"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Longest Message Outcome Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0; padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #fff3e0);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 40px 20px;
        }
        .container {
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 700px;
            text-align: center;
        }
        h1 {
            color: #1565c0;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 25px;
            font-size: 1em;
        }
        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: left;
            color: #333;
            word-break: break-word;
        }
        th {
            background-color: #1976d2;
            color: white;
        }
        strong {
            font-size: 1.1em;
            color: #333;
        }
        p {
            margin-top: 25px;
            font-size: 1.1em;
            color: #555;
        }
        a {
            color: #1976d2;
            font-weight: 600;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        a:hover {
            text-decoration: underline;
            color: #0d47a1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Agent(s) with the Longest Message</h1>

        <%
            List<Agent> agent = (List<Agent>) session.getAttribute("agent");
            Byte longestMessage = (Byte) session.getAttribute("longestMessage");
        %>

        <table>
            <thead>
                <tr>
                    <th>Agent Code</th>
                    <th>Agent Name</th>
                    <th>Message</th>
                    <th>Length of Message</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for (int idx = 0; idx < agent.size(); idx++) {
                        Agent ag = agent.get(idx);
                        Integer agentCode = ag.getIdCode();
                        String name = ag.getName();
                        List<String> message = ag.getCypherText();
                        Byte lengthOfMessage = ag.getLengthOfMessage();
                %>
                <tr>
                    <td><%= agentCode %></td>
                    <td><%= name %></td>
                    <td><%= message.get(0)%></td>
                    <td><%= lengthOfMessage %></td>
                </tr>
              
            </tbody>
            <%}%>
        </table>

        <strong>Longest Message Size:</strong> <%= longestMessage%>

        <p>
            Please click <a href="agent_manager.jsp">here</a> to go back to manager page<br>
            Or <a href="logoutServlet.do">here</a> to logout.
        </p>
    </div>
</body>
</html>
