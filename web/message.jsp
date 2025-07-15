<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Message Page</title>
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
            margin: 10px 0 25px;
            font-size: 1.05em;
        }

        form {
            width: 100%;
        }

        table {
            margin: 0 auto;
            width: 100%;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 1em;
        }

        input[type="submit"] {
            background-color: #1976d2;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 6px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0d47a1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Message</h1>
        
        <%
            String userName = (String)session.getAttribute("name");
            String compName = (String)application.getInitParameter("comp_name");
        %>

        <p>Hi <strong><%= userName %></strong>, my name is <strong><%= compName %></strong>.</p>
        <p>Please enter a plain text to encrypt:</p>

        <form action="EncryptionServlet.do" method="POST">
            <table>
                <tr>
                    <td>Plain text:</td>
                    <td><input type="text" name="message" required></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <input type="submit" value="Encrypt">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
