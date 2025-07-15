<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Agent Outcome Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #fff3e0);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 450px;
            text-align: center;
        }
        h1 {
            color: #1565c0;
            margin-bottom: 20px;
        }
        p {
            color: #555;
            font-size: 1.1em;
            margin: 15px 0;
        }
        a {
            color: #1976d2;
            text-decoration: none;
            font-weight: 600;
        }
        a:hover {
            text-decoration: underline;
            color: #0d47a1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Agent Outcome</h1>
        <%
            String userName = (String)session.getAttribute("name");
            String compName = (String) application.getInitParameter("comp_name");
        %>
        <p>Hi <strong><%= userName %></strong>, my name is <strong><%= compName %></strong> again. Your message has been successfully persisted to the database.</p>
        <p>
            Please click <a href="message.jsp">here</a> to encrypt another message.<br>
            Or <a href="logoutServlet.do">here</a> to logout.
        </p>
    </div>
</body>
</html>
