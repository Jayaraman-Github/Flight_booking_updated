<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.text.SimpleDateFormat" %>
<%@ page import="connectionPackage.*" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.time.*" %>
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
    <li><a href="create.jsp">Book</a></li>
    <li><a href="edit.jsp">Edit</a></li>
   <li><a href="delete.jsp">Delete</a></li>
   <li><a href="update.jsp">Update</a></li>
  </ul>


  <h1>Flight List for Today</h1>

  <table border="1">
    <thead>
      <tr>
        <th>Flight ID</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Takeoff Timing</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
      <% 
        try {
          // Establish database connection
         Connection con=DBConnection.getConnection();
          
          // Get today's date
          SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
          String todayDate = sdf.format(new java.util.Date());
          
          // Fetch flights for today
          PreparedStatement pstmt = con.prepareStatement("SELECT * FROM flight");
          ResultSet rs = pstmt.executeQuery();
          
          
          // Display flight details
          while (rs.next()) {
        	  Timestamp ts=rs.getTimestamp("takeoff_timing");
        	  Date date= new Date(ts.getTime());
        	
     
        	  if(date.toString().equals(LocalDate.now().toString()))
        	  {
        	  
     %>
            <tr>
              <td><%= rs.getInt("flight_id") %></td>
              <td><%= rs.getString("source") %></td>
              <td><%= rs.getString("destination") %></td>
              <td><%= rs.getTimestamp("takeoff_timing") %></td>
              <td><%= rs.getInt("price") %></td>
            </tr>
      <%
          }
          }
          
          // Close resources
          rs.close();
          pstmt.close();
          
        } catch (Exception e) {
          e.printStackTrace();
        }
      %>
    </tbody>
  </table>

</body>
</html>