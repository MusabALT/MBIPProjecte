<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recycle Activity Form</title>
    <style>
        body {
          font-family: 'Arial', sans-serif;
            background-image: url(mbipbg.png);
            background-size: cover;
            background-repeat: no-repeat; 
            background-position: center center;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h2 {
            text-align: center;
            color: #009688;
        }
        form {
            padding: 20px;
            width: 300px;
            margin: 30px auto;
            border-radius: 8px;
            
        }
        label {
            display: block;
            margin: 10px 0;
            color: #004D40;
        }
        input[type="text"], input[type="file"], textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: none;
            border-radius: 4px;
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

    <h2>Recycle Activity Form</h2>
    <form action="Getresults.jsp" method="get">
      
        <label for="month">Month :</label>
        <input type="month" id="month" name="month" >
      
        <label for="day">No. of days :</label>
        <input type="number" id="day" name="day" >
      
        <label for="recycle">Accumulated amount (KG) :</label>
        <input type="text" id="recycle" name="recycle">
      
        <label for="recycleRM">Accumulated amount (RM) :</label>
        <input type="text" id="recycleRM" name="recycleRM">
      
        <label for="factor">Prorate factor :</label>
        <input type="text" id="factor" name="factor">
      
        <button type="submit">Get Analysis</button>
    </form>

    <!-- Add any additional content or scripts here -->
</body>
</html>