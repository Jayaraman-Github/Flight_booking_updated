<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Cancellation</title>
</head>
<body>
  <h1>Cancellation</h1>

  <%
    // Retrieve cancelled details
    String flightName = request.getParameter("flightName");
    String takeoffTimings = request.getParameter("takeoffTimings");
    String source = request.getParameter("source");
    String destination = request.getParameter("destination");

    // Perform cancellation logic (example: display cancellation message)
  %>

  <p>Flight Name: <%= flightName %> - Cancelled</p>
  <p>Takeoff Timings: <%= takeoffTimings %> - Cancelled</p>
  <p>Source: <%= source %> - Cancelled</p>
  <p>Destination: <%= destination %> - Cancelled</p>

  <p>Details have been cancelled.</p>

</body>
</html>