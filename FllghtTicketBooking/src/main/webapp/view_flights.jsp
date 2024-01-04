<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>View Details</title>
</head>
<body>
  <h1>View Details</h1>

  <%
    String flightName = request.getParameter("flightName");
    String takeoffTimings = request.getParameter("takeoffTimings");
    String source = request.getParameter("source");
    String destination = request.getParameter("destination");
  %>

  <p>Flight Name: <%= flightName %></p>
  <p>Takeoff Timings: <%= takeoffTimings %></p>
  <p>Source: <%= source %></p>
  <p>Destination: <%= destination %></p>

  <!-- Cancellation Form -->
  <form action="cancel.jsp" method="POST">
    <input type="hidden" name="flightName" value="<%= flightName %>">
    <input type="hidden" name="takeoffTimings" value="<%= takeoffTimings %>">
    <input type="hidden" name="source" value="<%= source %>">
    <input type="hidden" name="destination" value="<%= destination %>">
    <input type="submit" value="Cancel">
  </form>

</body>
</html>