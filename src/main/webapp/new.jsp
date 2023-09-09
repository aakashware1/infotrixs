<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Chat Box</title>
    <style>
     body {
            background-image: url('DDODLE.jpg'); 
        }
        .chat-box {
            border: 1px solid #ccc;
            padding: 10px;
            width: 300px;
            height: 300px;
            overflow-y: scroll;
            background-color: orange;
           
        }
        h1 {
            color: red; 
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
    <form>
        <h1>Welcome to the chat room</h1> 
         
        <input type="text" id="message" placeholder="Type your message"><br>
        <input type="button" value="Send" onclick="sendMessage()">
    </form>
    
    <div class="chat-box" id="messageDisplay"> 
    
        
    </div>
</body>
</html>
