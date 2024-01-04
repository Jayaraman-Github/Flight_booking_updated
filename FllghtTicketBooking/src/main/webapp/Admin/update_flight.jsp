<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Update Flight</title>
</head>
<body>
    <form action="UpdateFlightServlet" method="post">
        Flight ID: <input type="text" name="flightId" value="${flight.id}" readonly><br>
        Takeoff Time: <input type="datetime-local" name="takeoffTime" value="${flight.takeoffTime}"><br>
        Max Seats: <input type="number" name="maxSeats" value="${flight.maxSeats}"><br>
        Pricing: <input type="number" name="pricing" value="${flight.pricing}"><br>
        <input type="submit" value="Update Flight">
    </form>
</body>
</html>