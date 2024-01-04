<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Create Flight</title>
</head>
<body>
    <form action="CreateFlightServlet" method="post">
        Source: <input type="text" name="source"><br>
        Destination: <input type="text" name="destination"><br>
        Takeoff Time: <input type="datetime-local" name="takeoffTime"><br>
        Pricing: <input type="number" name="pricing"><br>
        <input type="submit" value="Create Flight">
    </form>
</body>
</html>