<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Start Page</title>
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
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 90%;
            max-width: 400px;
        }
        h1 {
            color: #1565c0;
            font-size: 2.2em;
            margin-bottom: 10px;
        }
        p {
            color: #555;
            margin-bottom: 30px;
            font-size: 1.1em;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin-bottom: 15px;
        }
        a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #1976d2;
            padding: 10px 20px;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0d47a1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Start</h1>
        <p>Please select your role to start</p>
        <ul>
            <li><a href="field_agent.jsp">Field Agent</a></li>
            <li><a href="agent_manager.jsp">Agent Manager</a></li>
        </ul>
    </div>
</body>
</html>
