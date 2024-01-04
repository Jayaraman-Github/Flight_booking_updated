

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connectionPackage.DBConnection;

/**
 * Servlet implementation class SearchFlight
 */
@WebServlet("/SearchFlight")
public class SearchFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String source = request.getParameter("source");
	        String destination = request.getParameter("destination");
	        String takeoffTimingsStr = request.getParameter("takeoff_timings");

			/*
			 * SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm"); Date
			 * takeoffTimings = null;
			 * 
			 * try { if (takeoffTimingsStr != null && !takeoffTimingsStr.isEmpty()) {
			 * takeoffTimings = sdf.parse(takeoffTimingsStr); } } catch (ParseException e) {
			 * throw new ServletException("Error parsing date/time parameter", e); }
			 * 
			 * // Call a service class (replace FlightService with your actual service
			 * class) FlightService flightService = new FlightService(); List<Flight>
			 * searchResults = flightService.searchFlights(source, destination,
			 * takeoffTimings);
			 */
	        // Pass the search results to the JSP page
	        Connection con=null;
	        try {
				con=DBConnection.getConnection();
				PreparedStatement ps=con.prepareStatement("select * from admin_login where admin_username=? and admin_password=?");
			
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
					rd.forward(request, response);
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				}
		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	}

}
