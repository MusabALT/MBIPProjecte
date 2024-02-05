<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Water Consumption Analysis</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #E0F2F1;
      margin: 0;
      padding: 0;
    }
    .header {
      background-color: #009688;
      color: white;
      padding: 10px 20px;
      text-align: center;
    }
    .analysis-container {
      background-color: #B2DFDB;
      padding: 20px;
      width: 400px;
      margin: 30px auto;
      border-radius: 8px;
    }
    .result {
      text-align: center;
      margin-top: 10px;
    }
    button {
            background-color: #00695C;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #00796B;
        }
  </style>
</head>
<body>

<div class="header">
  <h1>MBIP Project - Analysis</h1>
</div>

<div class="analysis-container">

  <div class="result">
    <img src="check.gif">

    <p> Your data entered succefully</p>
    <form action="MainScreen.html">
      <button>Return to home screen</button>
      </form>
  </div>
</div>

</body>
</html>
