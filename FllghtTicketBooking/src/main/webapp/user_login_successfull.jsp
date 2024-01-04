<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Flight Search</title>
  <style>
    /* CSS for navbar styling */
    ul.navbar {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color: #333;
    }

    ul.navbar li {
      float: left;
    }

    ul.navbar li a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    ul.navbar li a:hover {
      background-color: #ddd;
      color: black;
    }
  </style>
</head>
<body>

  <ul class="navbar">
    <li><a href="book_flight.jsp">Book</a></li>
    <li><a href="view_flights.jsp">View</a></li>
  </ul>

  <h1>Flight Search</h1>
  <form action="SearchFlight" method="GET">
    <label for="source">Source:</label>
    <input type="text" id="source" name="source"><br><br>

    <label for="destination">Destination:</label>
    <input type="text" id="destination" name="destination"><br><br>

    <label for="takeoff_timings">Take off timings:</label>
    <input type="datetime-local" id="takeoff_timings" name="takeoff_timings"><br><br>

    <input type="submit" value="Search">
  </form>
</body>
</html>

