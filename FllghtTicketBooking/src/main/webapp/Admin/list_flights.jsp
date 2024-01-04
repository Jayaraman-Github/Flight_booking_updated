<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>List Flights</title>
</head>
<body>
    <h2>All Flight Schedules</h2>
    <table border="1">
        <tr>
            <th>Flight ID</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Takeoff Time</th>
            <th>Max Seats</th>
            <th>Pricing</th>
            <th>Action</th>
        </tr>
        <%-- Loop through all flights and display details --%>
        <% for (Flight flight : allFlights) { %>
            <tr>
                <td>${flight.id}</td>
                <td>${flight.source}</td>
                <td>${flight.destination}</td>
                <td>${flight.takeoffTime}</td>
                <td>${flight.maxSeats}</td>
                <td>${flight.pricing}</td>
                <td>
                    <a href="UpdateFlightForm.jsp?flightId=${flight.id}">Update</a>
                    <a href="DeleteFlightServlet?flightId=${flight.id}">Delete</a>
                </td>
            </tr>
        <% } %>
    </table>
</body>
</html>