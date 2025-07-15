<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Agent Manager Page</title>
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
            background: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 450px;
            text-align: center;
        }
        h1 {
            color: #1565c0;
            margin-bottom: 15px;
        }
        p {
            color: #555;
            font-size: 1.1em;
            margin-bottom: 25px;
        }
        ul {
            list-style-type: none;
            padding: 0;
            text-align: left;
            max-width: 400px;
            margin: 0 auto;
        }
        li {
            margin-bottom: 15px;
        }
        a {
            color: #1976d2;
            text-decoration: none;
            font-weight: 600;
            font-size: 1em;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #0d47a1;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Agent Manager</h1>
        <p>Please select one of the following options.</p>
        <ul>
            <li><a href="ViewDecryptedMessagesServlet.do">View all messages in a decrypted format</a></li>
            <li><a href="ViewLongestMessageServelt.do">View the details of the longest message received</a></li>
        </ul>
    </div>
</body>
</html>
