<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Book Flight</title>
</head>
<body>
  <h1>Book Flight</h1>

  <form action="view_flights.jsp" method="GET">
    <label for="flightName">Name of the Flight:</label>
    <input type="text" id="flightName" name="flightName"><br><br>

    <label for="takeoffTimings">Takeoff Timings:</label>
    <input type="text" id="takeoffTimings" name="takeoffTimings"><br><br>

    <label for="source">Source:</label>
    <input type="text" id="source" name="source"><br><br>

    <label for="destination">Destination:</label>
    <input type="text" id="destination" name="destination"><br><br>

    <input type="submit" value="Book">
  </form>
</body>
</html>