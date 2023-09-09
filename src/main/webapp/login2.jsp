<!DOCTYPE html>
<html>
<head>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color:#c83349;
  }
  .login-box {
    border: 1px solid #ccc;
    padding: 20px;
    text-align: center;
    background-color:#f4e1d2;
    font-family: "Lucida Console", "Courier New", monospace;
  }
</style>
</head>
<body>
  <div class="login-box">
    <form action="LoginServlet" method="post">
      <table>
        <tr>
          <td>User Id</td>
          <td><input type="text" name="textname"></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="textpwd"></td>
        </tr>
        <tr>
          <td colspan="2"><input type="submit" value="Login"></td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
