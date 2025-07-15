<%@page import="za.ac.tut.ejb.Agent"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Decrypted Messages Page</title>
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
            padding-top: 40px;
        }
        .container {
            background: white;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            padding: 30px 40px;
            max-width: 600px;
            width: 90%;
            text-align: center;
        }
        h1 {
            color: #1565c0;
            margin-bottom: 25px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            font-size: 1em;
        }
        td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: left;
            color: #333;
            word-break: break-word;
        }
        p {
            color: #555;
            font-size: 1.1em;
        }
        a {
            color: #1976d2;
            text-decoration: none;
            font-weight: 600;
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
        <h1>Decrypted Messages</h1>
        <%
            List<String> decryptedMessages = (List<String>)session.getAttribute("decryptedMessages");
            if (decryptedMessages == null || decryptedMessages.isEmpty()) {
        %>
            <p>No decrypted messages found.</p>
        <%
            } else {
        %>
            <table>
                <tbody>
                <%
                    for (int idx = 0; idx < decryptedMessages.size(); idx++) {
                %>
                    <tr>
                        <td><%= decryptedMessages.get(idx) %></td>
                    </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        <%
            }
        %>
        <p>
            Please click <a href="agent_manager.jsp">here</a> to go back to manager page<br>
            Or <a href="logoutServlet.do">here</a> to logout.
        </p>
    </div>
</body>
</html>
