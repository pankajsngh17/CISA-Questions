<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <style>
    body {
      font-family: 'Montserrat', sans-serif;
      background-color: #f7f9fc;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      background: #fff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
      max-width: 400px;
      width: 100%;
      text-align: center;
    }

    h1 {
      color: #333;
      margin-bottom: 20px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    button {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      background-color: #007bff;
      color: white;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Login</h1>
    <input type="text" id="username" placeholder="Enter your username">
    <button onclick="login()">Login</button>
  </div>

  <script>
    function login() {
      const username = document.getElementById('username').value;
      if (username) {
        localStorage.setItem('username', username);
        window.location.href = 'index.html';
      } else {
        alert('Please enter a username');
      }
    }

    // Redirect to quiz if already logged in
    if (localStorage.getItem('username')) {
      window.location.href = 'index.html';
    }
  </script>
</body>
</html>
