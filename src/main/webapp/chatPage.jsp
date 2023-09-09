<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Chat Box</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            
            background-color:#c83349;
        }

        .container {
            text-align: center;
        }

        .chat-box {
            border: 1px solid #ccc;
            padding: 10px;
            width: 300px;
            height: 300px;
            overflow-y: scroll;
            background-color:#f4e1d2; 
            margin: 20px;
            color:#c83349;
            font-weight: bold; 
            
        }
         .header-box {
            border: 1px solid #ccc;
            background-color: #bdcebe;
            padding: 10px;
            width: 300px;
            margin: 20px;
        }
        

        h1 {
            color: white;
            font-family: "Lucida Console", "Courier New", monospace;
        }
    </style>
    <script>
        function sendMessage() {
            var messageInput = document.getElementById("message");
            var messageText = messageInput.value;
            var userId = "<%= session.getAttribute("userId") %>";
            var messageDisplay = document.getElementById("messageDisplay");
            var messageElement = document.createElement("div");
            messageElement.className = "message";
            var messageContent = userId + ": " + messageText;
            messageElement.innerHTML = messageContent;
            messageDisplay.appendChild(messageElement);
            messageInput.value = "";
            messageDisplay.scrollTop = messageDisplay.scrollHeight;
        }
    </script>
</head>
<body>
    <div class="container">
     <div class="header-box">
        <h1><b>Welcome to the chat room</b></h1>
        </div>
        <form>
            <input type="text" id="message" placeholder="Type your message"><br>
            <input type="button" value="Send" onclick="sendMessage()">
        </form>
        <div class="chat-box" id="messageDisplay"></div>
    </div>
</body>
</html>
