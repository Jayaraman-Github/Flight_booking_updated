<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>View/Cancel Tickets</title>
</head>
<body>
    <h2>Your Upcoming Journey Tickets</h2>
    <table border="1">
        <tr>
            <th>Ticket ID</th>
            <th>Flight ID</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Takeoff Time</th>
            <th>Passenger Name</th>
            <th>Action</th>
        </tr>
        <%-- Loop through user's upcoming tickets and display details --%>
        <% for (Ticket ticket : upcomingTickets) { %>
            <tr>
                <td>${ticket.ticketId}</td>
                <td>${ticket.flightId}</td>
                <td>${ticket.source}</td>
                <td>${ticket.destination}</td>
                <td>${ticket.takeoffTime}</td>
                <td>${ticket.passengerName}</td>
                <td><a href="CancelTicketServlet?ticketId=${ticket.ticketId}">Cancel</a></td>
            </tr>
        <% } %>
    </table>
</body>
</html>